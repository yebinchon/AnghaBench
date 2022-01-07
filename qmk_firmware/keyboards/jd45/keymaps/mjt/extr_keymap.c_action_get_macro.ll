; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/jd45/keymaps/mjt/extr_keymap.c_action_get_macro.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/jd45/keymaps/mjt/extr_keymap.c_action_get_macro.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@MACRO_NONE = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @action_get_macro(%struct.TYPE_5__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %5, align 4
  switch i32 %7, label %38 [
    i32 129, label %8
    i32 128, label %23
  ]

8:                                                ; preds = %3
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %8
  %15 = call i32 @breathing_period_set(i32 3)
  %16 = call i32 (...) @breathing_enable()
  %17 = call i32 @layer_on(i32 1)
  br label %22

18:                                               ; preds = %8
  %19 = call i32 @breathing_period_set(i32 1)
  %20 = call i32 (...) @breathing_self_disable()
  %21 = call i32 @layer_off(i32 1)
  br label %22

22:                                               ; preds = %18, %14
  br label %38

23:                                               ; preds = %3
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %23
  %30 = call i32 @breathing_period_set(i32 2)
  %31 = call i32 (...) @breathing_pulse()
  %32 = call i32 @layer_on(i32 2)
  br label %37

33:                                               ; preds = %23
  %34 = call i32 @breathing_period_set(i32 1)
  %35 = call i32 (...) @breathing_self_disable()
  %36 = call i32 @layer_off(i32 2)
  br label %37

37:                                               ; preds = %33, %29
  br label %38

38:                                               ; preds = %3, %37, %22
  %39 = load i32*, i32** @MACRO_NONE, align 8
  ret i32* %39
}

declare dso_local i32 @breathing_period_set(i32) #1

declare dso_local i32 @breathing_enable(...) #1

declare dso_local i32 @layer_on(i32) #1

declare dso_local i32 @breathing_self_disable(...) #1

declare dso_local i32 @layer_off(i32) #1

declare dso_local i32 @breathing_pulse(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
