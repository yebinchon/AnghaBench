; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/planck/old_keymap_files/common_keymaps/extr_keymap_shane.c_action_function.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/planck/old_keymap_files/common_keymaps/extr_keymap_shane.c_action_function.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_5__, %struct.TYPE_6__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@layer_state = common dso_local global i64 0, align 8
@KC_SPC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @action_function(%struct.TYPE_7__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %5, align 4
  switch i32 %9, label %63 [
    i32 128, label %10
  ]

10:                                               ; preds = %3
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %37

16:                                               ; preds = %10
  store i32 0, i32* %7, align 4
  br label %17

17:                                               ; preds = %32, %16
  %18 = load i32, i32* %7, align 4
  %19 = icmp slt i32 %18, 9
  br i1 %19, label %20, label %35

20:                                               ; preds = %17
  %21 = load i64, i64* @layer_state, align 8
  %22 = load i32, i32* %7, align 4
  %23 = zext i32 %22 to i64
  %24 = shl i64 1, %23
  %25 = and i64 %21, %24
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %20
  %28 = load i32, i32* %7, align 4
  %29 = add nsw i32 %28, 1
  %30 = call i32 @layer_on(i32 %29)
  br label %31

31:                                               ; preds = %27, %20
  br label %32

32:                                               ; preds = %31
  %33 = load i32, i32* %7, align 4
  %34 = add nsw i32 %33, 2
  store i32 %34, i32* %7, align 4
  br label %17

35:                                               ; preds = %17
  %36 = call i32 @layer_on(i32 1)
  br label %62

37:                                               ; preds = %10
  store i32 0, i32* %8, align 4
  br label %38

38:                                               ; preds = %45, %37
  %39 = load i32, i32* %8, align 4
  %40 = icmp slt i32 %39, 9
  br i1 %40, label %41, label %48

41:                                               ; preds = %38
  %42 = load i32, i32* %8, align 4
  %43 = add nsw i32 %42, 1
  %44 = call i32 @layer_off(i32 %43)
  br label %45

45:                                               ; preds = %41
  %46 = load i32, i32* %8, align 4
  %47 = add nsw i32 %46, 2
  store i32 %47, i32* %8, align 4
  br label %38

48:                                               ; preds = %38
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %48
  %55 = load i32, i32* @KC_SPC, align 4
  %56 = call i32 @add_key(i32 %55)
  %57 = call i32 (...) @send_keyboard_report()
  %58 = load i32, i32* @KC_SPC, align 4
  %59 = call i32 @del_key(i32 %58)
  %60 = call i32 (...) @send_keyboard_report()
  br label %61

61:                                               ; preds = %54, %48
  br label %62

62:                                               ; preds = %61, %35
  br label %63

63:                                               ; preds = %3, %62
  ret void
}

declare dso_local i32 @layer_on(i32) #1

declare dso_local i32 @layer_off(i32) #1

declare dso_local i32 @add_key(i32) #1

declare dso_local i32 @send_keyboard_report(...) #1

declare dso_local i32 @del_key(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
