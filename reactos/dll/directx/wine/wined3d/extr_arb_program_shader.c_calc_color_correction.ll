; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_arb_program_shader.c_calc_color_correction.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_arb_program_shader.c_calc_color_correction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.color_fixup_desc = type { i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.color_fixup_masks = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [35 x i8] c"Complex fixup (%#x) not supported\0A\00", align 1
@CHANNEL_SOURCE_X = common dso_local global i64 0, align 8
@WINED3DSP_WRITEMASK_0 = common dso_local global i32 0, align 4
@CHANNEL_SOURCE_Y = common dso_local global i64 0, align 8
@WINED3DSP_WRITEMASK_1 = common dso_local global i32 0, align 4
@CHANNEL_SOURCE_Z = common dso_local global i64 0, align 8
@WINED3DSP_WRITEMASK_2 = common dso_local global i32 0, align 4
@CHANNEL_SOURCE_W = common dso_local global i64 0, align 8
@WINED3DSP_WRITEMASK_3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast ({ i64, i64 } (%struct.color_fixup_desc*, i32)* @calc_color_correction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal { i64, i64 } @calc_color_correction(%struct.color_fixup_desc* byval(%struct.color_fixup_desc) align 8 %0, i32 %1) #0 {
  %3 = alloca %struct.color_fixup_masks, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %1, i32* %4, align 4
  %6 = bitcast %struct.color_fixup_masks* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %6, i8 0, i64 16, i1 false)
  %7 = call i64 @is_complex_fixup(%struct.color_fixup_desc* byval(%struct.color_fixup_desc) align 8 %0)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %2
  %10 = call i32 @get_complex_fixup(%struct.color_fixup_desc* byval(%struct.color_fixup_desc) align 8 %0)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @FIXME(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %11)
  br label %98

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.color_fixup_desc, %struct.color_fixup_desc* %0, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @CHANNEL_SOURCE_X, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %23

18:                                               ; preds = %13
  %19 = load i32, i32* @WINED3DSP_WRITEMASK_0, align 4
  %20 = getelementptr inbounds %struct.color_fixup_masks, %struct.color_fixup_masks* %3, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = or i32 %21, %19
  store i32 %22, i32* %20, align 4
  br label %23

23:                                               ; preds = %18, %13
  %24 = getelementptr inbounds %struct.color_fixup_desc, %struct.color_fixup_desc* %0, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @CHANNEL_SOURCE_Y, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %33

28:                                               ; preds = %23
  %29 = load i32, i32* @WINED3DSP_WRITEMASK_1, align 4
  %30 = getelementptr inbounds %struct.color_fixup_masks, %struct.color_fixup_masks* %3, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = or i32 %31, %29
  store i32 %32, i32* %30, align 4
  br label %33

33:                                               ; preds = %28, %23
  %34 = getelementptr inbounds %struct.color_fixup_desc, %struct.color_fixup_desc* %0, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @CHANNEL_SOURCE_Z, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %43

38:                                               ; preds = %33
  %39 = load i32, i32* @WINED3DSP_WRITEMASK_2, align 4
  %40 = getelementptr inbounds %struct.color_fixup_masks, %struct.color_fixup_masks* %3, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = or i32 %41, %39
  store i32 %42, i32* %40, align 4
  br label %43

43:                                               ; preds = %38, %33
  %44 = getelementptr inbounds %struct.color_fixup_desc, %struct.color_fixup_desc* %0, i32 0, i32 3
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @CHANNEL_SOURCE_W, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %53

48:                                               ; preds = %43
  %49 = load i32, i32* @WINED3DSP_WRITEMASK_3, align 4
  %50 = getelementptr inbounds %struct.color_fixup_masks, %struct.color_fixup_masks* %3, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = or i32 %51, %49
  store i32 %52, i32* %50, align 4
  br label %53

53:                                               ; preds = %48, %43
  %54 = load i32, i32* %4, align 4
  %55 = getelementptr inbounds %struct.color_fixup_masks, %struct.color_fixup_masks* %3, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = and i32 %56, %54
  store i32 %57, i32* %55, align 4
  %58 = getelementptr inbounds %struct.color_fixup_desc, %struct.color_fixup_desc* %0, i32 0, i32 7
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %53
  %62 = load i32, i32* @WINED3DSP_WRITEMASK_0, align 4
  %63 = getelementptr inbounds %struct.color_fixup_masks, %struct.color_fixup_masks* %3, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = or i32 %64, %62
  store i32 %65, i32* %63, align 4
  br label %66

66:                                               ; preds = %61, %53
  %67 = getelementptr inbounds %struct.color_fixup_desc, %struct.color_fixup_desc* %0, i32 0, i32 6
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %66
  %71 = load i32, i32* @WINED3DSP_WRITEMASK_1, align 4
  %72 = getelementptr inbounds %struct.color_fixup_masks, %struct.color_fixup_masks* %3, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = or i32 %73, %71
  store i32 %74, i32* %72, align 4
  br label %75

75:                                               ; preds = %70, %66
  %76 = getelementptr inbounds %struct.color_fixup_desc, %struct.color_fixup_desc* %0, i32 0, i32 5
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %75
  %80 = load i32, i32* @WINED3DSP_WRITEMASK_2, align 4
  %81 = getelementptr inbounds %struct.color_fixup_masks, %struct.color_fixup_masks* %3, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = or i32 %82, %80
  store i32 %83, i32* %81, align 4
  br label %84

84:                                               ; preds = %79, %75
  %85 = getelementptr inbounds %struct.color_fixup_desc, %struct.color_fixup_desc* %0, i32 0, i32 4
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %84
  %89 = load i32, i32* @WINED3DSP_WRITEMASK_3, align 4
  %90 = getelementptr inbounds %struct.color_fixup_masks, %struct.color_fixup_masks* %3, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = or i32 %91, %89
  store i32 %92, i32* %90, align 4
  br label %93

93:                                               ; preds = %88, %84
  %94 = load i32, i32* %4, align 4
  %95 = getelementptr inbounds %struct.color_fixup_masks, %struct.color_fixup_masks* %3, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = and i32 %96, %94
  store i32 %97, i32* %95, align 4
  br label %98

98:                                               ; preds = %93, %9
  %99 = bitcast %struct.color_fixup_masks* %3 to { i64, i64 }*
  %100 = load { i64, i64 }, { i64, i64 }* %99, align 4
  ret { i64, i64 } %100
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @is_complex_fixup(%struct.color_fixup_desc* byval(%struct.color_fixup_desc) align 8) #2

declare dso_local i32 @get_complex_fixup(%struct.color_fixup_desc* byval(%struct.color_fixup_desc) align 8) #2

declare dso_local i32 @FIXME(i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
