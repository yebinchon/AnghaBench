; ModuleID = '/home/carl/AnghaBench/mpv/filters/extr_f_hwtransfer.c_hwdownload_process.c'
source_filename = "/home/carl/AnghaBench/mpv/filters/extr_f_hwtransfer.c_hwdownload_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_filter = type { i32*, %struct.mp_hwdownload* }
%struct.mp_hwdownload = type { i32 }
%struct.mp_frame = type { i64, %struct.mp_image* }
%struct.mp_image = type { i32 }

@MP_FRAME_VIDEO = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [46 x i8] c"Could not copy hardware frame to CPU memory.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mp_filter*)* @hwdownload_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hwdownload_process(%struct.mp_filter* %0) #0 {
  %2 = alloca %struct.mp_filter*, align 8
  %3 = alloca %struct.mp_hwdownload*, align 8
  %4 = alloca %struct.mp_frame, align 8
  %5 = alloca %struct.mp_image*, align 8
  %6 = alloca %struct.mp_image*, align 8
  %7 = alloca %struct.mp_frame, align 8
  store %struct.mp_filter* %0, %struct.mp_filter** %2, align 8
  %8 = load %struct.mp_filter*, %struct.mp_filter** %2, align 8
  %9 = getelementptr inbounds %struct.mp_filter, %struct.mp_filter* %8, i32 0, i32 1
  %10 = load %struct.mp_hwdownload*, %struct.mp_hwdownload** %9, align 8
  store %struct.mp_hwdownload* %10, %struct.mp_hwdownload** %3, align 8
  %11 = load %struct.mp_filter*, %struct.mp_filter** %2, align 8
  %12 = getelementptr inbounds %struct.mp_filter, %struct.mp_filter* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.mp_filter*, %struct.mp_filter** %2, align 8
  %17 = getelementptr inbounds %struct.mp_filter, %struct.mp_filter* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @mp_pin_can_transfer_data(i32 %15, i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %1
  br label %93

24:                                               ; preds = %1
  %25 = load %struct.mp_filter*, %struct.mp_filter** %2, align 8
  %26 = getelementptr inbounds %struct.mp_filter, %struct.mp_filter* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  %29 = load i32, i32* %28, align 4
  %30 = call { i64, %struct.mp_image* } @mp_pin_out_read(i32 %29)
  %31 = bitcast %struct.mp_frame* %4 to { i64, %struct.mp_image* }*
  %32 = getelementptr inbounds { i64, %struct.mp_image* }, { i64, %struct.mp_image* }* %31, i32 0, i32 0
  %33 = extractvalue { i64, %struct.mp_image* } %30, 0
  store i64 %33, i64* %32, align 8
  %34 = getelementptr inbounds { i64, %struct.mp_image* }, { i64, %struct.mp_image* }* %31, i32 0, i32 1
  %35 = extractvalue { i64, %struct.mp_image* } %30, 1
  store %struct.mp_image* %35, %struct.mp_image** %34, align 8
  %36 = getelementptr inbounds %struct.mp_frame, %struct.mp_frame* %4, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @MP_FRAME_VIDEO, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %24
  br label %81

41:                                               ; preds = %24
  %42 = getelementptr inbounds %struct.mp_frame, %struct.mp_frame* %4, i32 0, i32 1
  %43 = load %struct.mp_image*, %struct.mp_image** %42, align 8
  store %struct.mp_image* %43, %struct.mp_image** %5, align 8
  %44 = load %struct.mp_image*, %struct.mp_image** %5, align 8
  %45 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %41
  br label %81

49:                                               ; preds = %41
  %50 = load %struct.mp_image*, %struct.mp_image** %5, align 8
  %51 = load %struct.mp_hwdownload*, %struct.mp_hwdownload** %3, align 8
  %52 = getelementptr inbounds %struct.mp_hwdownload, %struct.mp_hwdownload* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call %struct.mp_image* @mp_image_hw_download(%struct.mp_image* %50, i32 %53)
  store %struct.mp_image* %54, %struct.mp_image** %6, align 8
  %55 = load %struct.mp_image*, %struct.mp_image** %6, align 8
  %56 = icmp ne %struct.mp_image* %55, null
  br i1 %56, label %60, label %57

57:                                               ; preds = %49
  %58 = load %struct.mp_filter*, %struct.mp_filter** %2, align 8
  %59 = call i32 @MP_ERR(%struct.mp_filter* %58, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  br label %81

60:                                               ; preds = %49
  %61 = call i32 @mp_frame_unref(%struct.mp_frame* %4)
  %62 = load %struct.mp_filter*, %struct.mp_filter** %2, align 8
  %63 = getelementptr inbounds %struct.mp_filter, %struct.mp_filter* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 1
  %66 = load i32, i32* %65, align 4
  %67 = load i64, i64* @MP_FRAME_VIDEO, align 8
  %68 = load %struct.mp_image*, %struct.mp_image** %6, align 8
  %69 = call { i64, %struct.mp_image* } @MAKE_FRAME(i64 %67, %struct.mp_image* %68)
  %70 = bitcast %struct.mp_frame* %7 to { i64, %struct.mp_image* }*
  %71 = getelementptr inbounds { i64, %struct.mp_image* }, { i64, %struct.mp_image* }* %70, i32 0, i32 0
  %72 = extractvalue { i64, %struct.mp_image* } %69, 0
  store i64 %72, i64* %71, align 8
  %73 = getelementptr inbounds { i64, %struct.mp_image* }, { i64, %struct.mp_image* }* %70, i32 0, i32 1
  %74 = extractvalue { i64, %struct.mp_image* } %69, 1
  store %struct.mp_image* %74, %struct.mp_image** %73, align 8
  %75 = bitcast %struct.mp_frame* %7 to { i64, %struct.mp_image* }*
  %76 = getelementptr inbounds { i64, %struct.mp_image* }, { i64, %struct.mp_image* }* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = getelementptr inbounds { i64, %struct.mp_image* }, { i64, %struct.mp_image* }* %75, i32 0, i32 1
  %79 = load %struct.mp_image*, %struct.mp_image** %78, align 8
  %80 = call i32 @mp_pin_in_write(i32 %66, i64 %77, %struct.mp_image* %79)
  br label %93

81:                                               ; preds = %57, %48, %40
  %82 = load %struct.mp_filter*, %struct.mp_filter** %2, align 8
  %83 = getelementptr inbounds %struct.mp_filter, %struct.mp_filter* %82, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 1
  %86 = load i32, i32* %85, align 4
  %87 = bitcast %struct.mp_frame* %4 to { i64, %struct.mp_image* }*
  %88 = getelementptr inbounds { i64, %struct.mp_image* }, { i64, %struct.mp_image* }* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = getelementptr inbounds { i64, %struct.mp_image* }, { i64, %struct.mp_image* }* %87, i32 0, i32 1
  %91 = load %struct.mp_image*, %struct.mp_image** %90, align 8
  %92 = call i32 @mp_pin_in_write(i32 %86, i64 %89, %struct.mp_image* %91)
  br label %93

93:                                               ; preds = %81, %60, %23
  ret void
}

declare dso_local i32 @mp_pin_can_transfer_data(i32, i32) #1

declare dso_local { i64, %struct.mp_image* } @mp_pin_out_read(i32) #1

declare dso_local %struct.mp_image* @mp_image_hw_download(%struct.mp_image*, i32) #1

declare dso_local i32 @MP_ERR(%struct.mp_filter*, i8*) #1

declare dso_local i32 @mp_frame_unref(%struct.mp_frame*) #1

declare dso_local i32 @mp_pin_in_write(i32, i64, %struct.mp_image*) #1

declare dso_local { i64, %struct.mp_image* } @MAKE_FRAME(i64, %struct.mp_image*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
