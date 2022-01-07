; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_shader_glsl_float16.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_shader_glsl_float16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_shader_instruction = type { i64, %struct.TYPE_4__*, i32*, %struct.wined3d_shader_dst_param* }
%struct.TYPE_4__ = type { i32 }
%struct.wined3d_shader_dst_param = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.glsl_src_param = type { i32 }

@WINED3DSIH_F16TOF32 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"unpackHalf2x16(%s).x);\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"packHalf2x16(vec2(%s, 0.0)));\0A\00", align 1
@WINED3DSP_WRITEMASK_0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_shader_instruction*)* @shader_glsl_float16 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @shader_glsl_float16(%struct.wined3d_shader_instruction* %0) #0 {
  %2 = alloca %struct.wined3d_shader_instruction*, align 8
  %3 = alloca %struct.wined3d_shader_dst_param, align 4
  %4 = alloca %struct.glsl_src_param, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.wined3d_shader_instruction* %0, %struct.wined3d_shader_instruction** %2, align 8
  %8 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %9 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @WINED3DSIH_F16TOF32, align 8
  %12 = icmp eq i64 %10, %11
  %13 = zext i1 %12 to i64
  %14 = select i1 %12, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0)
  store i8* %14, i8** %6, align 8
  %15 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %16 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %15, i32 0, i32 3
  %17 = load %struct.wined3d_shader_dst_param*, %struct.wined3d_shader_dst_param** %16, align 8
  %18 = getelementptr inbounds %struct.wined3d_shader_dst_param, %struct.wined3d_shader_dst_param* %17, i64 0
  %19 = bitcast %struct.wined3d_shader_dst_param* %3 to i8*
  %20 = bitcast %struct.wined3d_shader_dst_param* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %19, i8* align 4 %20, i64 8, i1 false)
  store i32 0, i32* %7, align 4
  br label %21

21:                                               ; preds = %65, %1
  %22 = load i32, i32* %7, align 4
  %23 = icmp ult i32 %22, 4
  br i1 %23, label %24, label %68

24:                                               ; preds = %21
  %25 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %26 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %25, i32 0, i32 3
  %27 = load %struct.wined3d_shader_dst_param*, %struct.wined3d_shader_dst_param** %26, align 8
  %28 = getelementptr inbounds %struct.wined3d_shader_dst_param, %struct.wined3d_shader_dst_param* %27, i64 0
  %29 = getelementptr inbounds %struct.wined3d_shader_dst_param, %struct.wined3d_shader_dst_param* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @WINED3DSP_WRITEMASK_0, align 4
  %32 = load i32, i32* %7, align 4
  %33 = shl i32 %31, %32
  %34 = and i32 %30, %33
  %35 = getelementptr inbounds %struct.wined3d_shader_dst_param, %struct.wined3d_shader_dst_param* %3, i32 0, i32 0
  store i32 %34, i32* %35, align 4
  %36 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %37 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %36, i32 0, i32 1
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %42 = getelementptr inbounds %struct.wined3d_shader_dst_param, %struct.wined3d_shader_dst_param* %3, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @shader_glsl_append_dst_ext(i32 %40, %struct.wined3d_shader_instruction* %41, %struct.wined3d_shader_dst_param* %3, i32 %44)
  store i32 %45, i32* %5, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %24
  br label %65

48:                                               ; preds = %24
  %49 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %50 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %51 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %50, i32 0, i32 2
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 0
  %54 = load i32, i32* %5, align 4
  %55 = call i32 @shader_glsl_add_src_param(%struct.wined3d_shader_instruction* %49, i32* %53, i32 %54, %struct.glsl_src_param* %4)
  %56 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %57 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %56, i32 0, i32 1
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i8*, i8** %6, align 8
  %62 = getelementptr inbounds %struct.glsl_src_param, %struct.glsl_src_param* %4, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @shader_addline(i32 %60, i8* %61, i32 %63)
  br label %65

65:                                               ; preds = %48, %47
  %66 = load i32, i32* %7, align 4
  %67 = add i32 %66, 1
  store i32 %67, i32* %7, align 4
  br label %21

68:                                               ; preds = %21
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @shader_glsl_append_dst_ext(i32, %struct.wined3d_shader_instruction*, %struct.wined3d_shader_dst_param*, i32) #2

declare dso_local i32 @shader_glsl_add_src_param(%struct.wined3d_shader_instruction*, i32*, i32, %struct.glsl_src_param*) #2

declare dso_local i32 @shader_addline(i32, i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
