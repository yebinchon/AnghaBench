; ModuleID = '/home/carl/AnghaBench/qmk_firmware/users/ericgebhart/extr_ericgebhart.c_x_finished.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/users/ericgebhart/extr_ericgebhart.c_x_finished.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@xtap_state = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@KC_ESC = common dso_local global i32 0, align 4
@MOD_LGUI = common dso_local global i32 0, align 4
@MOD_LCTL = common dso_local global i32 0, align 4
@ONESHOT_START = common dso_local global i32 0, align 4
@MOD_LSFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @x_finished(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = call i32 (...) @get_xmonad_layer()
  store i32 %6, i32* %5, align 4
  %7 = load i32*, i32** %3, align 8
  %8 = call i32 @cur_dance(i32* %7)
  store i32 %8, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @xtap_state, i32 0, i32 0), align 4
  %9 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @xtap_state, i32 0, i32 0), align 4
  switch i32 %9, label %46 [
    i32 128, label %10
    i32 129, label %13
    i32 130, label %18
    i32 132, label %28
    i32 131, label %39
  ]

10:                                               ; preds = %2
  %11 = load i32, i32* @KC_ESC, align 4
  %12 = call i32 @register_code(i32 %11)
  br label %46

13:                                               ; preds = %2
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @layer_on(i32 %14)
  %16 = load i32, i32* @MOD_LGUI, align 4
  %17 = call i32 @set_oneshot_mods(i32 %16)
  br label %46

18:                                               ; preds = %2
  %19 = load i32, i32* @MOD_LCTL, align 4
  %20 = load i32, i32* @MOD_LGUI, align 4
  %21 = or i32 %19, %20
  %22 = call i32 @set_oneshot_mods(i32 %21)
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @layer_on(i32 %23)
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @ONESHOT_START, align 4
  %27 = call i32 @set_oneshot_layer(i32 %25, i32 %26)
  br label %46

28:                                               ; preds = %2
  %29 = load i32, i32* @MOD_LSFT, align 4
  %30 = load i32, i32* @MOD_LGUI, align 4
  %31 = or i32 %29, %30
  %32 = call i32 @set_oneshot_mods(i32 %31)
  %33 = load i32, i32* %5, align 4
  %34 = icmp ne i32 %33, -1
  br i1 %34, label %35, label %38

35:                                               ; preds = %28
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @layer_on(i32 %36)
  br label %38

38:                                               ; preds = %35, %28
  br label %46

39:                                               ; preds = %2
  %40 = load i32, i32* @KC_ESC, align 4
  %41 = call i32 @register_code(i32 %40)
  %42 = load i32, i32* @KC_ESC, align 4
  %43 = call i32 @unregister_code(i32 %42)
  %44 = load i32, i32* @KC_ESC, align 4
  %45 = call i32 @register_code(i32 %44)
  br label %46

46:                                               ; preds = %39, %2, %38, %18, %13, %10
  ret void
}

declare dso_local i32 @get_xmonad_layer(...) #1

declare dso_local i32 @cur_dance(i32*) #1

declare dso_local i32 @register_code(i32) #1

declare dso_local i32 @layer_on(i32) #1

declare dso_local i32 @set_oneshot_mods(i32) #1

declare dso_local i32 @set_oneshot_layer(i32, i32) #1

declare dso_local i32 @unregister_code(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
