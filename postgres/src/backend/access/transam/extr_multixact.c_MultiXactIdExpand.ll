; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_multixact.c_MultiXactIdExpand.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_multixact.c_MultiXactIdExpand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i8* }

@OldestMemberMXactId = common dso_local global i8** null, align 8
@MyBackendId = common dso_local global i64 0, align 8
@DEBUG2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Expand: received multi %u, xid %u status %s\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"Expand: %u has no members, create singleton %u\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"Expand: %u is already a member of %u\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"Expand: returning new multi %u\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @MultiXactIdExpand(i8* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_5__*, align 8
  %10 = alloca %struct.TYPE_5__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_5__, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = call i32 @MultiXactIdIsValid(i8* %15)
  %17 = call i32 @AssertArg(i32 %16)
  %18 = load i8*, i8** %6, align 8
  %19 = call i32 @TransactionIdIsValid(i8* %18)
  %20 = call i32 @AssertArg(i32 %19)
  %21 = load i8**, i8*** @OldestMemberMXactId, align 8
  %22 = load i64, i64* @MyBackendId, align 8
  %23 = getelementptr inbounds i8*, i8** %21, i64 %22
  %24 = load i8*, i8** %23, align 8
  %25 = call i32 @MultiXactIdIsValid(i8* %24)
  %26 = call i32 @Assert(i32 %25)
  %27 = load i32, i32* @DEBUG2, align 4
  %28 = load i8*, i8** %5, align 8
  %29 = load i8*, i8** %6, align 8
  %30 = load i64, i64* %7, align 8
  %31 = call i32 @mxstatus_to_string(i64 %30)
  %32 = call i32 @debug_elog5(i32 %27, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i8* %28, i8* %29, i32 %31)
  %33 = load i8*, i8** %5, align 8
  %34 = call i32 @GetMultiXactIdMembers(i8* %33, %struct.TYPE_5__** %9, i32 0, i32 0)
  store i32 %34, i32* %11, align 4
  %35 = load i32, i32* %11, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %48

37:                                               ; preds = %3
  %38 = load i8*, i8** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 1
  store i8* %38, i8** %39, align 8
  %40 = load i64, i64* %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  store i64 %40, i64* %41, align 8
  %42 = call i8* @MultiXactIdCreateFromMembers(i32 1, %struct.TYPE_5__* %14)
  store i8* %42, i8** %8, align 8
  %43 = load i32, i32* @DEBUG2, align 4
  %44 = load i8*, i8** %5, align 8
  %45 = load i8*, i8** %8, align 8
  %46 = call i32 @debug_elog4(i32 %43, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i8* %44, i8* %45)
  %47 = load i8*, i8** %8, align 8
  store i8* %47, i8** %4, align 8
  br label %176

48:                                               ; preds = %3
  store i32 0, i32* %12, align 4
  br label %49

49:                                               ; preds = %81, %48
  %50 = load i32, i32* %12, align 4
  %51 = load i32, i32* %11, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %84

53:                                               ; preds = %49
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %55 = load i32, i32* %12, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 1
  %59 = load i8*, i8** %58, align 8
  %60 = load i8*, i8** %6, align 8
  %61 = call i64 @TransactionIdEquals(i8* %59, i8* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %80

63:                                               ; preds = %53
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %65 = load i32, i32* %12, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* %7, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %80

72:                                               ; preds = %63
  %73 = load i32, i32* @DEBUG2, align 4
  %74 = load i8*, i8** %6, align 8
  %75 = load i8*, i8** %5, align 8
  %76 = call i32 @debug_elog4(i32 %73, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i8* %74, i8* %75)
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %78 = call i32 @pfree(%struct.TYPE_5__* %77)
  %79 = load i8*, i8** %5, align 8
  store i8* %79, i8** %4, align 8
  br label %176

80:                                               ; preds = %63, %53
  br label %81

81:                                               ; preds = %80
  %82 = load i32, i32* %12, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %12, align 4
  br label %49

84:                                               ; preds = %49
  %85 = load i32, i32* %11, align 4
  %86 = add nsw i32 %85, 1
  %87 = sext i32 %86 to i64
  %88 = mul i64 16, %87
  %89 = trunc i64 %88 to i32
  %90 = call i64 @palloc(i32 %89)
  %91 = inttoptr i64 %90 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %91, %struct.TYPE_5__** %10, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %92

92:                                               ; preds = %148, %84
  %93 = load i32, i32* %12, align 4
  %94 = load i32, i32* %11, align 4
  %95 = icmp slt i32 %93, %94
  br i1 %95, label %96, label %151

96:                                               ; preds = %92
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %98 = load i32, i32* %12, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 1
  %102 = load i8*, i8** %101, align 8
  %103 = call i64 @TransactionIdIsInProgress(i8* %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %123, label %105

105:                                              ; preds = %96
  %106 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %107 = load i32, i32* %12, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = call i64 @ISUPDATE_from_mxstatus(i64 %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %147

114:                                              ; preds = %105
  %115 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %116 = load i32, i32* %12, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 1
  %120 = load i8*, i8** %119, align 8
  %121 = call i64 @TransactionIdDidCommit(i8* %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %147

123:                                              ; preds = %114, %96
  %124 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %125 = load i32, i32* %12, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i32 0, i32 1
  %129 = load i8*, i8** %128, align 8
  %130 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %131 = load i32, i32* %13, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %130, i64 %132
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i32 0, i32 1
  store i8* %129, i8** %134, align 8
  %135 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %136 = load i32, i32* %12, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %135, i64 %137
  %139 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %142 = load i32, i32* %13, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %13, align 4
  %144 = sext i32 %142 to i64
  %145 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %141, i64 %144
  %146 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %145, i32 0, i32 0
  store i64 %140, i64* %146, align 8
  br label %147

147:                                              ; preds = %123, %114, %105
  br label %148

148:                                              ; preds = %147
  %149 = load i32, i32* %12, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %12, align 4
  br label %92

151:                                              ; preds = %92
  %152 = load i8*, i8** %6, align 8
  %153 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %154 = load i32, i32* %13, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %153, i64 %155
  %157 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %156, i32 0, i32 1
  store i8* %152, i8** %157, align 8
  %158 = load i64, i64* %7, align 8
  %159 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %160 = load i32, i32* %13, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %13, align 4
  %162 = sext i32 %160 to i64
  %163 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %159, i64 %162
  %164 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %163, i32 0, i32 0
  store i64 %158, i64* %164, align 8
  %165 = load i32, i32* %13, align 4
  %166 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %167 = call i8* @MultiXactIdCreateFromMembers(i32 %165, %struct.TYPE_5__* %166)
  store i8* %167, i8** %8, align 8
  %168 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %169 = call i32 @pfree(%struct.TYPE_5__* %168)
  %170 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %171 = call i32 @pfree(%struct.TYPE_5__* %170)
  %172 = load i32, i32* @DEBUG2, align 4
  %173 = load i8*, i8** %8, align 8
  %174 = call i32 @debug_elog3(i32 %172, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i8* %173)
  %175 = load i8*, i8** %8, align 8
  store i8* %175, i8** %4, align 8
  br label %176

176:                                              ; preds = %151, %72, %37
  %177 = load i8*, i8** %4, align 8
  ret i8* %177
}

declare dso_local i32 @AssertArg(i32) #1

declare dso_local i32 @MultiXactIdIsValid(i8*) #1

declare dso_local i32 @TransactionIdIsValid(i8*) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @debug_elog5(i32, i8*, i8*, i8*, i32) #1

declare dso_local i32 @mxstatus_to_string(i64) #1

declare dso_local i32 @GetMultiXactIdMembers(i8*, %struct.TYPE_5__**, i32, i32) #1

declare dso_local i8* @MultiXactIdCreateFromMembers(i32, %struct.TYPE_5__*) #1

declare dso_local i32 @debug_elog4(i32, i8*, i8*, i8*) #1

declare dso_local i64 @TransactionIdEquals(i8*, i8*) #1

declare dso_local i32 @pfree(%struct.TYPE_5__*) #1

declare dso_local i64 @palloc(i32) #1

declare dso_local i64 @TransactionIdIsInProgress(i8*) #1

declare dso_local i64 @ISUPDATE_from_mxstatus(i64) #1

declare dso_local i64 @TransactionIdDidCommit(i8*) #1

declare dso_local i32 @debug_elog3(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
