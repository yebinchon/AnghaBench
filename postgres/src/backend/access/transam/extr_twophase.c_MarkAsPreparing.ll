; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_twophase.c_MarkAsPreparing.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_twophase.c_MarkAsPreparing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_5__**, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, %struct.TYPE_5__*, i32 }

@GIDSIZE = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_INVALID_PARAMETER_VALUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"transaction identifier \22%s\22 is too long\00", align 1
@max_prepared_xacts = common dso_local global i32 0, align 4
@ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"prepared transactions are disabled\00", align 1
@.str.2 = private unnamed_addr constant [50 x i8] c"Set max_prepared_transactions to a nonzero value.\00", align 1
@twophaseExitRegistered = common dso_local global i32 0, align 4
@AtProcExit_Twophase = common dso_local global i32 0, align 4
@TwoPhaseStateLock = common dso_local global i32 0, align 4
@LW_EXCLUSIVE = common dso_local global i32 0, align 4
@TwoPhaseState = common dso_local global %struct.TYPE_6__* null, align 8
@ERRCODE_DUPLICATE_OBJECT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [46 x i8] c"transaction identifier \22%s\22 is already in use\00", align 1
@ERRCODE_OUT_OF_MEMORY = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [48 x i8] c"maximum number of prepared transactions reached\00", align 1
@.str.5 = private unnamed_addr constant [51 x i8] c"Increase max_prepared_transactions (currently %d).\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_5__* @MarkAsPreparing(i32 %0, i8* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_5__*, align 8
  %12 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %13 = load i8*, i8** %7, align 8
  %14 = call i64 @strlen(i8* %13)
  %15 = load i64, i64* @GIDSIZE, align 8
  %16 = icmp sge i64 %14, %15
  br i1 %16, label %17, label %24

17:                                               ; preds = %5
  %18 = load i32, i32* @ERROR, align 4
  %19 = load i32, i32* @ERRCODE_INVALID_PARAMETER_VALUE, align 4
  %20 = call i32 @errcode(i32 %19)
  %21 = load i8*, i8** %7, align 8
  %22 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i8* %21)
  %23 = call i32 @ereport(i32 %18, i32 %22)
  br label %24

24:                                               ; preds = %17, %5
  %25 = load i32, i32* @max_prepared_xacts, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %24
  %28 = load i32, i32* @ERROR, align 4
  %29 = load i32, i32* @ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE, align 4
  %30 = call i32 @errcode(i32 %29)
  %31 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %32 = call i32 (i8*, ...) @errhint(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0))
  %33 = call i32 @ereport(i32 %28, i32 %32)
  br label %34

34:                                               ; preds = %27, %24
  %35 = load i32, i32* @twophaseExitRegistered, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %34
  %38 = load i32, i32* @AtProcExit_Twophase, align 4
  %39 = call i32 @before_shmem_exit(i32 %38, i32 0)
  store i32 1, i32* @twophaseExitRegistered, align 4
  br label %40

40:                                               ; preds = %37, %34
  %41 = load i32, i32* @TwoPhaseStateLock, align 4
  %42 = load i32, i32* @LW_EXCLUSIVE, align 4
  %43 = call i32 @LWLockAcquire(i32 %41, i32 %42)
  store i32 0, i32* %12, align 4
  br label %44

44:                                               ; preds = %72, %40
  %45 = load i32, i32* %12, align 4
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** @TwoPhaseState, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp slt i32 %45, %48
  br i1 %49, label %50, label %75

50:                                               ; preds = %44
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** @TwoPhaseState, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 1
  %53 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %52, align 8
  %54 = load i32, i32* %12, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %53, i64 %55
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %56, align 8
  store %struct.TYPE_5__* %57, %struct.TYPE_5__** %11, align 8
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = load i8*, i8** %7, align 8
  %62 = call i64 @strcmp(i32 %60, i8* %61)
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %64, label %71

64:                                               ; preds = %50
  %65 = load i32, i32* @ERROR, align 4
  %66 = load i32, i32* @ERRCODE_DUPLICATE_OBJECT, align 4
  %67 = call i32 @errcode(i32 %66)
  %68 = load i8*, i8** %7, align 8
  %69 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0), i8* %68)
  %70 = call i32 @ereport(i32 %65, i32 %69)
  br label %71

71:                                               ; preds = %64, %50
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %12, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %12, align 4
  br label %44

75:                                               ; preds = %44
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** @TwoPhaseState, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 2
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %77, align 8
  %79 = icmp eq %struct.TYPE_5__* %78, null
  br i1 %79, label %80, label %88

80:                                               ; preds = %75
  %81 = load i32, i32* @ERROR, align 4
  %82 = load i32, i32* @ERRCODE_OUT_OF_MEMORY, align 4
  %83 = call i32 @errcode(i32 %82)
  %84 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i64 0, i64 0))
  %85 = load i32, i32* @max_prepared_xacts, align 4
  %86 = call i32 (i8*, ...) @errhint(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.5, i64 0, i64 0), i32 %85)
  %87 = call i32 @ereport(i32 %81, i32 %86)
  br label %88

88:                                               ; preds = %80, %75
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** @TwoPhaseState, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 2
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %90, align 8
  store %struct.TYPE_5__* %91, %struct.TYPE_5__** %11, align 8
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 1
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %93, align 8
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** @TwoPhaseState, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 2
  store %struct.TYPE_5__* %94, %struct.TYPE_5__** %96, align 8
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %98 = load i32, i32* %6, align 4
  %99 = load i8*, i8** %7, align 8
  %100 = load i32, i32* %8, align 4
  %101 = load i32, i32* %9, align 4
  %102 = load i32, i32* %10, align 4
  %103 = call i32 @MarkAsPreparingGuts(%struct.TYPE_5__* %97, i32 %98, i8* %99, i32 %100, i32 %101, i32 %102)
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 0
  store i32 0, i32* %105, align 8
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** @TwoPhaseState, align 8
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* @max_prepared_xacts, align 4
  %110 = icmp slt i32 %108, %109
  %111 = zext i1 %110 to i32
  %112 = call i32 @Assert(i32 %111)
  %113 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %114 = load %struct.TYPE_6__*, %struct.TYPE_6__** @TwoPhaseState, align 8
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 1
  %116 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %115, align 8
  %117 = load %struct.TYPE_6__*, %struct.TYPE_6__** @TwoPhaseState, align 8
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %118, align 8
  %121 = sext i32 %119 to i64
  %122 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %116, i64 %121
  store %struct.TYPE_5__* %113, %struct.TYPE_5__** %122, align 8
  %123 = load i32, i32* @TwoPhaseStateLock, align 4
  %124 = call i32 @LWLockRelease(i32 %123)
  %125 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  ret %struct.TYPE_5__* %125
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, ...) #1

declare dso_local i32 @errhint(i8*, ...) #1

declare dso_local i32 @before_shmem_exit(i32, i32) #1

declare dso_local i32 @LWLockAcquire(i32, i32) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @MarkAsPreparingGuts(%struct.TYPE_5__*, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @LWLockRelease(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
