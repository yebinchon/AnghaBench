; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_arb_program_shader.c_gen_color_correction.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_arb_program_shader.c_gen_color_correction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_string_buffer = type { i32 }
%struct.color_fixup_desc = type { i32, i32, i32, i32 }
%struct.color_fixup_masks = type { i32, i64 }

@.str = private unnamed_addr constant [3 x i8] c"TA\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"SWZ %s, %s, %s, %s, %s, %s;\0A\00", align 1
@WINED3DSP_WRITEMASK_ALL = common dso_local global i32 0, align 4
@WINED3DSP_WRITEMASK_0 = common dso_local global i32 0, align 4
@WINED3DSP_WRITEMASK_1 = common dso_local global i32 0, align 4
@WINED3DSP_WRITEMASK_2 = common dso_local global i32 0, align 4
@WINED3DSP_WRITEMASK_3 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"MAD %s%s, %s, %s, -%s;\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_string_buffer*, i8*, i8*, i8*, i8*, %struct.color_fixup_desc*, %struct.color_fixup_masks*)* @gen_color_correction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gen_color_correction(%struct.wined3d_string_buffer* %0, i8* %1, i8* %2, i8* %3, i8* %4, %struct.color_fixup_desc* byval(%struct.color_fixup_desc) align 8 %5, %struct.color_fixup_masks* byval(%struct.color_fixup_masks) align 8 %6) #0 {
  %8 = alloca %struct.wined3d_string_buffer*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca [6 x i8], align 1
  %15 = alloca i8*, align 8
  store %struct.wined3d_string_buffer* %0, %struct.wined3d_string_buffer** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  store i8* %4, i8** %12, align 8
  %16 = load i8*, i8** %9, align 8
  store i8* %16, i8** %13, align 8
  %17 = getelementptr inbounds %struct.color_fixup_masks, %struct.color_fixup_masks* %6, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %48

20:                                               ; preds = %7
  %21 = getelementptr inbounds %struct.color_fixup_masks, %struct.color_fixup_masks* %6, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8** %13, align 8
  br label %25

25:                                               ; preds = %24, %20
  %26 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %8, align 8
  %27 = load i8*, i8** %13, align 8
  %28 = load i8*, i8** %10, align 8
  %29 = getelementptr inbounds %struct.color_fixup_desc, %struct.color_fixup_desc* %5, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @shader_arb_get_fixup_swizzle(i32 %30)
  %32 = sext i32 %31 to i64
  %33 = inttoptr i64 %32 to i8*
  %34 = getelementptr inbounds %struct.color_fixup_desc, %struct.color_fixup_desc* %5, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @shader_arb_get_fixup_swizzle(i32 %35)
  %37 = sext i32 %36 to i64
  %38 = inttoptr i64 %37 to i8*
  %39 = getelementptr inbounds %struct.color_fixup_desc, %struct.color_fixup_desc* %5, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @shader_arb_get_fixup_swizzle(i32 %40)
  %42 = sext i32 %41 to i64
  %43 = inttoptr i64 %42 to i8*
  %44 = getelementptr inbounds %struct.color_fixup_desc, %struct.color_fixup_desc* %5, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @shader_arb_get_fixup_swizzle(i32 %45)
  %47 = call i32 (%struct.wined3d_string_buffer*, i8*, i8*, i8*, i8*, i8*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %26, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i8* %27, i8* %28, i8* %33, i8* %38, i8* %43, i32 %46)
  br label %55

48:                                               ; preds = %7
  %49 = getelementptr inbounds %struct.color_fixup_masks, %struct.color_fixup_masks* %6, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %48
  %53 = load i8*, i8** %10, align 8
  store i8* %53, i8** %13, align 8
  br label %54

54:                                               ; preds = %52, %48
  br label %55

55:                                               ; preds = %54, %25
  %56 = getelementptr inbounds %struct.color_fixup_masks, %struct.color_fixup_masks* %6, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %113

59:                                               ; preds = %55
  %60 = getelementptr inbounds [6 x i8], [6 x i8]* %14, i64 0, i64 0
  store i8* %60, i8** %15, align 8
  %61 = getelementptr inbounds %struct.color_fixup_masks, %struct.color_fixup_masks* %6, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @WINED3DSP_WRITEMASK_ALL, align 4
  %64 = icmp ne i32 %62, %63
  br i1 %64, label %65, label %104

65:                                               ; preds = %59
  %66 = load i8*, i8** %15, align 8
  %67 = getelementptr inbounds i8, i8* %66, i32 1
  store i8* %67, i8** %15, align 8
  store i8 46, i8* %66, align 1
  %68 = getelementptr inbounds %struct.color_fixup_masks, %struct.color_fixup_masks* %6, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @WINED3DSP_WRITEMASK_0, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %65
  %74 = load i8*, i8** %15, align 8
  %75 = getelementptr inbounds i8, i8* %74, i32 1
  store i8* %75, i8** %15, align 8
  store i8 120, i8* %74, align 1
  br label %76

76:                                               ; preds = %73, %65
  %77 = getelementptr inbounds %struct.color_fixup_masks, %struct.color_fixup_masks* %6, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* @WINED3DSP_WRITEMASK_1, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %76
  %83 = load i8*, i8** %15, align 8
  %84 = getelementptr inbounds i8, i8* %83, i32 1
  store i8* %84, i8** %15, align 8
  store i8 121, i8* %83, align 1
  br label %85

85:                                               ; preds = %82, %76
  %86 = getelementptr inbounds %struct.color_fixup_masks, %struct.color_fixup_masks* %6, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* @WINED3DSP_WRITEMASK_2, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %85
  %92 = load i8*, i8** %15, align 8
  %93 = getelementptr inbounds i8, i8* %92, i32 1
  store i8* %93, i8** %15, align 8
  store i8 122, i8* %92, align 1
  br label %94

94:                                               ; preds = %91, %85
  %95 = getelementptr inbounds %struct.color_fixup_masks, %struct.color_fixup_masks* %6, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* @WINED3DSP_WRITEMASK_3, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %94
  %101 = load i8*, i8** %15, align 8
  %102 = getelementptr inbounds i8, i8* %101, i32 1
  store i8* %102, i8** %15, align 8
  store i8 119, i8* %101, align 1
  br label %103

103:                                              ; preds = %100, %94
  br label %104

104:                                              ; preds = %103, %59
  %105 = load i8*, i8** %15, align 8
  store i8 0, i8* %105, align 1
  %106 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %8, align 8
  %107 = load i8*, i8** %9, align 8
  %108 = getelementptr inbounds [6 x i8], [6 x i8]* %14, i64 0, i64 0
  %109 = load i8*, i8** %13, align 8
  %110 = load i8*, i8** %12, align 8
  %111 = load i8*, i8** %11, align 8
  %112 = call i32 (%struct.wined3d_string_buffer*, i8*, i8*, i8*, i8*, i8*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %106, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i8* %107, i8* %108, i8* %109, i8* %110, i8* %111)
  br label %113

113:                                              ; preds = %104, %55
  ret void
}

declare dso_local i32 @shader_addline(%struct.wined3d_string_buffer*, i8*, i8*, i8*, i8*, i8*, i8*, ...) #1

declare dso_local i32 @shader_arb_get_fixup_swizzle(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
