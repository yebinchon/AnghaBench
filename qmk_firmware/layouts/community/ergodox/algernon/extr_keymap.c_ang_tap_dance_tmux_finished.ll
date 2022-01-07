; ModuleID = '/home/carl/AnghaBench/qmk_firmware/layouts/community/ergodox/algernon/extr_keymap.c_ang_tap_dance_tmux_finished.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/layouts/community/ergodox/algernon/extr_keymap.c_ang_tap_dance_tmux_finished.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@KC_LALT = common dso_local global i32 0, align 4
@KC_SPC = common dso_local global i32 0, align 4
@KC_LCTL = common dso_local global i32 0, align 4
@KC_A = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i8*)* @ang_tap_dance_tmux_finished to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ang_tap_dance_tmux_finished(%struct.TYPE_3__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i8*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = icmp eq i32 %7, 1
  br i1 %8, label %9, label %18

9:                                                ; preds = %2
  %10 = load i32, i32* @KC_LALT, align 4
  %11 = call i32 @register_code(i32 %10)
  %12 = load i32, i32* @KC_SPC, align 4
  %13 = call i32 @register_code(i32 %12)
  %14 = load i32, i32* @KC_SPC, align 4
  %15 = call i32 @unregister_code(i32 %14)
  %16 = load i32, i32* @KC_LALT, align 4
  %17 = call i32 @unregister_code(i32 %16)
  br label %27

18:                                               ; preds = %2
  %19 = load i32, i32* @KC_LCTL, align 4
  %20 = call i32 @register_code(i32 %19)
  %21 = load i32, i32* @KC_A, align 4
  %22 = call i32 @register_code(i32 %21)
  %23 = load i32, i32* @KC_A, align 4
  %24 = call i32 @unregister_code(i32 %23)
  %25 = load i32, i32* @KC_LCTL, align 4
  %26 = call i32 @unregister_code(i32 %25)
  br label %27

27:                                               ; preds = %18, %9
  ret void
}

declare dso_local i32 @register_code(i32) #1

declare dso_local i32 @unregister_code(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
