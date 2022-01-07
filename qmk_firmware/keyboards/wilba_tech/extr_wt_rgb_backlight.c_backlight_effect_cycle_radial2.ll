; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/wilba_tech/extr_wt_rgb_backlight.c_backlight_effect_cycle_radial2.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/wilba_tech/extr_wt_rgb_backlight.c_backlight_effect_cycle_radial2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { i32, i64 }
%struct.TYPE_12__ = type { i32, i64, i32 }
%struct.TYPE_10__ = type { i32, i32, i32 }
%struct.TYPE_11__ = type { i32, i32 }

@g_tick = common dso_local global i32 0, align 4
@g_config = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8
@BACKLIGHT_LED_COUNT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @backlight_effect_cycle_radial2() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_12__, align 8
  %3 = alloca %struct.TYPE_10__, align 4
  %4 = alloca %struct.TYPE_11__, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_10__, align 4
  %8 = alloca { i64, i32 }, align 8
  %9 = load i32, i32* @g_tick, align 4
  %10 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @g_config, i32 0, i32 0), align 8
  %11 = shl i32 %9, %10
  %12 = and i32 %11, 255
  store i32 %12, i32* %1, align 4
  %13 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %2, i32 0, i32 0
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @g_config, i32 0, i32 1, i32 0), align 8
  store i32 %14, i32* %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %2, i32 0, i32 1
  store i64 0, i64* %15, align 8
  %16 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %2, i32 0, i32 2
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @g_config, i32 0, i32 2), align 8
  store i32 %17, i32* %16, align 8
  store i32 0, i32* %5, align 4
  br label %18

18:                                               ; preds = %61, %0
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @BACKLIGHT_LED_COUNT, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %64

22:                                               ; preds = %18
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @map_led_to_point_polar(i32 %23, %struct.TYPE_11__* %4)
  %25 = load i32, i32* %1, align 4
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = add nsw i32 %25, %27
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = and i32 %29, 128
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %22
  %33 = load i32, i32* %6, align 4
  %34 = xor i32 %33, -1
  store i32 %34, i32* %6, align 4
  br label %35

35:                                               ; preds = %32, %22
  %36 = load i32, i32* %6, align 4
  %37 = ashr i32 %36, 2
  store i32 %37, i32* %6, align 4
  %38 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @g_config, i32 0, i32 1, i32 1), align 8
  %39 = load i32, i32* %6, align 4
  %40 = sext i32 %39 to i64
  %41 = add nsw i64 %38, %40
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %2, i32 0, i32 1
  store i64 %41, i64* %42, align 8
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = ashr i32 %44, 1
  %46 = add nsw i32 127, %45
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %2, i32 0, i32 0
  store i32 %46, i32* %47, align 8
  %48 = call { i64, i32 } @hsv_to_rgb(%struct.TYPE_12__* byval(%struct.TYPE_12__) align 8 %2)
  store { i64, i32 } %48, { i64, i32 }* %8, align 8
  %49 = bitcast { i64, i32 }* %8 to i8*
  %50 = bitcast %struct.TYPE_10__* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %50, i8* align 8 %49, i64 12, i1 false)
  %51 = bitcast %struct.TYPE_10__* %3 to i8*
  %52 = bitcast %struct.TYPE_10__* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %51, i8* align 4 %52, i64 12, i1 false)
  %53 = load i32, i32* %5, align 4
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %3, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %3, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %3, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @backlight_set_color(i32 %53, i32 %55, i32 %57, i32 %59)
  br label %61

61:                                               ; preds = %35
  %62 = load i32, i32* %5, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %5, align 4
  br label %18

64:                                               ; preds = %18
  ret void
}

declare dso_local i32 @map_led_to_point_polar(i32, %struct.TYPE_11__*) #1

declare dso_local { i64, i32 } @hsv_to_rgb(%struct.TYPE_12__* byval(%struct.TYPE_12__) align 8) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @backlight_set_color(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
