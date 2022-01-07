; ModuleID = '/home/carl/AnghaBench/raspberry-pi-os/exercises/lesson04/4/bl4ckout31/src/extr_sched.c__schedule.c'
source_filename = "/home/carl/AnghaBench/raspberry-pi-os/exercises/lesson04/4/bl4ckout31/src/extr_sched.c__schedule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i64, i32, i32, %struct.task_struct* }

@kernel_task = common dso_local global %struct.task_struct* null, align 8
@TASK_RUNNING = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_schedule() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.task_struct*, align 8
  %3 = alloca %struct.task_struct*, align 8
  %4 = call i32 (...) @preempt_disable()
  br label %5

5:                                                ; preds = %0, %56
  store i32 -1, i32* %1, align 4
  %6 = load %struct.task_struct*, %struct.task_struct** @kernel_task, align 8
  store %struct.task_struct* %6, %struct.task_struct** %2, align 8
  br label %7

7:                                                ; preds = %28, %5
  %8 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %9 = icmp ne %struct.task_struct* %8, null
  br i1 %9, label %10, label %32

10:                                               ; preds = %7
  %11 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %12 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @TASK_RUNNING, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %27

16:                                               ; preds = %10
  %17 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %18 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* %1, align 4
  %21 = icmp sgt i32 %19, %20
  br i1 %21, label %22, label %27

22:                                               ; preds = %16
  %23 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %24 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %1, align 4
  %26 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  store %struct.task_struct* %26, %struct.task_struct** %3, align 8
  br label %27

27:                                               ; preds = %22, %16, %10
  br label %28

28:                                               ; preds = %27
  %29 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %30 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %29, i32 0, i32 3
  %31 = load %struct.task_struct*, %struct.task_struct** %30, align 8
  store %struct.task_struct* %31, %struct.task_struct** %2, align 8
  br label %7

32:                                               ; preds = %7
  %33 = load i32, i32* %1, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %32
  br label %57

36:                                               ; preds = %32
  %37 = load %struct.task_struct*, %struct.task_struct** @kernel_task, align 8
  store %struct.task_struct* %37, %struct.task_struct** %2, align 8
  br label %38

38:                                               ; preds = %52, %36
  %39 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %40 = icmp ne %struct.task_struct* %39, null
  br i1 %40, label %41, label %56

41:                                               ; preds = %38
  %42 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %43 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = ashr i32 %44, 1
  %46 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %47 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = add nsw i32 %45, %48
  %50 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %51 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 8
  br label %52

52:                                               ; preds = %41
  %53 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %54 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %53, i32 0, i32 3
  %55 = load %struct.task_struct*, %struct.task_struct** %54, align 8
  store %struct.task_struct* %55, %struct.task_struct** %2, align 8
  br label %38

56:                                               ; preds = %38
  br label %5

57:                                               ; preds = %35
  %58 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %59 = call i32 @switch_to(%struct.task_struct* %58)
  %60 = call i32 (...) @preempt_enable()
  ret void
}

declare dso_local i32 @preempt_disable(...) #1

declare dso_local i32 @switch_to(%struct.task_struct*) #1

declare dso_local i32 @preempt_enable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
