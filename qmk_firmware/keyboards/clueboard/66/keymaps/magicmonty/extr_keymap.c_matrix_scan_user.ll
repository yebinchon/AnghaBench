; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/clueboard/66/keymaps/magicmonty/extr_keymap.c_matrix_scan_user.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/clueboard/66/keymaps/magicmonty/extr_keymap.c_matrix_scan_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@layer_state = common dso_local global i32 0, align 4
@_FL = common dso_local global i32 0, align 4
@_ME = common dso_local global i32 0, align 4
@LAYER_MEDIA = common dso_local global i32 0, align 4
@_CL = common dso_local global i32 0, align 4
@LAYER_CONTROL = common dso_local global i32 0, align 4
@LAYER_FUNCTION = common dso_local global i32 0, align 4
@_ML = common dso_local global i32 0, align 4
@LAYER_MOUSE = common dso_local global i32 0, align 4
@LAYER_BASE = common dso_local global i32 0, align 4
@_MI = common dso_local global i32 0, align 4
@midi_config = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @matrix_scan_user() #0 {
  %1 = alloca %struct.TYPE_3__, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = call i32 (...) @eeconfig_read_rgblight()
  %5 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 3
  store i32 %4, i32* %5, align 4
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 2
  %7 = load i32, i32* %6, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %0
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 1
  br i1 %12, label %13, label %14

13:                                               ; preds = %9, %0
  br label %64

14:                                               ; preds = %9
  %15 = load i32, i32* @layer_state, align 4
  store i32 %15, i32* %2, align 4
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %3, align 4
  %18 = load i32, i32* %2, align 4
  %19 = load i32, i32* @_FL, align 4
  %20 = shl i32 1, %19
  %21 = and i32 %18, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %49

23:                                               ; preds = %14
  %24 = load i32, i32* %2, align 4
  %25 = load i32, i32* @_ME, align 4
  %26 = shl i32 1, %25
  %27 = and i32 %24, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %23
  %30 = load i32, i32* @LAYER_MEDIA, align 4
  %31 = load i32, i32* %3, align 4
  %32 = call i32 @clueboard_set_led(i32 %30, i32 %31)
  br label %48

33:                                               ; preds = %23
  %34 = load i32, i32* %2, align 4
  %35 = load i32, i32* @_CL, align 4
  %36 = shl i32 1, %35
  %37 = and i32 %34, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %33
  %40 = load i32, i32* @LAYER_CONTROL, align 4
  %41 = load i32, i32* %3, align 4
  %42 = call i32 @clueboard_set_led(i32 %40, i32 %41)
  br label %47

43:                                               ; preds = %33
  %44 = load i32, i32* @LAYER_FUNCTION, align 4
  %45 = load i32, i32* %3, align 4
  %46 = call i32 @clueboard_set_led(i32 %44, i32 %45)
  br label %47

47:                                               ; preds = %43, %39
  br label %48

48:                                               ; preds = %47, %29
  br label %64

49:                                               ; preds = %14
  %50 = load i32, i32* %2, align 4
  %51 = load i32, i32* @_ML, align 4
  %52 = shl i32 1, %51
  %53 = and i32 %50, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %49
  %56 = load i32, i32* @LAYER_MOUSE, align 4
  %57 = load i32, i32* %3, align 4
  %58 = call i32 @clueboard_set_led(i32 %56, i32 %57)
  br label %63

59:                                               ; preds = %49
  %60 = load i32, i32* @LAYER_BASE, align 4
  %61 = load i32, i32* %3, align 4
  %62 = call i32 @clueboard_set_led(i32 %60, i32 %61)
  br label %63

63:                                               ; preds = %59, %55
  br label %64

64:                                               ; preds = %13, %63, %48
  ret void
}

declare dso_local i32 @eeconfig_read_rgblight(...) #1

declare dso_local i32 @clueboard_set_led(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
