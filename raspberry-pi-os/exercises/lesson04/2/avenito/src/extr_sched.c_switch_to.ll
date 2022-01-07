; ModuleID = '/home/carl/AnghaBench/raspberry-pi-os/exercises/lesson04/2/avenito/src/extr_sched.c_switch_to.c'
source_filename = "/home/carl/AnghaBench/raspberry-pi-os/exercises/lesson04/2/avenito/src/extr_sched.c_switch_to.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [42 x i8] c"\0A\0D\0A\0D----------- Task switch -----------\0D\0A\00", align 1
@NR_TASKS = common dso_local global i32 0, align 4
@task = common dso_local global %struct.task_struct** null, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"\0A\0Dtask[%d] counter = %d\0A\0D\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"task[%d] priority = %d\0A\0D\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"task[%d] preempt_count = %d\0A\0D\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"task[%d] sp = 0x%08x\0A\0D\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"\0A\0D------------------------------\0D\0A\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"\0A\0Dtask output: \00", align 1
@current = common dso_local global %struct.task_struct* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @switch_to(%struct.task_struct* %0) #0 {
  %2 = alloca %struct.task_struct*, align 8
  %3 = alloca %struct.task_struct*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.task_struct*, align 8
  store %struct.task_struct* %0, %struct.task_struct** %2, align 8
  %6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %7

7:                                                ; preds = %39, %1
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @NR_TASKS, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %42

11:                                               ; preds = %7
  %12 = load %struct.task_struct**, %struct.task_struct*** @task, align 8
  %13 = load i32, i32* %4, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.task_struct*, %struct.task_struct** %12, i64 %14
  %16 = load %struct.task_struct*, %struct.task_struct** %15, align 8
  store %struct.task_struct* %16, %struct.task_struct** %3, align 8
  %17 = load i32, i32* %4, align 4
  %18 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %19 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %17, i32 %20)
  %22 = load i32, i32* %4, align 4
  %23 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %24 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %22, i32 %25)
  %27 = load i32, i32* %4, align 4
  %28 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %29 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %27, i32 %30)
  %32 = load i32, i32* %4, align 4
  %33 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %34 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %33, i32 0, i32 3
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i32 %32, i32 %36)
  %38 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0))
  br label %39

39:                                               ; preds = %11
  %40 = load i32, i32* %4, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %4, align 4
  br label %7

42:                                               ; preds = %7
  %43 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0))
  %44 = load %struct.task_struct*, %struct.task_struct** @current, align 8
  %45 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %46 = icmp eq %struct.task_struct* %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %42
  br label %54

48:                                               ; preds = %42
  %49 = load %struct.task_struct*, %struct.task_struct** @current, align 8
  store %struct.task_struct* %49, %struct.task_struct** %5, align 8
  %50 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  store %struct.task_struct* %50, %struct.task_struct** @current, align 8
  %51 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %52 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %53 = call i32 @cpu_switch_to(%struct.task_struct* %51, %struct.task_struct* %52)
  br label %54

54:                                               ; preds = %48, %47
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @cpu_switch_to(%struct.task_struct*, %struct.task_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
