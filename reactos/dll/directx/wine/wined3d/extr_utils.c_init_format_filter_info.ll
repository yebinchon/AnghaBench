; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_utils.c_init_format_filter_info.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_utils.c_init_format_filter_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }
%struct.wined3d_gl_info = type { %struct.wined3d_format*, %struct.TYPE_3__, i64* }
%struct.wined3d_format = type { i32 }
%struct.TYPE_3__ = type { i32 }

@init_format_filter_info.fmts16 = internal constant [3 x i32] [i32 128, i32 129, i32 130], align 4
@ARB_INTERNALFORMAT_QUERY2 = common dso_local global i64 0, align 8
@wined3d_settings = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@ORM_FBO = common dso_local global i64 0, align 8
@WINED3D_GL_LEGACY_CONTEXT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [66 x i8] c"No FBO support, or no FBO ORM, guessing filter info from GL caps\0A\00", align 1
@HW_VENDOR_NVIDIA = common dso_local global i32 0, align 4
@ARB_TEXTURE_FLOAT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [67 x i8] c"Nvidia card with texture_float support: Assuming float16 blending\0A\00", align 1
@TRUE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [72 x i8] c"More than 44 GLSL varyings - assuming d3d10 card with float16 blending\0A\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"Assuming no float16 blending\0A\00", align 1
@FALSE = common dso_local global i64 0, align 8
@WINED3DFMT_FLAG_FILTERING = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [30 x i8] c"Format %s supports filtering\0A\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"Format %s does not support filtering\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_gl_info*, i32)* @init_format_filter_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_format_filter_info(%struct.wined3d_gl_info* %0, i32 %1) #0 {
  %3 = alloca %struct.wined3d_gl_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.wined3d_format*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.wined3d_gl_info* %0, %struct.wined3d_gl_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %3, align 8
  %10 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %9, i32 0, i32 2
  %11 = load i64*, i64** %10, align 8
  %12 = load i64, i64* @ARB_INTERNALFORMAT_QUERY2, align 8
  %13 = getelementptr inbounds i64, i64* %11, i64 %12
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  br label %141

17:                                               ; preds = %2
  %18 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @wined3d_settings, i32 0, i32 0), align 8
  %19 = load i64, i64* @ORM_FBO, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %29, label %21

21:                                               ; preds = %17
  %22 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %3, align 8
  %23 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %22, i32 0, i32 2
  %24 = load i64*, i64** %23, align 8
  %25 = load i64, i64* @WINED3D_GL_LEGACY_CONTEXT, align 8
  %26 = getelementptr inbounds i64, i64* %24, i64 %25
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %85, label %29

29:                                               ; preds = %21, %17
  %30 = call i32 @WARN(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0))
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* @HW_VENDOR_NVIDIA, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %45

34:                                               ; preds = %29
  %35 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %3, align 8
  %36 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %35, i32 0, i32 2
  %37 = load i64*, i64** %36, align 8
  %38 = load i64, i64* @ARB_TEXTURE_FLOAT, align 8
  %39 = getelementptr inbounds i64, i64* %37, i64 %38
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %34
  %43 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.1, i64 0, i64 0))
  %44 = load i64, i64* @TRUE, align 8
  store i64 %44, i64* %8, align 8
  br label %58

45:                                               ; preds = %34, %29
  %46 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %3, align 8
  %47 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp sgt i32 %49, 44
  br i1 %50, label %51, label %54

51:                                               ; preds = %45
  %52 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.2, i64 0, i64 0))
  %53 = load i64, i64* @TRUE, align 8
  store i64 %53, i64* %8, align 8
  br label %57

54:                                               ; preds = %45
  %55 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  %56 = load i64, i64* @FALSE, align 8
  store i64 %56, i64* %8, align 8
  br label %57

57:                                               ; preds = %54, %51
  br label %58

58:                                               ; preds = %57, %42
  %59 = load i64, i64* %8, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %84

61:                                               ; preds = %58
  store i32 0, i32* %7, align 4
  br label %62

62:                                               ; preds = %80, %61
  %63 = load i32, i32* %7, align 4
  %64 = call i32 @ARRAY_SIZE(i32* getelementptr inbounds ([3 x i32], [3 x i32]* @init_format_filter_info.fmts16, i64 0, i64 0))
  %65 = icmp ult i32 %63, %64
  br i1 %65, label %66, label %83

66:                                               ; preds = %62
  %67 = load i32, i32* %7, align 4
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds [3 x i32], [3 x i32]* @init_format_filter_info.fmts16, i64 0, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @get_format_idx(i32 %70)
  store i32 %71, i32* %6, align 4
  %72 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %3, align 8
  %73 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %72, i32 0, i32 0
  %74 = load %struct.wined3d_format*, %struct.wined3d_format** %73, align 8
  %75 = load i32, i32* %6, align 4
  %76 = zext i32 %75 to i64
  %77 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %74, i64 %76
  %78 = load i32, i32* @WINED3DFMT_FLAG_FILTERING, align 4
  %79 = call i32 @format_set_flag(%struct.wined3d_format* %77, i32 %78)
  br label %80

80:                                               ; preds = %66
  %81 = load i32, i32* %7, align 4
  %82 = add i32 %81, 1
  store i32 %82, i32* %7, align 4
  br label %62

83:                                               ; preds = %62
  br label %84

84:                                               ; preds = %83, %58
  br label %141

85:                                               ; preds = %21
  store i32 0, i32* %7, align 4
  br label %86

86:                                               ; preds = %138, %85
  %87 = load i32, i32* %7, align 4
  %88 = call i32 @ARRAY_SIZE(i32* getelementptr inbounds ([3 x i32], [3 x i32]* @init_format_filter_info.fmts16, i64 0, i64 0))
  %89 = icmp ult i32 %87, %88
  br i1 %89, label %90, label %141

90:                                               ; preds = %86
  %91 = load i32, i32* %7, align 4
  %92 = zext i32 %91 to i64
  %93 = getelementptr inbounds [3 x i32], [3 x i32]* @init_format_filter_info.fmts16, i64 0, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @get_format_idx(i32 %94)
  store i32 %95, i32* %6, align 4
  %96 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %3, align 8
  %97 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %96, i32 0, i32 0
  %98 = load %struct.wined3d_format*, %struct.wined3d_format** %97, align 8
  %99 = load i32, i32* %6, align 4
  %100 = zext i32 %99 to i64
  %101 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %98, i64 %100
  store %struct.wined3d_format* %101, %struct.wined3d_format** %5, align 8
  %102 = load %struct.wined3d_format*, %struct.wined3d_format** %5, align 8
  %103 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %107, label %106

106:                                              ; preds = %90
  br label %138

107:                                              ; preds = %90
  %108 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %3, align 8
  %109 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %3, align 8
  %110 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %109, i32 0, i32 0
  %111 = load %struct.wined3d_format*, %struct.wined3d_format** %110, align 8
  %112 = load i32, i32* %6, align 4
  %113 = zext i32 %112 to i64
  %114 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %111, i64 %113
  %115 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = call i64 @check_filter(%struct.wined3d_gl_info* %108, i32 %116)
  store i64 %117, i64* %8, align 8
  %118 = load i64, i64* %8, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %130

120:                                              ; preds = %107
  %121 = load i32, i32* %7, align 4
  %122 = zext i32 %121 to i64
  %123 = getelementptr inbounds [3 x i32], [3 x i32]* @init_format_filter_info.fmts16, i64 0, i64 %122
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @debug_d3dformat(i32 %124)
  %126 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i32 %125)
  %127 = load %struct.wined3d_format*, %struct.wined3d_format** %5, align 8
  %128 = load i32, i32* @WINED3DFMT_FLAG_FILTERING, align 4
  %129 = call i32 @format_set_flag(%struct.wined3d_format* %127, i32 %128)
  br label %137

130:                                              ; preds = %107
  %131 = load i32, i32* %7, align 4
  %132 = zext i32 %131 to i64
  %133 = getelementptr inbounds [3 x i32], [3 x i32]* @init_format_filter_info.fmts16, i64 0, i64 %132
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @debug_d3dformat(i32 %134)
  %136 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0), i32 %135)
  br label %137

137:                                              ; preds = %130, %120
  br label %138

138:                                              ; preds = %137, %106
  %139 = load i32, i32* %7, align 4
  %140 = add i32 %139, 1
  store i32 %140, i32* %7, align 4
  br label %86

141:                                              ; preds = %16, %84, %86
  ret void
}

declare dso_local i32 @WARN(i8*) #1

declare dso_local i32 @TRACE(i8*, ...) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @get_format_idx(i32) #1

declare dso_local i32 @format_set_flag(%struct.wined3d_format*, i32) #1

declare dso_local i64 @check_filter(%struct.wined3d_gl_info*, i32) #1

declare dso_local i32 @debug_d3dformat(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
