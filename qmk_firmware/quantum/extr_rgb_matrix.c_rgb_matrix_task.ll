; ModuleID = '/home/carl/AnghaBench/qmk_firmware/quantum/extr_rgb_matrix.c_rgb_matrix_task.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/quantum/extr_rgb_matrix.c_rgb_matrix_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32 }

@g_suspend_state = common dso_local global i64 0, align 8
@RGB_DISABLE_WHEN_USB_SUSPENDED = common dso_local global i64 0, align 8
@RGB_DISABLE_AFTER_TIMEOUT = common dso_local global i32 0, align 4
@g_rgb_counters = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@rgb_matrix_config = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@rgb_task_state = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rgb_matrix_task() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = call i32 (...) @rgb_task_timers()
  %4 = load i64, i64* @g_suspend_state, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %0
  %7 = load i64, i64* @RGB_DISABLE_WHEN_USB_SUSPENDED, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %20, label %9

9:                                                ; preds = %6, %0
  %10 = load i32, i32* @RGB_DISABLE_AFTER_TIMEOUT, align 4
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %9
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @g_rgb_counters, i32 0, i32 0), align 4
  %14 = load i32, i32* @RGB_DISABLE_AFTER_TIMEOUT, align 4
  %15 = mul nsw i32 %14, 60
  %16 = mul nsw i32 %15, 20
  %17 = icmp sgt i32 %13, %16
  br label %18

18:                                               ; preds = %12, %9
  %19 = phi i1 [ false, %9 ], [ %17, %12 ]
  br label %20

20:                                               ; preds = %18, %6
  %21 = phi i1 [ true, %6 ], [ %19, %18 ]
  %22 = zext i1 %21 to i32
  store i32 %22, i32* %1, align 4
  %23 = load i32, i32* %1, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %20
  %26 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @rgb_matrix_config, i32 0, i32 1), align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %25, %20
  br label %31

29:                                               ; preds = %25
  %30 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @rgb_matrix_config, i32 0, i32 0), align 4
  br label %31

31:                                               ; preds = %29, %28
  %32 = phi i32 [ 0, %28 ], [ %30, %29 ]
  store i32 %32, i32* %2, align 4
  %33 = load i32, i32* @rgb_task_state, align 4
  switch i32 %33, label %44 [
    i32 129, label %34
    i32 130, label %36
    i32 131, label %39
    i32 128, label %42
  ]

34:                                               ; preds = %31
  %35 = call i32 (...) @rgb_task_start()
  br label %44

36:                                               ; preds = %31
  %37 = load i32, i32* %2, align 4
  %38 = call i32 @rgb_task_render(i32 %37)
  br label %44

39:                                               ; preds = %31
  %40 = load i32, i32* %2, align 4
  %41 = call i32 @rgb_task_flush(i32 %40)
  br label %44

42:                                               ; preds = %31
  %43 = call i32 (...) @rgb_task_sync()
  br label %44

44:                                               ; preds = %31, %42, %39, %36, %34
  %45 = load i32, i32* %1, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %49, label %47

47:                                               ; preds = %44
  %48 = call i32 (...) @rgb_matrix_indicators()
  br label %49

49:                                               ; preds = %47, %44
  ret void
}

declare dso_local i32 @rgb_task_timers(...) #1

declare dso_local i32 @rgb_task_start(...) #1

declare dso_local i32 @rgb_task_render(i32) #1

declare dso_local i32 @rgb_task_flush(i32) #1

declare dso_local i32 @rgb_task_sync(...) #1

declare dso_local i32 @rgb_matrix_indicators(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
