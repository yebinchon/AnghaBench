; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/wilba_tech/extr_wt_rgb_backlight.c_backlight_effect_raindrops.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/wilba_tech/extr_wt_rgb_backlight.c_backlight_effect_raindrops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32, i32, i32 }
%struct.TYPE_10__ = type { i32, i32, i32 }

@g_config = common dso_local global %struct.TYPE_12__ zeroinitializer, align 4
@g_tick = common dso_local global i32 0, align 4
@BACKLIGHT_LED_COUNT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @backlight_effect_raindrops(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_11__, align 4
  %10 = alloca %struct.TYPE_10__, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_10__, align 4
  %14 = alloca { i64, i32 }, align 4
  %15 = alloca { i64, i32 }, align 8
  store i32 %0, i32* %2, align 4
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @g_config, i32 0, i32 2, i32 0), align 4
  store i32 %16, i32* %3, align 4
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @g_config, i32 0, i32 1, i32 0), align 4
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* %3, align 4
  %20 = sub nsw i32 %18, %19
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = sdiv i32 %21, 4
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp sgt i32 %23, 127
  br i1 %24, label %25, label %28

25:                                               ; preds = %1
  %26 = load i32, i32* %5, align 4
  %27 = sub nsw i32 %26, 256
  store i32 %27, i32* %5, align 4
  br label %35

28:                                               ; preds = %1
  %29 = load i32, i32* %5, align 4
  %30 = icmp slt i32 %29, -127
  br i1 %30, label %31, label %34

31:                                               ; preds = %28
  %32 = load i32, i32* %5, align 4
  %33 = add nsw i32 %32, 256
  store i32 %33, i32* %5, align 4
  br label %34

34:                                               ; preds = %31, %28
  br label %35

35:                                               ; preds = %34, %25
  %36 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @g_config, i32 0, i32 2, i32 1), align 4
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @g_config, i32 0, i32 1, i32 1), align 4
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* %6, align 4
  %40 = sub nsw i32 %38, %39
  %41 = sdiv i32 %40, 4
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* @g_tick, align 4
  %43 = and i32 %42, 0
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %35
  %46 = call i32 (...) @rand()
  %47 = load i32, i32* @BACKLIGHT_LED_COUNT, align 4
  %48 = srem i32 %46, %47
  br label %50

49:                                               ; preds = %35
  br label %50

50:                                               ; preds = %49, %45
  %51 = phi i32 [ %48, %45 ], [ 255, %49 ]
  store i32 %51, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %52

52:                                               ; preds = %100, %50
  %53 = load i32, i32* %12, align 4
  %54 = load i32, i32* @BACKLIGHT_LED_COUNT, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %103

56:                                               ; preds = %52
  %57 = load i32, i32* %2, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %63, label %59

59:                                               ; preds = %56
  %60 = load i32, i32* %12, align 4
  %61 = load i32, i32* %11, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %99

63:                                               ; preds = %59, %56
  %64 = load i32, i32* %3, align 4
  %65 = load i32, i32* %5, align 4
  %66 = call i32 (...) @rand()
  %67 = and i32 %66, 3
  %68 = mul nsw i32 %65, %67
  %69 = add nsw i32 %64, %68
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 0
  store i32 %69, i32* %70, align 4
  %71 = load i32, i32* %6, align 4
  %72 = load i32, i32* %8, align 4
  %73 = call i32 (...) @rand()
  %74 = and i32 %73, 3
  %75 = mul nsw i32 %72, %74
  %76 = add nsw i32 %71, %75
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 1
  store i32 %76, i32* %77, align 4
  %78 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @g_config, i32 0, i32 0), align 4
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 2
  store i32 %78, i32* %79, align 4
  %80 = bitcast { i64, i32 }* %14 to i8*
  %81 = bitcast %struct.TYPE_11__* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %80, i8* align 4 %81, i64 12, i1 false)
  %82 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %14, i32 0, i32 0
  %83 = load i64, i64* %82, align 4
  %84 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %14, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = call { i64, i32 } @hsv_to_rgb(i64 %83, i32 %85)
  store { i64, i32 } %86, { i64, i32 }* %15, align 8
  %87 = bitcast { i64, i32 }* %15 to i8*
  %88 = bitcast %struct.TYPE_10__* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %88, i8* align 8 %87, i64 12, i1 false)
  %89 = bitcast %struct.TYPE_10__* %10 to i8*
  %90 = bitcast %struct.TYPE_10__* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %89, i8* align 4 %90, i64 12, i1 false)
  %91 = load i32, i32* %12, align 4
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @backlight_set_color(i32 %91, i32 %93, i32 %95, i32 %97)
  br label %99

99:                                               ; preds = %63, %59
  br label %100

100:                                              ; preds = %99
  %101 = load i32, i32* %12, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %12, align 4
  br label %52

103:                                              ; preds = %52
  ret void
}

declare dso_local i32 @rand(...) #1

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
