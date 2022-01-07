; ModuleID = '/home/carl/AnghaBench/raspberry-pi-os/src/lesson06/src/extr_sched.c__schedule.c'
source_filename = "/home/carl/AnghaBench/raspberry-pi-os/src/lesson06/src/extr_sched.c__schedule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i64, i32, i32 }

@NR_TASKS = common dso_local global i32 0, align 4
@task = common dso_local global %struct.task_struct** null, align 8
@TASK_RUNNING = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_schedule() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.task_struct*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = call i32 (...) @preempt_disable()
  br label %7

7:                                                ; preds = %0, %73
  store i32 -1, i32* %2, align 4
  store i32 0, i32* %1, align 4
  store i32 0, i32* %4, align 4
  br label %8

8:                                                ; preds = %38, %7
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @NR_TASKS, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %41

12:                                               ; preds = %8
  %13 = load %struct.task_struct**, %struct.task_struct*** @task, align 8
  %14 = load i32, i32* %4, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.task_struct*, %struct.task_struct** %13, i64 %15
  %17 = load %struct.task_struct*, %struct.task_struct** %16, align 8
  store %struct.task_struct* %17, %struct.task_struct** %3, align 8
  %18 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %19 = icmp ne %struct.task_struct* %18, null
  br i1 %19, label %20, label %37

20:                                               ; preds = %12
  %21 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %22 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @TASK_RUNNING, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %37

26:                                               ; preds = %20
  %27 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %28 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* %2, align 4
  %31 = icmp sgt i32 %29, %30
  br i1 %31, label %32, label %37

32:                                               ; preds = %26
  %33 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %34 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  store i32 %35, i32* %2, align 4
  %36 = load i32, i32* %4, align 4
  store i32 %36, i32* %1, align 4
  br label %37

37:                                               ; preds = %32, %26, %20, %12
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %4, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %4, align 4
  br label %8

41:                                               ; preds = %8
  %42 = load i32, i32* %2, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %41
  br label %74

45:                                               ; preds = %41
  store i32 0, i32* %5, align 4
  br label %46

46:                                               ; preds = %70, %45
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* @NR_TASKS, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %73

50:                                               ; preds = %46
  %51 = load %struct.task_struct**, %struct.task_struct*** @task, align 8
  %52 = load i32, i32* %5, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.task_struct*, %struct.task_struct** %51, i64 %53
  %55 = load %struct.task_struct*, %struct.task_struct** %54, align 8
  store %struct.task_struct* %55, %struct.task_struct** %3, align 8
  %56 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %57 = icmp ne %struct.task_struct* %56, null
  br i1 %57, label %58, label %69

58:                                               ; preds = %50
  %59 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %60 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = ashr i32 %61, 1
  %63 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %64 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = add nsw i32 %62, %65
  %67 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %68 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %67, i32 0, i32 1
  store i32 %66, i32* %68, align 8
  br label %69

69:                                               ; preds = %58, %50
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %5, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %5, align 4
  br label %46

73:                                               ; preds = %46
  br label %7

74:                                               ; preds = %44
  %75 = load %struct.task_struct**, %struct.task_struct*** @task, align 8
  %76 = load i32, i32* %1, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.task_struct*, %struct.task_struct** %75, i64 %77
  %79 = load %struct.task_struct*, %struct.task_struct** %78, align 8
  %80 = call i32 @switch_to(%struct.task_struct* %79)
  %81 = call i32 (...) @preempt_enable()
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
