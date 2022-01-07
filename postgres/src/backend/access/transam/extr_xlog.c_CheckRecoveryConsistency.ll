; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_xlog.c_CheckRecoveryConsistency.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_xlog.c_CheckRecoveryConsistency.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }

@minRecoveryPoint = common dso_local global i32 0, align 4
@InArchiveRecovery = common dso_local global i32 0, align 4
@XLogCtl = common dso_local global %struct.TYPE_3__* null, align 8
@ControlFile = common dso_local global %struct.TYPE_4__* null, align 8
@DEBUG1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"end of backup reached\00", align 1
@ControlFileLock = common dso_local global i32 0, align 4
@LW_EXCLUSIVE = common dso_local global i32 0, align 4
@InvalidXLogRecPtr = common dso_local global i8* null, align 8
@reachedConsistency = common dso_local global i32 0, align 4
@LOG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"consistent recovery state reached at %X/%X\00", align 1
@standbyState = common dso_local global i64 0, align 8
@STANDBY_SNAPSHOT_READY = common dso_local global i64 0, align 8
@LocalHotStandbyActive = common dso_local global i32 0, align 4
@IsUnderPostmaster = common dso_local global i64 0, align 8
@PMSIGNAL_BEGIN_HOT_STANDBY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @CheckRecoveryConsistency to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CheckRecoveryConsistency() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @minRecoveryPoint, align 4
  %3 = call i64 @XLogRecPtrIsInvalid(i32 %2)
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %0
  br label %102

6:                                                ; preds = %0
  %7 = load i32, i32* @InArchiveRecovery, align 4
  %8 = call i32 @Assert(i32 %7)
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** @XLogCtl, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %1, align 4
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ControlFile, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i64 @XLogRecPtrIsInvalid(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %52, label %17

17:                                               ; preds = %6
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ControlFile, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %1, align 4
  %22 = icmp sle i32 %20, %21
  br i1 %22, label %23, label %52

23:                                               ; preds = %17
  %24 = load i32, i32* @DEBUG1, align 4
  %25 = call i32 @elog(i32 %24, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* @ControlFileLock, align 4
  %27 = load i32, i32* @LW_EXCLUSIVE, align 4
  %28 = call i32 @LWLockAcquire(i32 %26, i32 %27)
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ControlFile, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %1, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %23
  %35 = load i32, i32* %1, align 4
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ControlFile, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  br label %38

38:                                               ; preds = %34, %23
  %39 = load i8*, i8** @InvalidXLogRecPtr, align 8
  %40 = ptrtoint i8* %39 to i32
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ControlFile, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 2
  store i32 %40, i32* %42, align 4
  %43 = load i8*, i8** @InvalidXLogRecPtr, align 8
  %44 = ptrtoint i8* %43 to i32
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ControlFile, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 4
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ControlFile, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 3
  store i32 0, i32* %48, align 4
  %49 = call i32 (...) @UpdateControlFile()
  %50 = load i32, i32* @ControlFileLock, align 4
  %51 = call i32 @LWLockRelease(i32 %50)
  br label %52

52:                                               ; preds = %38, %17, %6
  %53 = load i32, i32* @reachedConsistency, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %78, label %55

55:                                               ; preds = %52
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ControlFile, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %78, label %60

60:                                               ; preds = %55
  %61 = load i32, i32* @minRecoveryPoint, align 4
  %62 = load i32, i32* %1, align 4
  %63 = icmp sle i32 %61, %62
  br i1 %63, label %64, label %78

64:                                               ; preds = %60
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ControlFile, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = call i64 @XLogRecPtrIsInvalid(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %78

70:                                               ; preds = %64
  %71 = call i32 (...) @XLogCheckInvalidPages()
  store i32 1, i32* @reachedConsistency, align 4
  %72 = load i32, i32* @LOG, align 4
  %73 = load i32, i32* %1, align 4
  %74 = ashr i32 %73, 32
  %75 = load i32, i32* %1, align 4
  %76 = call i32 @errmsg(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %74, i32 %75)
  %77 = call i32 @ereport(i32 %72, i32 %76)
  br label %78

78:                                               ; preds = %70, %64, %60, %55, %52
  %79 = load i64, i64* @standbyState, align 8
  %80 = load i64, i64* @STANDBY_SNAPSHOT_READY, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %102

82:                                               ; preds = %78
  %83 = load i32, i32* @LocalHotStandbyActive, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %102, label %85

85:                                               ; preds = %82
  %86 = load i32, i32* @reachedConsistency, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %102

88:                                               ; preds = %85
  %89 = load i64, i64* @IsUnderPostmaster, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %102

91:                                               ; preds = %88
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** @XLogCtl, align 8
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 2
  %94 = call i32 @SpinLockAcquire(i32* %93)
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** @XLogCtl, align 8
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 1
  store i32 1, i32* %96, align 4
  %97 = load %struct.TYPE_3__*, %struct.TYPE_3__** @XLogCtl, align 8
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 2
  %99 = call i32 @SpinLockRelease(i32* %98)
  store i32 1, i32* @LocalHotStandbyActive, align 4
  %100 = load i32, i32* @PMSIGNAL_BEGIN_HOT_STANDBY, align 4
  %101 = call i32 @SendPostmasterSignal(i32 %100)
  br label %102

102:                                              ; preds = %5, %91, %88, %85, %82, %78
  ret void
}

declare dso_local i64 @XLogRecPtrIsInvalid(i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @elog(i32, i8*) #1

declare dso_local i32 @LWLockAcquire(i32, i32) #1

declare dso_local i32 @UpdateControlFile(...) #1

declare dso_local i32 @LWLockRelease(i32) #1

declare dso_local i32 @XLogCheckInvalidPages(...) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errmsg(i8*, i32, i32) #1

declare dso_local i32 @SpinLockAcquire(i32*) #1

declare dso_local i32 @SpinLockRelease(i32*) #1

declare dso_local i32 @SendPostmasterSignal(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
