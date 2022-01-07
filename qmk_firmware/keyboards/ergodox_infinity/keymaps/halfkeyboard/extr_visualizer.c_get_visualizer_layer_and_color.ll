; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/ergodox_infinity/keymaps/halfkeyboard/extr_visualizer.c_get_visualizer_layer_and_color.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/ergodox_infinity/keymaps/halfkeyboard/extr_visualizer.c_get_visualizer_layer_and_color.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8*, i8*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@OCEAN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"STENOGRAPHY\00", align 1
@GREEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"FUNCTION\00", align 1
@MAGENTA = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"Shortcuts Layer\00", align 1
@sweep_on_sweep_off_left_and_right = common dso_local global i32 0, align 4
@led_test_animation = common dso_local global i32 0, align 4
@VIOLET = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"Plover\00", align 1
@RASPBERRY = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [17 x i8] c"Mirrored Symbols\00", align 1
@RED = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [8 x i8] c"Symbols\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"Mirrored Dvorak\00", align 1
@BLUE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [7 x i8] c"Dvorak\00", align 1
@ORANGE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [16 x i8] c"Mirrored Qwerty\00", align 1
@YELLOW = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [7 x i8] c"Qwerty\00", align 1
@Fade_in_all_leds = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*)* @get_visualizer_layer_and_color to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_visualizer_layer_and_color(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  store i32 255, i32* %3, align 4
  %4 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 2
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = and i32 %7, 1024
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %18

10:                                               ; preds = %1
  %11 = load i32, i32* @OCEAN, align 4
  %12 = load i32, i32* %3, align 4
  %13 = call i8* @LCD_COLOR(i32 %11, i32 %12, i32 255)
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 1
  store i8* %13, i8** %15, align 8
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8** %17, align 8
  br label %160

18:                                               ; preds = %1
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = and i32 %22, 512
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %18
  %26 = load i32, i32* @GREEN, align 4
  %27 = load i32, i32* %3, align 4
  %28 = call i8* @LCD_COLOR(i32 %26, i32 %27, i32 255)
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 1
  store i8* %28, i8** %30, align 8
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8** %32, align 8
  br label %159

33:                                               ; preds = %18
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = and i32 %37, 256
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %50

40:                                               ; preds = %33
  %41 = load i32, i32* @MAGENTA, align 4
  %42 = load i32, i32* %3, align 4
  %43 = call i8* @LCD_COLOR(i32 %41, i32 %42, i32 255)
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 1
  store i8* %43, i8** %45, align 8
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i8** %47, align 8
  %48 = call i32 @stop_keyframe_animation(i32* @sweep_on_sweep_off_left_and_right)
  %49 = call i32 @start_keyframe_animation(i32* @led_test_animation)
  br label %158

50:                                               ; preds = %33
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = and i32 %54, 128
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %65

57:                                               ; preds = %50
  %58 = load i32, i32* @VIOLET, align 4
  %59 = load i32, i32* %3, align 4
  %60 = call i8* @LCD_COLOR(i32 %58, i32 %59, i32 255)
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 1
  store i8* %60, i8** %62, align 8
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8** %64, align 8
  br label %157

65:                                               ; preds = %50
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = and i32 %69, 64
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %80

72:                                               ; preds = %65
  %73 = load i32, i32* @RASPBERRY, align 4
  %74 = load i32, i32* %3, align 4
  %75 = call i8* @LCD_COLOR(i32 %73, i32 %74, i32 255)
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 1
  store i8* %75, i8** %77, align 8
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 0
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i8** %79, align 8
  br label %156

80:                                               ; preds = %65
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = and i32 %84, 32
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %95

87:                                               ; preds = %80
  %88 = load i32, i32* @RED, align 4
  %89 = load i32, i32* %3, align 4
  %90 = call i8* @LCD_COLOR(i32 %88, i32 %89, i32 255)
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 1
  store i8* %90, i8** %92, align 8
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8** %94, align 8
  br label %155

95:                                               ; preds = %80
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 2
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = and i32 %99, 8
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %110

102:                                              ; preds = %95
  %103 = load i32, i32* @OCEAN, align 4
  %104 = load i32, i32* %3, align 4
  %105 = call i8* @LCD_COLOR(i32 %103, i32 %104, i32 255)
  %106 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 1
  store i8* %105, i8** %107, align 8
  %108 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 0
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i8** %109, align 8
  br label %154

110:                                              ; preds = %95
  %111 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 2
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = and i32 %114, 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %127

117:                                              ; preds = %110
  %118 = load i32, i32* @BLUE, align 4
  %119 = load i32, i32* %3, align 4
  %120 = call i8* @LCD_COLOR(i32 %118, i32 %119, i32 255)
  %121 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 1
  store i8* %120, i8** %122, align 8
  %123 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i8** %124, align 8
  %125 = call i32 @stop_keyframe_animation(i32* @led_test_animation)
  %126 = call i32 @start_keyframe_animation(i32* @sweep_on_sweep_off_left_and_right)
  br label %153

127:                                              ; preds = %110
  %128 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i32 0, i32 2
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = and i32 %131, 2
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %142

134:                                              ; preds = %127
  %135 = load i32, i32* @ORANGE, align 4
  %136 = load i32, i32* %3, align 4
  %137 = call i8* @LCD_COLOR(i32 %135, i32 %136, i32 255)
  %138 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %139 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %138, i32 0, i32 1
  store i8* %137, i8** %139, align 8
  %140 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %141 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %140, i32 0, i32 0
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0), i8** %141, align 8
  br label %152

142:                                              ; preds = %127
  %143 = load i32, i32* @YELLOW, align 4
  %144 = load i32, i32* %3, align 4
  %145 = call i8* @LCD_COLOR(i32 %143, i32 %144, i32 255)
  %146 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %147 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %146, i32 0, i32 1
  store i8* %145, i8** %147, align 8
  %148 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %149 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %148, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i8** %149, align 8
  %150 = call i32 @stop_keyframe_animation(i32* @led_test_animation)
  %151 = call i32 @start_keyframe_animation(i32* @Fade_in_all_leds)
  br label %152

152:                                              ; preds = %142, %134
  br label %153

153:                                              ; preds = %152, %117
  br label %154

154:                                              ; preds = %153, %102
  br label %155

155:                                              ; preds = %154, %87
  br label %156

156:                                              ; preds = %155, %72
  br label %157

157:                                              ; preds = %156, %57
  br label %158

158:                                              ; preds = %157, %40
  br label %159

159:                                              ; preds = %158, %25
  br label %160

160:                                              ; preds = %159, %10
  ret void
}

declare dso_local i8* @LCD_COLOR(i32, i32, i32) #1

declare dso_local i32 @stop_keyframe_animation(i32*) #1

declare dso_local i32 @start_keyframe_animation(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
