; ModuleID = '/home/carl/AnghaBench/mpv/video/decode/extr_vd_lavc.c_hwdec_create_dev.c'
source_filename = "/home/carl/AnghaBench/mpv/video/decode/extr_vd_lavc.c_hwdec_create_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_filter = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.hwdec_info = type { i32, i64 }
%struct.hwcontext_fns = type { i32* (i32, i32, %struct.hwcontext_create_dev_params*)* }
%struct.hwcontext_create_dev_params = type opaque
%struct.hwcontext_create_dev_params.0 = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.mp_filter*, %struct.hwdec_info*, i32)* @hwdec_create_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @hwdec_create_dev(%struct.mp_filter* %0, %struct.hwdec_info* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.mp_filter*, align 8
  %6 = alloca %struct.hwdec_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_2__*, align 8
  %9 = alloca %struct.hwcontext_fns*, align 8
  %10 = alloca %struct.hwcontext_create_dev_params.0, align 4
  %11 = alloca i32*, align 8
  store %struct.mp_filter* %0, %struct.mp_filter** %5, align 8
  store %struct.hwdec_info* %1, %struct.hwdec_info** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.mp_filter*, %struct.mp_filter** %5, align 8
  %13 = getelementptr inbounds %struct.mp_filter, %struct.mp_filter* %12, i32 0, i32 2
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  store %struct.TYPE_2__* %14, %struct.TYPE_2__** %8, align 8
  %15 = load %struct.hwdec_info*, %struct.hwdec_info** %6, align 8
  %16 = getelementptr inbounds %struct.hwdec_info, %struct.hwdec_info* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @assert(i32 %17)
  %19 = load %struct.hwdec_info*, %struct.hwdec_info** %6, align 8
  %20 = getelementptr inbounds %struct.hwdec_info, %struct.hwdec_info* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %55

23:                                               ; preds = %3
  %24 = load %struct.hwdec_info*, %struct.hwdec_info** %6, align 8
  %25 = getelementptr inbounds %struct.hwdec_info, %struct.hwdec_info* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call %struct.hwcontext_fns* @hwdec_get_hwcontext_fns(i32 %26)
  store %struct.hwcontext_fns* %27, %struct.hwcontext_fns** %9, align 8
  %28 = load %struct.hwcontext_fns*, %struct.hwcontext_fns** %9, align 8
  %29 = icmp ne %struct.hwcontext_fns* %28, null
  br i1 %29, label %30, label %49

30:                                               ; preds = %23
  %31 = load %struct.hwcontext_fns*, %struct.hwcontext_fns** %9, align 8
  %32 = getelementptr inbounds %struct.hwcontext_fns, %struct.hwcontext_fns* %31, i32 0, i32 0
  %33 = load i32* (i32, i32, %struct.hwcontext_create_dev_params*)*, i32* (i32, i32, %struct.hwcontext_create_dev_params*)** %32, align 8
  %34 = icmp ne i32* (i32, i32, %struct.hwcontext_create_dev_params*)* %33, null
  br i1 %34, label %35, label %49

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.hwcontext_create_dev_params.0, %struct.hwcontext_create_dev_params.0* %10, i32 0, i32 0
  %37 = load i32, i32* %7, align 4
  store i32 %37, i32* %36, align 4
  %38 = load %struct.hwcontext_fns*, %struct.hwcontext_fns** %9, align 8
  %39 = getelementptr inbounds %struct.hwcontext_fns, %struct.hwcontext_fns* %38, i32 0, i32 0
  %40 = load i32* (i32, i32, %struct.hwcontext_create_dev_params*)*, i32* (i32, i32, %struct.hwcontext_create_dev_params*)** %39, align 8
  %41 = load %struct.mp_filter*, %struct.mp_filter** %5, align 8
  %42 = getelementptr inbounds %struct.mp_filter, %struct.mp_filter* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.mp_filter*, %struct.mp_filter** %5, align 8
  %45 = getelementptr inbounds %struct.mp_filter, %struct.mp_filter* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = bitcast %struct.hwcontext_create_dev_params.0* %10 to %struct.hwcontext_create_dev_params*
  %48 = call i32* %40(i32 %43, i32 %46, %struct.hwcontext_create_dev_params* %47)
  store i32* %48, i32** %4, align 8
  br label %74

49:                                               ; preds = %30, %23
  store i32* null, i32** %11, align 8
  %50 = load %struct.hwdec_info*, %struct.hwdec_info** %6, align 8
  %51 = getelementptr inbounds %struct.hwdec_info, %struct.hwdec_info* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @av_hwdevice_ctx_create(i32** %11, i32 %52, i32* null, i32* null, i32 0)
  %54 = load i32*, i32** %11, align 8
  store i32* %54, i32** %4, align 8
  br label %74

55:                                               ; preds = %3
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %72

60:                                               ; preds = %55
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = call i32 @hwdec_devices_request_all(i64 %63)
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.hwdec_info*, %struct.hwdec_info** %6, align 8
  %69 = getelementptr inbounds %struct.hwdec_info, %struct.hwdec_info* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = call i32* @hwdec_devices_get_lavc(i64 %67, i32 %70)
  store i32* %71, i32** %4, align 8
  br label %74

72:                                               ; preds = %55
  br label %73

73:                                               ; preds = %72
  store i32* null, i32** %4, align 8
  br label %74

74:                                               ; preds = %73, %60, %49, %35
  %75 = load i32*, i32** %4, align 8
  ret i32* %75
}

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.hwcontext_fns* @hwdec_get_hwcontext_fns(i32) #1

declare dso_local i32 @av_hwdevice_ctx_create(i32**, i32, i32*, i32*, i32) #1

declare dso_local i32 @hwdec_devices_request_all(i64) #1

declare dso_local i32* @hwdec_devices_get_lavc(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
