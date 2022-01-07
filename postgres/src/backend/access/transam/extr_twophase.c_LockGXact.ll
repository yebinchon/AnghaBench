; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_twophase.c_LockGXact.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_twophase.c_LockGXact.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, %struct.TYPE_8__** }
%struct.TYPE_8__ = type { i64, i64, i64, i32, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64 }

@twophaseExitRegistered = common dso_local global i32 0, align 4
@AtProcExit_Twophase = common dso_local global i32 0, align 4
@TwoPhaseStateLock = common dso_local global i32 0, align 4
@LW_EXCLUSIVE = common dso_local global i32 0, align 4
@TwoPhaseState = common dso_local global %struct.TYPE_9__* null, align 8
@ProcGlobal = common dso_local global %struct.TYPE_10__* null, align 8
@InvalidBackendId = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"prepared transaction with identifier \22%s\22 is busy\00", align 1
@ERRCODE_INSUFFICIENT_PRIVILEGE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"permission denied to finish prepared transaction\00", align 1
@.str.2 = private unnamed_addr constant [61 x i8] c"Must be superuser or the user that prepared the transaction.\00", align 1
@MyDatabaseId = common dso_local global i64 0, align 8
@ERRCODE_FEATURE_NOT_SUPPORTED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [49 x i8] c"prepared transaction belongs to another database\00", align 1
@.str.4 = private unnamed_addr constant [73 x i8] c"Connect to the database where the transaction was prepared to finish it.\00", align 1
@MyBackendId = common dso_local global i64 0, align 8
@MyLockedGxact = common dso_local global %struct.TYPE_8__* null, align 8
@ERRCODE_UNDEFINED_OBJECT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [57 x i8] c"prepared transaction with identifier \22%s\22 does not exist\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_8__* (i8*, i64)* @LockGXact to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_8__* @LockGXact(i8* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load i32, i32* @twophaseExitRegistered, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* @AtProcExit_Twophase, align 4
  %13 = call i32 @before_shmem_exit(i32 %12, i32 0)
  store i32 1, i32* @twophaseExitRegistered, align 4
  br label %14

14:                                               ; preds = %11, %2
  %15 = load i32, i32* @TwoPhaseStateLock, align 4
  %16 = load i32, i32* @LW_EXCLUSIVE, align 4
  %17 = call i32 @LWLockAcquire(i32 %15, i32 %16)
  store i32 0, i32* %6, align 4
  br label %18

18:                                               ; preds = %103, %14
  %19 = load i32, i32* %6, align 4
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** @TwoPhaseState, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp slt i32 %19, %22
  br i1 %23, label %24, label %106

24:                                               ; preds = %18
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** @TwoPhaseState, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 1
  %27 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %26, align 8
  %28 = load i32, i32* %6, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %27, i64 %29
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %30, align 8
  store %struct.TYPE_8__* %31, %struct.TYPE_8__** %7, align 8
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** @ProcGlobal, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %33, align 8
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i64 %37
  store %struct.TYPE_7__* %38, %struct.TYPE_7__** %8, align 8
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %24
  br label %103

44:                                               ; preds = %24
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 8
  %48 = load i8*, i8** %4, align 8
  %49 = call i64 @strcmp(i32 %47, i8* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %44
  br label %103

52:                                               ; preds = %44
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @InvalidBackendId, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %65

58:                                               ; preds = %52
  %59 = load i32, i32* @ERROR, align 4
  %60 = load i32, i32* @ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE, align 4
  %61 = call i32 @errcode(i32 %60)
  %62 = load i8*, i8** %4, align 8
  %63 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i8* %62)
  %64 = call i32 @ereport(i32 %59, i32 %63)
  br label %65

65:                                               ; preds = %58, %52
  %66 = load i64, i64* %5, align 8
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %66, %69
  br i1 %70, label %71, label %82

71:                                               ; preds = %65
  %72 = load i64, i64* %5, align 8
  %73 = call i32 @superuser_arg(i64 %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %82, label %75

75:                                               ; preds = %71
  %76 = load i32, i32* @ERROR, align 4
  %77 = load i32, i32* @ERRCODE_INSUFFICIENT_PRIVILEGE, align 4
  %78 = call i32 @errcode(i32 %77)
  %79 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  %80 = call i32 @errhint(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.2, i64 0, i64 0))
  %81 = call i32 @ereport(i32 %76, i32 %80)
  br label %82

82:                                               ; preds = %75, %71, %65
  %83 = load i64, i64* @MyDatabaseId, align 8
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %83, %86
  br i1 %87, label %88, label %95

88:                                               ; preds = %82
  %89 = load i32, i32* @ERROR, align 4
  %90 = load i32, i32* @ERRCODE_FEATURE_NOT_SUPPORTED, align 4
  %91 = call i32 @errcode(i32 %90)
  %92 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0))
  %93 = call i32 @errhint(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.4, i64 0, i64 0))
  %94 = call i32 @ereport(i32 %89, i32 %93)
  br label %95

95:                                               ; preds = %88, %82
  %96 = load i64, i64* @MyBackendId, align 8
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 1
  store i64 %96, i64* %98, align 8
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  store %struct.TYPE_8__* %99, %struct.TYPE_8__** @MyLockedGxact, align 8
  %100 = load i32, i32* @TwoPhaseStateLock, align 4
  %101 = call i32 @LWLockRelease(i32 %100)
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  store %struct.TYPE_8__* %102, %struct.TYPE_8__** %3, align 8
  br label %115

103:                                              ; preds = %51, %43
  %104 = load i32, i32* %6, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %6, align 4
  br label %18

106:                                              ; preds = %18
  %107 = load i32, i32* @TwoPhaseStateLock, align 4
  %108 = call i32 @LWLockRelease(i32 %107)
  %109 = load i32, i32* @ERROR, align 4
  %110 = load i32, i32* @ERRCODE_UNDEFINED_OBJECT, align 4
  %111 = call i32 @errcode(i32 %110)
  %112 = load i8*, i8** %4, align 8
  %113 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.5, i64 0, i64 0), i8* %112)
  %114 = call i32 @ereport(i32 %109, i32 %113)
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %3, align 8
  br label %115

115:                                              ; preds = %106, %95
  %116 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  ret %struct.TYPE_8__* %116
}

declare dso_local i32 @before_shmem_exit(i32, i32) #1

declare dso_local i32 @LWLockAcquire(i32, i32) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, ...) #1

declare dso_local i32 @superuser_arg(i64) #1

declare dso_local i32 @errhint(i8*) #1

declare dso_local i32 @LWLockRelease(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
