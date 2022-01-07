; ModuleID = '/home/carl/AnghaBench/mpv/video/out/gpu/extr_error_diffusion.c_pass_error_diffusion.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/gpu/extr_error_diffusion.c_pass_error_diffusion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gl_shader_cache = type { i32 }
%struct.error_diffusion_kernel = type { i32, i32, i32** }

@EF_MAX_DELTA_Y = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"shared uint err_rgb8[%d];\0A\00", align 1
@.str.1 = private unnamed_addr constant [61 x i8] c"for (int i = int(gl_LocalInvocationIndex); i < %d; i += %d) \00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"err_rgb8[i] = 0;\0A\00", align 1
@.str.3 = private unnamed_addr constant [53 x i8] c"for (int block_id = 0; block_id < %d; ++block_id) {\0A\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"groupMemoryBarrier();\0A\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"barrier();\0A\00", align 1
@.str.6 = private unnamed_addr constant [56 x i8] c"int id = int(gl_LocalInvocationIndex) + block_id * %d;\0A\00", align 1
@.str.7 = private unnamed_addr constant [40 x i8] c"int y = id %% %d, x_shifted = id / %d;\0A\00", align 1
@.str.8 = private unnamed_addr constant [29 x i8] c"int x = x_shifted - y * %d;\0A\00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"if (0 <= x && x < %d) {\0A\00", align 1
@.str.10 = private unnamed_addr constant [39 x i8] c"int idx = (x_shifted * %d + y) %% %d;\0A\00", align 1
@.str.11 = private unnamed_addr constant [55 x i8] c"vec3 pix = texelFetch(texture%d, ivec2(x, y), 0).rgb;\0A\00", align 1
@.str.12 = private unnamed_addr constant [37 x i8] c"uint err_u32 = err_rgb8[idx] + %uu;\0A\00", align 1
@.str.13 = private unnamed_addr constant [136 x i8] c"pix = pix * %d.0 + vec3(int((err_u32 >> %d) & 255u) - 128,int((err_u32 >> %d) & 255u) - 128,int( err_u32        & 255u) - 128) / %d.0;\0A\00", align 1
@.str.14 = private unnamed_addr constant [20 x i8] c"err_rgb8[idx] = 0;\0A\00", align 1
@.str.15 = private unnamed_addr constant [29 x i8] c"vec3 dithered = round(pix);\0A\00", align 1
@.str.16 = private unnamed_addr constant [65 x i8] c"imageStore(out_image, ivec2(x, y), vec4(dithered / %d.0, 0.0));\0A\00", align 1
@.str.17 = private unnamed_addr constant [52 x i8] c"vec3 err_divided = (pix - dithered) * %d.0 / %d.0;\0A\00", align 1
@.str.18 = private unnamed_addr constant [12 x i8] c"ivec3 tmp;\0A\00", align 1
@EF_MIN_DELTA_X = common dso_local global i32 0, align 4
@EF_MAX_DELTA_X = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [41 x i8] c"tmp = ivec3(round(err_divided * %d.0));\0A\00", align 1
@.str.20 = private unnamed_addr constant [83 x i8] c"err_u32 = (uint(tmp.r & 255) << %d)|(uint(tmp.g & 255) << %d)| uint(tmp.b & 255);\0A\00", align 1
@.str.21 = private unnamed_addr constant [14 x i8] c"if (x >= %d) \00", align 1
@.str.22 = private unnamed_addr constant [49 x i8] c"atomicAdd(err_rgb8[(idx + %d) %% %d], err_u32);\0A\00", align 1
@.str.23 = private unnamed_addr constant [3 x i8] c"}\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pass_error_diffusion(%struct.gl_shader_cache* %0, %struct.error_diffusion_kernel* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.gl_shader_cache*, align 8
  %9 = alloca %struct.error_diffusion_kernel*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  store %struct.gl_shader_cache* %0, %struct.gl_shader_cache** %8, align 8
  store %struct.error_diffusion_kernel* %1, %struct.error_diffusion_kernel** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %30 = load i32, i32* %14, align 4
  %31 = load i32, i32* %12, align 4
  %32 = icmp sle i32 %30, %31
  %33 = zext i1 %32 to i32
  %34 = call i32 @assert(i32 %33)
  %35 = load i32, i32* %11, align 4
  %36 = load i32, i32* %12, align 4
  %37 = sub nsw i32 %36, 1
  %38 = load %struct.error_diffusion_kernel*, %struct.error_diffusion_kernel** %9, align 8
  %39 = getelementptr inbounds %struct.error_diffusion_kernel, %struct.error_diffusion_kernel* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = mul nsw i32 %37, %40
  %42 = add nsw i32 %35, %41
  store i32 %42, i32* %15, align 4
  %43 = load i32, i32* %12, align 4
  %44 = load i32, i32* %15, align 4
  %45 = mul nsw i32 %43, %44
  %46 = load i32, i32* %14, align 4
  %47 = add nsw i32 %45, %46
  %48 = sub nsw i32 %47, 1
  %49 = load i32, i32* %14, align 4
  %50 = sdiv i32 %48, %49
  store i32 %50, i32* %16, align 4
  %51 = load i32, i32* %12, align 4
  %52 = load i32, i32* @EF_MAX_DELTA_Y, align 4
  %53 = add nsw i32 %51, %52
  store i32 %53, i32* %17, align 4
  %54 = load %struct.error_diffusion_kernel*, %struct.error_diffusion_kernel** %9, align 8
  %55 = call i32 @compute_rightmost_shifted_column(%struct.error_diffusion_kernel* %54)
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %18, align 4
  %57 = load i32, i32* %17, align 4
  %58 = load i32, i32* %18, align 4
  %59 = mul nsw i32 %57, %58
  store i32 %59, i32* %19, align 4
  %60 = load i32, i32* %19, align 4
  %61 = call i32 @GLSLH(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %60)
  %62 = load i32, i32* %19, align 4
  %63 = load i32, i32* %14, align 4
  %64 = call i32 (i8*, ...) @GLSL(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0), i32 %62, i32 %63)
  %65 = call i32 (i8*, ...) @GLSL(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %66 = load i32, i32* %16, align 4
  %67 = call i32 (i8*, ...) @GLSL(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0), i32 %66)
  %68 = call i32 (i8*, ...) @GLSL(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  %69 = call i32 (i8*, ...) @GLSL(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  %70 = load i32, i32* %14, align 4
  %71 = call i32 (i8*, ...) @GLSL(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.6, i64 0, i64 0), i32 %70)
  %72 = load i32, i32* %12, align 4
  %73 = load i32, i32* %12, align 4
  %74 = call i32 (i8*, ...) @GLSL(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.7, i64 0, i64 0), i32 %72, i32 %73)
  %75 = load %struct.error_diffusion_kernel*, %struct.error_diffusion_kernel** %9, align 8
  %76 = getelementptr inbounds %struct.error_diffusion_kernel, %struct.error_diffusion_kernel* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = call i32 (i8*, ...) @GLSL(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0), i32 %77)
  %79 = load i32, i32* %11, align 4
  %80 = call i32 (i8*, ...) @GLSL(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0), i32 %79)
  %81 = load i32, i32* %17, align 4
  %82 = load i32, i32* %19, align 4
  %83 = call i32 (i8*, ...) @GLSL(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.10, i64 0, i64 0), i32 %81, i32 %82)
  %84 = load i32, i32* %10, align 4
  %85 = call i32 (i8*, ...) @GLSL(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.11, i64 0, i64 0), i32 %84)
  %86 = load i32, i32* %13, align 4
  %87 = shl i32 1, %86
  %88 = sub nsw i32 %87, 1
  store i32 %88, i32* %20, align 4
  store i32 24, i32* %21, align 4
  store i32 12, i32* %22, align 4
  store i32 254, i32* %23, align 4
  %89 = load i32, i32* %21, align 4
  %90 = shl i32 128, %89
  %91 = load i32, i32* %22, align 4
  %92 = shl i32 128, %91
  %93 = or i32 %90, %92
  %94 = or i32 %93, 128
  %95 = call i32 (i8*, ...) @GLSL(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.12, i64 0, i64 0), i32 %94)
  %96 = load i32, i32* %20, align 4
  %97 = load i32, i32* %21, align 4
  %98 = load i32, i32* %22, align 4
  %99 = load i32, i32* %23, align 4
  %100 = call i32 (i8*, ...) @GLSL(i8* getelementptr inbounds ([136 x i8], [136 x i8]* @.str.13, i64 0, i64 0), i32 %96, i32 %97, i32 %98, i32 %99)
  %101 = call i32 (i8*, ...) @GLSL(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0))
  %102 = call i32 (i8*, ...) @GLSL(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.15, i64 0, i64 0))
  %103 = load i32, i32* %20, align 4
  %104 = call i32 (i8*, ...) @GLSL(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.16, i64 0, i64 0), i32 %103)
  %105 = load i32, i32* %23, align 4
  %106 = load %struct.error_diffusion_kernel*, %struct.error_diffusion_kernel** %9, align 8
  %107 = getelementptr inbounds %struct.error_diffusion_kernel, %struct.error_diffusion_kernel* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = call i32 (i8*, ...) @GLSL(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.17, i64 0, i64 0), i32 %105, i32 %108)
  %110 = call i32 (i8*, ...) @GLSL(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.18, i64 0, i64 0))
  store i32 1, i32* %24, align 4
  br label %111

111:                                              ; preds = %185, %7
  %112 = load i32, i32* %24, align 4
  %113 = load %struct.error_diffusion_kernel*, %struct.error_diffusion_kernel** %9, align 8
  %114 = getelementptr inbounds %struct.error_diffusion_kernel, %struct.error_diffusion_kernel* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = icmp sle i32 %112, %115
  br i1 %116, label %117, label %188

117:                                              ; preds = %111
  store i32 0, i32* %25, align 4
  store i32 0, i32* %26, align 4
  br label %118

118:                                              ; preds = %181, %117
  %119 = load i32, i32* %26, align 4
  %120 = load i32, i32* @EF_MAX_DELTA_Y, align 4
  %121 = icmp sle i32 %119, %120
  br i1 %121, label %122, label %184

122:                                              ; preds = %118
  %123 = load i32, i32* @EF_MIN_DELTA_X, align 4
  store i32 %123, i32* %27, align 4
  br label %124

124:                                              ; preds = %177, %122
  %125 = load i32, i32* %27, align 4
  %126 = load i32, i32* @EF_MAX_DELTA_X, align 4
  %127 = icmp sle i32 %125, %126
  br i1 %127, label %128, label %180

128:                                              ; preds = %124
  %129 = load %struct.error_diffusion_kernel*, %struct.error_diffusion_kernel** %9, align 8
  %130 = getelementptr inbounds %struct.error_diffusion_kernel, %struct.error_diffusion_kernel* %129, i32 0, i32 2
  %131 = load i32**, i32*** %130, align 8
  %132 = load i32, i32* %26, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i32*, i32** %131, i64 %133
  %135 = load i32*, i32** %134, align 8
  %136 = load i32, i32* %27, align 4
  %137 = load i32, i32* @EF_MIN_DELTA_X, align 4
  %138 = sub nsw i32 %136, %137
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i32, i32* %135, i64 %139
  %141 = load i32, i32* %140, align 4
  %142 = load i32, i32* %24, align 4
  %143 = icmp ne i32 %141, %142
  br i1 %143, label %144, label %145

144:                                              ; preds = %128
  br label %177

145:                                              ; preds = %128
  %146 = load i32, i32* %25, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %154, label %148

148:                                              ; preds = %145
  store i32 1, i32* %25, align 4
  %149 = load i32, i32* %24, align 4
  %150 = call i32 (i8*, ...) @GLSL(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.19, i64 0, i64 0), i32 %149)
  %151 = load i32, i32* %21, align 4
  %152 = load i32, i32* %22, align 4
  %153 = call i32 (i8*, ...) @GLSL(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.20, i64 0, i64 0), i32 %151, i32 %152)
  br label %154

154:                                              ; preds = %148, %145
  %155 = load i32, i32* %27, align 4
  %156 = load i32, i32* %26, align 4
  %157 = load %struct.error_diffusion_kernel*, %struct.error_diffusion_kernel** %9, align 8
  %158 = getelementptr inbounds %struct.error_diffusion_kernel, %struct.error_diffusion_kernel* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = mul nsw i32 %156, %159
  %161 = add nsw i32 %155, %160
  store i32 %161, i32* %28, align 4
  %162 = load i32, i32* %27, align 4
  %163 = icmp slt i32 %162, 0
  br i1 %163, label %164, label %168

164:                                              ; preds = %154
  %165 = load i32, i32* %27, align 4
  %166 = sub nsw i32 0, %165
  %167 = call i32 (i8*, ...) @GLSL(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.21, i64 0, i64 0), i32 %166)
  br label %168

168:                                              ; preds = %164, %154
  %169 = load i32, i32* %28, align 4
  %170 = load i32, i32* %17, align 4
  %171 = mul nsw i32 %169, %170
  %172 = load i32, i32* %26, align 4
  %173 = add nsw i32 %171, %172
  store i32 %173, i32* %29, align 4
  %174 = load i32, i32* %29, align 4
  %175 = load i32, i32* %19, align 4
  %176 = call i32 (i8*, ...) @GLSL(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.22, i64 0, i64 0), i32 %174, i32 %175)
  br label %177

177:                                              ; preds = %168, %144
  %178 = load i32, i32* %27, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %27, align 4
  br label %124

180:                                              ; preds = %124
  br label %181

181:                                              ; preds = %180
  %182 = load i32, i32* %26, align 4
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %26, align 4
  br label %118

184:                                              ; preds = %118
  br label %185

185:                                              ; preds = %184
  %186 = load i32, i32* %24, align 4
  %187 = add nsw i32 %186, 1
  store i32 %187, i32* %24, align 4
  br label %111

188:                                              ; preds = %111
  %189 = call i32 (i8*, ...) @GLSL(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.23, i64 0, i64 0))
  %190 = call i32 (i8*, ...) @GLSL(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.23, i64 0, i64 0))
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @compute_rightmost_shifted_column(%struct.error_diffusion_kernel*) #1

declare dso_local i32 @GLSLH(i8*, i32) #1

declare dso_local i32 @GLSL(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
