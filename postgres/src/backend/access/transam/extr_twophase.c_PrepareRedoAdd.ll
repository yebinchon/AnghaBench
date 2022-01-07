; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_twophase.c_PrepareRedoAdd.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_twophase.c_PrepareRedoAdd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, %struct.TYPE_5__**, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i32, %struct.TYPE_5__* }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }

@TwoPhaseStateLock = common dso_local global i32 0, align 4
@LW_EXCLUSIVE = common dso_local global i32 0, align 4
@TwoPhaseState = common dso_local global %struct.TYPE_6__* null, align 8
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_OUT_OF_MEMORY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"maximum number of prepared transactions reached\00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"Increase max_prepared_transactions (currently %d).\00", align 1
@max_prepared_xacts = common dso_local global i64 0, align 8
@InvalidBackendId = common dso_local global i32 0, align 4
@InvalidRepOriginId = common dso_local global i64 0, align 8
@DEBUG2 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [51 x i8] c"added 2PC data in shared memory for transaction %u\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @PrepareRedoAdd(i8* %0, i8* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_4__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_5__*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = bitcast i8* %13 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %14, %struct.TYPE_4__** %9, align 8
  %15 = load i32, i32* @TwoPhaseStateLock, align 4
  %16 = load i32, i32* @LW_EXCLUSIVE, align 4
  %17 = call i32 @LWLockHeldByMeInMode(i32 %15, i32 %16)
  %18 = call i32 @Assert(i32 %17)
  %19 = call i32 (...) @RecoveryInProgress()
  %20 = call i32 @Assert(i32 %19)
  %21 = load i8*, i8** %5, align 8
  %22 = call i32 @MAXALIGN(i32 16)
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8, i8* %21, i64 %23
  store i8* %24, i8** %10, align 8
  %25 = load i8*, i8** %10, align 8
  store i8* %25, i8** %11, align 8
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** @TwoPhaseState, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 2
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %27, align 8
  %29 = icmp eq %struct.TYPE_5__* %28, null
  br i1 %29, label %30, label %38

30:                                               ; preds = %4
  %31 = load i32, i32* @ERROR, align 4
  %32 = load i32, i32* @ERRCODE_OUT_OF_MEMORY, align 4
  %33 = call i32 @errcode(i32 %32)
  %34 = call i32 @errmsg(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  %35 = load i64, i64* @max_prepared_xacts, align 8
  %36 = call i32 @errhint(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i64 %35)
  %37 = call i32 @ereport(i32 %31, i32 %36)
  br label %38

38:                                               ; preds = %30, %4
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** @TwoPhaseState, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 2
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %40, align 8
  store %struct.TYPE_5__* %41, %struct.TYPE_5__** %12, align 8
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 10
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %43, align 8
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** @TwoPhaseState, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 2
  store %struct.TYPE_5__* %44, %struct.TYPE_5__** %46, align 8
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 9
  store i32 %49, i32* %51, align 8
  %52 = load i8*, i8** %6, align 8
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 8
  store i8* %52, i8** %54, align 8
  %55 = load i8*, i8** %7, align 8
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 7
  store i8* %55, i8** %57, align 8
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 2
  store i32 %60, i32* %62, align 8
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 6
  store i32 %65, i32* %67, align 8
  %68 = load i32, i32* @InvalidBackendId, align 4
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 5
  store i32 %68, i32* %70, align 4
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  store i32 0, i32* %72, align 8
  %73 = load i8*, i8** %6, align 8
  %74 = call i32 @XLogRecPtrIsInvalid(i8* %73)
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 4
  store i32 %74, i32* %76, align 8
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 1
  store i32 1, i32* %78, align 4
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 4
  %82 = load i8*, i8** %11, align 8
  %83 = call i32 @strcpy(i32 %81, i8* %82)
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** @TwoPhaseState, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @max_prepared_xacts, align 8
  %88 = icmp slt i64 %86, %87
  %89 = zext i1 %88 to i32
  %90 = call i32 @Assert(i32 %89)
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** @TwoPhaseState, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 1
  %94 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %93, align 8
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** @TwoPhaseState, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = add nsw i64 %97, 1
  store i64 %98, i64* %96, align 8
  %99 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %94, i64 %97
  store %struct.TYPE_5__* %91, %struct.TYPE_5__** %99, align 8
  %100 = load i64, i64* %8, align 8
  %101 = load i64, i64* @InvalidRepOriginId, align 8
  %102 = icmp ne i64 %100, %101
  br i1 %102, label %103, label %110

103:                                              ; preds = %38
  %104 = load i64, i64* %8, align 8
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load i8*, i8** %7, align 8
  %109 = call i32 @replorigin_advance(i64 %104, i32 %107, i8* %108, i32 0, i32 0)
  br label %110

110:                                              ; preds = %103, %38
  %111 = load i32, i32* @DEBUG2, align 4
  %112 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 8
  %115 = call i32 @elog(i32 %111, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0), i32 %114)
  ret void
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @LWLockHeldByMeInMode(i32, i32) #1

declare dso_local i32 @RecoveryInProgress(...) #1

declare dso_local i32 @MAXALIGN(i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local i32 @errhint(i8*, i64) #1

declare dso_local i32 @XLogRecPtrIsInvalid(i8*) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @replorigin_advance(i64, i32, i8*, i32, i32) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
