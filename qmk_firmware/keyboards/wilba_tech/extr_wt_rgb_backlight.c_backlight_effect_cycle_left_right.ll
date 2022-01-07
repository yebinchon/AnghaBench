; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/wilba_tech/extr_wt_rgb_backlight.c_backlight_effect_cycle_left_right.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/wilba_tech/extr_wt_rgb_backlight.c_backlight_effect_cycle_left_right.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i64, i32 }
%struct.TYPE_10__ = type { i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.TYPE_9__ = type { i32 }

@g_tick = common dso_local global i32 0, align 4
@g_config = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@BACKLIGHT_LED_COUNT = common dso_local global i32 0, align 4
@g_key_hit = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @backlight_effect_cycle_left_right() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_10__, align 4
  %3 = alloca %struct.TYPE_8__, align 4
  %4 = alloca %struct.TYPE_9__, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_8__, align 4
  %8 = alloca { i64, i32 }, align 4
  %9 = alloca { i64, i32 }, align 8
  %10 = load i32, i32* @g_tick, align 4
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @g_config, i32 0, i32 0), align 8
  %12 = shl i32 %10, %11
  %13 = and i32 %12, 255
  store i32 %13, i32* %1, align 4
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %2, i32 0, i32 0
  store i32 0, i32* %14, align 4
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %2, i32 0, i32 1
  store i32 255, i32* %15, align 4
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %2, i32 0, i32 2
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @g_config, i32 0, i32 2), align 8
  store i32 %17, i32* %16, align 4
  store i32 0, i32* %5, align 4
  br label %18

18:                                               ; preds = %82, %0
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @BACKLIGHT_LED_COUNT, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %85

22:                                               ; preds = %18
  %23 = load i32*, i32** @g_key_hit, align 8
  %24 = load i32, i32* %5, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = shl i32 %27, 2
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %5, align 4
  %30 = icmp eq i32 %29, 42
  br i1 %30, label %40, label %31

31:                                               ; preds = %22
  %32 = load i32, i32* %5, align 4
  %33 = icmp eq i32 %32, 67
  br i1 %33, label %40, label %34

34:                                               ; preds = %31
  %35 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @g_config, i32 0, i32 1), align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %34
  %38 = load i32, i32* %5, align 4
  %39 = icmp eq i32 %38, 68
  br i1 %39, label %40, label %45

40:                                               ; preds = %37, %31, %22
  %41 = load i32*, i32** @g_key_hit, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 36
  %43 = load i32, i32* %42, align 4
  %44 = shl i32 %43, 2
  store i32 %44, i32* %6, align 4
  br label %45

45:                                               ; preds = %40, %37, %34
  %46 = load i32, i32* %6, align 4
  %47 = icmp sle i32 %46, 63
  br i1 %47, label %48, label %51

48:                                               ; preds = %45
  %49 = load i32, i32* %6, align 4
  %50 = sub nsw i32 63, %49
  br label %52

51:                                               ; preds = %45
  br label %52

52:                                               ; preds = %51, %48
  %53 = phi i32 [ %50, %48 ], [ 0, %51 ]
  store i32 %53, i32* %6, align 4
  %54 = load i32, i32* %5, align 4
  %55 = call i32 @map_led_to_point(i32 %54, %struct.TYPE_9__* %4)
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %1, align 4
  %59 = add nsw i32 %57, %58
  %60 = load i32, i32* %6, align 4
  %61 = add nsw i32 %59, %60
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %2, i32 0, i32 0
  store i32 %61, i32* %62, align 4
  %63 = bitcast { i64, i32 }* %8 to i8*
  %64 = bitcast %struct.TYPE_10__* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %63, i8* align 4 %64, i64 12, i1 false)
  %65 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %8, i32 0, i32 0
  %66 = load i64, i64* %65, align 4
  %67 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %8, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call { i64, i32 } @hsv_to_rgb(i64 %66, i32 %68)
  store { i64, i32 } %69, { i64, i32 }* %9, align 8
  %70 = bitcast { i64, i32 }* %9 to i8*
  %71 = bitcast %struct.TYPE_8__* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %71, i8* align 8 %70, i64 12, i1 false)
  %72 = bitcast %struct.TYPE_8__* %3 to i8*
  %73 = bitcast %struct.TYPE_8__* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %72, i8* align 4 %73, i64 12, i1 false)
  %74 = load i32, i32* %5, align 4
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @backlight_set_color(i32 %74, i32 %76, i32 %78, i32 %80)
  br label %82

82:                                               ; preds = %52
  %83 = load i32, i32* %5, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %5, align 4
  br label %18

85:                                               ; preds = %18
  ret void
}

declare dso_local i32 @map_led_to_point(i32, %struct.TYPE_9__*) #1

declare dso_local { i64, i32 } @hsv_to_rgb(i64, i32) #1

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
