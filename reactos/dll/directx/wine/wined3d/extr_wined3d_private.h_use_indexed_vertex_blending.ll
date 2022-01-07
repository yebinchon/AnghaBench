; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_wined3d_private.h_use_indexed_vertex_blending.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_wined3d_private.h_use_indexed_vertex_blending.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_state = type { i64* }
%struct.wined3d_stream_info = type { i32 }

@WINED3D_RS_INDEXEDVERTEXBLENDENABLE = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@WINED3D_RS_VERTEXBLEND = common dso_local global i64 0, align 8
@WINED3D_VBF_DISABLE = common dso_local global i64 0, align 8
@WINED3D_FFP_BLENDINDICES = common dso_local global i32 0, align 4
@WINED3D_FFP_BLENDWEIGHT = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wined3d_state*, %struct.wined3d_stream_info*)* @use_indexed_vertex_blending to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @use_indexed_vertex_blending(%struct.wined3d_state* %0, %struct.wined3d_stream_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wined3d_state*, align 8
  %5 = alloca %struct.wined3d_stream_info*, align 8
  store %struct.wined3d_state* %0, %struct.wined3d_state** %4, align 8
  store %struct.wined3d_stream_info* %1, %struct.wined3d_stream_info** %5, align 8
  %6 = load %struct.wined3d_state*, %struct.wined3d_state** %4, align 8
  %7 = getelementptr inbounds %struct.wined3d_state, %struct.wined3d_state* %6, i32 0, i32 0
  %8 = load i64*, i64** %7, align 8
  %9 = load i64, i64* @WINED3D_RS_INDEXEDVERTEXBLENDENABLE, align 8
  %10 = getelementptr inbounds i64, i64* %8, i64 %9
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @FALSE, align 4
  store i32 %14, i32* %3, align 4
  br label %46

15:                                               ; preds = %2
  %16 = load %struct.wined3d_state*, %struct.wined3d_state** %4, align 8
  %17 = getelementptr inbounds %struct.wined3d_state, %struct.wined3d_state* %16, i32 0, i32 0
  %18 = load i64*, i64** %17, align 8
  %19 = load i64, i64* @WINED3D_RS_VERTEXBLEND, align 8
  %20 = getelementptr inbounds i64, i64* %18, i64 %19
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @WINED3D_VBF_DISABLE, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %15
  %25 = load i32, i32* @FALSE, align 4
  store i32 %25, i32* %3, align 4
  br label %46

26:                                               ; preds = %15
  %27 = load %struct.wined3d_stream_info*, %struct.wined3d_stream_info** %5, align 8
  %28 = getelementptr inbounds %struct.wined3d_stream_info, %struct.wined3d_stream_info* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @WINED3D_FFP_BLENDINDICES, align 4
  %31 = shl i32 1, %30
  %32 = and i32 %29, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %26
  %35 = load %struct.wined3d_stream_info*, %struct.wined3d_stream_info** %5, align 8
  %36 = getelementptr inbounds %struct.wined3d_stream_info, %struct.wined3d_stream_info* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @WINED3D_FFP_BLENDWEIGHT, align 4
  %39 = shl i32 1, %38
  %40 = and i32 %37, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %34, %26
  %43 = load i32, i32* @FALSE, align 4
  store i32 %43, i32* %3, align 4
  br label %46

44:                                               ; preds = %34
  %45 = load i32, i32* @TRUE, align 4
  store i32 %45, i32* %3, align 4
  br label %46

46:                                               ; preds = %44, %42, %24, %13
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
