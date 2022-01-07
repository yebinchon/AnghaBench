; ModuleID = '/home/carl/AnghaBench/mpv/filters/extr_f_output_chain.c_check_in_format_change.c'
source_filename = "/home/carl/AnghaBench/mpv/filters/extr_f_output_chain.c_check_in_format_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_user_filter = type { i32, i32, i32, %struct.chain* }
%struct.chain = type { %struct.TYPE_2__, %struct.mp_user_filter*, %struct.mp_user_filter* }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }
%struct.mp_image = type { i32 }
%struct.mp_frame = type { i64, %struct.mp_image* }
%struct.mp_aframe = type { i32 }

@MP_FRAME_VIDEO = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [9 x i8] c"[%s] %s\0A\00", align 1
@MP_FRAME_AUDIO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mp_user_filter*, i64, %struct.mp_image*)* @check_in_format_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_in_format_change(%struct.mp_user_filter* %0, i64 %1, %struct.mp_image* %2) #0 {
  %4 = alloca %struct.mp_frame, align 8
  %5 = alloca %struct.mp_user_filter*, align 8
  %6 = alloca %struct.chain*, align 8
  %7 = alloca %struct.mp_image*, align 8
  %8 = alloca %struct.mp_aframe*, align 8
  %9 = bitcast %struct.mp_frame* %4 to { i64, %struct.mp_image* }*
  %10 = getelementptr inbounds { i64, %struct.mp_image* }, { i64, %struct.mp_image* }* %9, i32 0, i32 0
  store i64 %1, i64* %10, align 8
  %11 = getelementptr inbounds { i64, %struct.mp_image* }, { i64, %struct.mp_image* }* %9, i32 0, i32 1
  store %struct.mp_image* %2, %struct.mp_image** %11, align 8
  store %struct.mp_user_filter* %0, %struct.mp_user_filter** %5, align 8
  %12 = load %struct.mp_user_filter*, %struct.mp_user_filter** %5, align 8
  %13 = getelementptr inbounds %struct.mp_user_filter, %struct.mp_user_filter* %12, i32 0, i32 3
  %14 = load %struct.chain*, %struct.chain** %13, align 8
  store %struct.chain* %14, %struct.chain** %6, align 8
  %15 = getelementptr inbounds %struct.mp_frame, %struct.mp_frame* %4, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @MP_FRAME_VIDEO, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %75

19:                                               ; preds = %3
  %20 = getelementptr inbounds %struct.mp_frame, %struct.mp_frame* %4, i32 0, i32 1
  %21 = load %struct.mp_image*, %struct.mp_image** %20, align 8
  store %struct.mp_image* %21, %struct.mp_image** %7, align 8
  %22 = load %struct.mp_image*, %struct.mp_image** %7, align 8
  %23 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %22, i32 0, i32 0
  %24 = load %struct.mp_user_filter*, %struct.mp_user_filter** %5, align 8
  %25 = getelementptr inbounds %struct.mp_user_filter, %struct.mp_user_filter* %24, i32 0, i32 2
  %26 = call i32 @mp_image_params_equal(i32* %23, i32* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %74, label %28

28:                                               ; preds = %19
  %29 = load %struct.chain*, %struct.chain** %6, align 8
  %30 = load %struct.mp_user_filter*, %struct.mp_user_filter** %5, align 8
  %31 = getelementptr inbounds %struct.mp_user_filter, %struct.mp_user_filter* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.mp_image*, %struct.mp_image** %7, align 8
  %34 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %33, i32 0, i32 0
  %35 = call i32 @mp_image_params_to_str(i32* %34)
  %36 = call i32 @MP_VERBOSE(%struct.chain* %29, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %32, i32 %35)
  %37 = load %struct.mp_image*, %struct.mp_image** %7, align 8
  %38 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.mp_user_filter*, %struct.mp_user_filter** %5, align 8
  %41 = getelementptr inbounds %struct.mp_user_filter, %struct.mp_user_filter* %40, i32 0, i32 2
  store i32 %39, i32* %41, align 8
  %42 = load %struct.mp_user_filter*, %struct.mp_user_filter** %5, align 8
  %43 = load %struct.chain*, %struct.chain** %6, align 8
  %44 = getelementptr inbounds %struct.chain, %struct.chain* %43, i32 0, i32 2
  %45 = load %struct.mp_user_filter*, %struct.mp_user_filter** %44, align 8
  %46 = icmp eq %struct.mp_user_filter* %42, %45
  br i1 %46, label %47, label %56

47:                                               ; preds = %28
  %48 = load %struct.mp_image*, %struct.mp_image** %7, align 8
  %49 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.chain*, %struct.chain** %6, align 8
  %52 = getelementptr inbounds %struct.chain, %struct.chain* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 4
  store i32 %50, i32* %53, align 8
  %54 = load %struct.chain*, %struct.chain** %6, align 8
  %55 = call i32 @update_output_caps(%struct.chain* %54)
  br label %70

56:                                               ; preds = %28
  %57 = load %struct.mp_user_filter*, %struct.mp_user_filter** %5, align 8
  %58 = load %struct.chain*, %struct.chain** %6, align 8
  %59 = getelementptr inbounds %struct.chain, %struct.chain* %58, i32 0, i32 1
  %60 = load %struct.mp_user_filter*, %struct.mp_user_filter** %59, align 8
  %61 = icmp eq %struct.mp_user_filter* %57, %60
  br i1 %61, label %62, label %69

62:                                               ; preds = %56
  %63 = load %struct.mp_image*, %struct.mp_image** %7, align 8
  %64 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.chain*, %struct.chain** %6, align 8
  %67 = getelementptr inbounds %struct.chain, %struct.chain* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 3
  store i32 %65, i32* %68, align 4
  br label %69

69:                                               ; preds = %62, %56
  br label %70

70:                                               ; preds = %69, %47
  %71 = load %struct.chain*, %struct.chain** %6, align 8
  %72 = getelementptr inbounds %struct.chain, %struct.chain* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  store i32 1, i32* %73, align 8
  br label %74

74:                                               ; preds = %70, %19
  br label %75

75:                                               ; preds = %74, %3
  %76 = getelementptr inbounds %struct.mp_frame, %struct.mp_frame* %4, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @MP_FRAME_AUDIO, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %139

80:                                               ; preds = %75
  %81 = getelementptr inbounds %struct.mp_frame, %struct.mp_frame* %4, i32 0, i32 1
  %82 = load %struct.mp_image*, %struct.mp_image** %81, align 8
  %83 = bitcast %struct.mp_image* %82 to %struct.mp_aframe*
  store %struct.mp_aframe* %83, %struct.mp_aframe** %8, align 8
  %84 = load %struct.mp_aframe*, %struct.mp_aframe** %8, align 8
  %85 = bitcast %struct.mp_aframe* %84 to %struct.mp_image*
  %86 = load %struct.mp_user_filter*, %struct.mp_user_filter** %5, align 8
  %87 = getelementptr inbounds %struct.mp_user_filter, %struct.mp_user_filter* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @mp_aframe_config_equals(%struct.mp_image* %85, i32 %88)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %138, label %91

91:                                               ; preds = %80
  %92 = load %struct.chain*, %struct.chain** %6, align 8
  %93 = load %struct.mp_user_filter*, %struct.mp_user_filter** %5, align 8
  %94 = getelementptr inbounds %struct.mp_user_filter, %struct.mp_user_filter* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.mp_aframe*, %struct.mp_aframe** %8, align 8
  %97 = bitcast %struct.mp_aframe* %96 to %struct.mp_image*
  %98 = call i32 @mp_aframe_format_str(%struct.mp_image* %97)
  %99 = call i32 @MP_VERBOSE(%struct.chain* %92, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %95, i32 %98)
  %100 = load %struct.mp_user_filter*, %struct.mp_user_filter** %5, align 8
  %101 = getelementptr inbounds %struct.mp_user_filter, %struct.mp_user_filter* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.mp_aframe*, %struct.mp_aframe** %8, align 8
  %104 = bitcast %struct.mp_aframe* %103 to %struct.mp_image*
  %105 = call i32 @mp_aframe_config_copy(i32 %102, %struct.mp_image* %104)
  %106 = load %struct.mp_user_filter*, %struct.mp_user_filter** %5, align 8
  %107 = load %struct.chain*, %struct.chain** %6, align 8
  %108 = getelementptr inbounds %struct.chain, %struct.chain* %107, i32 0, i32 2
  %109 = load %struct.mp_user_filter*, %struct.mp_user_filter** %108, align 8
  %110 = icmp eq %struct.mp_user_filter* %106, %109
  br i1 %110, label %111, label %119

111:                                              ; preds = %91
  %112 = load %struct.chain*, %struct.chain** %6, align 8
  %113 = getelementptr inbounds %struct.chain, %struct.chain* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 8
  %116 = load %struct.mp_aframe*, %struct.mp_aframe** %8, align 8
  %117 = bitcast %struct.mp_aframe* %116 to %struct.mp_image*
  %118 = call i32 @mp_aframe_config_copy(i32 %115, %struct.mp_image* %117)
  br label %134

119:                                              ; preds = %91
  %120 = load %struct.mp_user_filter*, %struct.mp_user_filter** %5, align 8
  %121 = load %struct.chain*, %struct.chain** %6, align 8
  %122 = getelementptr inbounds %struct.chain, %struct.chain* %121, i32 0, i32 1
  %123 = load %struct.mp_user_filter*, %struct.mp_user_filter** %122, align 8
  %124 = icmp eq %struct.mp_user_filter* %120, %123
  br i1 %124, label %125, label %133

125:                                              ; preds = %119
  %126 = load %struct.chain*, %struct.chain** %6, align 8
  %127 = getelementptr inbounds %struct.chain, %struct.chain* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.mp_aframe*, %struct.mp_aframe** %8, align 8
  %131 = bitcast %struct.mp_aframe* %130 to %struct.mp_image*
  %132 = call i32 @mp_aframe_config_copy(i32 %129, %struct.mp_image* %131)
  br label %133

133:                                              ; preds = %125, %119
  br label %134

134:                                              ; preds = %133, %111
  %135 = load %struct.chain*, %struct.chain** %6, align 8
  %136 = getelementptr inbounds %struct.chain, %struct.chain* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %136, i32 0, i32 0
  store i32 1, i32* %137, align 8
  br label %138

138:                                              ; preds = %134, %80
  br label %139

139:                                              ; preds = %138, %75
  ret void
}

declare dso_local i32 @mp_image_params_equal(i32*, i32*) #1

declare dso_local i32 @MP_VERBOSE(%struct.chain*, i8*, i32, i32) #1

declare dso_local i32 @mp_image_params_to_str(i32*) #1

declare dso_local i32 @update_output_caps(%struct.chain*) #1

declare dso_local i32 @mp_aframe_config_equals(%struct.mp_image*, i32) #1

declare dso_local i32 @mp_aframe_format_str(%struct.mp_image*) #1

declare dso_local i32 @mp_aframe_config_copy(i32, %struct.mp_image*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
