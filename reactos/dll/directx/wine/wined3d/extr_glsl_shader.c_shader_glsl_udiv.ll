; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_shader_glsl_udiv.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_shader_glsl_udiv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_shader_instruction = type { i32*, %struct.TYPE_7__*, %struct.TYPE_5__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i32 }
%struct.TYPE_5__ = type { %struct.wined3d_string_buffer* }
%struct.wined3d_string_buffer = type { i32 }
%struct.glsl_src_param = type { i32 }

@WINED3DSPR_NULL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [36 x i8] c"tmp0%s = uintBitsToFloat(%s / %s);\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"%s %% %s);\0A\00", align 1
@WINED3D_DATA_FLOAT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"tmp0%s);\0A\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"%s / %s);\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_shader_instruction*)* @shader_glsl_udiv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @shader_glsl_udiv(%struct.wined3d_shader_instruction* %0) #0 {
  %2 = alloca %struct.wined3d_shader_instruction*, align 8
  %3 = alloca %struct.wined3d_string_buffer*, align 8
  %4 = alloca %struct.glsl_src_param, align 4
  %5 = alloca %struct.glsl_src_param, align 4
  %6 = alloca i32, align 4
  %7 = alloca [6 x i8], align 1
  store %struct.wined3d_shader_instruction* %0, %struct.wined3d_shader_instruction** %2, align 8
  %8 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %9 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %8, i32 0, i32 2
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %11, align 8
  store %struct.wined3d_string_buffer* %12, %struct.wined3d_string_buffer** %3, align 8
  %13 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %14 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %13, i32 0, i32 1
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i64 0
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @WINED3DSPR_NULL, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %145

22:                                               ; preds = %1
  %23 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %24 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %23, i32 0, i32 1
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i64 1
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @WINED3DSPR_NULL, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %107

32:                                               ; preds = %22
  %33 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %34 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %33, i32 0, i32 1
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i64 0
  %37 = getelementptr inbounds [6 x i8], [6 x i8]* %7, i64 0, i64 0
  %38 = call i32 @shader_glsl_get_write_mask(%struct.TYPE_7__* %36, i8* %37)
  store i32 %38, i32* %6, align 4
  %39 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %40 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %41 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 0
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @shader_glsl_add_src_param(%struct.wined3d_shader_instruction* %39, i32* %43, i32 %44, %struct.glsl_src_param* %4)
  %46 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %47 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %48 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 1
  %51 = load i32, i32* %6, align 4
  %52 = call i32 @shader_glsl_add_src_param(%struct.wined3d_shader_instruction* %46, i32* %50, i32 %51, %struct.glsl_src_param* %5)
  %53 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %3, align 8
  %54 = getelementptr inbounds [6 x i8], [6 x i8]* %7, i64 0, i64 0
  %55 = getelementptr inbounds %struct.glsl_src_param, %struct.glsl_src_param* %4, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = getelementptr inbounds %struct.glsl_src_param, %struct.glsl_src_param* %5, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 (%struct.wined3d_string_buffer*, i8*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %53, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i8* %54, i32 %56, i32 %58)
  %60 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %3, align 8
  %61 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %62 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %63 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %62, i32 0, i32 1
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i64 1
  %66 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %67 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %66, i32 0, i32 1
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i64 1
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @shader_glsl_append_dst_ext(%struct.wined3d_string_buffer* %60, %struct.wined3d_shader_instruction* %61, %struct.TYPE_7__* %65, i32 %72)
  store i32 %73, i32* %6, align 4
  %74 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %75 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %76 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 0
  %79 = load i32, i32* %6, align 4
  %80 = call i32 @shader_glsl_add_src_param(%struct.wined3d_shader_instruction* %74, i32* %78, i32 %79, %struct.glsl_src_param* %4)
  %81 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %82 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %83 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %82, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 1
  %86 = load i32, i32* %6, align 4
  %87 = call i32 @shader_glsl_add_src_param(%struct.wined3d_shader_instruction* %81, i32* %85, i32 %86, %struct.glsl_src_param* %5)
  %88 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %3, align 8
  %89 = getelementptr inbounds %struct.glsl_src_param, %struct.glsl_src_param* %4, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = sext i32 %90 to i64
  %92 = inttoptr i64 %91 to i8*
  %93 = getelementptr inbounds %struct.glsl_src_param, %struct.glsl_src_param* %5, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i32 (%struct.wined3d_string_buffer*, i8*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %88, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* %92, i32 %94)
  %96 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %3, align 8
  %97 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %98 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %99 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %98, i32 0, i32 1
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i64 0
  %102 = load i32, i32* @WINED3D_DATA_FLOAT, align 4
  %103 = call i32 @shader_glsl_append_dst_ext(%struct.wined3d_string_buffer* %96, %struct.wined3d_shader_instruction* %97, %struct.TYPE_7__* %101, i32 %102)
  %104 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %3, align 8
  %105 = getelementptr inbounds [6 x i8], [6 x i8]* %7, i64 0, i64 0
  %106 = call i32 (%struct.wined3d_string_buffer*, i8*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %104, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* %105)
  br label %144

107:                                              ; preds = %22
  %108 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %3, align 8
  %109 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %110 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %111 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %110, i32 0, i32 1
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i64 0
  %114 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %115 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %114, i32 0, i32 1
  %116 = load %struct.TYPE_7__*, %struct.TYPE_7__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i64 0
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 8
  %121 = call i32 @shader_glsl_append_dst_ext(%struct.wined3d_string_buffer* %108, %struct.wined3d_shader_instruction* %109, %struct.TYPE_7__* %113, i32 %120)
  store i32 %121, i32* %6, align 4
  %122 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %123 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %124 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %123, i32 0, i32 0
  %125 = load i32*, i32** %124, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 0
  %127 = load i32, i32* %6, align 4
  %128 = call i32 @shader_glsl_add_src_param(%struct.wined3d_shader_instruction* %122, i32* %126, i32 %127, %struct.glsl_src_param* %4)
  %129 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %130 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %131 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %130, i32 0, i32 0
  %132 = load i32*, i32** %131, align 8
  %133 = getelementptr inbounds i32, i32* %132, i64 1
  %134 = load i32, i32* %6, align 4
  %135 = call i32 @shader_glsl_add_src_param(%struct.wined3d_shader_instruction* %129, i32* %133, i32 %134, %struct.glsl_src_param* %5)
  %136 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %3, align 8
  %137 = getelementptr inbounds %struct.glsl_src_param, %struct.glsl_src_param* %4, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = sext i32 %138 to i64
  %140 = inttoptr i64 %139 to i8*
  %141 = getelementptr inbounds %struct.glsl_src_param, %struct.glsl_src_param* %5, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = call i32 (%struct.wined3d_string_buffer*, i8*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %136, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8* %140, i32 %142)
  br label %144

144:                                              ; preds = %107, %32
  br label %193

145:                                              ; preds = %1
  %146 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %147 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %146, i32 0, i32 1
  %148 = load %struct.TYPE_7__*, %struct.TYPE_7__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %148, i64 1
  %150 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = load i64, i64* @WINED3DSPR_NULL, align 8
  %154 = icmp ne i64 %152, %153
  br i1 %154, label %155, label %192

155:                                              ; preds = %145
  %156 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %3, align 8
  %157 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %158 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %159 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %158, i32 0, i32 1
  %160 = load %struct.TYPE_7__*, %struct.TYPE_7__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %160, i64 1
  %162 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %163 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %162, i32 0, i32 1
  %164 = load %struct.TYPE_7__*, %struct.TYPE_7__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %164, i64 1
  %166 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 8
  %169 = call i32 @shader_glsl_append_dst_ext(%struct.wined3d_string_buffer* %156, %struct.wined3d_shader_instruction* %157, %struct.TYPE_7__* %161, i32 %168)
  store i32 %169, i32* %6, align 4
  %170 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %171 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %172 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %171, i32 0, i32 0
  %173 = load i32*, i32** %172, align 8
  %174 = getelementptr inbounds i32, i32* %173, i64 0
  %175 = load i32, i32* %6, align 4
  %176 = call i32 @shader_glsl_add_src_param(%struct.wined3d_shader_instruction* %170, i32* %174, i32 %175, %struct.glsl_src_param* %4)
  %177 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %178 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %179 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %178, i32 0, i32 0
  %180 = load i32*, i32** %179, align 8
  %181 = getelementptr inbounds i32, i32* %180, i64 1
  %182 = load i32, i32* %6, align 4
  %183 = call i32 @shader_glsl_add_src_param(%struct.wined3d_shader_instruction* %177, i32* %181, i32 %182, %struct.glsl_src_param* %5)
  %184 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %3, align 8
  %185 = getelementptr inbounds %struct.glsl_src_param, %struct.glsl_src_param* %4, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = sext i32 %186 to i64
  %188 = inttoptr i64 %187 to i8*
  %189 = getelementptr inbounds %struct.glsl_src_param, %struct.glsl_src_param* %5, i32 0, i32 0
  %190 = load i32, i32* %189, align 4
  %191 = call i32 (%struct.wined3d_string_buffer*, i8*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %184, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* %188, i32 %190)
  br label %192

192:                                              ; preds = %155, %145
  br label %193

193:                                              ; preds = %192, %144
  ret void
}

declare dso_local i32 @shader_glsl_get_write_mask(%struct.TYPE_7__*, i8*) #1

declare dso_local i32 @shader_glsl_add_src_param(%struct.wined3d_shader_instruction*, i32*, i32, %struct.glsl_src_param*) #1

declare dso_local i32 @shader_addline(%struct.wined3d_string_buffer*, i8*, i8*, ...) #1

declare dso_local i32 @shader_glsl_append_dst_ext(%struct.wined3d_string_buffer*, %struct.wined3d_shader_instruction*, %struct.TYPE_7__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
