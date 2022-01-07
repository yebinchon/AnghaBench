; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/preonic/keymaps/kuatsure/extr_keymap.c_process_record_keymap.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/preonic/keymaps/kuatsure/extr_keymap.c_process_record_keymap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@_QWERTY = common dso_local global i32 0, align 4
@_GAME = common dso_local global i32 0, align 4
@_LOWER = common dso_local global i32 0, align 4
@_RAISE = common dso_local global i32 0, align 4
@_ADJUST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @process_record_keymap(i32 %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %5, align 8
  %6 = load i32, i32* %4, align 4
  switch i32 %6, label %69 [
    i32 129, label %7
    i32 131, label %17
    i32 130, label %27
    i32 128, label %48
  ]

7:                                                ; preds = %2
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %7
  %14 = load i32, i32* @_QWERTY, align 4
  %15 = call i32 @set_single_persistent_default_layer(i32 %14)
  br label %16

16:                                               ; preds = %13, %7
  store i32 0, i32* %3, align 4
  br label %70

17:                                               ; preds = %2
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %17
  %24 = load i32, i32* @_GAME, align 4
  %25 = call i32 @set_single_persistent_default_layer(i32 %24)
  br label %26

26:                                               ; preds = %23, %17
  store i32 0, i32* %3, align 4
  br label %70

27:                                               ; preds = %2
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %27
  %34 = load i32, i32* @_LOWER, align 4
  %35 = call i32 @layer_on(i32 %34)
  %36 = load i32, i32* @_LOWER, align 4
  %37 = load i32, i32* @_RAISE, align 4
  %38 = load i32, i32* @_ADJUST, align 4
  %39 = call i32 @update_tri_layer(i32 %36, i32 %37, i32 %38)
  br label %47

40:                                               ; preds = %27
  %41 = load i32, i32* @_LOWER, align 4
  %42 = call i32 @layer_off(i32 %41)
  %43 = load i32, i32* @_LOWER, align 4
  %44 = load i32, i32* @_RAISE, align 4
  %45 = load i32, i32* @_ADJUST, align 4
  %46 = call i32 @update_tri_layer(i32 %43, i32 %44, i32 %45)
  br label %47

47:                                               ; preds = %40, %33
  store i32 0, i32* %3, align 4
  br label %70

48:                                               ; preds = %2
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %48
  %55 = load i32, i32* @_RAISE, align 4
  %56 = call i32 @layer_on(i32 %55)
  %57 = load i32, i32* @_LOWER, align 4
  %58 = load i32, i32* @_RAISE, align 4
  %59 = load i32, i32* @_ADJUST, align 4
  %60 = call i32 @update_tri_layer(i32 %57, i32 %58, i32 %59)
  br label %68

61:                                               ; preds = %48
  %62 = load i32, i32* @_RAISE, align 4
  %63 = call i32 @layer_off(i32 %62)
  %64 = load i32, i32* @_LOWER, align 4
  %65 = load i32, i32* @_RAISE, align 4
  %66 = load i32, i32* @_ADJUST, align 4
  %67 = call i32 @update_tri_layer(i32 %64, i32 %65, i32 %66)
  br label %68

68:                                               ; preds = %61, %54
  store i32 0, i32* %3, align 4
  br label %70

69:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %70

70:                                               ; preds = %69, %68, %47, %26, %16
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local i32 @set_single_persistent_default_layer(i32) #1

declare dso_local i32 @layer_on(i32) #1

declare dso_local i32 @update_tri_layer(i32, i32, i32) #1

declare dso_local i32 @layer_off(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
