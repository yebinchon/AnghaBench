; ModuleID = '/home/carl/AnghaBench/qmk_firmware/tmk_core/common/extr_mousekey.c_mousekey_task.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/tmk_core/common/extr_mousekey.c_mousekey_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@last_timer = common dso_local global i32 0, align 4
@mousekey_repeat = common dso_local global i64 0, align 8
@mk_interval = common dso_local global i32 0, align 4
@mk_delay = common dso_local global i32 0, align 4
@mouse_report = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@UINT8_MAX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mousekey_task() #0 {
  %1 = load i32, i32* @last_timer, align 4
  %2 = call i32 @timer_elapsed(i32 %1)
  %3 = load i64, i64* @mousekey_repeat, align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %0
  %6 = load i32, i32* @mk_interval, align 4
  br label %10

7:                                                ; preds = %0
  %8 = load i32, i32* @mk_delay, align 4
  %9 = mul nsw i32 %8, 10
  br label %10

10:                                               ; preds = %7, %5
  %11 = phi i32 [ %6, %5 ], [ %9, %7 ]
  %12 = icmp slt i32 %2, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %10
  br label %101

14:                                               ; preds = %10
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mouse_report, i32 0, i32 0), align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %27

17:                                               ; preds = %14
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mouse_report, i32 0, i32 1), align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %17
  %21 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mouse_report, i32 0, i32 2), align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %20
  %24 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mouse_report, i32 0, i32 3), align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  br label %101

27:                                               ; preds = %23, %20, %17, %14
  %28 = load i64, i64* @mousekey_repeat, align 8
  %29 = load i64, i64* @UINT8_MAX, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %27
  %32 = load i64, i64* @mousekey_repeat, align 8
  %33 = add nsw i64 %32, 1
  store i64 %33, i64* @mousekey_repeat, align 8
  br label %34

34:                                               ; preds = %31, %27
  %35 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mouse_report, i32 0, i32 0), align 4
  %36 = icmp sgt i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %34
  %38 = call i32 (...) @move_unit()
  store i32 %38, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mouse_report, i32 0, i32 0), align 4
  br label %39

39:                                               ; preds = %37, %34
  %40 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mouse_report, i32 0, i32 0), align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %39
  %43 = call i32 (...) @move_unit()
  %44 = mul nsw i32 %43, -1
  store i32 %44, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mouse_report, i32 0, i32 0), align 4
  br label %45

45:                                               ; preds = %42, %39
  %46 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mouse_report, i32 0, i32 1), align 4
  %47 = icmp sgt i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %45
  %49 = call i32 (...) @move_unit()
  store i32 %49, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mouse_report, i32 0, i32 1), align 4
  br label %50

50:                                               ; preds = %48, %45
  %51 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mouse_report, i32 0, i32 1), align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %50
  %54 = call i32 (...) @move_unit()
  %55 = mul nsw i32 %54, -1
  store i32 %55, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mouse_report, i32 0, i32 1), align 4
  br label %56

56:                                               ; preds = %53, %50
  %57 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mouse_report, i32 0, i32 0), align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %77

59:                                               ; preds = %56
  %60 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mouse_report, i32 0, i32 1), align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %77

62:                                               ; preds = %59
  %63 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mouse_report, i32 0, i32 0), align 4
  %64 = call i8* @times_inv_sqrt2(i32 %63)
  %65 = ptrtoint i8* %64 to i32
  store i32 %65, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mouse_report, i32 0, i32 0), align 4
  %66 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mouse_report, i32 0, i32 0), align 4
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %62
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mouse_report, i32 0, i32 0), align 4
  br label %69

69:                                               ; preds = %68, %62
  %70 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mouse_report, i32 0, i32 1), align 4
  %71 = call i8* @times_inv_sqrt2(i32 %70)
  %72 = ptrtoint i8* %71 to i32
  store i32 %72, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mouse_report, i32 0, i32 1), align 4
  %73 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mouse_report, i32 0, i32 1), align 4
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %69
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mouse_report, i32 0, i32 1), align 4
  br label %76

76:                                               ; preds = %75, %69
  br label %77

77:                                               ; preds = %76, %59, %56
  %78 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mouse_report, i32 0, i32 2), align 4
  %79 = icmp sgt i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %77
  %81 = call i32 (...) @wheel_unit()
  store i32 %81, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mouse_report, i32 0, i32 2), align 4
  br label %82

82:                                               ; preds = %80, %77
  %83 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mouse_report, i32 0, i32 2), align 4
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %82
  %86 = call i32 (...) @wheel_unit()
  %87 = mul nsw i32 %86, -1
  store i32 %87, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mouse_report, i32 0, i32 2), align 4
  br label %88

88:                                               ; preds = %85, %82
  %89 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mouse_report, i32 0, i32 3), align 4
  %90 = icmp sgt i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %88
  %92 = call i32 (...) @wheel_unit()
  store i32 %92, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mouse_report, i32 0, i32 3), align 4
  br label %93

93:                                               ; preds = %91, %88
  %94 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mouse_report, i32 0, i32 3), align 4
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %93
  %97 = call i32 (...) @wheel_unit()
  %98 = mul nsw i32 %97, -1
  store i32 %98, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mouse_report, i32 0, i32 3), align 4
  br label %99

99:                                               ; preds = %96, %93
  %100 = call i32 (...) @mousekey_send()
  br label %101

101:                                              ; preds = %99, %26, %13
  ret void
}

declare dso_local i32 @timer_elapsed(i32) #1

declare dso_local i32 @move_unit(...) #1

declare dso_local i8* @times_inv_sqrt2(i32) #1

declare dso_local i32 @wheel_unit(...) #1

declare dso_local i32 @mousekey_send(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
