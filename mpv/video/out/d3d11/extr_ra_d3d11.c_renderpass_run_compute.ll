; ModuleID = '/home/carl/AnghaBench/mpv/video/out/d3d11/extr_ra_d3d11.c_renderpass_run_compute.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/d3d11/extr_ra_d3d11.c_renderpass_run_compute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ra = type { %struct.ra_d3d11* }
%struct.ra_d3d11 = type { i32 }
%struct.ra_renderpass_run_params = type { i32*, %struct.ra_renderpass* }
%struct.ra_renderpass = type { %struct.d3d_rpass* }
%struct.d3d_rpass = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ra*, %struct.ra_renderpass_run_params*, i32**, i32, i32**, i32**, i32, i32**, i32)* @renderpass_run_compute to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @renderpass_run_compute(%struct.ra* %0, %struct.ra_renderpass_run_params* %1, i32** %2, i32 %3, i32** %4, i32** %5, i32 %6, i32** %7, i32 %8) #0 {
  %10 = alloca %struct.ra*, align 8
  %11 = alloca %struct.ra_renderpass_run_params*, align 8
  %12 = alloca i32**, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32**, align 8
  %15 = alloca i32**, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32**, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.ra_d3d11*, align 8
  %20 = alloca %struct.ra_renderpass*, align 8
  %21 = alloca %struct.d3d_rpass*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store %struct.ra* %0, %struct.ra** %10, align 8
  store %struct.ra_renderpass_run_params* %1, %struct.ra_renderpass_run_params** %11, align 8
  store i32** %2, i32*** %12, align 8
  store i32 %3, i32* %13, align 4
  store i32** %4, i32*** %14, align 8
  store i32** %5, i32*** %15, align 8
  store i32 %6, i32* %16, align 4
  store i32** %7, i32*** %17, align 8
  store i32 %8, i32* %18, align 4
  %25 = load %struct.ra*, %struct.ra** %10, align 8
  %26 = getelementptr inbounds %struct.ra, %struct.ra* %25, i32 0, i32 0
  %27 = load %struct.ra_d3d11*, %struct.ra_d3d11** %26, align 8
  store %struct.ra_d3d11* %27, %struct.ra_d3d11** %19, align 8
  %28 = load %struct.ra_renderpass_run_params*, %struct.ra_renderpass_run_params** %11, align 8
  %29 = getelementptr inbounds %struct.ra_renderpass_run_params, %struct.ra_renderpass_run_params* %28, i32 0, i32 1
  %30 = load %struct.ra_renderpass*, %struct.ra_renderpass** %29, align 8
  store %struct.ra_renderpass* %30, %struct.ra_renderpass** %20, align 8
  %31 = load %struct.ra_renderpass*, %struct.ra_renderpass** %20, align 8
  %32 = getelementptr inbounds %struct.ra_renderpass, %struct.ra_renderpass* %31, i32 0, i32 0
  %33 = load %struct.d3d_rpass*, %struct.d3d_rpass** %32, align 8
  store %struct.d3d_rpass* %33, %struct.d3d_rpass** %21, align 8
  %34 = load %struct.ra_d3d11*, %struct.ra_d3d11** %19, align 8
  %35 = getelementptr inbounds %struct.ra_d3d11, %struct.ra_d3d11* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.d3d_rpass*, %struct.d3d_rpass** %21, align 8
  %38 = getelementptr inbounds %struct.d3d_rpass, %struct.d3d_rpass* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @ID3D11DeviceContext_CSSetShader(i32 %36, i32 %39, i32* null, i32 0)
  %41 = load %struct.ra_d3d11*, %struct.ra_d3d11** %19, align 8
  %42 = getelementptr inbounds %struct.ra_d3d11, %struct.ra_d3d11* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %13, align 4
  %45 = load i32**, i32*** %12, align 8
  %46 = call i32 @ID3D11DeviceContext_CSSetConstantBuffers(i32 %43, i32 0, i32 %44, i32** %45)
  %47 = load %struct.ra_d3d11*, %struct.ra_d3d11** %19, align 8
  %48 = getelementptr inbounds %struct.ra_d3d11, %struct.ra_d3d11* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %16, align 4
  %51 = load i32**, i32*** %15, align 8
  %52 = call i32 @ID3D11DeviceContext_CSSetShaderResources(i32 %49, i32 0, i32 %50, i32** %51)
  %53 = load %struct.ra_d3d11*, %struct.ra_d3d11** %19, align 8
  %54 = getelementptr inbounds %struct.ra_d3d11, %struct.ra_d3d11* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %16, align 4
  %57 = load i32**, i32*** %14, align 8
  %58 = call i32 @ID3D11DeviceContext_CSSetSamplers(i32 %55, i32 0, i32 %56, i32** %57)
  %59 = load %struct.ra_d3d11*, %struct.ra_d3d11** %19, align 8
  %60 = getelementptr inbounds %struct.ra_d3d11, %struct.ra_d3d11* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %18, align 4
  %63 = load i32**, i32*** %17, align 8
  %64 = call i32 @ID3D11DeviceContext_CSSetUnorderedAccessViews(i32 %61, i32 0, i32 %62, i32** %63, i32* null)
  %65 = load %struct.ra_d3d11*, %struct.ra_d3d11** %19, align 8
  %66 = getelementptr inbounds %struct.ra_d3d11, %struct.ra_d3d11* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.ra_renderpass_run_params*, %struct.ra_renderpass_run_params** %11, align 8
  %69 = getelementptr inbounds %struct.ra_renderpass_run_params, %struct.ra_renderpass_run_params* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.ra_renderpass_run_params*, %struct.ra_renderpass_run_params** %11, align 8
  %74 = getelementptr inbounds %struct.ra_renderpass_run_params, %struct.ra_renderpass_run_params* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 1
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.ra_renderpass_run_params*, %struct.ra_renderpass_run_params** %11, align 8
  %79 = getelementptr inbounds %struct.ra_renderpass_run_params, %struct.ra_renderpass_run_params* %78, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 2
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @ID3D11DeviceContext_Dispatch(i32 %67, i32 %72, i32 %77, i32 %82)
  store i32 0, i32* %22, align 4
  br label %84

84:                                               ; preds = %93, %9
  %85 = load i32, i32* %22, align 4
  %86 = load i32, i32* %13, align 4
  %87 = icmp slt i32 %85, %86
  br i1 %87, label %88, label %96

88:                                               ; preds = %84
  %89 = load i32**, i32*** %12, align 8
  %90 = load i32, i32* %22, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32*, i32** %89, i64 %91
  store i32* null, i32** %92, align 8
  br label %93

93:                                               ; preds = %88
  %94 = load i32, i32* %22, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %22, align 4
  br label %84

96:                                               ; preds = %84
  store i32 0, i32* %23, align 4
  br label %97

97:                                               ; preds = %110, %96
  %98 = load i32, i32* %23, align 4
  %99 = load i32, i32* %16, align 4
  %100 = icmp slt i32 %98, %99
  br i1 %100, label %101, label %113

101:                                              ; preds = %97
  %102 = load i32**, i32*** %14, align 8
  %103 = load i32, i32* %23, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32*, i32** %102, i64 %104
  store i32* null, i32** %105, align 8
  %106 = load i32**, i32*** %15, align 8
  %107 = load i32, i32* %23, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32*, i32** %106, i64 %108
  store i32* null, i32** %109, align 8
  br label %110

110:                                              ; preds = %101
  %111 = load i32, i32* %23, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %23, align 4
  br label %97

113:                                              ; preds = %97
  store i32 0, i32* %24, align 4
  br label %114

114:                                              ; preds = %123, %113
  %115 = load i32, i32* %24, align 4
  %116 = load i32, i32* %18, align 4
  %117 = icmp slt i32 %115, %116
  br i1 %117, label %118, label %126

118:                                              ; preds = %114
  %119 = load i32**, i32*** %17, align 8
  %120 = load i32, i32* %24, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32*, i32** %119, i64 %121
  store i32* null, i32** %122, align 8
  br label %123

123:                                              ; preds = %118
  %124 = load i32, i32* %24, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %24, align 4
  br label %114

126:                                              ; preds = %114
  %127 = load %struct.ra_d3d11*, %struct.ra_d3d11** %19, align 8
  %128 = getelementptr inbounds %struct.ra_d3d11, %struct.ra_d3d11* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* %13, align 4
  %131 = load i32**, i32*** %12, align 8
  %132 = call i32 @ID3D11DeviceContext_CSSetConstantBuffers(i32 %129, i32 0, i32 %130, i32** %131)
  %133 = load %struct.ra_d3d11*, %struct.ra_d3d11** %19, align 8
  %134 = getelementptr inbounds %struct.ra_d3d11, %struct.ra_d3d11* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* %16, align 4
  %137 = load i32**, i32*** %15, align 8
  %138 = call i32 @ID3D11DeviceContext_CSSetShaderResources(i32 %135, i32 0, i32 %136, i32** %137)
  %139 = load %struct.ra_d3d11*, %struct.ra_d3d11** %19, align 8
  %140 = getelementptr inbounds %struct.ra_d3d11, %struct.ra_d3d11* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = load i32, i32* %16, align 4
  %143 = load i32**, i32*** %14, align 8
  %144 = call i32 @ID3D11DeviceContext_CSSetSamplers(i32 %141, i32 0, i32 %142, i32** %143)
  %145 = load %struct.ra_d3d11*, %struct.ra_d3d11** %19, align 8
  %146 = getelementptr inbounds %struct.ra_d3d11, %struct.ra_d3d11* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* %18, align 4
  %149 = load i32**, i32*** %17, align 8
  %150 = call i32 @ID3D11DeviceContext_CSSetUnorderedAccessViews(i32 %147, i32 0, i32 %148, i32** %149, i32* null)
  ret void
}

declare dso_local i32 @ID3D11DeviceContext_CSSetShader(i32, i32, i32*, i32) #1

declare dso_local i32 @ID3D11DeviceContext_CSSetConstantBuffers(i32, i32, i32, i32**) #1

declare dso_local i32 @ID3D11DeviceContext_CSSetShaderResources(i32, i32, i32, i32**) #1

declare dso_local i32 @ID3D11DeviceContext_CSSetSamplers(i32, i32, i32, i32**) #1

declare dso_local i32 @ID3D11DeviceContext_CSSetUnorderedAccessViews(i32, i32, i32, i32**, i32*) #1

declare dso_local i32 @ID3D11DeviceContext_Dispatch(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
