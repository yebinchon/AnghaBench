; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_shader_glsl_color_correction_ext.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_shader_glsl_color_correction_ext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_string_buffer = type { i32 }
%struct.color_fixup_desc = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@CHANNEL_SOURCE_X = common dso_local global i32 0, align 4
@WINED3DSP_WRITEMASK_0 = common dso_local global i32 0, align 4
@CHANNEL_SOURCE_Y = common dso_local global i32 0, align 4
@WINED3DSP_WRITEMASK_1 = common dso_local global i32 0, align 4
@CHANNEL_SOURCE_Z = common dso_local global i32 0, align 4
@WINED3DSP_WRITEMASK_2 = common dso_local global i32 0, align 4
@CHANNEL_SOURCE_W = common dso_local global i32 0, align 4
@WINED3DSP_WRITEMASK_3 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Complex fixup (%#x) not supported\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"%s%s = vec%u(%s);\0A\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"%s%s = %s;\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_string_buffer*, i8*, i32, %struct.color_fixup_desc*)* @shader_glsl_color_correction_ext to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @shader_glsl_color_correction_ext(%struct.wined3d_string_buffer* %0, i8* %1, i32 %2, %struct.color_fixup_desc* byval(%struct.color_fixup_desc) align 8 %3) #0 {
  %5 = alloca %struct.wined3d_string_buffer*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [256 x i8], align 16
  %12 = alloca [6 x i8], align 1
  %13 = alloca i32, align 4
  store %struct.wined3d_string_buffer* %0, %struct.wined3d_string_buffer** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %10, align 4
  %14 = getelementptr inbounds %struct.color_fixup_desc, %struct.color_fixup_desc* %3, i32 0, i32 7
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %4
  %18 = getelementptr inbounds %struct.color_fixup_desc, %struct.color_fixup_desc* %3, i32 0, i32 6
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @CHANNEL_SOURCE_X, align 4
  %21 = icmp ne i32 %19, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %17, %4
  %23 = load i32, i32* @WINED3DSP_WRITEMASK_0, align 4
  %24 = load i32, i32* %10, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %10, align 4
  br label %26

26:                                               ; preds = %22, %17
  %27 = getelementptr inbounds %struct.color_fixup_desc, %struct.color_fixup_desc* %3, i32 0, i32 5
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.color_fixup_desc, %struct.color_fixup_desc* %3, i32 0, i32 4
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @CHANNEL_SOURCE_Y, align 4
  %34 = icmp ne i32 %32, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %30, %26
  %36 = load i32, i32* @WINED3DSP_WRITEMASK_1, align 4
  %37 = load i32, i32* %10, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %10, align 4
  br label %39

39:                                               ; preds = %35, %30
  %40 = getelementptr inbounds %struct.color_fixup_desc, %struct.color_fixup_desc* %3, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %48, label %43

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.color_fixup_desc, %struct.color_fixup_desc* %3, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @CHANNEL_SOURCE_Z, align 4
  %47 = icmp ne i32 %45, %46
  br i1 %47, label %48, label %52

48:                                               ; preds = %43, %39
  %49 = load i32, i32* @WINED3DSP_WRITEMASK_2, align 4
  %50 = load i32, i32* %10, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %10, align 4
  br label %52

52:                                               ; preds = %48, %43
  %53 = getelementptr inbounds %struct.color_fixup_desc, %struct.color_fixup_desc* %3, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %61, label %56

56:                                               ; preds = %52
  %57 = getelementptr inbounds %struct.color_fixup_desc, %struct.color_fixup_desc* %3, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @CHANNEL_SOURCE_W, align 4
  %60 = icmp ne i32 %58, %59
  br i1 %60, label %61, label %65

61:                                               ; preds = %56, %52
  %62 = load i32, i32* @WINED3DSP_WRITEMASK_3, align 4
  %63 = load i32, i32* %10, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %10, align 4
  br label %65

65:                                               ; preds = %61, %56
  %66 = load i32, i32* %10, align 4
  %67 = load i32, i32* %7, align 4
  %68 = and i32 %67, %66
  store i32 %68, i32* %7, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %65
  br label %181

71:                                               ; preds = %65
  %72 = call i64 @is_complex_fixup(%struct.color_fixup_desc* byval(%struct.color_fixup_desc) align 8 %3)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %71
  %75 = call i32 @get_complex_fixup(%struct.color_fixup_desc* byval(%struct.color_fixup_desc) align 8 %3)
  store i32 %75, i32* %13, align 4
  %76 = load i32, i32* %13, align 4
  %77 = call i32 @FIXME(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %76)
  br label %181

78:                                               ; preds = %71
  %79 = load i32, i32* %7, align 4
  %80 = getelementptr inbounds [6 x i8], [6 x i8]* %12, i64 0, i64 0
  %81 = call i32 @shader_glsl_write_mask_to_str(i32 %79, i8* %80)
  %82 = load i32, i32* %7, align 4
  %83 = call i32 @shader_glsl_get_write_mask_size(i32 %82)
  store i32 %83, i32* %8, align 4
  %84 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  store i8 0, i8* %84, align 16
  %85 = load i32, i32* %8, align 4
  store i32 %85, i32* %9, align 4
  %86 = load i32, i32* %7, align 4
  %87 = load i32, i32* @WINED3DSP_WRITEMASK_0, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %105

90:                                               ; preds = %78
  %91 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %92 = load i8*, i8** %6, align 8
  %93 = getelementptr inbounds %struct.color_fixup_desc, %struct.color_fixup_desc* %3, i32 0, i32 7
  %94 = load i32, i32* %93, align 4
  %95 = getelementptr inbounds %struct.color_fixup_desc, %struct.color_fixup_desc* %3, i32 0, i32 6
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @shader_glsl_append_fixup_arg(i8* %91, i8* %92, i32 %94, i32 %96)
  %98 = load i32, i32* %9, align 4
  %99 = add i32 %98, -1
  store i32 %99, i32* %9, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %90
  %102 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %103 = call i32 @strcat(i8* %102, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  br label %104

104:                                              ; preds = %101, %90
  br label %105

105:                                              ; preds = %104, %78
  %106 = load i32, i32* %7, align 4
  %107 = load i32, i32* @WINED3DSP_WRITEMASK_1, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %125

110:                                              ; preds = %105
  %111 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %112 = load i8*, i8** %6, align 8
  %113 = getelementptr inbounds %struct.color_fixup_desc, %struct.color_fixup_desc* %3, i32 0, i32 5
  %114 = load i32, i32* %113, align 4
  %115 = getelementptr inbounds %struct.color_fixup_desc, %struct.color_fixup_desc* %3, i32 0, i32 4
  %116 = load i32, i32* %115, align 8
  %117 = call i32 @shader_glsl_append_fixup_arg(i8* %111, i8* %112, i32 %114, i32 %116)
  %118 = load i32, i32* %9, align 4
  %119 = add i32 %118, -1
  store i32 %119, i32* %9, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %124

121:                                              ; preds = %110
  %122 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %123 = call i32 @strcat(i8* %122, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  br label %124

124:                                              ; preds = %121, %110
  br label %125

125:                                              ; preds = %124, %105
  %126 = load i32, i32* %7, align 4
  %127 = load i32, i32* @WINED3DSP_WRITEMASK_2, align 4
  %128 = and i32 %126, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %145

130:                                              ; preds = %125
  %131 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %132 = load i8*, i8** %6, align 8
  %133 = getelementptr inbounds %struct.color_fixup_desc, %struct.color_fixup_desc* %3, i32 0, i32 3
  %134 = load i32, i32* %133, align 4
  %135 = getelementptr inbounds %struct.color_fixup_desc, %struct.color_fixup_desc* %3, i32 0, i32 2
  %136 = load i32, i32* %135, align 8
  %137 = call i32 @shader_glsl_append_fixup_arg(i8* %131, i8* %132, i32 %134, i32 %136)
  %138 = load i32, i32* %9, align 4
  %139 = add i32 %138, -1
  store i32 %139, i32* %9, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %144

141:                                              ; preds = %130
  %142 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %143 = call i32 @strcat(i8* %142, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  br label %144

144:                                              ; preds = %141, %130
  br label %145

145:                                              ; preds = %144, %125
  %146 = load i32, i32* %7, align 4
  %147 = load i32, i32* @WINED3DSP_WRITEMASK_3, align 4
  %148 = and i32 %146, %147
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %165

150:                                              ; preds = %145
  %151 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %152 = load i8*, i8** %6, align 8
  %153 = getelementptr inbounds %struct.color_fixup_desc, %struct.color_fixup_desc* %3, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = getelementptr inbounds %struct.color_fixup_desc, %struct.color_fixup_desc* %3, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = call i32 @shader_glsl_append_fixup_arg(i8* %151, i8* %152, i32 %154, i32 %156)
  %158 = load i32, i32* %9, align 4
  %159 = add i32 %158, -1
  store i32 %159, i32* %9, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %164

161:                                              ; preds = %150
  %162 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %163 = call i32 @strcat(i8* %162, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  br label %164

164:                                              ; preds = %161, %150
  br label %165

165:                                              ; preds = %164, %145
  %166 = load i32, i32* %8, align 4
  %167 = icmp ugt i32 %166, 1
  br i1 %167, label %168, label %175

168:                                              ; preds = %165
  %169 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %5, align 8
  %170 = load i8*, i8** %6, align 8
  %171 = getelementptr inbounds [6 x i8], [6 x i8]* %12, i64 0, i64 0
  %172 = load i32, i32* %8, align 4
  %173 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %174 = call i32 (%struct.wined3d_string_buffer*, i8*, i8*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %169, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i8* %170, i8* %171, i32 %172, i8* %173)
  br label %181

175:                                              ; preds = %165
  %176 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %5, align 8
  %177 = load i8*, i8** %6, align 8
  %178 = getelementptr inbounds [6 x i8], [6 x i8]* %12, i64 0, i64 0
  %179 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %180 = call i32 (%struct.wined3d_string_buffer*, i8*, i8*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %176, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i8* %177, i8* %178, i8* %179)
  br label %181

181:                                              ; preds = %70, %74, %175, %168
  ret void
}

declare dso_local i64 @is_complex_fixup(%struct.color_fixup_desc* byval(%struct.color_fixup_desc) align 8) #1

declare dso_local i32 @get_complex_fixup(%struct.color_fixup_desc* byval(%struct.color_fixup_desc) align 8) #1

declare dso_local i32 @FIXME(i8*, i32) #1

declare dso_local i32 @shader_glsl_write_mask_to_str(i32, i8*) #1

declare dso_local i32 @shader_glsl_get_write_mask_size(i32) #1

declare dso_local i32 @shader_glsl_append_fixup_arg(i8*, i8*, i32, i32) #1

declare dso_local i32 @strcat(i8*, i8*) #1

declare dso_local i32 @shader_addline(%struct.wined3d_string_buffer*, i8*, i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
