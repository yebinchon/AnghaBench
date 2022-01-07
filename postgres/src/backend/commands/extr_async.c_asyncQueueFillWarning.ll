; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_async.c_asyncQueueFillWarning.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_async.c_asyncQueueFillWarning.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@asyncQueueControl = common dso_local global %struct.TYPE_2__* null, align 8
@QUEUE_FULL_WARN_INTERVAL = common dso_local global i32 0, align 4
@QUEUE_HEAD = common dso_local global i32 0, align 4
@InvalidPid = common dso_local global i64 0, align 8
@QUEUE_FIRST_LISTENER = common dso_local global i64 0, align 8
@WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"NOTIFY queue is %.0f%% full\00", align 1
@.str.1 = private unnamed_addr constant [76 x i8] c"The server process with PID %d is among those with the oldest transactions.\00", align 1
@.str.2 = private unnamed_addr constant [84 x i8] c"The NOTIFY queue cannot be emptied until that process ends its current transaction.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @asyncQueueFillWarning to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @asyncQueueFillWarning() #0 {
  %1 = alloca double, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = call double (...) @asyncQueueUsage()
  store double %6, double* %1, align 8
  %7 = load double, double* %1, align 8
  %8 = fcmp olt double %7, 5.000000e-01
  br i1 %8, label %9, label %10

9:                                                ; preds = %0
  br label %75

10:                                               ; preds = %0
  %11 = call i32 (...) @GetCurrentTimestamp()
  store i32 %11, i32* %2, align 4
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** @asyncQueueControl, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* %2, align 4
  %16 = load i32, i32* @QUEUE_FULL_WARN_INTERVAL, align 4
  %17 = call i64 @TimestampDifferenceExceeds(i32 %14, i32 %15, i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %75

19:                                               ; preds = %10
  %20 = load i32, i32* @QUEUE_HEAD, align 4
  store i32 %20, i32* %3, align 4
  %21 = load i64, i64* @InvalidPid, align 8
  store i64 %21, i64* %4, align 8
  %22 = load i64, i64* @QUEUE_FIRST_LISTENER, align 8
  store i64 %22, i64* %5, align 8
  br label %23

23:                                               ; preds = %46, %19
  %24 = load i64, i64* %5, align 8
  %25 = icmp sgt i64 %24, 0
  br i1 %25, label %26, label %49

26:                                               ; preds = %23
  %27 = load i64, i64* %5, align 8
  %28 = call i64 @QUEUE_BACKEND_PID(i64 %27)
  %29 = load i64, i64* @InvalidPid, align 8
  %30 = icmp ne i64 %28, %29
  %31 = zext i1 %30 to i32
  %32 = call i32 @Assert(i32 %31)
  %33 = load i32, i32* %3, align 4
  %34 = load i64, i64* %5, align 8
  %35 = call i32 @QUEUE_BACKEND_POS(i64 %34)
  %36 = call i32 @QUEUE_POS_MIN(i32 %33, i32 %35)
  store i32 %36, i32* %3, align 4
  %37 = load i32, i32* %3, align 4
  %38 = load i64, i64* %5, align 8
  %39 = call i32 @QUEUE_BACKEND_POS(i64 %38)
  %40 = call i64 @QUEUE_POS_EQUAL(i32 %37, i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %26
  %43 = load i64, i64* %5, align 8
  %44 = call i64 @QUEUE_BACKEND_PID(i64 %43)
  store i64 %44, i64* %4, align 8
  br label %45

45:                                               ; preds = %42, %26
  br label %46

46:                                               ; preds = %45
  %47 = load i64, i64* %5, align 8
  %48 = call i64 @QUEUE_NEXT_LISTENER(i64 %47)
  store i64 %48, i64* %5, align 8
  br label %23

49:                                               ; preds = %23
  %50 = load i32, i32* @WARNING, align 4
  %51 = load double, double* %1, align 8
  %52 = fmul double %51, 1.000000e+02
  %53 = call i32 @errmsg(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), double %52)
  %54 = load i64, i64* %4, align 8
  %55 = load i64, i64* @InvalidPid, align 8
  %56 = icmp ne i64 %54, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %49
  %58 = load i64, i64* %4, align 8
  %59 = call i32 @errdetail(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.1, i64 0, i64 0), i64 %58)
  br label %61

60:                                               ; preds = %49
  br label %61

61:                                               ; preds = %60, %57
  %62 = phi i32 [ %59, %57 ], [ 0, %60 ]
  %63 = load i64, i64* %4, align 8
  %64 = load i64, i64* @InvalidPid, align 8
  %65 = icmp ne i64 %63, %64
  br i1 %65, label %66, label %68

66:                                               ; preds = %61
  %67 = call i32 @errhint(i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.2, i64 0, i64 0))
  br label %69

68:                                               ; preds = %61
  br label %69

69:                                               ; preds = %68, %66
  %70 = phi i32 [ %67, %66 ], [ 0, %68 ]
  %71 = call i32 @ereport(i32 %50, i32 %70)
  %72 = load i32, i32* %2, align 4
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** @asyncQueueControl, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 4
  br label %75

75:                                               ; preds = %9, %69, %10
  ret void
}

declare dso_local double @asyncQueueUsage(...) #1

declare dso_local i32 @GetCurrentTimestamp(...) #1

declare dso_local i64 @TimestampDifferenceExceeds(i32, i32, i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i64 @QUEUE_BACKEND_PID(i64) #1

declare dso_local i32 @QUEUE_POS_MIN(i32, i32) #1

declare dso_local i32 @QUEUE_BACKEND_POS(i64) #1

declare dso_local i64 @QUEUE_POS_EQUAL(i32, i32) #1

declare dso_local i64 @QUEUE_NEXT_LISTENER(i64) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errmsg(i8*, double) #1

declare dso_local i32 @errdetail(i8*, i64) #1

declare dso_local i32 @errhint(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
