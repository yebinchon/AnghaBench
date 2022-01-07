; ModuleID = '/home/carl/AnghaBench/raspberry-pi-os/exercises/lesson05/3/bl4ckout31/src/extr_sched.c_exit_process.c'
source_filename = "/home/carl/AnghaBench/raspberry-pi-os/exercises/lesson05/3/bl4ckout31/src/extr_sched.c_exit_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32 }

@NR_TASKS = common dso_local global i32 0, align 4
@task = common dso_local global %struct.TYPE_3__** null, align 8
@current = common dso_local global %struct.TYPE_3__* null, align 8
@TASK_ZOMBIE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @exit_process() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 (...) @preempt_disable()
  store i32 0, i32* %1, align 4
  br label %3

3:                                                ; preds = %24, %0
  %4 = load i32, i32* %1, align 4
  %5 = load i32, i32* @NR_TASKS, align 4
  %6 = icmp slt i32 %4, %5
  br i1 %6, label %7, label %27

7:                                                ; preds = %3
  %8 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @task, align 8
  %9 = load i32, i32* %1, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %8, i64 %10
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** @current, align 8
  %14 = icmp eq %struct.TYPE_3__* %12, %13
  br i1 %14, label %15, label %23

15:                                               ; preds = %7
  %16 = load i32, i32* @TASK_ZOMBIE, align 4
  %17 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @task, align 8
  %18 = load i32, i32* %1, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %17, i64 %19
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 1
  store i32 %16, i32* %22, align 8
  br label %27

23:                                               ; preds = %7
  br label %24

24:                                               ; preds = %23
  %25 = load i32, i32* %1, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %1, align 4
  br label %3

27:                                               ; preds = %15, %3
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** @current, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %27
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** @current, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @free_page(i64 %35)
  br label %37

37:                                               ; preds = %32, %27
  %38 = call i32 (...) @preempt_enable()
  %39 = call i32 (...) @schedule()
  ret void
}

declare dso_local i32 @preempt_disable(...) #1

declare dso_local i32 @free_page(i64) #1

declare dso_local i32 @preempt_enable(...) #1

declare dso_local i32 @schedule(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
