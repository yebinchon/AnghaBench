; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/cannonkeys/satisfaction75/extr_satisfaction_oled.c_draw_default.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/cannonkeys/satisfaction75/extr_satisfaction_oled.c_draw_default.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@last_minute = common dso_local global i32 0, align 4
@encoder_mode = common dso_local global i64 0, align 8
@ENC_MODE_CLOCK_SET = common dso_local global i64 0, align 8
@hour_config = common dso_local global i32 0, align 4
@minute_config = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%02d\00", align 1
@MATRIX_ROWS = common dso_local global i32 0, align 4
@MATRIX_COLS = common dso_local global i32 0, align 4
@NORM = common dso_local global i32 0, align 4
@PIXEL_ON = common dso_local global i32 0, align 4
@MOD_LSFT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"S\00", align 1
@PIXEL_OFF = common dso_local global i32 0, align 4
@MOD_LCTL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@MOD_LALT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [2 x i8] c"A\00", align 1
@MOD_LGUI = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [2 x i8] c"G\00", align 1
@led_capslock = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [4 x i8] c"CAP\00", align 1
@led_scrolllock = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [4 x i8] c"SCR\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"pm\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"am\00", align 1
@ENCODER_INDICATOR_X = common dso_local global i32 0, align 4
@ENCODER_INDICATOR_Y = common dso_local global i32 0, align 4
@LOCK_DISPLAY_X = common dso_local global i64 0, align 8
@LOCK_DISPLAY_Y = common dso_local global i32 0, align 4
@MATRIX_DISPLAY_X = common dso_local global i64 0, align 8
@MATRIX_DISPLAY_Y = common dso_local global i32 0, align 4
@MOD_DISPLAY_X = common dso_local global i64 0, align 8
@MOD_DISPLAY_Y = common dso_local global i32 0, align 4
@TIME_DISPLAY_X = common dso_local global i64 0, align 8
@TIME_DISPLAY_Y = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @draw_default() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca [3 x i8], align 1
  %5 = alloca [3 x i8], align 1
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = load i32, i32* @last_minute, align 4
  %10 = sdiv i32 %9, 60
  store i32 %10, i32* %1, align 4
  %11 = load i32, i32* @last_minute, align 4
  %12 = srem i32 %11, 60
  store i32 %12, i32* %2, align 4
  %13 = load i64, i64* @encoder_mode, align 8
  %14 = load i64, i64* @ENC_MODE_CLOCK_SET, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %0
  %17 = load i32, i32* @hour_config, align 4
  store i32 %17, i32* %1, align 4
  %18 = load i32, i32* @minute_config, align 4
  store i32 %18, i32* %2, align 4
  br label %19

19:                                               ; preds = %16, %0
  %20 = load i32, i32* %1, align 4
  %21 = sdiv i32 %20, 12
  %22 = icmp sgt i32 %21, 0
  %23 = zext i1 %22 to i32
  store i32 %23, i32* %3, align 4
  %24 = load i32, i32* %1, align 4
  %25 = srem i32 %24, 12
  store i32 %25, i32* %1, align 4
  %26 = load i32, i32* %1, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %19
  store i32 12, i32* %1, align 4
  br label %29

29:                                               ; preds = %28, %19
  %30 = bitcast [3 x i8]* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 1 %30, i8 0, i64 3, i1 false)
  %31 = bitcast [3 x i8]* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 1 %31, i8 0, i64 3, i1 false)
  %32 = getelementptr inbounds [3 x i8], [3 x i8]* %4, i64 0, i64 0
  %33 = load i32, i32* %1, align 4
  %34 = call i32 @sprintf(i8* %32, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %33)
  %35 = getelementptr inbounds [3 x i8], [3 x i8]* %5, i64 0, i64 0
  %36 = load i32, i32* %2, align 4
  %37 = call i32 @sprintf(i8* %35, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %36)
  %38 = call i32 (...) @get_mods()
  store i32 %38, i32* %6, align 4
  %39 = call i32 @draw_layer_section(i32 0, i32 0, i32 1)
  %40 = call i32 @draw_encoder(i32 45, i32 0, i32 1)
  store i32 0, i32* %7, align 4
  br label %41

41:                                               ; preds = %71, %29
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* @MATRIX_ROWS, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %74

45:                                               ; preds = %41
  store i32 0, i32* %8, align 4
  br label %46

46:                                               ; preds = %67, %45
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* @MATRIX_COLS, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %70

50:                                               ; preds = %46
  %51 = load i32, i32* %8, align 4
  %52 = add nsw i32 0, %51
  %53 = add nsw i32 %52, 2
  %54 = sext i32 %53 to i64
  %55 = load i32, i32* %7, align 4
  %56 = add nsw i32 18, %55
  %57 = add nsw i32 %56, 2
  %58 = load i32, i32* %7, align 4
  %59 = call i32 @matrix_get_row(i32 %58)
  %60 = load i32, i32* %8, align 4
  %61 = shl i32 1, %60
  %62 = and i32 %59, %61
  %63 = icmp sgt i32 %62, 0
  %64 = zext i1 %63 to i32
  %65 = load i32, i32* @NORM, align 4
  %66 = call i32 @draw_pixel(i64 %54, i32 %57, i32 %64, i32 %65)
  br label %67

67:                                               ; preds = %50
  %68 = load i32, i32* %8, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %8, align 4
  br label %46

70:                                               ; preds = %46
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %7, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %7, align 4
  br label %41

74:                                               ; preds = %41
  %75 = load i32, i32* @PIXEL_ON, align 4
  %76 = load i32, i32* @NORM, align 4
  %77 = call i32 @draw_rect_soft(i64 0, i32 18, i32 19, i32 9, i32 %75, i32 %76)
  %78 = load i32, i32* @PIXEL_ON, align 4
  %79 = load i32, i32* @NORM, align 4
  %80 = call i32 @draw_rect_filled_soft(i64 14, i32 20, i32 3, i32 1, i32 %78, i32 %79)
  %81 = load i32, i32* %6, align 4
  %82 = load i32, i32* @MOD_LSFT, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %92

85:                                               ; preds = %74
  %86 = load i32, i32* @PIXEL_ON, align 4
  %87 = load i32, i32* @NORM, align 4
  %88 = call i32 @draw_rect_filled_soft(i64 30, i32 18, i32 11, i32 11, i32 %86, i32 %87)
  %89 = load i32, i32* @PIXEL_OFF, align 4
  %90 = load i32, i32* @NORM, align 4
  %91 = call i32 @draw_string(i64 33, i32 20, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 %89, i32 %90, i32 0)
  br label %96

92:                                               ; preds = %74
  %93 = load i32, i32* @PIXEL_ON, align 4
  %94 = load i32, i32* @NORM, align 4
  %95 = call i32 @draw_string(i64 33, i32 20, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 %93, i32 %94, i32 0)
  br label %96

96:                                               ; preds = %92, %85
  %97 = load i32, i32* %6, align 4
  %98 = load i32, i32* @MOD_LCTL, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %108

101:                                              ; preds = %96
  %102 = load i32, i32* @PIXEL_ON, align 4
  %103 = load i32, i32* @NORM, align 4
  %104 = call i32 @draw_rect_filled_soft(i64 40, i32 18, i32 11, i32 11, i32 %102, i32 %103)
  %105 = load i32, i32* @PIXEL_OFF, align 4
  %106 = load i32, i32* @NORM, align 4
  %107 = call i32 @draw_string(i64 43, i32 20, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 %105, i32 %106, i32 0)
  br label %112

108:                                              ; preds = %96
  %109 = load i32, i32* @PIXEL_ON, align 4
  %110 = load i32, i32* @NORM, align 4
  %111 = call i32 @draw_string(i64 43, i32 20, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 %109, i32 %110, i32 0)
  br label %112

112:                                              ; preds = %108, %101
  %113 = load i32, i32* %6, align 4
  %114 = load i32, i32* @MOD_LALT, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %124

117:                                              ; preds = %112
  %118 = load i32, i32* @PIXEL_ON, align 4
  %119 = load i32, i32* @NORM, align 4
  %120 = call i32 @draw_rect_filled_soft(i64 50, i32 18, i32 11, i32 11, i32 %118, i32 %119)
  %121 = load i32, i32* @PIXEL_OFF, align 4
  %122 = load i32, i32* @NORM, align 4
  %123 = call i32 @draw_string(i64 53, i32 20, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i32 %121, i32 %122, i32 0)
  br label %128

124:                                              ; preds = %112
  %125 = load i32, i32* @PIXEL_ON, align 4
  %126 = load i32, i32* @NORM, align 4
  %127 = call i32 @draw_string(i64 53, i32 20, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i32 %125, i32 %126, i32 0)
  br label %128

128:                                              ; preds = %124, %117
  %129 = load i32, i32* %6, align 4
  %130 = load i32, i32* @MOD_LGUI, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %140

133:                                              ; preds = %128
  %134 = load i32, i32* @PIXEL_ON, align 4
  %135 = load i32, i32* @NORM, align 4
  %136 = call i32 @draw_rect_filled_soft(i64 60, i32 18, i32 11, i32 11, i32 %134, i32 %135)
  %137 = load i32, i32* @PIXEL_OFF, align 4
  %138 = load i32, i32* @NORM, align 4
  %139 = call i32 @draw_string(i64 63, i32 20, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i32 %137, i32 %138, i32 0)
  br label %144

140:                                              ; preds = %128
  %141 = load i32, i32* @PIXEL_ON, align 4
  %142 = load i32, i32* @NORM, align 4
  %143 = call i32 @draw_string(i64 63, i32 20, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i32 %141, i32 %142, i32 0)
  br label %144

144:                                              ; preds = %140, %133
  %145 = load i32, i32* @led_capslock, align 4
  %146 = icmp eq i32 %145, 1
  br i1 %146, label %147, label %154

147:                                              ; preds = %144
  %148 = load i32, i32* @PIXEL_ON, align 4
  %149 = load i32, i32* @NORM, align 4
  %150 = call i32 @draw_rect_filled_soft(i64 100, i32 0, i32 23, i32 9, i32 %148, i32 %149)
  %151 = load i32, i32* @PIXEL_OFF, align 4
  %152 = load i32, i32* @NORM, align 4
  %153 = call i32 @draw_string(i64 103, i32 1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32 %151, i32 %152, i32 0)
  br label %162

154:                                              ; preds = %144
  %155 = load i32, i32* @led_capslock, align 4
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %157, label %161

157:                                              ; preds = %154
  %158 = load i32, i32* @PIXEL_ON, align 4
  %159 = load i32, i32* @NORM, align 4
  %160 = call i32 @draw_string(i64 103, i32 1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32 %158, i32 %159, i32 0)
  br label %161

161:                                              ; preds = %157, %154
  br label %162

162:                                              ; preds = %161, %147
  %163 = load i32, i32* @led_scrolllock, align 4
  %164 = icmp eq i32 %163, 1
  br i1 %164, label %165, label %172

165:                                              ; preds = %162
  %166 = load i32, i32* @PIXEL_ON, align 4
  %167 = load i32, i32* @NORM, align 4
  %168 = call i32 @draw_rect_filled_soft(i64 100, i32 11, i32 23, i32 9, i32 %166, i32 %167)
  %169 = load i32, i32* @PIXEL_OFF, align 4
  %170 = load i32, i32* @NORM, align 4
  %171 = call i32 @draw_string(i64 103, i32 12, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i32 %169, i32 %170, i32 0)
  br label %180

172:                                              ; preds = %162
  %173 = load i32, i32* @led_scrolllock, align 4
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %175, label %179

175:                                              ; preds = %172
  %176 = load i32, i32* @PIXEL_ON, align 4
  %177 = load i32, i32* @NORM, align 4
  %178 = call i32 @draw_string(i64 103, i32 12, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i32 %176, i32 %177, i32 0)
  br label %179

179:                                              ; preds = %175, %172
  br label %180

180:                                              ; preds = %179, %165
  %181 = getelementptr inbounds [3 x i8], [3 x i8]* %4, i64 0, i64 0
  %182 = load i32, i32* @PIXEL_ON, align 4
  %183 = load i32, i32* @NORM, align 4
  %184 = call i32 @draw_string(i64 82, i32 22, i8* %181, i32 %182, i32 %183, i32 0)
  %185 = load i32, i32* @PIXEL_ON, align 4
  %186 = load i32, i32* @NORM, align 4
  %187 = call i32 @draw_string(i64 93, i32 22, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0), i32 %185, i32 %186, i32 0)
  %188 = getelementptr inbounds [3 x i8], [3 x i8]* %5, i64 0, i64 0
  %189 = load i32, i32* @PIXEL_ON, align 4
  %190 = load i32, i32* @NORM, align 4
  %191 = call i32 @draw_string(i64 97, i32 22, i8* %188, i32 %189, i32 %190, i32 0)
  %192 = load i32, i32* %3, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %198

194:                                              ; preds = %180
  %195 = load i32, i32* @PIXEL_ON, align 4
  %196 = load i32, i32* @NORM, align 4
  %197 = call i32 @draw_string(i64 109, i32 22, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i32 %195, i32 %196, i32 0)
  br label %202

198:                                              ; preds = %180
  %199 = load i32, i32* @PIXEL_ON, align 4
  %200 = load i32, i32* @NORM, align 4
  %201 = call i32 @draw_string(i64 109, i32 22, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), i32 %199, i32 %200, i32 0)
  br label %202

202:                                              ; preds = %198, %194
  %203 = call i32 (...) @send_buffer()
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #2

declare dso_local i32 @get_mods(...) #2

declare dso_local i32 @draw_layer_section(i32, i32, i32) #2

declare dso_local i32 @draw_encoder(i32, i32, i32) #2

declare dso_local i32 @draw_pixel(i64, i32, i32, i32) #2

declare dso_local i32 @matrix_get_row(i32) #2

declare dso_local i32 @draw_rect_soft(i64, i32, i32, i32, i32, i32) #2

declare dso_local i32 @draw_rect_filled_soft(i64, i32, i32, i32, i32, i32) #2

declare dso_local i32 @draw_string(i64, i32, i8*, i32, i32, i32) #2

declare dso_local i32 @send_buffer(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
