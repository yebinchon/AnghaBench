; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/cospad/keymaps/detrus/extr_keymap.c_process_record_user.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/cospad/keymaps/detrus/extr_keymap.c_process_record_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@_QWERTY_LAYER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"switched to QWERTY layout\0A\00", align 1
@_QWERTZ_LAYER = common dso_local global i32 0, align 4
@_COLEMA_LAYER = common dso_local global i32 0, align 4
@_DVORAK_LAYER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @process_record_user(i32 %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %5, align 8
  %6 = load i32, i32* %4, align 4
  switch i32 %6, label %75 [
    i32 132, label %7
    i32 133, label %16
    i32 134, label %25
    i32 129, label %34
    i32 128, label %45
    i32 131, label %55
    i32 130, label %65
  ]

7:                                                ; preds = %2
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %7
  %14 = call i32 (...) @cospad_bl_led_togg()
  br label %15

15:                                               ; preds = %13, %7
  store i32 0, i32* %3, align 4
  br label %76

16:                                               ; preds = %2
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %16
  %23 = call i32 (...) @cospad_bl_led_on()
  br label %24

24:                                               ; preds = %22, %16
  store i32 0, i32* %3, align 4
  br label %76

25:                                               ; preds = %2
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %25
  %32 = call i32 (...) @cospad_bl_led_off()
  br label %33

33:                                               ; preds = %31, %25
  store i32 0, i32* %3, align 4
  br label %76

34:                                               ; preds = %2
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %34
  %41 = load i32, i32* @_QWERTY_LAYER, align 4
  %42 = call i32 @set_single_persistent_default_layer(i32 %41)
  %43 = call i32 @print(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %44

44:                                               ; preds = %40, %34
  store i32 0, i32* %3, align 4
  br label %76

45:                                               ; preds = %2
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %45
  %52 = load i32, i32* @_QWERTZ_LAYER, align 4
  %53 = call i32 @set_single_persistent_default_layer(i32 %52)
  br label %54

54:                                               ; preds = %51, %45
  store i32 0, i32* %3, align 4
  br label %76

55:                                               ; preds = %2
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %55
  %62 = load i32, i32* @_COLEMA_LAYER, align 4
  %63 = call i32 @set_single_persistent_default_layer(i32 %62)
  br label %64

64:                                               ; preds = %61, %55
  store i32 0, i32* %3, align 4
  br label %76

65:                                               ; preds = %2
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %65
  %72 = load i32, i32* @_DVORAK_LAYER, align 4
  %73 = call i32 @set_single_persistent_default_layer(i32 %72)
  br label %74

74:                                               ; preds = %71, %65
  store i32 0, i32* %3, align 4
  br label %76

75:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %76

76:                                               ; preds = %75, %74, %64, %54, %44, %33, %24, %15
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local i32 @cospad_bl_led_togg(...) #1

declare dso_local i32 @cospad_bl_led_on(...) #1

declare dso_local i32 @cospad_bl_led_off(...) #1

declare dso_local i32 @set_single_persistent_default_layer(i32) #1

declare dso_local i32 @print(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
