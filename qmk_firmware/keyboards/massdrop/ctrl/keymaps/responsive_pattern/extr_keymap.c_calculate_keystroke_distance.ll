; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/massdrop/ctrl/keymaps/responsive_pattern/extr_keymap.c_calculate_keystroke_distance.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/massdrop/ctrl/keymaps/responsive_pattern/extr_keymap.c_calculate_keystroke_distance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64, i32 }
%struct.TYPE_3__ = type { i64, i64, i64, i32 }

@KEY_LED_COUNT = common dso_local global i64 0, align 8
@DISTANCE_FROM_LAST_KEYSTROKE = common dso_local global i32* null, align 8
@KEY_STROKES_LENGTH = common dso_local global i64 0, align 8
@KEY_STROKES = common dso_local global %struct.TYPE_4__* null, align 8
@USER_CONFIG = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@DISTANCE_MAP = common dso_local global i64** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @calculate_keystroke_distance() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i64 0, i64* %5, align 8
  br label %9

9:                                                ; preds = %17, %0
  %10 = load i64, i64* %5, align 8
  %11 = load i64, i64* @KEY_LED_COUNT, align 8
  %12 = icmp ule i64 %10, %11
  br i1 %12, label %13, label %20

13:                                               ; preds = %9
  %14 = load i32*, i32** @DISTANCE_FROM_LAST_KEYSTROKE, align 8
  %15 = load i64, i64* %5, align 8
  %16 = getelementptr inbounds i32, i32* %14, i64 %15
  store i32 0, i32* %16, align 4
  br label %17

17:                                               ; preds = %13
  %18 = load i64, i64* %5, align 8
  %19 = add i64 %18, 1
  store i64 %19, i64* %5, align 8
  br label %9

20:                                               ; preds = %9
  store i64 0, i64* %6, align 8
  br label %21

21:                                               ; preds = %101, %20
  %22 = load i64, i64* %6, align 8
  %23 = load i64, i64* @KEY_STROKES_LENGTH, align 8
  %24 = icmp ult i64 %22, %23
  br i1 %24, label %25, label %104

25:                                               ; preds = %21
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** @KEY_STROKES, align 8
  %27 = load i64, i64* %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %100

32:                                               ; preds = %25
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** @KEY_STROKES, align 8
  %34 = load i64, i64* %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = call i64 @timer_elapsed32(i32 %37)
  store i64 %38, i64* %4, align 8
  store i32 0, i32* %1, align 4
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** @KEY_STROKES, align 8
  %40 = load i64, i64* %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  store i64 %43, i64* %2, align 8
  %44 = load i64, i64* %4, align 8
  %45 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @USER_CONFIG, i32 0, i32 0), align 8
  %46 = udiv i64 %44, %45
  store i64 %46, i64* %3, align 8
  store i64 1, i64* %8, align 8
  br label %47

47:                                               ; preds = %91, %32
  %48 = load i64, i64* %8, align 8
  %49 = load i64, i64* @KEY_LED_COUNT, align 8
  %50 = icmp ule i64 %48, %49
  br i1 %50, label %51, label %94

51:                                               ; preds = %47
  %52 = load i64, i64* %3, align 8
  %53 = load i64**, i64*** @DISTANCE_MAP, align 8
  %54 = load i64, i64* %2, align 8
  %55 = getelementptr inbounds i64*, i64** %53, i64 %54
  %56 = load i64*, i64** %55, align 8
  %57 = load i64, i64* %8, align 8
  %58 = getelementptr inbounds i64, i64* %56, i64 %57
  %59 = load i64, i64* %58, align 8
  %60 = sub i64 %52, %59
  store i64 %60, i64* %7, align 8
  %61 = load i64, i64* %7, align 8
  %62 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @USER_CONFIG, i32 0, i32 1), align 8
  %63 = icmp ult i64 %61, %62
  br i1 %63, label %64, label %90

64:                                               ; preds = %51
  %65 = load i64**, i64*** @DISTANCE_MAP, align 8
  %66 = load i64, i64* %2, align 8
  %67 = getelementptr inbounds i64*, i64** %65, i64 %66
  %68 = load i64*, i64** %67, align 8
  %69 = load i64, i64* %8, align 8
  %70 = getelementptr inbounds i64, i64* %68, i64 %69
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @USER_CONFIG, i32 0, i32 2), align 8
  %73 = icmp sle i64 %71, %72
  br i1 %73, label %74, label %90

74:                                               ; preds = %64
  %75 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @USER_CONFIG, i32 0, i32 3), align 8
  switch i32 %75, label %85 [
    i32 3, label %76
    i32 4, label %76
    i32 5, label %76
    i32 6, label %76
  ]

76:                                               ; preds = %74, %74, %74, %74
  %77 = load i64, i64* %7, align 8
  %78 = load i32*, i32** @DISTANCE_FROM_LAST_KEYSTROKE, align 8
  %79 = load i64, i64* %8, align 8
  %80 = getelementptr inbounds i32, i32* %78, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = sext i32 %81 to i64
  %83 = add i64 %82, %77
  %84 = trunc i64 %83 to i32
  store i32 %84, i32* %80, align 4
  br label %89

85:                                               ; preds = %74
  %86 = load i32*, i32** @DISTANCE_FROM_LAST_KEYSTROKE, align 8
  %87 = load i64, i64* %8, align 8
  %88 = getelementptr inbounds i32, i32* %86, i64 %87
  store i32 1, i32* %88, align 4
  br label %89

89:                                               ; preds = %85, %76
  store i32 1, i32* %1, align 4
  br label %90

90:                                               ; preds = %89, %64, %51
  br label %91

91:                                               ; preds = %90
  %92 = load i64, i64* %8, align 8
  %93 = add i64 %92, 1
  store i64 %93, i64* %8, align 8
  br label %47

94:                                               ; preds = %47
  %95 = load i32, i32* %1, align 4
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** @KEY_STROKES, align 8
  %97 = load i64, i64* %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 0
  store i32 %95, i32* %99, align 8
  br label %100

100:                                              ; preds = %94, %25
  br label %101

101:                                              ; preds = %100
  %102 = load i64, i64* %6, align 8
  %103 = add i64 %102, 1
  store i64 %103, i64* %6, align 8
  br label %21

104:                                              ; preds = %21
  ret void
}

declare dso_local i64 @timer_elapsed32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
