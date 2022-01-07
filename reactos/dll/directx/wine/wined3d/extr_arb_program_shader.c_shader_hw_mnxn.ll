; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_arb_program_shader.c_shader_hw_mnxn.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_arb_program_shader.c_shader_hw_mnxn.c"
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
@.str = private unnamed_addr constant [22 x i8] c"Unhandled opcode %s.\0A\00", align 1
@WINED3DSP_WRITEMASK_0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_shader_instruction*)* @shader_hw_mnxn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @shader_hw_mnxn(%struct.wined3d_shader_instruction* %0) #0 {
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
  br label %49

27:                                               ; preds = %1
  store i32 3, i32* %4, align 4
  %28 = load i8*, i8** @WINED3DSIH_DP4, align 8
  %29 = ptrtoint i8* %28 to i32
  %30 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %7, i32 0, i32 2
  store i32 %29, i32* %30, align 8
  br label %49

31:                                               ; preds = %1
  store i32 4, i32* %4, align 4
  %32 = load i8*, i8** @WINED3DSIH_DP3, align 8
  %33 = ptrtoint i8* %32 to i32
  %34 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %7, i32 0, i32 2
  store i32 %33, i32* %34, align 8
  br label %49

35:                                               ; preds = %1
  store i32 3, i32* %4, align 4
  %36 = load i8*, i8** @WINED3DSIH_DP3, align 8
  %37 = ptrtoint i8* %36 to i32
  %38 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %7, i32 0, i32 2
  store i32 %37, i32* %38, align 8
  br label %49

39:                                               ; preds = %1
  store i32 2, i32* %4, align 4
  %40 = load i8*, i8** @WINED3DSIH_DP3, align 8
  %41 = ptrtoint i8* %40 to i32
  %42 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %7, i32 0, i32 2
  store i32 %41, i32* %42, align 8
  br label %49

43:                                               ; preds = %1
  %44 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %45 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @debug_d3dshaderinstructionhandler(i32 %46)
  %48 = call i32 @FIXME(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %47)
  br label %49

49:                                               ; preds = %43, %39, %35, %31, %27, %23
  %50 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %51 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %50, i32 0, i32 4
  %52 = load %struct.wined3d_shader_dst_param*, %struct.wined3d_shader_dst_param** %51, align 8
  %53 = getelementptr inbounds %struct.wined3d_shader_dst_param, %struct.wined3d_shader_dst_param* %52, i64 0
  %54 = bitcast %struct.wined3d_shader_dst_param* %5 to i8*
  %55 = bitcast %struct.wined3d_shader_dst_param* %53 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %54, i8* align 4 %55, i64 8, i1 false)
  %56 = getelementptr inbounds [2 x %struct.wined3d_shader_src_param], [2 x %struct.wined3d_shader_src_param]* %6, i64 0, i64 0
  %57 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %58 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %57, i32 0, i32 3
  %59 = load %struct.wined3d_shader_src_param*, %struct.wined3d_shader_src_param** %58, align 8
  %60 = getelementptr inbounds %struct.wined3d_shader_src_param, %struct.wined3d_shader_src_param* %59, i64 0
  %61 = bitcast %struct.wined3d_shader_src_param* %56 to i8*
  %62 = bitcast %struct.wined3d_shader_src_param* %60 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %61, i8* align 8 %62, i64 16, i1 false)
  %63 = getelementptr inbounds [2 x %struct.wined3d_shader_src_param], [2 x %struct.wined3d_shader_src_param]* %6, i64 0, i64 1
  %64 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %65 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %64, i32 0, i32 3
  %66 = load %struct.wined3d_shader_src_param*, %struct.wined3d_shader_src_param** %65, align 8
  %67 = getelementptr inbounds %struct.wined3d_shader_src_param, %struct.wined3d_shader_src_param* %66, i64 1
  %68 = bitcast %struct.wined3d_shader_src_param* %63 to i8*
  %69 = bitcast %struct.wined3d_shader_src_param* %67 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %68, i8* align 8 %69, i64 16, i1 false)
  store i32 0, i32* %3, align 4
  br label %70

70:                                               ; preds = %88, %49
  %71 = load i32, i32* %3, align 4
  %72 = load i32, i32* %4, align 4
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %74, label %91

74:                                               ; preds = %70
  %75 = load i32, i32* @WINED3DSP_WRITEMASK_0, align 4
  %76 = load i32, i32* %3, align 4
  %77 = shl i32 %75, %76
  %78 = getelementptr inbounds %struct.wined3d_shader_dst_param, %struct.wined3d_shader_dst_param* %5, i32 0, i32 0
  store i32 %77, i32* %78, align 4
  %79 = call i32 @shader_hw_map2gl(%struct.wined3d_shader_instruction* %7)
  %80 = getelementptr inbounds [2 x %struct.wined3d_shader_src_param], [2 x %struct.wined3d_shader_src_param]* %6, i64 0, i64 1
  %81 = getelementptr inbounds %struct.wined3d_shader_src_param, %struct.wined3d_shader_src_param* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 0
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %82, align 16
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i64 0
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %85, align 4
  br label %88

88:                                               ; preds = %74
  %89 = load i32, i32* %3, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %3, align 4
  br label %70

91:                                               ; preds = %70
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @memset(%struct.wined3d_shader_instruction*, i32, i32) #2

declare dso_local i32 @FIXME(i8*, i32) #2

declare dso_local i32 @debug_d3dshaderinstructionhandler(i32) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @shader_hw_map2gl(%struct.wined3d_shader_instruction*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
