; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/wilba_tech/extr_wt_rgb_backlight.c_backlight_effect_cycle_all.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/wilba_tech/extr_wt_rgb_backlight.c_backlight_effect_cycle_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i64 }
%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32 }

@g_tick = common dso_local global i32 0, align 4
@g_config = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@BACKLIGHT_LED_COUNT = common dso_local global i32 0, align 4
@g_key_hit = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @backlight_effect_cycle_all() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__, align 4
  %5 = alloca %struct.TYPE_6__, align 4
  %6 = alloca { i64, i32 }, align 4
  %7 = alloca { i64, i32 }, align 8
  %8 = load i32, i32* @g_tick, align 4
  %9 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @g_config, i32 0, i32 0), align 8
  %10 = shl i32 %8, %9
  %11 = and i32 %10, 255
  store i32 %11, i32* %1, align 4
  store i32 0, i32* %2, align 4
  br label %12

12:                                               ; preds = %72, %0
  %13 = load i32, i32* %2, align 4
  %14 = load i32, i32* @BACKLIGHT_LED_COUNT, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %75

16:                                               ; preds = %12
  %17 = load i32*, i32** @g_key_hit, align 8
  %18 = load i32, i32* %2, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = shl i32 %21, 2
  store i32 %22, i32* %3, align 4
  %23 = load i32, i32* %2, align 4
  %24 = icmp eq i32 %23, 42
  br i1 %24, label %34, label %25

25:                                               ; preds = %16
  %26 = load i32, i32* %2, align 4
  %27 = icmp eq i32 %26, 67
  br i1 %27, label %34, label %28

28:                                               ; preds = %25
  %29 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @g_config, i32 0, i32 2), align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %28
  %32 = load i32, i32* %2, align 4
  %33 = icmp eq i32 %32, 68
  br i1 %33, label %34, label %39

34:                                               ; preds = %31, %25, %16
  %35 = load i32*, i32** @g_key_hit, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 36
  %37 = load i32, i32* %36, align 4
  %38 = shl i32 %37, 2
  store i32 %38, i32* %3, align 4
  br label %39

39:                                               ; preds = %34, %31, %28
  %40 = load i32, i32* %3, align 4
  %41 = icmp sle i32 %40, 63
  br i1 %41, label %42, label %45

42:                                               ; preds = %39
  %43 = load i32, i32* %3, align 4
  %44 = sub nsw i32 63, %43
  br label %46

45:                                               ; preds = %39
  br label %46

46:                                               ; preds = %45, %42
  %47 = phi i32 [ %44, %42 ], [ 0, %45 ]
  store i32 %47, i32* %3, align 4
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 0
  store i32 255, i32* %48, align 4
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 1
  %50 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @g_config, i32 0, i32 1), align 4
  store i32 %50, i32* %49, align 4
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 2
  %52 = load i32, i32* %1, align 4
  %53 = load i32, i32* %3, align 4
  %54 = add nsw i32 %52, %53
  store i32 %54, i32* %51, align 4
  %55 = bitcast { i64, i32 }* %6 to i8*
  %56 = bitcast %struct.TYPE_7__* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %55, i8* align 4 %56, i64 12, i1 false)
  %57 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %6, i32 0, i32 0
  %58 = load i64, i64* %57, align 4
  %59 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %6, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call { i64, i32 } @hsv_to_rgb(i64 %58, i32 %60)
  store { i64, i32 } %61, { i64, i32 }* %7, align 8
  %62 = bitcast { i64, i32 }* %7 to i8*
  %63 = bitcast %struct.TYPE_6__* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %63, i8* align 8 %62, i64 12, i1 false)
  %64 = load i32, i32* %2, align 4
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @backlight_set_color(i32 %64, i32 %66, i32 %68, i32 %70)
  br label %72

72:                                               ; preds = %46
  %73 = load i32, i32* %2, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %2, align 4
  br label %12

75:                                               ; preds = %12
  ret void
}

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
