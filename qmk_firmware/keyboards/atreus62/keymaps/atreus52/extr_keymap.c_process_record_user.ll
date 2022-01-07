; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/atreus62/keymaps/atreus52/extr_keymap.c_process_record_user.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/atreus62/keymaps/atreus52/extr_keymap.c_process_record_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@KC_LGUI = common dso_local global i64 0, align 8
@qw_dv_swap_state = common dso_local global i32 0, align 4
@KC_LCTL = common dso_local global i64 0, align 8
@DVORAK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @process_record_user(i64 %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  store i64 %0, i64* %3, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %4, align 8
  %5 = load i64, i64* %3, align 8
  %6 = load i64, i64* @KC_LGUI, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %21

8:                                                ; preds = %2
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %8
  %15 = load i32, i32* @qw_dv_swap_state, align 4
  %16 = or i32 %15, 1
  store i32 %16, i32* @qw_dv_swap_state, align 4
  br label %20

17:                                               ; preds = %8
  %18 = load i32, i32* @qw_dv_swap_state, align 4
  %19 = and i32 %18, -2
  store i32 %19, i32* @qw_dv_swap_state, align 4
  br label %20

20:                                               ; preds = %17, %14
  br label %21

21:                                               ; preds = %20, %2
  %22 = load i64, i64* %3, align 8
  %23 = load i64, i64* @KC_LCTL, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %38

25:                                               ; preds = %21
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %25
  %32 = load i32, i32* @qw_dv_swap_state, align 4
  %33 = or i32 %32, 2
  store i32 %33, i32* @qw_dv_swap_state, align 4
  br label %37

34:                                               ; preds = %25
  %35 = load i32, i32* @qw_dv_swap_state, align 4
  %36 = and i32 %35, -3
  store i32 %36, i32* @qw_dv_swap_state, align 4
  br label %37

37:                                               ; preds = %34, %31
  br label %38

38:                                               ; preds = %37, %21
  %39 = load i32, i32* @qw_dv_swap_state, align 4
  %40 = icmp eq i32 %39, 3
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = load i32, i32* @DVORAK, align 4
  %43 = call i32 @layer_invert(i32 %42)
  br label %44

44:                                               ; preds = %41, %38
  ret i32 1
}

declare dso_local i32 @layer_invert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
