; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/clueboard/66/keymaps/magicmonty/extr_keymap.c_clueboard_set_midi_led.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/clueboard/66/keymaps/magicmonty/extr_keymap.c_clueboard_set_midi_led.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RGBLED_NUM = common dso_local global i64 0, align 8
@oct_hues = common dso_local global i32* null, align 8
@led = common dso_local global i32* null, align 8
@MAX_OCT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @clueboard_set_midi_led(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  store i64 255, i64* %5, align 8
  store i64 0, i64* %6, align 8
  br label %13

13:                                               ; preds = %28, %2
  %14 = load i64, i64* %6, align 8
  %15 = load i64, i64* @RGBLED_NUM, align 8
  %16 = icmp ult i64 %14, %15
  br i1 %16, label %17, label %31

17:                                               ; preds = %13
  %18 = load i32*, i32** @oct_hues, align 8
  %19 = load i64, i64* %3, align 8
  %20 = getelementptr inbounds i32, i32* %18, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = load i64, i64* %5, align 8
  %23 = load i64, i64* %4, align 8
  %24 = load i32*, i32** @led, align 8
  %25 = load i64, i64* %6, align 8
  %26 = getelementptr inbounds i32, i32* %24, i64 %25
  %27 = call i32 @sethsv(i32 %21, i64 %22, i64 %23, i32* %26)
  br label %28

28:                                               ; preds = %17
  %29 = load i64, i64* %6, align 8
  %30 = add i64 %29, 1
  store i64 %30, i64* %6, align 8
  br label %13

31:                                               ; preds = %13
  %32 = load i64, i64* %3, align 8
  %33 = load i64, i64* @MAX_OCT, align 8
  %34 = icmp ult i64 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %31
  %36 = load i64, i64* %3, align 8
  %37 = add i64 %36, 1
  br label %40

38:                                               ; preds = %31
  %39 = load i64, i64* %3, align 8
  br label %40

40:                                               ; preds = %38, %35
  %41 = phi i64 [ %37, %35 ], [ %39, %38 ]
  store i64 %41, i64* %7, align 8
  %42 = load i64, i64* %3, align 8
  %43 = load i64, i64* @MAX_OCT, align 8
  %44 = icmp ult i64 %42, %43
  br i1 %44, label %45, label %50

45:                                               ; preds = %40
  %46 = load i32*, i32** @oct_hues, align 8
  %47 = load i64, i64* %7, align 8
  %48 = getelementptr inbounds i32, i32* %46, i64 %47
  %49 = load i32, i32* %48, align 4
  br label %51

50:                                               ; preds = %40
  br label %51

51:                                               ; preds = %50, %45
  %52 = phi i32 [ %49, %45 ], [ 0, %50 ]
  store i32 %52, i32* %8, align 4
  %53 = load i64, i64* %3, align 8
  %54 = load i64, i64* @MAX_OCT, align 8
  %55 = icmp ult i64 %53, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %51
  %57 = load i64, i64* %4, align 8
  br label %59

58:                                               ; preds = %51
  br label %59

59:                                               ; preds = %58, %56
  %60 = phi i64 [ %57, %56 ], [ 0, %58 ]
  store i64 %60, i64* %9, align 8
  %61 = load i64, i64* %3, align 8
  %62 = load i64, i64* @MAX_OCT, align 8
  %63 = icmp ult i64 %61, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %59
  %65 = load i64, i64* %5, align 8
  br label %67

66:                                               ; preds = %59
  br label %67

67:                                               ; preds = %66, %64
  %68 = phi i64 [ %65, %64 ], [ 0, %66 ]
  store i64 %68, i64* %10, align 8
  store i64 0, i64* %11, align 8
  br label %69

69:                                               ; preds = %80, %67
  %70 = load i64, i64* %11, align 8
  %71 = icmp ult i64 %70, 3
  br i1 %71, label %72, label %83

72:                                               ; preds = %69
  %73 = load i32, i32* %8, align 4
  %74 = load i64, i64* %10, align 8
  %75 = load i64, i64* %9, align 8
  %76 = load i32*, i32** @led, align 8
  %77 = load i64, i64* %11, align 8
  %78 = getelementptr inbounds i32, i32* %76, i64 %77
  %79 = call i32 @sethsv(i32 %73, i64 %74, i64 %75, i32* %78)
  br label %80

80:                                               ; preds = %72
  %81 = load i64, i64* %11, align 8
  %82 = add i64 %81, 1
  store i64 %82, i64* %11, align 8
  br label %69

83:                                               ; preds = %69
  store i64 11, i64* %12, align 8
  br label %84

84:                                               ; preds = %95, %83
  %85 = load i64, i64* %12, align 8
  %86 = icmp ult i64 %85, 14
  br i1 %86, label %87, label %98

87:                                               ; preds = %84
  %88 = load i32, i32* %8, align 4
  %89 = load i64, i64* %10, align 8
  %90 = load i64, i64* %9, align 8
  %91 = load i32*, i32** @led, align 8
  %92 = load i64, i64* %12, align 8
  %93 = getelementptr inbounds i32, i32* %91, i64 %92
  %94 = call i32 @sethsv(i32 %88, i64 %89, i64 %90, i32* %93)
  br label %95

95:                                               ; preds = %87
  %96 = load i64, i64* %12, align 8
  %97 = add i64 %96, 1
  store i64 %97, i64* %12, align 8
  br label %84

98:                                               ; preds = %84
  %99 = call i32 (...) @rgblight_set()
  ret void
}

declare dso_local i32 @sethsv(i32, i64, i64, i32*) #1

declare dso_local i32 @rgblight_set(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
