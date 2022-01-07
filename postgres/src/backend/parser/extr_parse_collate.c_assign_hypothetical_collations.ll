; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/parser/extr_parse_collate.c_assign_hypothetical_collations.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/parser/extr_parse_collate.c_assign_hypothetical_collations.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i32 }
%struct.TYPE_8__ = type { i64, i64, i32, i64, i32, i32 }
%struct.TYPE_9__ = type { i32* }

@InvalidOid = common dso_local global i64 0, align 8
@COLLATE_NONE = common dso_local global i64 0, align 8
@COLLATE_CONFLICT = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_COLLATION_MISMATCH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [61 x i8] c"collation mismatch between implicit collations \22%s\22 and \22%s\22\00", align 1
@.str.1 = private unnamed_addr constant [88 x i8] c"You can choose the collation by applying the COLLATE clause to one or both expressions.\00", align 1
@COERCE_IMPLICIT_CAST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*, %struct.TYPE_8__*)* @assign_hypothetical_collations to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @assign_hypothetical_collations(%struct.TYPE_10__* %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_9__*, align 8
  %11 = alloca %struct.TYPE_8__, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %4, align 8
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i32* @list_head(i32 %14)
  store i32* %15, i32** %5, align 8
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32* @list_head(i32 %18)
  store i32* %19, i32** %6, align 8
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @list_length(i32 %22)
  %24 = icmp eq i32 %23, 1
  br i1 %24, label %25, label %32

25:                                               ; preds = %2
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @get_func_variadictype(i32 %28)
  %30 = load i64, i64* @InvalidOid, align 8
  %31 = icmp eq i64 %29, %30
  br label %32

32:                                               ; preds = %25, %2
  %33 = phi i1 [ false, %2 ], [ %31, %25 ]
  %34 = zext i1 %33 to i32
  store i32 %34, i32* %7, align 4
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @list_length(i32 %37)
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @list_length(i32 %41)
  %43 = sub nsw i32 %38, %42
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* %8, align 4
  %45 = icmp sge i32 %44, 0
  %46 = zext i1 %45 to i32
  %47 = call i32 @Assert(i32 %46)
  br label %48

48:                                               ; preds = %52, %32
  %49 = load i32, i32* %8, align 4
  %50 = add nsw i32 %49, -1
  store i32 %50, i32* %8, align 4
  %51 = icmp sgt i32 %49, 0
  br i1 %51, label %52, label %63

52:                                               ; preds = %48
  %53 = load i32*, i32** %5, align 8
  %54 = call i64 @lfirst(i32* %53)
  %55 = inttoptr i64 %54 to i32*
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %57 = call i32 @assign_collations_walker(i32* %55, %struct.TYPE_8__* %56)
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load i32*, i32** %5, align 8
  %62 = call i32* @lnext(i32 %60, i32* %61)
  store i32* %62, i32** %5, align 8
  br label %48

63:                                               ; preds = %48
  br label %64

64:                                               ; preds = %167, %63
  %65 = load i32*, i32** %5, align 8
  %66 = icmp ne i32* %65, null
  br i1 %66, label %67, label %70

67:                                               ; preds = %64
  %68 = load i32*, i32** %6, align 8
  %69 = icmp ne i32* %68, null
  br label %70

70:                                               ; preds = %67, %64
  %71 = phi i1 [ false, %64 ], [ %69, %67 ]
  br i1 %71, label %72, label %178

72:                                               ; preds = %70
  %73 = load i32*, i32** %5, align 8
  %74 = call i64 @lfirst(i32* %73)
  %75 = inttoptr i64 %74 to i32*
  store i32* %75, i32** %9, align 8
  %76 = load i32*, i32** %6, align 8
  %77 = call i64 @lfirst(i32* %76)
  %78 = inttoptr i64 %77 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %78, %struct.TYPE_9__** %10, align 8
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 5
  %81 = load i32, i32* %80, align 4
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 5
  store i32 %81, i32* %82, align 4
  %83 = load i64, i64* @InvalidOid, align 8
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  store i64 %83, i64* %84, align 8
  %85 = load i64, i64* @COLLATE_NONE, align 8
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 1
  store i64 %85, i64* %86, align 8
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 2
  store i32 -1, i32* %87, align 8
  %88 = load i64, i64* @InvalidOid, align 8
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 3
  store i64 %88, i64* %89, align 8
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 4
  store i32 -1, i32* %90, align 8
  %91 = load i32*, i32** %9, align 8
  %92 = call i32 @assign_collations_walker(i32* %91, %struct.TYPE_8__* %11)
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 0
  %95 = load i32*, i32** %94, align 8
  %96 = call i32 @assign_collations_walker(i32* %95, %struct.TYPE_8__* %11)
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @COLLATE_CONFLICT, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %119

101:                                              ; preds = %72
  %102 = load i32, i32* @ERROR, align 4
  %103 = load i32, i32* @ERRCODE_COLLATION_MISMATCH, align 4
  %104 = call i32 @errcode(i32 %103)
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = call i32 @get_collation_name(i64 %106)
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 3
  %109 = load i64, i64* %108, align 8
  %110 = call i32 @get_collation_name(i64 %109)
  %111 = call i32 @errmsg(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i32 %107, i32 %110)
  %112 = call i32 @errhint(i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.1, i64 0, i64 0))
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 5
  %114 = load i32, i32* %113, align 4
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 4
  %116 = load i32, i32* %115, align 8
  %117 = call i32 @parser_errposition(i32 %114, i32 %116)
  %118 = call i32 @ereport(i32 %102, i32 %117)
  br label %119

119:                                              ; preds = %101, %72
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = call i64 @OidIsValid(i64 %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %151

124:                                              ; preds = %119
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %128 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %127, i32 0, i32 0
  %129 = load i32*, i32** %128, align 8
  %130 = call i64 @exprCollation(i32* %129)
  %131 = icmp ne i64 %126, %130
  br i1 %131, label %132, label %151

132:                                              ; preds = %124
  %133 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %134 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %133, i32 0, i32 0
  %135 = load i32*, i32** %134, align 8
  %136 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %137 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %136, i32 0, i32 0
  %138 = load i32*, i32** %137, align 8
  %139 = call i32 @exprType(i32* %138)
  %140 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %141 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %140, i32 0, i32 0
  %142 = load i32*, i32** %141, align 8
  %143 = call i32 @exprTypmod(i32* %142)
  %144 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = load i32, i32* @COERCE_IMPLICIT_CAST, align 4
  %147 = call i64 @makeRelabelType(i32* %135, i32 %139, i32 %143, i64 %145, i32 %146)
  %148 = inttoptr i64 %147 to i32*
  %149 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %150 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %149, i32 0, i32 0
  store i32* %148, i32** %150, align 8
  br label %151

151:                                              ; preds = %132, %124, %119
  %152 = load i32, i32* %7, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %167

154:                                              ; preds = %151
  %155 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 1
  %158 = load i64, i64* %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 2
  %160 = load i32, i32* %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 3
  %162 = load i64, i64* %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 4
  %164 = load i32, i32* %163, align 8
  %165 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %166 = call i32 @merge_collation_state(i64 %156, i64 %158, i32 %160, i64 %162, i32 %164, %struct.TYPE_8__* %165)
  br label %167

167:                                              ; preds = %154, %151
  %168 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %169 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = load i32*, i32** %5, align 8
  %172 = call i32* @lnext(i32 %170, i32* %171)
  store i32* %172, i32** %5, align 8
  %173 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %174 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = load i32*, i32** %6, align 8
  %177 = call i32* @lnext(i32 %175, i32* %176)
  store i32* %177, i32** %6, align 8
  br label %64

178:                                              ; preds = %70
  %179 = load i32*, i32** %5, align 8
  %180 = icmp eq i32* %179, null
  br i1 %180, label %181, label %184

181:                                              ; preds = %178
  %182 = load i32*, i32** %6, align 8
  %183 = icmp eq i32* %182, null
  br label %184

184:                                              ; preds = %181, %178
  %185 = phi i1 [ false, %178 ], [ %183, %181 ]
  %186 = zext i1 %185 to i32
  %187 = call i32 @Assert(i32 %186)
  ret void
}

declare dso_local i32* @list_head(i32) #1

declare dso_local i32 @list_length(i32) #1

declare dso_local i64 @get_func_variadictype(i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @assign_collations_walker(i32*, %struct.TYPE_8__*) #1

declare dso_local i64 @lfirst(i32*) #1

declare dso_local i32* @lnext(i32, i32*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i32, i32) #1

declare dso_local i32 @get_collation_name(i64) #1

declare dso_local i32 @errhint(i8*) #1

declare dso_local i32 @parser_errposition(i32, i32) #1

declare dso_local i64 @OidIsValid(i64) #1

declare dso_local i64 @exprCollation(i32*) #1

declare dso_local i64 @makeRelabelType(i32*, i32, i32, i64, i32) #1

declare dso_local i32 @exprType(i32*) #1

declare dso_local i32 @exprTypmod(i32*) #1

declare dso_local i32 @merge_collation_state(i64, i64, i32, i64, i32, %struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
