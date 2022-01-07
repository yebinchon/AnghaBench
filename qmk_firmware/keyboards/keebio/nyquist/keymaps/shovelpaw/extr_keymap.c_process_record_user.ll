; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/keebio/nyquist/keymaps/shovelpaw/extr_keymap.c_process_record_user.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/keebio/nyquist/keymaps/shovelpaw/extr_keymap.c_process_record_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@_QWERTY = common dso_local global i64 0, align 8
@_LOWER = common dso_local global i32 0, align 4
@_RAISE = common dso_local global i32 0, align 4
@_ADJUST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @process_record_user(i32 %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %5, align 8
  %6 = load i32, i32* %4, align 4
  switch i32 %6, label %60 [
    i32 129, label %7
    i32 130, label %18
    i32 128, label %39
  ]

7:                                                ; preds = %2
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %7
  %14 = load i64, i64* @_QWERTY, align 8
  %15 = shl i64 1, %14
  %16 = call i32 @set_single_persistent_default_layer(i64 %15)
  br label %17

17:                                               ; preds = %13, %7
  store i32 0, i32* %3, align 4
  br label %61

18:                                               ; preds = %2
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %18
  %25 = load i32, i32* @_LOWER, align 4
  %26 = call i32 @layer_on(i32 %25)
  %27 = load i32, i32* @_LOWER, align 4
  %28 = load i32, i32* @_RAISE, align 4
  %29 = load i32, i32* @_ADJUST, align 4
  %30 = call i32 @update_tri_layer(i32 %27, i32 %28, i32 %29)
  br label %38

31:                                               ; preds = %18
  %32 = load i32, i32* @_LOWER, align 4
  %33 = call i32 @layer_off(i32 %32)
  %34 = load i32, i32* @_LOWER, align 4
  %35 = load i32, i32* @_RAISE, align 4
  %36 = load i32, i32* @_ADJUST, align 4
  %37 = call i32 @update_tri_layer(i32 %34, i32 %35, i32 %36)
  br label %38

38:                                               ; preds = %31, %24
  store i32 0, i32* %3, align 4
  br label %61

39:                                               ; preds = %2
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %39
  %46 = load i32, i32* @_RAISE, align 4
  %47 = call i32 @layer_on(i32 %46)
  %48 = load i32, i32* @_LOWER, align 4
  %49 = load i32, i32* @_RAISE, align 4
  %50 = load i32, i32* @_ADJUST, align 4
  %51 = call i32 @update_tri_layer(i32 %48, i32 %49, i32 %50)
  br label %59

52:                                               ; preds = %39
  %53 = load i32, i32* @_RAISE, align 4
  %54 = call i32 @layer_off(i32 %53)
  %55 = load i32, i32* @_LOWER, align 4
  %56 = load i32, i32* @_RAISE, align 4
  %57 = load i32, i32* @_ADJUST, align 4
  %58 = call i32 @update_tri_layer(i32 %55, i32 %56, i32 %57)
  br label %59

59:                                               ; preds = %52, %45
  store i32 0, i32* %3, align 4
  br label %61

60:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %61

61:                                               ; preds = %60, %59, %38, %17
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local i32 @set_single_persistent_default_layer(i64) #1

declare dso_local i32 @layer_on(i32) #1

declare dso_local i32 @update_tri_layer(i32, i32, i32) #1

declare dso_local i32 @layer_off(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
