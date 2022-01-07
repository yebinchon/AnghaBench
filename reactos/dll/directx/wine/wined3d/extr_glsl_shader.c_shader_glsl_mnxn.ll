; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_shader_glsl_mnxn.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_shader_glsl_mnxn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_shader_instruction = type { i32, i32, i32, %struct.wined3d_shader_src_param*, %struct.wined3d_shader_dst_param*, i32 }
%struct.wined3d_shader_src_param = type { %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.wined3d_shader_dst_param = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@WINED3DSIH_DP4 = common dso_local global i8* null, align 8
@WINED3DSIH_DP3 = common dso_local global i8* null, align 8
@WINED3DSP_WRITEMASK_0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_shader_instruction*)* @shader_glsl_mnxn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @shader_glsl_mnxn(%struct.wined3d_shader_instruction* %0) #0 {
  %2 = alloca %struct.wined3d_shader_instruction*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.wined3d_shader_dst_param, align 4
  %6 = alloca [2 x %struct.wined3d_shader_src_param], align 16
  %7 = alloca %struct.wined3d_shader_instruction, align 8
  store %struct.wined3d_shader_instruction* %0, %struct.wined3d_shader_instruction** %2, align 8
  store i32 0, i32* %4, align 4
  %8 = bitcast %struct.wined3d_shader_dst_param* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %8, i8 0, i64 8, i1 false)
  %9 = bitcast [2 x %struct.wined3d_shader_src_param]* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %9, i8 0, i64 32, i1 false)
  %10 = call i32 @memset(%struct.wined3d_shader_instruction* %7, i32 0, i32 40)
  %11 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %12 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %11, i32 0, i32 5
  %13 = load i32, i32* %12, align 8
  %14 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %7, i32 0, i32 5
  store i32 %13, i32* %14, align 8
  %15 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %7, i32 0, i32 0
  store i32 1, i32* %15, align 8
  %16 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %7, i32 0, i32 4
  store %struct.wined3d_shader_dst_param* %5, %struct.wined3d_shader_dst_param** %16, align 8
  %17 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %7, i32 0, i32 1
  store i32 2, i32* %17, align 4
  %18 = getelementptr inbounds [2 x %struct.wined3d_shader_src_param], [2 x %struct.wined3d_shader_src_param]* %6, i64 0, i64 0
  %19 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %7, i32 0, i32 3
  store %struct.wined3d_shader_src_param* %18, %struct.wined3d_shader_src_param** %19, align 8
  %20 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %21 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  switch i32 %22, label %43 [
    i32 128, label %23
    i32 129, label %27
    i32 130, label %31
    i32 131, label %35
    i32 132, label %39
  ]

23:                                               ; preds = %1
  store i32 4, i32* %4, align 4
  %24 = load i8*, i8** @WINED3DSIH_DP4, align 8
  %25 = ptrtoint i8* %24 to i32
  %26 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %7, i32 0, i32 2
  store i32 %25, i32* %26, align 8
  br label %44

27:                                               ; preds = %1
  store i32 3, i32* %4, align 4
  %28 = load i8*, i8** @WINED3DSIH_DP4, align 8
  %29 = ptrtoint i8* %28 to i32
  %30 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %7, i32 0, i32 2
  store i32 %29, i32* %30, align 8
  br label %44

31:                                               ; preds = %1
  store i32 4, i32* %4, align 4
  %32 = load i8*, i8** @WINED3DSIH_DP3, align 8
  %33 = ptrtoint i8* %32 to i32
  %34 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %7, i32 0, i32 2
  store i32 %33, i32* %34, align 8
  br label %44

35:                                               ; preds = %1
  store i32 3, i32* %4, align 4
  %36 = load i8*, i8** @WINED3DSIH_DP3, align 8
  %37 = ptrtoint i8* %36 to i32
  %38 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %7, i32 0, i32 2
  store i32 %37, i32* %38, align 8
  br label %44

39:                                               ; preds = %1
  store i32 2, i32* %4, align 4
  %40 = load i8*, i8** @WINED3DSIH_DP3, align 8
  %41 = ptrtoint i8* %40 to i32
  %42 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %7, i32 0, i32 2
  store i32 %41, i32* %42, align 8
  br label %44

43:                                               ; preds = %1
  br label %44

44:                                               ; preds = %43, %39, %35, %31, %27, %23
  %45 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %46 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %45, i32 0, i32 4
  %47 = load %struct.wined3d_shader_dst_param*, %struct.wined3d_shader_dst_param** %46, align 8
  %48 = getelementptr inbounds %struct.wined3d_shader_dst_param, %struct.wined3d_shader_dst_param* %47, i64 0
  %49 = bitcast %struct.wined3d_shader_dst_param* %5 to i8*
  %50 = bitcast %struct.wined3d_shader_dst_param* %48 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %49, i8* align 4 %50, i64 8, i1 false)
  %51 = getelementptr inbounds [2 x %struct.wined3d_shader_src_param], [2 x %struct.wined3d_shader_src_param]* %6, i64 0, i64 0
  %52 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %53 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %52, i32 0, i32 3
  %54 = load %struct.wined3d_shader_src_param*, %struct.wined3d_shader_src_param** %53, align 8
  %55 = getelementptr inbounds %struct.wined3d_shader_src_param, %struct.wined3d_shader_src_param* %54, i64 0
  %56 = bitcast %struct.wined3d_shader_src_param* %51 to i8*
  %57 = bitcast %struct.wined3d_shader_src_param* %55 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %56, i8* align 8 %57, i64 16, i1 false)
  %58 = getelementptr inbounds [2 x %struct.wined3d_shader_src_param], [2 x %struct.wined3d_shader_src_param]* %6, i64 0, i64 1
  %59 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %60 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %59, i32 0, i32 3
  %61 = load %struct.wined3d_shader_src_param*, %struct.wined3d_shader_src_param** %60, align 8
  %62 = getelementptr inbounds %struct.wined3d_shader_src_param, %struct.wined3d_shader_src_param* %61, i64 1
  %63 = bitcast %struct.wined3d_shader_src_param* %58 to i8*
  %64 = bitcast %struct.wined3d_shader_src_param* %62 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %63, i8* align 8 %64, i64 16, i1 false)
  store i32 0, i32* %3, align 4
  br label %65

65:                                               ; preds = %83, %44
  %66 = load i32, i32* %3, align 4
  %67 = load i32, i32* %4, align 4
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %69, label %86

69:                                               ; preds = %65
  %70 = load i32, i32* @WINED3DSP_WRITEMASK_0, align 4
  %71 = load i32, i32* %3, align 4
  %72 = shl i32 %70, %71
  %73 = getelementptr inbounds %struct.wined3d_shader_dst_param, %struct.wined3d_shader_dst_param* %5, i32 0, i32 0
  store i32 %72, i32* %73, align 4
  %74 = call i32 @shader_glsl_dot(%struct.wined3d_shader_instruction* %7)
  %75 = getelementptr inbounds [2 x %struct.wined3d_shader_src_param], [2 x %struct.wined3d_shader_src_param]* %6, i64 0, i64 1
  %76 = getelementptr inbounds %struct.wined3d_shader_src_param, %struct.wined3d_shader_src_param* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 0
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %77, align 16
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i64 0
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %80, align 4
  br label %83

83:                                               ; preds = %69
  %84 = load i32, i32* %3, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %3, align 4
  br label %65

86:                                               ; preds = %65
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @memset(%struct.wined3d_shader_instruction*, i32, i32) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @shader_glsl_dot(%struct.wined3d_shader_instruction*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
