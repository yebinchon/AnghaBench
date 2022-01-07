; ModuleID = '/home/carl/AnghaBench/mpv/video/out/d3d11/extr_context.c_d3d11_get_vsync.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/d3d11/extr_context.c_d3d11_get_vsync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ra_swapchain = type { %struct.priv* }
%struct.priv = type { i32, i32, i32, i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.vo_vsync_info = type { i8*, i8*, i64 }
%struct.TYPE_7__ = type { i32, i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@DXGI_ERROR_FRAME_STATISTICS_DISJOINT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ra_swapchain*, %struct.vo_vsync_info*)* @d3d11_get_vsync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @d3d11_get_vsync(%struct.ra_swapchain* %0, %struct.vo_vsync_info* %1) #0 {
  %3 = alloca %struct.ra_swapchain*, align 8
  %4 = alloca %struct.vo_vsync_info*, align 8
  %5 = alloca %struct.priv*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_7__, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.ra_swapchain* %0, %struct.ra_swapchain** %3, align 8
  store %struct.vo_vsync_info* %1, %struct.vo_vsync_info** %4, align 8
  %14 = load %struct.ra_swapchain*, %struct.ra_swapchain** %3, align 8
  %15 = getelementptr inbounds %struct.ra_swapchain, %struct.ra_swapchain* %14, i32 0, i32 0
  %16 = load %struct.priv*, %struct.priv** %15, align 8
  store %struct.priv* %16, %struct.priv** %5, align 8
  %17 = load %struct.priv*, %struct.priv** %5, align 8
  %18 = getelementptr inbounds %struct.priv, %struct.priv* %17, i32 0, i32 5
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 1
  br i1 %22, label %23, label %24

23:                                               ; preds = %2
  br label %183

24:                                               ; preds = %2
  %25 = load %struct.priv*, %struct.priv** %5, align 8
  %26 = getelementptr inbounds %struct.priv, %struct.priv* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 8
  %28 = call i64 @IDXGISwapChain_GetLastPresentCount(i32 %27, i32* %7)
  store i64 %28, i64* %6, align 8
  %29 = load i64, i64* %6, align 8
  %30 = call i64 @FAILED(i64 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %24
  br label %183

33:                                               ; preds = %24
  %34 = load %struct.priv*, %struct.priv** %5, align 8
  %35 = getelementptr inbounds %struct.priv, %struct.priv* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 8
  %37 = call i64 @IDXGISwapChain_GetFrameStatistics(i32 %36, %struct.TYPE_7__* %8)
  store i64 %37, i64* %6, align 8
  %38 = load i64, i64* %6, align 8
  %39 = load i64, i64* @DXGI_ERROR_FRAME_STATISTICS_DISJOINT, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %46

41:                                               ; preds = %33
  %42 = load %struct.priv*, %struct.priv** %5, align 8
  %43 = getelementptr inbounds %struct.priv, %struct.priv* %42, i32 0, i32 0
  store i32 0, i32* %43, align 8
  %44 = load %struct.priv*, %struct.priv** %5, align 8
  %45 = getelementptr inbounds %struct.priv, %struct.priv* %44, i32 0, i32 1
  store i32 0, i32* %45, align 4
  br label %46

46:                                               ; preds = %41, %33
  %47 = load i64, i64* %6, align 8
  %48 = call i64 @FAILED(i64 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %46
  br label %183

51:                                               ; preds = %46
  %52 = load %struct.vo_vsync_info*, %struct.vo_vsync_info** %4, align 8
  %53 = getelementptr inbounds %struct.vo_vsync_info, %struct.vo_vsync_info* %52, i32 0, i32 2
  store i64 0, i64* %53, align 8
  store i32 0, i32* %9, align 4
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %69

57:                                               ; preds = %51
  %58 = load %struct.priv*, %struct.priv** %5, align 8
  %59 = getelementptr inbounds %struct.priv, %struct.priv* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %69

62:                                               ; preds = %57
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.priv*, %struct.priv** %5, align 8
  %66 = getelementptr inbounds %struct.priv, %struct.priv* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = sub i32 %64, %67
  store i32 %68, i32* %9, align 4
  br label %69

69:                                               ; preds = %62, %57, %51
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.priv*, %struct.priv** %5, align 8
  %73 = getelementptr inbounds %struct.priv, %struct.priv* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 8
  store i32 0, i32* %10, align 4
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 3
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %91

78:                                               ; preds = %69
  %79 = load %struct.priv*, %struct.priv** %5, align 8
  %80 = getelementptr inbounds %struct.priv, %struct.priv* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %91

83:                                               ; preds = %78
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 3
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.priv*, %struct.priv** %5, align 8
  %88 = getelementptr inbounds %struct.priv, %struct.priv* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = sub i32 %86, %89
  store i32 %90, i32* %10, align 4
  br label %91

91:                                               ; preds = %83, %78, %69
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 3
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.priv*, %struct.priv** %5, align 8
  %96 = getelementptr inbounds %struct.priv, %struct.priv* %95, i32 0, i32 1
  store i32 %94, i32* %96, align 4
  %97 = load i32, i32* %9, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %108

99:                                               ; preds = %91
  %100 = load i32, i32* %10, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %108

102:                                              ; preds = %99
  %103 = load i32, i32* %10, align 4
  %104 = load i32, i32* %9, align 4
  %105 = udiv i32 %103, %104
  %106 = load %struct.priv*, %struct.priv** %5, align 8
  %107 = getelementptr inbounds %struct.priv, %struct.priv* %106, i32 0, i32 2
  store i32 %105, i32* %107, align 8
  br label %108

108:                                              ; preds = %102, %99, %91
  %109 = load %struct.priv*, %struct.priv** %5, align 8
  %110 = getelementptr inbounds %struct.priv, %struct.priv* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %121

113:                                              ; preds = %108
  %114 = load %struct.ra_swapchain*, %struct.ra_swapchain** %3, align 8
  %115 = load %struct.priv*, %struct.priv** %5, align 8
  %116 = getelementptr inbounds %struct.priv, %struct.priv* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 8
  %118 = call i8* @qpc_to_us(%struct.ra_swapchain* %114, i32 %117)
  %119 = load %struct.vo_vsync_info*, %struct.vo_vsync_info** %4, align 8
  %120 = getelementptr inbounds %struct.vo_vsync_info, %struct.vo_vsync_info* %119, i32 0, i32 1
  store i8* %118, i8** %120, align 8
  br label %121

121:                                              ; preds = %113, %108
  %122 = load %struct.priv*, %struct.priv** %5, align 8
  %123 = getelementptr inbounds %struct.priv, %struct.priv* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 8
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %183

126:                                              ; preds = %121
  %127 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %183

130:                                              ; preds = %126
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 2
  %132 = load i32, i32* %131, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %183

134:                                              ; preds = %130
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %183

138:                                              ; preds = %134
  %139 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 3
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %183

143:                                              ; preds = %138
  %144 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 2
  %149 = load i32, i32* %148, align 4
  %150 = sub i32 %147, %149
  %151 = add i32 %145, %150
  store i32 %151, i32* %11, align 4
  %152 = load i32, i32* %7, align 4
  %153 = load i32, i32* %11, align 4
  %154 = sub i32 %152, %153
  store i32 %154, i32* %12, align 4
  %155 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 3
  %156 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = load i32, i32* %12, align 4
  %159 = load %struct.priv*, %struct.priv** %5, align 8
  %160 = getelementptr inbounds %struct.priv, %struct.priv* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 8
  %162 = mul i32 %158, %161
  %163 = add i32 %157, %162
  store i32 %163, i32* %13, align 4
  %164 = load i32, i32* %13, align 4
  %165 = load %struct.priv*, %struct.priv** %5, align 8
  %166 = getelementptr inbounds %struct.priv, %struct.priv* %165, i32 0, i32 3
  %167 = load i32, i32* %166, align 4
  %168 = icmp sge i32 %164, %167
  br i1 %168, label %169, label %182

169:                                              ; preds = %143
  %170 = call i8* (...) @mp_time_us()
  %171 = load %struct.ra_swapchain*, %struct.ra_swapchain** %3, align 8
  %172 = load i32, i32* %13, align 4
  %173 = call i8* @qpc_to_us(%struct.ra_swapchain* %171, i32 %172)
  %174 = load %struct.ra_swapchain*, %struct.ra_swapchain** %3, align 8
  %175 = call i8* @qpc_us_now(%struct.ra_swapchain* %174)
  %176 = ptrtoint i8* %173 to i64
  %177 = ptrtoint i8* %175 to i64
  %178 = sub i64 %176, %177
  %179 = getelementptr i8, i8* %170, i64 %178
  %180 = load %struct.vo_vsync_info*, %struct.vo_vsync_info** %4, align 8
  %181 = getelementptr inbounds %struct.vo_vsync_info, %struct.vo_vsync_info* %180, i32 0, i32 0
  store i8* %179, i8** %181, align 8
  br label %182

182:                                              ; preds = %169, %143
  br label %183

183:                                              ; preds = %23, %32, %50, %182, %138, %134, %130, %126, %121
  ret void
}

declare dso_local i64 @IDXGISwapChain_GetLastPresentCount(i32, i32*) #1

declare dso_local i64 @FAILED(i64) #1

declare dso_local i64 @IDXGISwapChain_GetFrameStatistics(i32, %struct.TYPE_7__*) #1

declare dso_local i8* @qpc_to_us(%struct.ra_swapchain*, i32) #1

declare dso_local i8* @mp_time_us(...) #1

declare dso_local i8* @qpc_us_now(%struct.ra_swapchain*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
