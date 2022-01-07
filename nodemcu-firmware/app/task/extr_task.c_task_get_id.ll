; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/task/extr_task.c_task_get_id.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/task/extr_task.c_task_get_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TASK_PRIORITY_COUNT = common dso_local global i32 0, align 4
@task_Q = common dso_local global i32* null, align 8
@TASK_DEFAULT_QUEUE_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Task initialisation failed\00", align 1
@task_count = common dso_local global i32 0, align 4
@TASK_HANDLE_ALLOCATION_BRICK = common dso_local global i32 0, align 4
@task_func = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"Malloc failure in task_get_id\00", align 1
@TASK_HANDLE_MONIKER = common dso_local global i64 0, align 8
@TASK_HANDLE_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @task_get_id(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* @TASK_PRIORITY_COUNT, align 4
  store i32 %4, i32* %3, align 4
  br label %5

5:                                                ; preds = %21, %1
  %6 = load i32, i32* %3, align 4
  %7 = add nsw i32 %6, -1
  store i32 %7, i32* %3, align 4
  %8 = icmp ne i32 %6, 0
  br i1 %8, label %9, label %22

9:                                                ; preds = %5
  %10 = load i32*, i32** @task_Q, align 8
  %11 = load i32, i32* %3, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i32, i32* %10, i64 %12
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %9
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* @TASK_DEFAULT_QUEUE_LEN, align 4
  %19 = call i32* @task_init_handler(i32 %17, i32 %18)
  %20 = call i32 @CHECK(i32* %19, i32 0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %21

21:                                               ; preds = %16, %9
  br label %5

22:                                               ; preds = %5
  %23 = load i32, i32* @task_count, align 4
  %24 = load i32, i32* @TASK_HANDLE_ALLOCATION_BRICK, align 4
  %25 = sub nsw i32 %24, 1
  %26 = and i32 %23, %25
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %49

28:                                               ; preds = %22
  %29 = load i32*, i32** @task_func, align 8
  %30 = load i32, i32* @task_count, align 4
  %31 = load i32, i32* @TASK_HANDLE_ALLOCATION_BRICK, align 4
  %32 = add nsw i32 %30, %31
  %33 = sext i32 %32 to i64
  %34 = mul i64 4, %33
  %35 = trunc i64 %34 to i32
  %36 = call i64 @os_realloc(i32* %29, i32 %35)
  %37 = inttoptr i64 %36 to i32*
  store i32* %37, i32** @task_func, align 8
  %38 = load i32*, i32** @task_func, align 8
  %39 = call i32 @CHECK(i32* %38, i32 0, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %40 = load i32*, i32** @task_func, align 8
  %41 = load i32, i32* @task_count, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i32, i32* @TASK_HANDLE_ALLOCATION_BRICK, align 4
  %45 = sext i32 %44 to i64
  %46 = mul i64 4, %45
  %47 = trunc i64 %46 to i32
  %48 = call i32 @os_memset(i32* %43, i32 0, i32 %47)
  br label %49

49:                                               ; preds = %28, %22
  %50 = load i32, i32* %2, align 4
  %51 = load i32*, i32** @task_func, align 8
  %52 = load i32, i32* @task_count, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* @task_count, align 4
  %54 = sext i32 %52 to i64
  %55 = getelementptr inbounds i32, i32* %51, i64 %54
  store i32 %50, i32* %55, align 4
  %56 = load i64, i64* @TASK_HANDLE_MONIKER, align 8
  %57 = load i32, i32* @task_count, align 4
  %58 = sub nsw i32 %57, 1
  %59 = load i32, i32* @TASK_HANDLE_SHIFT, align 4
  %60 = shl i32 %58, %59
  %61 = sext i32 %60 to i64
  %62 = add nsw i64 %56, %61
  ret i64 %62
}

declare dso_local i32 @CHECK(i32*, i32, i8*) #1

declare dso_local i32* @task_init_handler(i32, i32) #1

declare dso_local i64 @os_realloc(i32*, i32) #1

declare dso_local i32 @os_memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
