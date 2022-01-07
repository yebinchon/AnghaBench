; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/misc/extr_timeout.c_schedule_alarm.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/misc/extr_timeout.c_schedule_alarm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.itimerval = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i32 }

@num_active_timeouts = common dso_local global i64 0, align 8
@active_timeouts = common dso_local global %struct.TYPE_4__** null, align 8
@ITIMER_REAL = common dso_local global i32 0, align 4
@FATAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"could not enable SIGALRM timer: %m\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @schedule_alarm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @schedule_alarm(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.itimerval, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = load i64, i64* @num_active_timeouts, align 8
  %7 = icmp sgt i64 %6, 0
  br i1 %7, label %8, label %38

8:                                                ; preds = %1
  %9 = call i32 @MemSet(%struct.itimerval* %3, i32 0, i32 16)
  %10 = load i32, i32* %2, align 4
  %11 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @active_timeouts, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %11, i64 0
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @TimestampDifference(i32 %10, i32 %15, i64* %4, i32* %5)
  %17 = load i64, i64* %4, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %8
  %20 = load i32, i32* %5, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  store i32 1, i32* %5, align 4
  br label %23

23:                                               ; preds = %22, %19, %8
  %24 = load i64, i64* %4, align 8
  %25 = getelementptr inbounds %struct.itimerval, %struct.itimerval* %3, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  store i64 %24, i64* %26, align 8
  %27 = load i32, i32* %5, align 4
  %28 = getelementptr inbounds %struct.itimerval, %struct.itimerval* %3, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 8
  %30 = call i32 (...) @enable_alarm()
  %31 = load i32, i32* @ITIMER_REAL, align 4
  %32 = call i64 @setitimer(i32 %31, %struct.itimerval* %3, i32* null)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %23
  %35 = load i32, i32* @FATAL, align 4
  %36 = call i32 @elog(i32 %35, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %37

37:                                               ; preds = %34, %23
  br label %38

38:                                               ; preds = %37, %1
  ret void
}

declare dso_local i32 @MemSet(%struct.itimerval*, i32, i32) #1

declare dso_local i32 @TimestampDifference(i32, i32, i64*, i32*) #1

declare dso_local i32 @enable_alarm(...) #1

declare dso_local i64 @setitimer(i32, %struct.itimerval*, i32*) #1

declare dso_local i32 @elog(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
