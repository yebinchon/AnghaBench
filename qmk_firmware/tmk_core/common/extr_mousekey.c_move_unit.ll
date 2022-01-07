; ModuleID = '/home/carl/AnghaBench/qmk_firmware/tmk_core/common/extr_mousekey.c_move_unit.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/tmk_core/common/extr_mousekey.c_move_unit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mousekey_accel = common dso_local global i32 0, align 4
@MOUSEKEY_MOVE_DELTA = common dso_local global i32 0, align 4
@mk_max_speed = common dso_local global i32 0, align 4
@mousekey_repeat = common dso_local global i32 0, align 4
@mk_time_to_max = common dso_local global i32 0, align 4
@MOUSEKEY_MOVE_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @move_unit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @move_unit() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @mousekey_accel, align 4
  %3 = and i32 %2, 1
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %5, label %10

5:                                                ; preds = %0
  %6 = load i32, i32* @MOUSEKEY_MOVE_DELTA, align 4
  %7 = load i32, i32* @mk_max_speed, align 4
  %8 = mul nsw i32 %6, %7
  %9 = sdiv i32 %8, 4
  store i32 %9, i32* %1, align 4
  br label %52

10:                                               ; preds = %0
  %11 = load i32, i32* @mousekey_accel, align 4
  %12 = and i32 %11, 2
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %10
  %15 = load i32, i32* @MOUSEKEY_MOVE_DELTA, align 4
  %16 = load i32, i32* @mk_max_speed, align 4
  %17 = mul nsw i32 %15, %16
  %18 = sdiv i32 %17, 2
  store i32 %18, i32* %1, align 4
  br label %51

19:                                               ; preds = %10
  %20 = load i32, i32* @mousekey_accel, align 4
  %21 = and i32 %20, 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %19
  %24 = load i32, i32* @MOUSEKEY_MOVE_DELTA, align 4
  %25 = load i32, i32* @mk_max_speed, align 4
  %26 = mul nsw i32 %24, %25
  store i32 %26, i32* %1, align 4
  br label %50

27:                                               ; preds = %19
  %28 = load i32, i32* @mousekey_repeat, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %27
  %31 = load i32, i32* @MOUSEKEY_MOVE_DELTA, align 4
  store i32 %31, i32* %1, align 4
  br label %49

32:                                               ; preds = %27
  %33 = load i32, i32* @mousekey_repeat, align 4
  %34 = load i32, i32* @mk_time_to_max, align 4
  %35 = icmp sge i32 %33, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %32
  %37 = load i32, i32* @MOUSEKEY_MOVE_DELTA, align 4
  %38 = load i32, i32* @mk_max_speed, align 4
  %39 = mul nsw i32 %37, %38
  store i32 %39, i32* %1, align 4
  br label %48

40:                                               ; preds = %32
  %41 = load i32, i32* @MOUSEKEY_MOVE_DELTA, align 4
  %42 = load i32, i32* @mk_max_speed, align 4
  %43 = mul nsw i32 %41, %42
  %44 = load i32, i32* @mousekey_repeat, align 4
  %45 = mul nsw i32 %43, %44
  %46 = load i32, i32* @mk_time_to_max, align 4
  %47 = sdiv i32 %45, %46
  store i32 %47, i32* %1, align 4
  br label %48

48:                                               ; preds = %40, %36
  br label %49

49:                                               ; preds = %48, %30
  br label %50

50:                                               ; preds = %49, %23
  br label %51

51:                                               ; preds = %50, %14
  br label %52

52:                                               ; preds = %51, %5
  %53 = load i32, i32* %1, align 4
  %54 = load i32, i32* @MOUSEKEY_MOVE_MAX, align 4
  %55 = icmp sgt i32 %53, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %52
  %57 = load i32, i32* @MOUSEKEY_MOVE_MAX, align 4
  br label %66

58:                                               ; preds = %52
  %59 = load i32, i32* %1, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %58
  br label %64

62:                                               ; preds = %58
  %63 = load i32, i32* %1, align 4
  br label %64

64:                                               ; preds = %62, %61
  %65 = phi i32 [ 1, %61 ], [ %63, %62 ]
  br label %66

66:                                               ; preds = %64, %56
  %67 = phi i32 [ %57, %56 ], [ %65, %64 ]
  ret i32 %67
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
