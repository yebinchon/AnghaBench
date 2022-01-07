; ModuleID = '/home/carl/AnghaBench/mpv/video/extr_vdpau.c_free_device_ref.c'
source_filename = "/home/carl/AnghaBench/mpv/video/extr_vdpau.c_free_device_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.AVHWDeviceContext = type { %struct.mp_vdpau_ctx* }
%struct.mp_vdpau_ctx = type { i64, i64, i32, i32, i32, i64, %struct.TYPE_2__*, %struct.vdp_functions }
%struct.TYPE_2__ = type { i64, i64, i32 }
%struct.vdp_functions = type { i32 (i64)*, i32 (i64)*, i32 (i64)* }

@MAX_VIDEO_SURFACES = common dso_local global i32 0, align 4
@VDP_INVALID_HANDLE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [45 x i8] c"Error when calling vdp_video_surface_destroy\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"Error when calling vdp_output_surface_destroy\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"Error when calling vdp_device_destroy\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.AVHWDeviceContext*)* @free_device_ref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_device_ref(%struct.AVHWDeviceContext* %0) #0 {
  %2 = alloca %struct.AVHWDeviceContext*, align 8
  %3 = alloca %struct.mp_vdpau_ctx*, align 8
  %4 = alloca %struct.vdp_functions*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.AVHWDeviceContext* %0, %struct.AVHWDeviceContext** %2, align 8
  %7 = load %struct.AVHWDeviceContext*, %struct.AVHWDeviceContext** %2, align 8
  %8 = getelementptr inbounds %struct.AVHWDeviceContext, %struct.AVHWDeviceContext* %7, i32 0, i32 0
  %9 = load %struct.mp_vdpau_ctx*, %struct.mp_vdpau_ctx** %8, align 8
  store %struct.mp_vdpau_ctx* %9, %struct.mp_vdpau_ctx** %3, align 8
  %10 = load %struct.mp_vdpau_ctx*, %struct.mp_vdpau_ctx** %3, align 8
  %11 = getelementptr inbounds %struct.mp_vdpau_ctx, %struct.mp_vdpau_ctx* %10, i32 0, i32 7
  store %struct.vdp_functions* %11, %struct.vdp_functions** %4, align 8
  store i32 0, i32* %6, align 4
  br label %12

12:                                               ; preds = %81, %1
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @MAX_VIDEO_SURFACES, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %84

16:                                               ; preds = %12
  %17 = load %struct.mp_vdpau_ctx*, %struct.mp_vdpau_ctx** %3, align 8
  %18 = getelementptr inbounds %struct.mp_vdpau_ctx, %struct.mp_vdpau_ctx* %17, i32 0, i32 6
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = load i32, i32* %6, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  %28 = call i32 @assert(i32 %27)
  %29 = load %struct.mp_vdpau_ctx*, %struct.mp_vdpau_ctx** %3, align 8
  %30 = getelementptr inbounds %struct.mp_vdpau_ctx, %struct.mp_vdpau_ctx* %29, i32 0, i32 6
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = load i32, i32* %6, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @VDP_INVALID_HANDLE, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %54

39:                                               ; preds = %16
  %40 = load %struct.vdp_functions*, %struct.vdp_functions** %4, align 8
  %41 = getelementptr inbounds %struct.vdp_functions, %struct.vdp_functions* %40, i32 0, i32 2
  %42 = load i32 (i64)*, i32 (i64)** %41, align 8
  %43 = load %struct.mp_vdpau_ctx*, %struct.mp_vdpau_ctx** %3, align 8
  %44 = getelementptr inbounds %struct.mp_vdpau_ctx, %struct.mp_vdpau_ctx* %43, i32 0, i32 6
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = load i32, i32* %6, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = call i32 %42(i64 %50)
  store i32 %51, i32* %5, align 4
  %52 = load %struct.mp_vdpau_ctx*, %struct.mp_vdpau_ctx** %3, align 8
  %53 = call i32 @CHECK_VDP_WARNING(%struct.mp_vdpau_ctx* %52, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  br label %54

54:                                               ; preds = %39, %16
  %55 = load %struct.mp_vdpau_ctx*, %struct.mp_vdpau_ctx** %3, align 8
  %56 = getelementptr inbounds %struct.mp_vdpau_ctx, %struct.mp_vdpau_ctx* %55, i32 0, i32 6
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = load i32, i32* %6, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @VDP_INVALID_HANDLE, align 8
  %64 = icmp ne i64 %62, %63
  br i1 %64, label %65, label %80

65:                                               ; preds = %54
  %66 = load %struct.vdp_functions*, %struct.vdp_functions** %4, align 8
  %67 = getelementptr inbounds %struct.vdp_functions, %struct.vdp_functions* %66, i32 0, i32 1
  %68 = load i32 (i64)*, i32 (i64)** %67, align 8
  %69 = load %struct.mp_vdpau_ctx*, %struct.mp_vdpau_ctx** %3, align 8
  %70 = getelementptr inbounds %struct.mp_vdpau_ctx, %struct.mp_vdpau_ctx* %69, i32 0, i32 6
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %70, align 8
  %72 = load i32, i32* %6, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = call i32 %68(i64 %76)
  store i32 %77, i32* %5, align 4
  %78 = load %struct.mp_vdpau_ctx*, %struct.mp_vdpau_ctx** %3, align 8
  %79 = call i32 @CHECK_VDP_WARNING(%struct.mp_vdpau_ctx* %78, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  br label %80

80:                                               ; preds = %65, %54
  br label %81

81:                                               ; preds = %80
  %82 = load i32, i32* %6, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %6, align 4
  br label %12

84:                                               ; preds = %12
  %85 = load %struct.mp_vdpau_ctx*, %struct.mp_vdpau_ctx** %3, align 8
  %86 = getelementptr inbounds %struct.mp_vdpau_ctx, %struct.mp_vdpau_ctx* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @VDP_INVALID_HANDLE, align 8
  %89 = icmp ne i64 %87, %88
  br i1 %89, label %90, label %100

90:                                               ; preds = %84
  %91 = load %struct.vdp_functions*, %struct.vdp_functions** %4, align 8
  %92 = getelementptr inbounds %struct.vdp_functions, %struct.vdp_functions* %91, i32 0, i32 1
  %93 = load i32 (i64)*, i32 (i64)** %92, align 8
  %94 = load %struct.mp_vdpau_ctx*, %struct.mp_vdpau_ctx** %3, align 8
  %95 = getelementptr inbounds %struct.mp_vdpau_ctx, %struct.mp_vdpau_ctx* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = call i32 %93(i64 %96)
  store i32 %97, i32* %5, align 4
  %98 = load %struct.mp_vdpau_ctx*, %struct.mp_vdpau_ctx** %3, align 8
  %99 = call i32 @CHECK_VDP_WARNING(%struct.mp_vdpau_ctx* %98, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  br label %100

100:                                              ; preds = %90, %84
  %101 = load %struct.vdp_functions*, %struct.vdp_functions** %4, align 8
  %102 = getelementptr inbounds %struct.vdp_functions, %struct.vdp_functions* %101, i32 0, i32 0
  %103 = load i32 (i64)*, i32 (i64)** %102, align 8
  %104 = icmp ne i32 (i64)* %103, null
  br i1 %104, label %105, label %121

105:                                              ; preds = %100
  %106 = load %struct.mp_vdpau_ctx*, %struct.mp_vdpau_ctx** %3, align 8
  %107 = getelementptr inbounds %struct.mp_vdpau_ctx, %struct.mp_vdpau_ctx* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @VDP_INVALID_HANDLE, align 8
  %110 = icmp ne i64 %108, %109
  br i1 %110, label %111, label %121

111:                                              ; preds = %105
  %112 = load %struct.vdp_functions*, %struct.vdp_functions** %4, align 8
  %113 = getelementptr inbounds %struct.vdp_functions, %struct.vdp_functions* %112, i32 0, i32 0
  %114 = load i32 (i64)*, i32 (i64)** %113, align 8
  %115 = load %struct.mp_vdpau_ctx*, %struct.mp_vdpau_ctx** %3, align 8
  %116 = getelementptr inbounds %struct.mp_vdpau_ctx, %struct.mp_vdpau_ctx* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = call i32 %114(i64 %117)
  store i32 %118, i32* %5, align 4
  %119 = load %struct.mp_vdpau_ctx*, %struct.mp_vdpau_ctx** %3, align 8
  %120 = call i32 @CHECK_VDP_WARNING(%struct.mp_vdpau_ctx* %119, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  br label %121

121:                                              ; preds = %111, %105, %100
  %122 = load %struct.mp_vdpau_ctx*, %struct.mp_vdpau_ctx** %3, align 8
  %123 = getelementptr inbounds %struct.mp_vdpau_ctx, %struct.mp_vdpau_ctx* %122, i32 0, i32 5
  %124 = load i64, i64* %123, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %131

126:                                              ; preds = %121
  %127 = load %struct.mp_vdpau_ctx*, %struct.mp_vdpau_ctx** %3, align 8
  %128 = getelementptr inbounds %struct.mp_vdpau_ctx, %struct.mp_vdpau_ctx* %127, i32 0, i32 4
  %129 = load i32, i32* %128, align 8
  %130 = call i32 @XCloseDisplay(i32 %129)
  br label %131

131:                                              ; preds = %126, %121
  %132 = load %struct.mp_vdpau_ctx*, %struct.mp_vdpau_ctx** %3, align 8
  %133 = getelementptr inbounds %struct.mp_vdpau_ctx, %struct.mp_vdpau_ctx* %132, i32 0, i32 3
  %134 = call i32 @pthread_mutex_destroy(i32* %133)
  %135 = load %struct.mp_vdpau_ctx*, %struct.mp_vdpau_ctx** %3, align 8
  %136 = getelementptr inbounds %struct.mp_vdpau_ctx, %struct.mp_vdpau_ctx* %135, i32 0, i32 2
  %137 = call i32 @pthread_mutex_destroy(i32* %136)
  %138 = load %struct.mp_vdpau_ctx*, %struct.mp_vdpau_ctx** %3, align 8
  %139 = call i32 @talloc_free(%struct.mp_vdpau_ctx* %138)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @CHECK_VDP_WARNING(%struct.mp_vdpau_ctx*, i8*) #1

declare dso_local i32 @XCloseDisplay(i32) #1

declare dso_local i32 @pthread_mutex_destroy(i32*) #1

declare dso_local i32 @talloc_free(%struct.mp_vdpau_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
