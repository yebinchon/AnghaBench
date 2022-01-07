; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_commit_ts.c_TransactionIdGetCommitTsData.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_commit_ts.c_TransactionIdGetCommitTsData.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_9__, i32, i32 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64* }
%struct.TYPE_11__ = type { i32, i32 }

@ERROR = common dso_local global i32 0, align 4
@ERRCODE_INVALID_PARAMETER_VALUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"cannot retrieve commit timestamp for transaction %u\00", align 1
@CommitTsLock = common dso_local global i32 0, align 4
@LW_SHARED = common dso_local global i32 0, align 4
@commitTsShared = common dso_local global %struct.TYPE_12__* null, align 8
@ShmemVariableCache = common dso_local global %struct.TYPE_14__* null, align 8
@InvalidRepOriginId = common dso_local global i32 0, align 4
@CommitTsCtl = common dso_local global %struct.TYPE_13__* null, align 8
@SizeOfCommitTimestampEntry = common dso_local global i32 0, align 4
@CommitTsControlLock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @TransactionIdGetCommitTsData(i32 %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_11__, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @TransactionIdToCTsPage(i32 %14)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @TransactionIdToCTsEntry(i32 %16)
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %5, align 4
  %19 = call i64 @TransactionIdIsValid(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %28, label %21

21:                                               ; preds = %3
  %22 = load i32, i32* @ERROR, align 4
  %23 = load i32, i32* @ERRCODE_INVALID_PARAMETER_VALUE, align 4
  %24 = call i32 @errcode(i32 %23)
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @errmsg(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = call i32 @ereport(i32 %22, i32 %26)
  br label %40

28:                                               ; preds = %3
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @TransactionIdIsNormal(i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %39, label %32

32:                                               ; preds = %28
  %33 = load i32*, i32** %6, align 8
  store i32 0, i32* %33, align 4
  %34 = load i32*, i32** %7, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %36, label %38

36:                                               ; preds = %32
  %37 = load i32*, i32** %7, align 8
  store i32 0, i32* %37, align 4
  br label %38

38:                                               ; preds = %36, %32
  store i32 0, i32* %4, align 4
  br label %151

39:                                               ; preds = %28
  br label %40

40:                                               ; preds = %39, %21
  %41 = load i32, i32* @CommitTsLock, align 4
  %42 = load i32, i32* @LW_SHARED, align 4
  %43 = call i32 @LWLockAcquire(i32 %41, i32 %42)
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** @commitTsShared, align 8
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %50, label %48

48:                                               ; preds = %40
  %49 = call i32 (...) @error_commit_ts_disabled()
  br label %50

50:                                               ; preds = %48, %40
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** @commitTsShared, align 8
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %5, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %77

56:                                               ; preds = %50
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** @commitTsShared, align 8
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load i32*, i32** %6, align 8
  store i32 %60, i32* %61, align 4
  %62 = load i32*, i32** %7, align 8
  %63 = icmp ne i32* %62, null
  br i1 %63, label %64, label %70

64:                                               ; preds = %56
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** @commitTsShared, align 8
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32*, i32** %7, align 8
  store i32 %68, i32* %69, align 4
  br label %70

70:                                               ; preds = %64, %56
  %71 = load i32, i32* @CommitTsLock, align 4
  %72 = call i32 @LWLockRelease(i32 %71)
  %73 = load i32*, i32** %6, align 8
  %74 = load i32, i32* %73, align 4
  %75 = icmp ne i32 %74, 0
  %76 = zext i1 %75 to i32
  store i32 %76, i32* %4, align 4
  br label %151

77:                                               ; preds = %50
  %78 = load %struct.TYPE_14__*, %struct.TYPE_14__** @ShmemVariableCache, align 8
  %79 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  store i32 %80, i32* %12, align 4
  %81 = load %struct.TYPE_14__*, %struct.TYPE_14__** @ShmemVariableCache, align 8
  %82 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  store i32 %83, i32* %13, align 4
  %84 = load i32, i32* %12, align 4
  %85 = call i64 @TransactionIdIsValid(i32 %84)
  %86 = load i32, i32* %13, align 4
  %87 = call i64 @TransactionIdIsValid(i32 %86)
  %88 = icmp eq i64 %85, %87
  %89 = zext i1 %88 to i32
  %90 = call i32 @Assert(i32 %89)
  %91 = load i32, i32* @CommitTsLock, align 4
  %92 = call i32 @LWLockRelease(i32 %91)
  %93 = load i32, i32* %12, align 4
  %94 = call i64 @TransactionIdIsValid(i32 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %106

96:                                               ; preds = %77
  %97 = load i32, i32* %5, align 4
  %98 = load i32, i32* %12, align 4
  %99 = call i64 @TransactionIdPrecedes(i32 %97, i32 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %106, label %101

101:                                              ; preds = %96
  %102 = load i32, i32* %13, align 4
  %103 = load i32, i32* %5, align 4
  %104 = call i64 @TransactionIdPrecedes(i32 %102, i32 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %114

106:                                              ; preds = %101, %96, %77
  %107 = load i32*, i32** %6, align 8
  store i32 0, i32* %107, align 4
  %108 = load i32*, i32** %7, align 8
  %109 = icmp ne i32* %108, null
  br i1 %109, label %110, label %113

110:                                              ; preds = %106
  %111 = load i32, i32* @InvalidRepOriginId, align 4
  %112 = load i32*, i32** %7, align 8
  store i32 %111, i32* %112, align 4
  br label %113

113:                                              ; preds = %110, %106
  store i32 0, i32* %4, align 4
  br label %151

114:                                              ; preds = %101
  %115 = load %struct.TYPE_13__*, %struct.TYPE_13__** @CommitTsCtl, align 8
  %116 = load i32, i32* %8, align 4
  %117 = load i32, i32* %5, align 4
  %118 = call i32 @SimpleLruReadPage_ReadOnly(%struct.TYPE_13__* %115, i32 %116, i32 %117)
  store i32 %118, i32* %10, align 4
  %119 = load %struct.TYPE_13__*, %struct.TYPE_13__** @CommitTsCtl, align 8
  %120 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %119, i32 0, i32 0
  %121 = load %struct.TYPE_10__*, %struct.TYPE_10__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %121, i32 0, i32 0
  %123 = load i64*, i64** %122, align 8
  %124 = load i32, i32* %10, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i64, i64* %123, i64 %125
  %127 = load i64, i64* %126, align 8
  %128 = load i32, i32* @SizeOfCommitTimestampEntry, align 4
  %129 = load i32, i32* %9, align 4
  %130 = mul nsw i32 %128, %129
  %131 = sext i32 %130 to i64
  %132 = add nsw i64 %127, %131
  %133 = load i32, i32* @SizeOfCommitTimestampEntry, align 4
  %134 = call i32 @memcpy(%struct.TYPE_11__* %11, i64 %132, i32 %133)
  %135 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = load i32*, i32** %6, align 8
  store i32 %136, i32* %137, align 4
  %138 = load i32*, i32** %7, align 8
  %139 = icmp ne i32* %138, null
  br i1 %139, label %140, label %144

140:                                              ; preds = %114
  %141 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = load i32*, i32** %7, align 8
  store i32 %142, i32* %143, align 4
  br label %144

144:                                              ; preds = %140, %114
  %145 = load i32, i32* @CommitTsControlLock, align 4
  %146 = call i32 @LWLockRelease(i32 %145)
  %147 = load i32*, i32** %6, align 8
  %148 = load i32, i32* %147, align 4
  %149 = icmp ne i32 %148, 0
  %150 = zext i1 %149 to i32
  store i32 %150, i32* %4, align 4
  br label %151

151:                                              ; preds = %144, %113, %70, %38
  %152 = load i32, i32* %4, align 4
  ret i32 %152
}

declare dso_local i32 @TransactionIdToCTsPage(i32) #1

declare dso_local i32 @TransactionIdToCTsEntry(i32) #1

declare dso_local i64 @TransactionIdIsValid(i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i32) #1

declare dso_local i32 @TransactionIdIsNormal(i32) #1

declare dso_local i32 @LWLockAcquire(i32, i32) #1

declare dso_local i32 @error_commit_ts_disabled(...) #1

declare dso_local i32 @LWLockRelease(i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i64 @TransactionIdPrecedes(i32, i32) #1

declare dso_local i32 @SimpleLruReadPage_ReadOnly(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_11__*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
