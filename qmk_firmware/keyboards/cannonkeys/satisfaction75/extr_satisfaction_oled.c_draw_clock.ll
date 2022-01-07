; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/cannonkeys/satisfaction75/extr_satisfaction_oled.c_draw_clock.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/cannonkeys/satisfaction75/extr_satisfaction_oled.c_draw_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }

@last_minute = common dso_local global i32 0, align 4
@last_timespec = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@encoder_mode = common dso_local global i64 0, align 8
@ENC_MODE_CLOCK_SET = common dso_local global i64 0, align 8
@hour_config = common dso_local global i32 0, align 4
@minute_config = common dso_local global i32 0, align 4
@year_config = common dso_local global i32 0, align 4
@month_config = common dso_local global i32 0, align 4
@day_config = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%02d\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@PIXEL_ON = common dso_local global i32 0, align 4
@NORM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"pm\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"am\00", align 1
@clock_set_mode = common dso_local global i64 0, align 8
@time_config_idx = common dso_local global i32 0, align 4
@led_capslock = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [5 x i8] c"CAPS\00", align 1
@PIXEL_OFF = common dso_local global i32 0, align 4
@CAPS_DISPLAY_X = common dso_local global i64 0, align 8
@CAPS_DISPLAY_Y = common dso_local global i64 0, align 8
@CLOCK_DISPLAY_X = common dso_local global i64 0, align 8
@CLOCK_DISPLAY_Y = common dso_local global i64 0, align 8
@DATE_DISPLAY_X = common dso_local global i64 0, align 8
@DATE_DISPLAY_Y = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @draw_clock() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [3 x i8], align 1
  %8 = alloca [3 x i8], align 1
  %9 = alloca [5 x i8], align 1
  %10 = alloca [3 x i8], align 1
  %11 = alloca [3 x i8], align 1
  %12 = load i32, i32* @last_minute, align 4
  %13 = sdiv i32 %12, 60
  store i32 %13, i32* %1, align 4
  %14 = load i32, i32* @last_minute, align 4
  %15 = srem i32 %14, 60
  store i32 %15, i32* %2, align 4
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @last_timespec, i32 0, i32 0), align 4
  %17 = add nsw i32 %16, 1980
  store i32 %17, i32* %3, align 4
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @last_timespec, i32 0, i32 1), align 4
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @last_timespec, i32 0, i32 2), align 4
  store i32 %19, i32* %5, align 4
  %20 = load i64, i64* @encoder_mode, align 8
  %21 = load i64, i64* @ENC_MODE_CLOCK_SET, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %30

23:                                               ; preds = %0
  %24 = load i32, i32* @hour_config, align 4
  store i32 %24, i32* %1, align 4
  %25 = load i32, i32* @minute_config, align 4
  store i32 %25, i32* %2, align 4
  %26 = load i32, i32* @year_config, align 4
  %27 = add nsw i32 %26, 1980
  store i32 %27, i32* %3, align 4
  %28 = load i32, i32* @month_config, align 4
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* @day_config, align 4
  store i32 %29, i32* %5, align 4
  br label %30

30:                                               ; preds = %23, %0
  %31 = load i32, i32* %1, align 4
  %32 = sdiv i32 %31, 12
  %33 = icmp sgt i32 %32, 0
  %34 = zext i1 %33 to i32
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %1, align 4
  %36 = srem i32 %35, 12
  store i32 %36, i32* %1, align 4
  %37 = load i32, i32* %1, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %30
  store i32 12, i32* %1, align 4
  br label %40

40:                                               ; preds = %39, %30
  %41 = bitcast [3 x i8]* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 1 %41, i8 0, i64 3, i1 false)
  %42 = bitcast [3 x i8]* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 1 %42, i8 0, i64 3, i1 false)
  %43 = bitcast [5 x i8]* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 1 %43, i8 0, i64 5, i1 false)
  %44 = bitcast [3 x i8]* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 1 %44, i8 0, i64 3, i1 false)
  %45 = bitcast [3 x i8]* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 1 %45, i8 0, i64 3, i1 false)
  %46 = getelementptr inbounds [3 x i8], [3 x i8]* %7, i64 0, i64 0
  %47 = load i32, i32* %1, align 4
  %48 = call i32 @sprintf(i8* %46, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %47)
  %49 = getelementptr inbounds [3 x i8], [3 x i8]* %8, i64 0, i64 0
  %50 = load i32, i32* %2, align 4
  %51 = call i32 @sprintf(i8* %49, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %50)
  %52 = getelementptr inbounds [5 x i8], [5 x i8]* %9, i64 0, i64 0
  %53 = load i32, i32* %3, align 4
  %54 = call i32 @sprintf(i8* %52, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %53)
  %55 = getelementptr inbounds [3 x i8], [3 x i8]* %10, i64 0, i64 0
  %56 = load i32, i32* %4, align 4
  %57 = call i32 @sprintf(i8* %55, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %56)
  %58 = getelementptr inbounds [3 x i8], [3 x i8]* %11, i64 0, i64 0
  %59 = load i32, i32* %5, align 4
  %60 = call i32 @sprintf(i8* %58, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %59)
  %61 = getelementptr inbounds [5 x i8], [5 x i8]* %9, i64 0, i64 0
  %62 = load i32, i32* @PIXEL_ON, align 4
  %63 = load i32, i32* @NORM, align 4
  %64 = call i32 @draw_string(i64 6, i64 0, i8* %61, i32 %62, i32 %63, i32 0)
  %65 = load i32, i32* @PIXEL_ON, align 4
  %66 = load i32, i32* @NORM, align 4
  %67 = call i32 @draw_string(i64 31, i64 0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 %65, i32 %66, i32 0)
  %68 = getelementptr inbounds [3 x i8], [3 x i8]* %10, i64 0, i64 0
  %69 = load i32, i32* @PIXEL_ON, align 4
  %70 = load i32, i32* @NORM, align 4
  %71 = call i32 @draw_string(i64 37, i64 0, i8* %68, i32 %69, i32 %70, i32 0)
  %72 = load i32, i32* @PIXEL_ON, align 4
  %73 = load i32, i32* @NORM, align 4
  %74 = call i32 @draw_string(i64 50, i64 0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 %72, i32 %73, i32 0)
  %75 = getelementptr inbounds [3 x i8], [3 x i8]* %11, i64 0, i64 0
  %76 = load i32, i32* @PIXEL_ON, align 4
  %77 = load i32, i32* @NORM, align 4
  %78 = call i32 @draw_string(i64 56, i64 0, i8* %75, i32 %76, i32 %77, i32 0)
  %79 = getelementptr inbounds [3 x i8], [3 x i8]* %7, i64 0, i64 0
  %80 = load i32, i32* @PIXEL_ON, align 4
  %81 = load i32, i32* @NORM, align 4
  %82 = call i32 @draw_string(i64 6, i64 14, i8* %79, i32 %80, i32 %81, i32 1)
  %83 = load i32, i32* @PIXEL_ON, align 4
  %84 = load i32, i32* @NORM, align 4
  %85 = call i32 @draw_string(i64 23, i64 14, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i32 %83, i32 %84, i32 1)
  %86 = getelementptr inbounds [3 x i8], [3 x i8]* %8, i64 0, i64 0
  %87 = load i32, i32* @PIXEL_ON, align 4
  %88 = load i32, i32* @NORM, align 4
  %89 = call i32 @draw_string(i64 31, i64 14, i8* %86, i32 %87, i32 %88, i32 1)
  %90 = load i32, i32* %6, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %40
  %93 = load i32, i32* @PIXEL_ON, align 4
  %94 = load i32, i32* @NORM, align 4
  %95 = call i32 @draw_string(i64 47, i64 14, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32 %93, i32 %94, i32 1)
  br label %100

96:                                               ; preds = %40
  %97 = load i32, i32* @PIXEL_ON, align 4
  %98 = load i32, i32* @NORM, align 4
  %99 = call i32 @draw_string(i64 47, i64 14, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i32 %97, i32 %98, i32 1)
  br label %100

100:                                              ; preds = %96, %92
  %101 = load i64, i64* @clock_set_mode, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %127

103:                                              ; preds = %100
  %104 = load i32, i32* @time_config_idx, align 4
  switch i32 %104, label %106 [
    i32 0, label %105
    i32 1, label %110
    i32 2, label %114
    i32 3, label %118
    i32 4, label %122
  ]

105:                                              ; preds = %103
  br label %106

106:                                              ; preds = %103, %105
  %107 = load i32, i32* @PIXEL_ON, align 4
  %108 = load i32, i32* @NORM, align 4
  %109 = call i32 @draw_line(i64 6, i32 31, i64 22, i32 31, i32 %107, i32 %108)
  br label %126

110:                                              ; preds = %103
  %111 = load i32, i32* @PIXEL_ON, align 4
  %112 = load i32, i32* @NORM, align 4
  %113 = call i32 @draw_line(i64 31, i32 31, i64 47, i32 31, i32 %111, i32 %112)
  br label %126

114:                                              ; preds = %103
  %115 = load i32, i32* @PIXEL_ON, align 4
  %116 = load i32, i32* @NORM, align 4
  %117 = call i32 @draw_line(i64 6, i32 9, i64 29, i32 9, i32 %115, i32 %116)
  br label %126

118:                                              ; preds = %103
  %119 = load i32, i32* @PIXEL_ON, align 4
  %120 = load i32, i32* @NORM, align 4
  %121 = call i32 @draw_line(i64 37, i32 9, i64 49, i32 9, i32 %119, i32 %120)
  br label %126

122:                                              ; preds = %103
  %123 = load i32, i32* @PIXEL_ON, align 4
  %124 = load i32, i32* @NORM, align 4
  %125 = call i32 @draw_line(i64 56, i32 9, i64 67, i32 9, i32 %123, i32 %124)
  br label %126

126:                                              ; preds = %122, %118, %114, %110, %106
  br label %127

127:                                              ; preds = %126, %100
  %128 = call i32 @draw_encoder(i32 80, i32 0, i32 1)
  %129 = call i32 @draw_layer_section(i32 80, i32 11, i32 1)
  %130 = load i32, i32* @led_capslock, align 4
  %131 = icmp eq i32 %130, 1
  br i1 %131, label %132, label %139

132:                                              ; preds = %127
  %133 = load i32, i32* @PIXEL_ON, align 4
  %134 = load i32, i32* @NORM, align 4
  %135 = call i32 @draw_rect_filled_soft(i64 86, i64 22, i32 29, i32 9, i32 %133, i32 %134)
  %136 = load i32, i32* @PIXEL_OFF, align 4
  %137 = load i32, i32* @NORM, align 4
  %138 = call i32 @draw_string(i64 89, i64 23, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i32 %136, i32 %137, i32 0)
  br label %147

139:                                              ; preds = %127
  %140 = load i32, i32* @led_capslock, align 4
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %142, label %146

142:                                              ; preds = %139
  %143 = load i32, i32* @PIXEL_ON, align 4
  %144 = load i32, i32* @NORM, align 4
  %145 = call i32 @draw_string(i64 89, i64 23, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i32 %143, i32 %144, i32 0)
  br label %146

146:                                              ; preds = %142, %139
  br label %147

147:                                              ; preds = %146, %132
  %148 = call i32 (...) @send_buffer()
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #2

declare dso_local i32 @draw_string(i64, i64, i8*, i32, i32, i32) #2

declare dso_local i32 @draw_line(i64, i32, i64, i32, i32, i32) #2

declare dso_local i32 @draw_encoder(i32, i32, i32) #2

declare dso_local i32 @draw_layer_section(i32, i32, i32) #2

declare dso_local i32 @draw_rect_filled_soft(i64, i64, i32, i32, i32, i32) #2

declare dso_local i32 @send_buffer(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
