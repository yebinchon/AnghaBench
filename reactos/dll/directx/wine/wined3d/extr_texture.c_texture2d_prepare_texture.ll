; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_texture.c_texture2d_prepare_texture.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_texture.c_texture2d_prepare_texture.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_texture = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, %struct.wined3d_format* }
%struct.wined3d_format = type { i32, %struct.wined3d_context*, i32, %struct.wined3d_texture*, %struct.wined3d_texture*, %struct.wined3d_texture*, i64 }
%struct.wined3d_context = type { %struct.wined3d_gl_info* }
%struct.wined3d_gl_info = type { i32 }
%struct.wined3d_color_key_conversion = type { i32 }

@.str = private unnamed_addr constant [36 x i8] c"texture %p, context %p, format %s.\0A\00", align 1
@WINED3D_TEXTURE_CONVERTED = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"Using format %s for color key conversion.\0A\00", align 1
@WINED3DUSAGE_RENDERTARGET = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"No GL internal format for format %s.\0A\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"internal %#x, format %#x, type %#x.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_texture*, %struct.wined3d_context*, i64)* @texture2d_prepare_texture to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @texture2d_prepare_texture(%struct.wined3d_texture* %0, %struct.wined3d_context* %1, i64 %2) #0 {
  %4 = alloca %struct.wined3d_texture*, align 8
  %5 = alloca %struct.wined3d_context*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.wined3d_format*, align 8
  %8 = alloca %struct.wined3d_gl_info*, align 8
  %9 = alloca %struct.wined3d_color_key_conversion*, align 8
  %10 = alloca %struct.wined3d_texture*, align 8
  store %struct.wined3d_texture* %0, %struct.wined3d_texture** %4, align 8
  store %struct.wined3d_context* %1, %struct.wined3d_context** %5, align 8
  store i64 %2, i64* %6, align 8
  %11 = load %struct.wined3d_texture*, %struct.wined3d_texture** %4, align 8
  %12 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = load %struct.wined3d_format*, %struct.wined3d_format** %13, align 8
  store %struct.wined3d_format* %14, %struct.wined3d_format** %7, align 8
  %15 = load %struct.wined3d_context*, %struct.wined3d_context** %5, align 8
  %16 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %15, i32 0, i32 0
  %17 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %16, align 8
  store %struct.wined3d_gl_info* %17, %struct.wined3d_gl_info** %8, align 8
  %18 = load %struct.wined3d_texture*, %struct.wined3d_texture** %4, align 8
  %19 = load %struct.wined3d_context*, %struct.wined3d_context** %5, align 8
  %20 = load %struct.wined3d_format*, %struct.wined3d_format** %7, align 8
  %21 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @debug_d3dformat(i32 %22)
  %24 = call i32 (i8*, %struct.wined3d_texture*, ...) @TRACE(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), %struct.wined3d_texture* %18, %struct.wined3d_context* %19, i32 %23)
  %25 = load %struct.wined3d_format*, %struct.wined3d_format** %7, align 8
  %26 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %25, i32 0, i32 6
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %3
  %30 = load i32, i32* @WINED3D_TEXTURE_CONVERTED, align 4
  %31 = load %struct.wined3d_texture*, %struct.wined3d_texture** %4, align 8
  %32 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = or i32 %33, %30
  store i32 %34, i32* %32, align 8
  br label %63

35:                                               ; preds = %3
  %36 = load %struct.wined3d_texture*, %struct.wined3d_texture** %4, align 8
  %37 = load i32, i32* @TRUE, align 4
  %38 = call %struct.wined3d_color_key_conversion* @wined3d_format_get_color_key_conversion(%struct.wined3d_texture* %36, i32 %37)
  store %struct.wined3d_color_key_conversion* %38, %struct.wined3d_color_key_conversion** %9, align 8
  %39 = icmp ne %struct.wined3d_color_key_conversion* %38, null
  br i1 %39, label %40, label %62

40:                                               ; preds = %35
  %41 = load i32, i32* @WINED3D_TEXTURE_CONVERTED, align 4
  %42 = load %struct.wined3d_texture*, %struct.wined3d_texture** %4, align 8
  %43 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = or i32 %44, %41
  store i32 %45, i32* %43, align 8
  %46 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %8, align 8
  %47 = load %struct.wined3d_color_key_conversion*, %struct.wined3d_color_key_conversion** %9, align 8
  %48 = getelementptr inbounds %struct.wined3d_color_key_conversion, %struct.wined3d_color_key_conversion* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.wined3d_texture*, %struct.wined3d_texture** %4, align 8
  %51 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call %struct.wined3d_format* @wined3d_get_format(%struct.wined3d_gl_info* %46, i32 %49, i32 %53)
  store %struct.wined3d_format* %54, %struct.wined3d_format** %7, align 8
  %55 = load %struct.wined3d_format*, %struct.wined3d_format** %7, align 8
  %56 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @debug_d3dformat(i32 %57)
  %59 = sext i32 %58 to i64
  %60 = inttoptr i64 %59 to %struct.wined3d_texture*
  %61 = call i32 (i8*, %struct.wined3d_texture*, ...) @TRACE(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), %struct.wined3d_texture* %60)
  br label %62

62:                                               ; preds = %40, %35
  br label %63

63:                                               ; preds = %62, %29
  %64 = load %struct.wined3d_texture*, %struct.wined3d_texture** %4, align 8
  %65 = load %struct.wined3d_context*, %struct.wined3d_context** %5, align 8
  %66 = load i64, i64* %6, align 8
  %67 = call i32 @wined3d_texture_bind_and_dirtify(%struct.wined3d_texture* %64, %struct.wined3d_context* %65, i64 %66)
  %68 = load i64, i64* %6, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %63
  %71 = load %struct.wined3d_format*, %struct.wined3d_format** %7, align 8
  %72 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %71, i32 0, i32 5
  %73 = load %struct.wined3d_texture*, %struct.wined3d_texture** %72, align 8
  store %struct.wined3d_texture* %73, %struct.wined3d_texture** %10, align 8
  br label %96

74:                                               ; preds = %63
  %75 = load %struct.wined3d_texture*, %struct.wined3d_texture** %4, align 8
  %76 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* @WINED3DUSAGE_RENDERTARGET, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %91

82:                                               ; preds = %74
  %83 = load %struct.wined3d_texture*, %struct.wined3d_texture** %4, align 8
  %84 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %83, i32 0, i32 0
  %85 = call i64 @wined3d_resource_is_offscreen(%struct.TYPE_2__* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %82
  %88 = load %struct.wined3d_format*, %struct.wined3d_format** %7, align 8
  %89 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %88, i32 0, i32 4
  %90 = load %struct.wined3d_texture*, %struct.wined3d_texture** %89, align 8
  store %struct.wined3d_texture* %90, %struct.wined3d_texture** %10, align 8
  br label %95

91:                                               ; preds = %82, %74
  %92 = load %struct.wined3d_format*, %struct.wined3d_format** %7, align 8
  %93 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %92, i32 0, i32 3
  %94 = load %struct.wined3d_texture*, %struct.wined3d_texture** %93, align 8
  store %struct.wined3d_texture* %94, %struct.wined3d_texture** %10, align 8
  br label %95

95:                                               ; preds = %91, %87
  br label %96

96:                                               ; preds = %95, %70
  %97 = load %struct.wined3d_texture*, %struct.wined3d_texture** %10, align 8
  %98 = icmp ne %struct.wined3d_texture* %97, null
  br i1 %98, label %105, label %99

99:                                               ; preds = %96
  %100 = load %struct.wined3d_format*, %struct.wined3d_format** %7, align 8
  %101 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @debug_d3dformat(i32 %102)
  %104 = call i32 @FIXME(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %103)
  br label %105

105:                                              ; preds = %99, %96
  %106 = load %struct.wined3d_texture*, %struct.wined3d_texture** %10, align 8
  %107 = load %struct.wined3d_format*, %struct.wined3d_format** %7, align 8
  %108 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %107, i32 0, i32 1
  %109 = load %struct.wined3d_context*, %struct.wined3d_context** %108, align 8
  %110 = load %struct.wined3d_format*, %struct.wined3d_format** %7, align 8
  %111 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = call i32 (i8*, %struct.wined3d_texture*, ...) @TRACE(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), %struct.wined3d_texture* %106, %struct.wined3d_context* %109, i32 %112)
  %114 = load %struct.wined3d_texture*, %struct.wined3d_texture** %4, align 8
  %115 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %8, align 8
  %116 = call i64 @wined3d_texture_use_immutable_storage(%struct.wined3d_texture* %114, %struct.wined3d_gl_info* %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %123

118:                                              ; preds = %105
  %119 = load %struct.wined3d_texture*, %struct.wined3d_texture** %4, align 8
  %120 = load %struct.wined3d_texture*, %struct.wined3d_texture** %10, align 8
  %121 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %8, align 8
  %122 = call i32 @wined3d_texture_allocate_gl_immutable_storage(%struct.wined3d_texture* %119, %struct.wined3d_texture* %120, %struct.wined3d_gl_info* %121)
  br label %129

123:                                              ; preds = %105
  %124 = load %struct.wined3d_texture*, %struct.wined3d_texture** %4, align 8
  %125 = load %struct.wined3d_texture*, %struct.wined3d_texture** %10, align 8
  %126 = load %struct.wined3d_format*, %struct.wined3d_format** %7, align 8
  %127 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %8, align 8
  %128 = call i32 @wined3d_texture_allocate_gl_mutable_storage(%struct.wined3d_texture* %124, %struct.wined3d_texture* %125, %struct.wined3d_format* %126, %struct.wined3d_gl_info* %127)
  br label %129

129:                                              ; preds = %123, %118
  ret void
}

declare dso_local i32 @TRACE(i8*, %struct.wined3d_texture*, ...) #1

declare dso_local i32 @debug_d3dformat(i32) #1

declare dso_local %struct.wined3d_color_key_conversion* @wined3d_format_get_color_key_conversion(%struct.wined3d_texture*, i32) #1

declare dso_local %struct.wined3d_format* @wined3d_get_format(%struct.wined3d_gl_info*, i32, i32) #1

declare dso_local i32 @wined3d_texture_bind_and_dirtify(%struct.wined3d_texture*, %struct.wined3d_context*, i64) #1

declare dso_local i64 @wined3d_resource_is_offscreen(%struct.TYPE_2__*) #1

declare dso_local i32 @FIXME(i8*, i32) #1

declare dso_local i64 @wined3d_texture_use_immutable_storage(%struct.wined3d_texture*, %struct.wined3d_gl_info*) #1

declare dso_local i32 @wined3d_texture_allocate_gl_immutable_storage(%struct.wined3d_texture*, %struct.wined3d_texture*, %struct.wined3d_gl_info*) #1

declare dso_local i32 @wined3d_texture_allocate_gl_mutable_storage(%struct.wined3d_texture*, %struct.wined3d_texture*, %struct.wined3d_format*, %struct.wined3d_gl_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
