; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/40percentclub/half_n_half/keymaps/Boy_314/extr_keymap.c_tap_dance_choose_layer_reset.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/40percentclub/half_n_half/keymaps/Boy_314/extr_keymap.c_tap_dance_choose_layer_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@_LOWER = common dso_local global i32 0, align 4
@_RAISE = common dso_local global i32 0, align 4
@default_layer_state = common dso_local global i32 0, align 4
@_DVORAK = common dso_local global i32 0, align 4
@_QWERTY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tap_dance_choose_layer_reset(%struct.TYPE_3__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i8*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  switch i32 %7, label %32 [
    i32 1, label %8
    i32 2, label %11
    i32 3, label %14
  ]

8:                                                ; preds = %2
  %9 = load i32, i32* @_LOWER, align 4
  %10 = call i32 @layer_off(i32 %9)
  br label %32

11:                                               ; preds = %2
  %12 = load i32, i32* @_RAISE, align 4
  %13 = call i32 @layer_off(i32 %12)
  br label %32

14:                                               ; preds = %2
  %15 = load i32, i32* @default_layer_state, align 4
  %16 = call i32 @biton32(i32 %15)
  %17 = load i32, i32* @_DVORAK, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %14
  %20 = load i32, i32* @_QWERTY, align 4
  %21 = call i32 @set_single_persistent_default_layer(i32 %20)
  br label %31

22:                                               ; preds = %14
  %23 = load i32, i32* @default_layer_state, align 4
  %24 = call i32 @biton32(i32 %23)
  %25 = load i32, i32* @_QWERTY, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %22
  %28 = load i32, i32* @_DVORAK, align 4
  %29 = call i32 @set_single_persistent_default_layer(i32 %28)
  br label %30

30:                                               ; preds = %27, %22
  br label %31

31:                                               ; preds = %30, %19
  br label %32

32:                                               ; preds = %2, %31, %11, %8
  ret void
}

declare dso_local i32 @layer_off(i32) #1

declare dso_local i32 @biton32(i32) #1

declare dso_local i32 @set_single_persistent_default_layer(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
