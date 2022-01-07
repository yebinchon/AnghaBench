; ModuleID = '/home/carl/AnghaBench/raspberry-pi-os/exercises/lesson04/1/rs/src/extr_sched.c__schedule.c'
source_filename = "/home/carl/AnghaBench/raspberry-pi-os/exercises/lesson04/1/rs/src/extr_sched.c__schedule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i64, i32, i32 }

@NR_TASKS = common dso_local global i32 0, align 4
@task = common dso_local global i64* null, align 8
@TASK_RUNNING = common dso_local global i64 0, align 8
@current = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"schedule switch_to %d\0D\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_schedule() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.task_struct*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = call i32 (...) @preempt_disable()
  br label %7

7:                                                ; preds = %0, %75
  store i32 -1, i32* %2, align 4
  store i32 0, i32* %1, align 4
  store i32 0, i32* %4, align 4
  br label %8

8:                                                ; preds = %39, %7
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @NR_TASKS, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %42

12:                                               ; preds = %8
  %13 = load i64*, i64** @task, align 8
  %14 = load i32, i32* %4, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i64, i64* %13, i64 %15
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to %struct.task_struct*
  store %struct.task_struct* %18, %struct.task_struct** %3, align 8
  %19 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %20 = icmp ne %struct.task_struct* %19, null
  br i1 %20, label %21, label %38

21:                                               ; preds = %12
  %22 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %23 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @TASK_RUNNING, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %38

27:                                               ; preds = %21
  %28 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %29 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* %2, align 4
  %32 = icmp sgt i32 %30, %31
  br i1 %32, label %33, label %38

33:                                               ; preds = %27
  %34 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %35 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  store i32 %36, i32* %2, align 4
  %37 = load i32, i32* %4, align 4
  store i32 %37, i32* %1, align 4
  br label %38

38:                                               ; preds = %33, %27, %21, %12
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %4, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %4, align 4
  br label %8

42:                                               ; preds = %8
  %43 = load i32, i32* %2, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %42
  br label %76

46:                                               ; preds = %42
  store i32 0, i32* %5, align 4
  br label %47

47:                                               ; preds = %72, %46
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* @NR_TASKS, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %75

51:                                               ; preds = %47
  %52 = load i64*, i64** @task, align 8
  %53 = load i32, i32* %5, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i64, i64* %52, i64 %54
  %56 = load i64, i64* %55, align 8
  %57 = inttoptr i64 %56 to %struct.task_struct*
  store %struct.task_struct* %57, %struct.task_struct** %3, align 8
  %58 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %59 = icmp ne %struct.task_struct* %58, null
  br i1 %59, label %60, label %71

60:                                               ; preds = %51
  %61 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %62 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = ashr i32 %63, 1
  %65 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %66 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = add nsw i32 %64, %67
  %69 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %70 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %69, i32 0, i32 1
  store i32 %68, i32* %70, align 8
  br label %71

71:                                               ; preds = %60, %51
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %5, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %5, align 4
  br label %47

75:                                               ; preds = %47
  br label %7

76:                                               ; preds = %45
  %77 = load i64*, i64** @task, align 8
  %78 = load i32, i32* %1, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i64, i64* %77, i64 %79
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @current, align 8
  %83 = icmp ne i64 %81, %82
  br i1 %83, label %84, label %88

84:                                               ; preds = %76
  %85 = load i32, i32* %1, align 4
  %86 = call i32 @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %85)
  %87 = call i32 (...) @print_debug_tasks()
  br label %88

88:                                               ; preds = %84, %76
  %89 = load i64*, i64** @task, align 8
  %90 = load i32, i32* %1, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i64, i64* %89, i64 %91
  %93 = load i64, i64* %92, align 8
  %94 = call i32 @switch_to(i64 %93)
  %95 = call i32 (...) @preempt_enable()
  ret void
}

declare dso_local i32 @preempt_disable(...) #1

declare dso_local i32 @printf(i8*, i32) #1

declare dso_local i32 @print_debug_tasks(...) #1

declare dso_local i32 @switch_to(i64) #1

declare dso_local i32 @preempt_enable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
