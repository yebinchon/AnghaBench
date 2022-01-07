; ModuleID = '/home/carl/AnghaBench/raspberry-pi-os/exercises/lesson04/4/avenito/src/extr_sched.c__schedule.c'
source_filename = "/home/carl/AnghaBench/raspberry-pi-os/exercises/lesson04/4/avenito/src/extr_sched.c__schedule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i64, i32, i32, %struct.task_struct* }

@initial_task = common dso_local global %struct.task_struct* null, align 8
@TASK_RUNNING = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_schedule() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.task_struct*, align 8
  %3 = alloca %struct.task_struct*, align 8
  %4 = call i32 (...) @preempt_disable()
  br label %5

5:                                                ; preds = %0, %63
  store i32 -1, i32* %1, align 4
  %6 = load %struct.task_struct*, %struct.task_struct** @initial_task, align 8
  store %struct.task_struct* %6, %struct.task_struct** %2, align 8
  br label %7

7:                                                ; preds = %31, %5
  %8 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %9 = icmp ne %struct.task_struct* %8, null
  br i1 %9, label %10, label %35

10:                                               ; preds = %7
  %11 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %12 = icmp ne %struct.task_struct* %11, null
  br i1 %12, label %13, label %30

13:                                               ; preds = %10
  %14 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %15 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @TASK_RUNNING, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %30

19:                                               ; preds = %13
  %20 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %21 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* %1, align 4
  %24 = icmp sgt i32 %22, %23
  br i1 %24, label %25, label %30

25:                                               ; preds = %19
  %26 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %27 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %1, align 4
  %29 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  store %struct.task_struct* %29, %struct.task_struct** %3, align 8
  br label %30

30:                                               ; preds = %25, %19, %13, %10
  br label %31

31:                                               ; preds = %30
  %32 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %33 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %32, i32 0, i32 3
  %34 = load %struct.task_struct*, %struct.task_struct** %33, align 8
  store %struct.task_struct* %34, %struct.task_struct** %2, align 8
  br label %7

35:                                               ; preds = %7
  %36 = load i32, i32* %1, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %35
  br label %64

39:                                               ; preds = %35
  %40 = load %struct.task_struct*, %struct.task_struct** @initial_task, align 8
  store %struct.task_struct* %40, %struct.task_struct** %2, align 8
  br label %41

41:                                               ; preds = %59, %39
  %42 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %43 = icmp ne %struct.task_struct* %42, null
  br i1 %43, label %44, label %63

44:                                               ; preds = %41
  %45 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %46 = icmp ne %struct.task_struct* %45, null
  br i1 %46, label %47, label %58

47:                                               ; preds = %44
  %48 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %49 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = ashr i32 %50, 1
  %52 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %53 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = add nsw i32 %51, %54
  %56 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %57 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 8
  br label %58

58:                                               ; preds = %47, %44
  br label %59

59:                                               ; preds = %58
  %60 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %61 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %60, i32 0, i32 3
  %62 = load %struct.task_struct*, %struct.task_struct** %61, align 8
  store %struct.task_struct* %62, %struct.task_struct** %2, align 8
  br label %41

63:                                               ; preds = %41
  br label %5

64:                                               ; preds = %38
  %65 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %66 = call i32 @switch_to(%struct.task_struct* %65)
  %67 = call i32 (...) @preempt_enable()
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
