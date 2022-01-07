; ModuleID = '/home/carl/AnghaBench/raspberry-pi-os/exercises/lesson04/1/rs/src/extr_sched.c_print_debug_tasks.c'
source_filename = "/home/carl/AnghaBench/raspberry-pi-os/exercises/lesson04/1/rs/src/extr_sched.c_print_debug_tasks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"tasks:\0D\0A\00", align 1
@NR_TASKS = common dso_local global i32 0, align 4
@task = common dso_local global %struct.task_struct** null, align 8
@.str.1 = private unnamed_addr constant [13 x i8] c"[%d] sp=%x\0D\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_debug_tasks() #0 {
  %1 = alloca %struct.task_struct*, align 8
  %2 = alloca i32, align 4
  %3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %4

4:                                                ; preds = %24, %0
  %5 = load i32, i32* %2, align 4
  %6 = load i32, i32* @NR_TASKS, align 4
  %7 = icmp slt i32 %5, %6
  br i1 %7, label %8, label %27

8:                                                ; preds = %4
  %9 = load %struct.task_struct**, %struct.task_struct*** @task, align 8
  %10 = load i32, i32* %2, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.task_struct*, %struct.task_struct** %9, i64 %11
  %13 = load %struct.task_struct*, %struct.task_struct** %12, align 8
  store %struct.task_struct* %13, %struct.task_struct** %1, align 8
  %14 = load %struct.task_struct*, %struct.task_struct** %1, align 8
  %15 = icmp ne %struct.task_struct* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %8
  br label %27

17:                                               ; preds = %8
  %18 = load i32, i32* %2, align 4
  %19 = load %struct.task_struct*, %struct.task_struct** %1, align 8
  %20 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %18, i32 %22)
  br label %24

24:                                               ; preds = %17
  %25 = load i32, i32* %2, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %2, align 4
  br label %4

27:                                               ; preds = %16, %4
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
