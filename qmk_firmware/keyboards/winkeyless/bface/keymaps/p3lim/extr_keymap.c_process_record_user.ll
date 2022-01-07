; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/winkeyless/bface/keymaps/p3lim/extr_keymap.c_process_record_user.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/winkeyless/bface/keymaps/p3lim/extr_keymap.c_process_record_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@MOD_MASK_SHIFT = common dso_local global i32 0, align 4
@KC_GRAVE = common dso_local global i32 0, align 4
@KC_ESCAPE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @process_record_user(i32 %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %5, align 8
  %6 = load i32, i32* %4, align 4
  switch i32 %6, label %69 [
    i32 129, label %7
    i32 128, label %38
  ]

7:                                                ; preds = %2
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %25

13:                                               ; preds = %7
  %14 = call i32 (...) @get_mods()
  %15 = load i32, i32* @MOD_MASK_SHIFT, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %13
  %19 = load i32, i32* @KC_GRAVE, align 4
  %20 = call i32 @register_code(i32 %19)
  br label %24

21:                                               ; preds = %13
  %22 = load i32, i32* @KC_ESCAPE, align 4
  %23 = call i32 @register_code(i32 %22)
  br label %24

24:                                               ; preds = %21, %18
  br label %37

25:                                               ; preds = %7
  %26 = call i32 (...) @get_mods()
  %27 = load i32, i32* @MOD_MASK_SHIFT, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = load i32, i32* @KC_GRAVE, align 4
  %32 = call i32 @unregister_code(i32 %31)
  br label %36

33:                                               ; preds = %25
  %34 = load i32, i32* @KC_ESCAPE, align 4
  %35 = call i32 @unregister_code(i32 %34)
  br label %36

36:                                               ; preds = %33, %30
  br label %37

37:                                               ; preds = %36, %24
  store i32 0, i32* %3, align 4
  br label %70

38:                                               ; preds = %2
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %56

44:                                               ; preds = %38
  %45 = call i32 (...) @get_mods()
  %46 = load i32, i32* @MOD_MASK_SHIFT, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %44
  %50 = load i32, i32* @KC_ESCAPE, align 4
  %51 = call i32 @register_code(i32 %50)
  br label %55

52:                                               ; preds = %44
  %53 = load i32, i32* @KC_GRAVE, align 4
  %54 = call i32 @register_code(i32 %53)
  br label %55

55:                                               ; preds = %52, %49
  br label %68

56:                                               ; preds = %38
  %57 = call i32 (...) @get_mods()
  %58 = load i32, i32* @MOD_MASK_SHIFT, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %56
  %62 = load i32, i32* @KC_ESCAPE, align 4
  %63 = call i32 @unregister_code(i32 %62)
  br label %67

64:                                               ; preds = %56
  %65 = load i32, i32* @KC_GRAVE, align 4
  %66 = call i32 @unregister_code(i32 %65)
  br label %67

67:                                               ; preds = %64, %61
  br label %68

68:                                               ; preds = %67, %55
  store i32 0, i32* %3, align 4
  br label %70

69:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %70

70:                                               ; preds = %69, %68, %37
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local i32 @get_mods(...) #1

declare dso_local i32 @register_code(i32) #1

declare dso_local i32 @unregister_code(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
