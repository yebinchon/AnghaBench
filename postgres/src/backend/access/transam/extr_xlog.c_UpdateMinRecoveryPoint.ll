; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_xlog.c_UpdateMinRecoveryPoint.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_xlog.c_UpdateMinRecoveryPoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i8* }
%struct.TYPE_3__ = type { i32, i32, i8* }

@updateMinRecoveryPoint = common dso_local global i32 0, align 4
@minRecoveryPoint = common dso_local global i32 0, align 4
@InRecovery = common dso_local global i64 0, align 8
@ControlFileLock = common dso_local global i32 0, align 4
@LW_EXCLUSIVE = common dso_local global i32 0, align 4
@ControlFile = common dso_local global %struct.TYPE_4__* null, align 8
@minRecoveryPointTLI = common dso_local global i8* null, align 8
@XLogCtl = common dso_local global %struct.TYPE_3__* null, align 8
@WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"xlog min recovery request %X/%X is past current point %X/%X\00", align 1
@DEBUG2 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"updated min recovery point to %X/%X on timeline %u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @UpdateMinRecoveryPoint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @UpdateMinRecoveryPoint(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* @updateMinRecoveryPoint, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %16

9:                                                ; preds = %2
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %17, label %12

12:                                               ; preds = %9
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* @minRecoveryPoint, align 4
  %15 = icmp sle i32 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %12, %2
  br label %102

17:                                               ; preds = %12, %9
  %18 = load i32, i32* @minRecoveryPoint, align 4
  %19 = call i64 @XLogRecPtrIsInvalid(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %17
  %22 = load i64, i64* @InRecovery, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  store i32 0, i32* @updateMinRecoveryPoint, align 4
  br label %102

25:                                               ; preds = %21, %17
  %26 = load i32, i32* @ControlFileLock, align 4
  %27 = load i32, i32* @LW_EXCLUSIVE, align 4
  %28 = call i32 @LWLockAcquire(i32 %26, i32 %27)
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ControlFile, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  store i32 %31, i32* @minRecoveryPoint, align 4
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ControlFile, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  %34 = load i8*, i8** %33, align 8
  store i8* %34, i8** @minRecoveryPointTLI, align 8
  %35 = load i32, i32* @minRecoveryPoint, align 4
  %36 = call i64 @XLogRecPtrIsInvalid(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %25
  store i32 0, i32* @updateMinRecoveryPoint, align 4
  br label %99

39:                                               ; preds = %25
  %40 = load i32, i32* %4, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %39
  %43 = load i32, i32* @minRecoveryPoint, align 4
  %44 = load i32, i32* %3, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %98

46:                                               ; preds = %42, %39
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** @XLogCtl, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 1
  %49 = call i32 @SpinLockAcquire(i32* %48)
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** @XLogCtl, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  store i32 %52, i32* %5, align 4
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** @XLogCtl, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 2
  %55 = load i8*, i8** %54, align 8
  store i8* %55, i8** %6, align 8
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** @XLogCtl, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 1
  %58 = call i32 @SpinLockRelease(i32* %57)
  %59 = load i32, i32* %4, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %74, label %61

61:                                               ; preds = %46
  %62 = load i32, i32* %5, align 4
  %63 = load i32, i32* %3, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %74

65:                                               ; preds = %61
  %66 = load i32, i32* @WARNING, align 4
  %67 = load i32, i32* %3, align 4
  %68 = ashr i32 %67, 32
  %69 = load i32, i32* %3, align 4
  %70 = load i32, i32* %5, align 4
  %71 = ashr i32 %70, 32
  %72 = load i32, i32* %5, align 4
  %73 = call i32 @elog(i32 %66, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i32 %68, i32 %69, i32 %71, i32 %72)
  br label %74

74:                                               ; preds = %65, %61, %46
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ControlFile, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* %5, align 4
  %79 = icmp slt i32 %77, %78
  br i1 %79, label %80, label %97

80:                                               ; preds = %74
  %81 = load i32, i32* %5, align 4
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ControlFile, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  store i32 %81, i32* %83, align 8
  %84 = load i8*, i8** %6, align 8
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ControlFile, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 1
  store i8* %84, i8** %86, align 8
  %87 = call i32 (...) @UpdateControlFile()
  %88 = load i32, i32* %5, align 4
  store i32 %88, i32* @minRecoveryPoint, align 4
  %89 = load i8*, i8** %6, align 8
  store i8* %89, i8** @minRecoveryPointTLI, align 8
  %90 = load i32, i32* @DEBUG2, align 4
  %91 = load i32, i32* @minRecoveryPoint, align 4
  %92 = ashr i32 %91, 32
  %93 = load i32, i32* @minRecoveryPoint, align 4
  %94 = load i8*, i8** %6, align 8
  %95 = call i32 @errmsg(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i32 %92, i32 %93, i8* %94)
  %96 = call i32 @ereport(i32 %90, i32 %95)
  br label %97

97:                                               ; preds = %80, %74
  br label %98

98:                                               ; preds = %97, %42
  br label %99

99:                                               ; preds = %98, %38
  %100 = load i32, i32* @ControlFileLock, align 4
  %101 = call i32 @LWLockRelease(i32 %100)
  br label %102

102:                                              ; preds = %99, %24, %16
  ret void
}

declare dso_local i64 @XLogRecPtrIsInvalid(i32) #1

declare dso_local i32 @LWLockAcquire(i32, i32) #1

declare dso_local i32 @SpinLockAcquire(i32*) #1

declare dso_local i32 @SpinLockRelease(i32*) #1

declare dso_local i32 @elog(i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @UpdateControlFile(...) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errmsg(i8*, i32, i32, i8*) #1

declare dso_local i32 @LWLockRelease(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
