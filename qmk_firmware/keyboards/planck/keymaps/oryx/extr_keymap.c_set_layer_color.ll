; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/planck/keymaps/oryx/extr_keymap.c_set_layer_color.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/planck/keymaps/oryx/extr_keymap.c_set_layer_color.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_9__ = type { i32, i32, i32 }
%struct.TYPE_8__ = type { float, float, float }

@DRIVER_LED_TOTAL = common dso_local global i32 0, align 4
@ledmap = common dso_local global i32*** null, align 8
@rgb_matrix_config = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@UINT8_MAX = common dso_local global float 0.000000e+00, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_layer_color(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_9__, align 4
  %5 = alloca %struct.TYPE_8__, align 4
  %6 = alloca { i64, i32 }, align 4
  %7 = alloca { <2 x float>, float }, align 8
  %8 = alloca float, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  br label %9

9:                                                ; preds = %93, %1
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @DRIVER_LED_TOTAL, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %96

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 0
  %15 = load i32***, i32**** @ledmap, align 8
  %16 = load i32, i32* %2, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32**, i32*** %15, i64 %17
  %19 = load i32**, i32*** %18, align 8
  %20 = load i32, i32* %3, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32*, i32** %19, i64 %21
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 2
  %25 = call i32 @pgm_read_byte(i32* %24)
  store i32 %25, i32* %14, align 4
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 1
  %27 = load i32***, i32**** @ledmap, align 8
  %28 = load i32, i32* %2, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32**, i32*** %27, i64 %29
  %31 = load i32**, i32*** %30, align 8
  %32 = load i32, i32* %3, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32*, i32** %31, i64 %33
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 1
  %37 = call i32 @pgm_read_byte(i32* %36)
  store i32 %37, i32* %26, align 4
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 2
  %39 = load i32***, i32**** @ledmap, align 8
  %40 = load i32, i32* %2, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32**, i32*** %39, i64 %41
  %43 = load i32**, i32*** %42, align 8
  %44 = load i32, i32* %3, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32*, i32** %43, i64 %45
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 0
  %49 = call i32 @pgm_read_byte(i32* %48)
  store i32 %49, i32* %38, align 4
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %64, label %53

53:                                               ; preds = %13
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %64, label %57

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %64, label %61

61:                                               ; preds = %57
  %62 = load i32, i32* %3, align 4
  %63 = call i32 @rgb_matrix_set_color(i32 %62, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00)
  br label %92

64:                                               ; preds = %57, %53, %13
  %65 = bitcast { i64, i32 }* %6 to i8*
  %66 = bitcast %struct.TYPE_9__* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %65, i8* align 4 %66, i64 12, i1 false)
  %67 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %6, i32 0, i32 0
  %68 = load i64, i64* %67, align 4
  %69 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %6, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call { <2 x float>, float } @hsv_to_rgb(i64 %68, i32 %70)
  store { <2 x float>, float } %71, { <2 x float>, float }* %7, align 8
  %72 = bitcast { <2 x float>, float }* %7 to i8*
  %73 = bitcast %struct.TYPE_8__* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %73, i8* align 8 %72, i64 12, i1 false)
  %74 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @rgb_matrix_config, i32 0, i32 0, i32 0), align 8
  %75 = sitofp i64 %74 to float
  %76 = load float, float* @UINT8_MAX, align 4
  %77 = fdiv float %75, %76
  store float %77, float* %8, align 4
  %78 = load i32, i32* %3, align 4
  %79 = load float, float* %8, align 4
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %81 = load float, float* %80, align 4
  %82 = fmul float %79, %81
  %83 = load float, float* %8, align 4
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 1
  %85 = load float, float* %84, align 4
  %86 = fmul float %83, %85
  %87 = load float, float* %8, align 4
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 2
  %89 = load float, float* %88, align 4
  %90 = fmul float %87, %89
  %91 = call i32 @rgb_matrix_set_color(i32 %78, float %82, float %86, float %90)
  br label %92

92:                                               ; preds = %64, %61
  br label %93

93:                                               ; preds = %92
  %94 = load i32, i32* %3, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %3, align 4
  br label %9

96:                                               ; preds = %9
  ret void
}

declare dso_local i32 @pgm_read_byte(i32*) #1

declare dso_local i32 @rgb_matrix_set_color(i32, float, float, float) #1

declare dso_local { <2 x float>, float } @hsv_to_rgb(i64, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
