; ModuleID = '/home/carl/AnghaBench/raspberry-pi-os/exercises/lesson04/1/bl4ckout31/src/extr_sched.c_print_tasks.c'
source_filename = "/home/carl/AnghaBench/raspberry-pi-os/exercises/lesson04/1/bl4ckout31/src/extr_sched.c_print_tasks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@task = common dso_local global %struct.task_struct** null, align 8
@NR_TASKS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"    %d: sp: 0x%x\0D\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_tasks() #0 {
  %1 = alloca %struct.task_struct*, align 8
  %2 = alloca i32, align 4
  %3 = load %struct.task_struct**, %struct.task_struct*** @task, align 8
  %4 = getelementptr inbounds %struct.task_struct*, %struct.task_struct** %3, i64 0
  %5 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  store %struct.task_struct* %5, %struct.task_struct** %1, align 8
  store i32 0, i32* %2, align 4
  br label %6

6:                                                ; preds = %31, %0
  %7 = load i32, i32* %2, align 4
  %8 = load i32, i32* @NR_TASKS, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %13

10:                                               ; preds = %6
  %11 = load %struct.task_struct*, %struct.task_struct** %1, align 8
  %12 = icmp ne %struct.task_struct* %11, null
  br label %13

13:                                               ; preds = %10, %6
  %14 = phi i1 [ false, %6 ], [ %12, %10 ]
  br i1 %14, label %15, label %34

15:                                               ; preds = %13
  %16 = load %struct.task_struct**, %struct.task_struct*** @task, align 8
  %17 = load i32, i32* %2, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.task_struct*, %struct.task_struct** %16, i64 %18
  %20 = load %struct.task_struct*, %struct.task_struct** %19, align 8
  store %struct.task_struct* %20, %struct.task_struct** %1, align 8
  %21 = load %struct.task_struct*, %struct.task_struct** %1, align 8
  %22 = icmp ne %struct.task_struct* %21, null
  br i1 %22, label %23, label %30

23:                                               ; preds = %15
  %24 = load i32, i32* %2, align 4
  %25 = load %struct.task_struct*, %struct.task_struct** %1, align 8
  %26 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %24, i32 %28)
  br label %30

30:                                               ; preds = %23, %15
  br label %31

31:                                               ; preds = %30
  %32 = load i32, i32* %2, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %2, align 4
  br label %6

34:                                               ; preds = %13
  ret void
}

declare dso_local i32 @printf(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
