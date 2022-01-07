; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_xlog.c_XLogNeedsFlush.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_xlog.c_XLogNeedsFlush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32 }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i32, %struct.TYPE_5__ }

@minRecoveryPoint = common dso_local global i64 0, align 8
@InRecovery = common dso_local global i64 0, align 8
@updateMinRecoveryPoint = common dso_local global i32 0, align 4
@ControlFileLock = common dso_local global i32 0, align 4
@LW_SHARED = common dso_local global i32 0, align 4
@ControlFile = common dso_local global %struct.TYPE_6__* null, align 8
@minRecoveryPointTLI = common dso_local global i32 0, align 4
@LogwrtResult = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@XLogCtl = common dso_local global %struct.TYPE_4__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @XLogNeedsFlush(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %4 = call i64 (...) @RecoveryInProgress()
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %50

6:                                                ; preds = %1
  %7 = load i64, i64* @minRecoveryPoint, align 8
  %8 = call i64 @XLogRecPtrIsInvalid(i64 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %6
  %11 = load i64, i64* @InRecovery, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %10
  store i32 0, i32* @updateMinRecoveryPoint, align 4
  br label %14

14:                                               ; preds = %13, %10, %6
  %15 = load i64, i64* %3, align 8
  %16 = load i64, i64* @minRecoveryPoint, align 8
  %17 = icmp sle i64 %15, %16
  br i1 %17, label %21, label %18

18:                                               ; preds = %14
  %19 = load i32, i32* @updateMinRecoveryPoint, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %18, %14
  store i32 0, i32* %2, align 4
  br label %70

22:                                               ; preds = %18
  %23 = load i32, i32* @ControlFileLock, align 4
  %24 = load i32, i32* @LW_SHARED, align 4
  %25 = call i32 @LWLockConditionalAcquire(i32 %23, i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %22
  store i32 1, i32* %2, align 4
  br label %70

28:                                               ; preds = %22
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ControlFile, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  store i64 %31, i64* @minRecoveryPoint, align 8
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ControlFile, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  store i32 %34, i32* @minRecoveryPointTLI, align 4
  %35 = load i32, i32* @ControlFileLock, align 4
  %36 = call i32 @LWLockRelease(i32 %35)
  %37 = load i64, i64* @minRecoveryPoint, align 8
  %38 = call i64 @XLogRecPtrIsInvalid(i64 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %28
  store i32 0, i32* @updateMinRecoveryPoint, align 4
  br label %41

41:                                               ; preds = %40, %28
  %42 = load i64, i64* %3, align 8
  %43 = load i64, i64* @minRecoveryPoint, align 8
  %44 = icmp sle i64 %42, %43
  br i1 %44, label %48, label %45

45:                                               ; preds = %41
  %46 = load i32, i32* @updateMinRecoveryPoint, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %45, %41
  store i32 0, i32* %2, align 4
  br label %70

49:                                               ; preds = %45
  store i32 1, i32* %2, align 4
  br label %70

50:                                               ; preds = %1
  %51 = load i64, i64* %3, align 8
  %52 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @LogwrtResult, i32 0, i32 0), align 8
  %53 = icmp sle i64 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %50
  store i32 0, i32* %2, align 4
  br label %70

55:                                               ; preds = %50
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** @XLogCtl, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = call i32 @SpinLockAcquire(i32* %57)
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** @XLogCtl, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 1
  %61 = bitcast %struct.TYPE_5__* %60 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 bitcast (%struct.TYPE_5__* @LogwrtResult to i8*), i8* align 8 %61, i64 8, i1 false)
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** @XLogCtl, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = call i32 @SpinLockRelease(i32* %63)
  %65 = load i64, i64* %3, align 8
  %66 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @LogwrtResult, i32 0, i32 0), align 8
  %67 = icmp sle i64 %65, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %55
  store i32 0, i32* %2, align 4
  br label %70

69:                                               ; preds = %55
  store i32 1, i32* %2, align 4
  br label %70

70:                                               ; preds = %69, %68, %54, %49, %48, %27, %21
  %71 = load i32, i32* %2, align 4
  ret i32 %71
}

declare dso_local i64 @RecoveryInProgress(...) #1

declare dso_local i64 @XLogRecPtrIsInvalid(i64) #1

declare dso_local i32 @LWLockConditionalAcquire(i32, i32) #1

declare dso_local i32 @LWLockRelease(i32) #1

declare dso_local i32 @SpinLockAcquire(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @SpinLockRelease(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
