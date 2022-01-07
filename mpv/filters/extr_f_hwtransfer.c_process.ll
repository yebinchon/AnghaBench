; ModuleID = '/home/carl/AnghaBench/mpv/filters/extr_f_hwtransfer.c_process.c'
source_filename = "/home/carl/AnghaBench/mpv/filters/extr_f_hwtransfer.c_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_filter = type { i32*, %struct.priv* }
%struct.priv = type { i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.mp_frame = type { i64, %struct.mp_image* }
%struct.mp_image = type { i32, i32, i32 }

@MP_FRAME_VIDEO = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"unsupported frame type\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"non-mod 2 input frames unsupported\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"no hw upload format found\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"failed to create frame pool\0A\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"failed to upload frame\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mp_filter*)* @process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process(%struct.mp_filter* %0) #0 {
  %2 = alloca %struct.mp_filter*, align 8
  %3 = alloca %struct.priv*, align 8
  %4 = alloca %struct.mp_frame, align 8
  %5 = alloca %struct.mp_image*, align 8
  %6 = alloca %struct.mp_image*, align 8
  %7 = alloca %struct.mp_frame, align 8
  store %struct.mp_filter* %0, %struct.mp_filter** %2, align 8
  %8 = load %struct.mp_filter*, %struct.mp_filter** %2, align 8
  %9 = getelementptr inbounds %struct.mp_filter, %struct.mp_filter* %8, i32 0, i32 1
  %10 = load %struct.priv*, %struct.priv** %9, align 8
  store %struct.priv* %10, %struct.priv** %3, align 8
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
  br label %168

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
  %36 = bitcast %struct.mp_frame* %4 to { i64, %struct.mp_image* }*
  %37 = getelementptr inbounds { i64, %struct.mp_image* }, { i64, %struct.mp_image* }* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = getelementptr inbounds { i64, %struct.mp_image* }, { i64, %struct.mp_image* }* %36, i32 0, i32 1
  %40 = load %struct.mp_image*, %struct.mp_image** %39, align 8
  %41 = call i64 @mp_frame_is_signaling(i64 %38, %struct.mp_image* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %55

43:                                               ; preds = %24
  %44 = load %struct.mp_filter*, %struct.mp_filter** %2, align 8
  %45 = getelementptr inbounds %struct.mp_filter, %struct.mp_filter* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 1
  %48 = load i32, i32* %47, align 4
  %49 = bitcast %struct.mp_frame* %4 to { i64, %struct.mp_image* }*
  %50 = getelementptr inbounds { i64, %struct.mp_image* }, { i64, %struct.mp_image* }* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = getelementptr inbounds { i64, %struct.mp_image* }, { i64, %struct.mp_image* }* %49, i32 0, i32 1
  %53 = load %struct.mp_image*, %struct.mp_image** %52, align 8
  %54 = call i32 @mp_pin_in_write(i32 %48, i64 %51, %struct.mp_image* %53)
  br label %168

55:                                               ; preds = %24
  %56 = getelementptr inbounds %struct.mp_frame, %struct.mp_frame* %4, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @MP_FRAME_VIDEO, align 8
  %59 = icmp ne i64 %57, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %55
  %61 = load %struct.mp_filter*, %struct.mp_filter** %2, align 8
  %62 = call i32 @MP_ERR(%struct.mp_filter* %61, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %162

63:                                               ; preds = %55
  %64 = getelementptr inbounds %struct.mp_frame, %struct.mp_frame* %4, i32 0, i32 1
  %65 = load %struct.mp_image*, %struct.mp_image** %64, align 8
  store %struct.mp_image* %65, %struct.mp_image** %5, align 8
  %66 = load %struct.mp_image*, %struct.mp_image** %5, align 8
  %67 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = call i64 @IMGFMT_IS_HWACCEL(i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %83

71:                                               ; preds = %63
  %72 = load %struct.mp_filter*, %struct.mp_filter** %2, align 8
  %73 = getelementptr inbounds %struct.mp_filter, %struct.mp_filter* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 1
  %76 = load i32, i32* %75, align 4
  %77 = bitcast %struct.mp_frame* %4 to { i64, %struct.mp_image* }*
  %78 = getelementptr inbounds { i64, %struct.mp_image* }, { i64, %struct.mp_image* }* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = getelementptr inbounds { i64, %struct.mp_image* }, { i64, %struct.mp_image* }* %77, i32 0, i32 1
  %81 = load %struct.mp_image*, %struct.mp_image** %80, align 8
  %82 = call i32 @mp_pin_in_write(i32 %76, i64 %79, %struct.mp_image* %81)
  br label %168

83:                                               ; preds = %63
  %84 = load %struct.mp_image*, %struct.mp_image** %5, align 8
  %85 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = srem i32 %86, 2
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %95, label %89

89:                                               ; preds = %83
  %90 = load %struct.mp_image*, %struct.mp_image** %5, align 8
  %91 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = srem i32 %92, 2
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %89, %83
  %96 = load %struct.mp_filter*, %struct.mp_filter** %2, align 8
  %97 = call i32 @MP_ERR(%struct.mp_filter* %96, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  br label %162

98:                                               ; preds = %89
  %99 = load %struct.priv*, %struct.priv** %3, align 8
  %100 = load %struct.mp_image*, %struct.mp_image** %5, align 8
  %101 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @update_format_decision(%struct.priv* %99, i32 %102)
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %108, label %105

105:                                              ; preds = %98
  %106 = load %struct.mp_filter*, %struct.mp_filter** %2, align 8
  %107 = call i32 @MP_ERR(%struct.mp_filter* %106, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  br label %162

108:                                              ; preds = %98
  %109 = load %struct.priv*, %struct.priv** %3, align 8
  %110 = getelementptr inbounds %struct.priv, %struct.priv* %109, i32 0, i32 0
  %111 = load %struct.priv*, %struct.priv** %3, align 8
  %112 = getelementptr inbounds %struct.priv, %struct.priv* %111, i32 0, i32 3
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.priv*, %struct.priv** %3, align 8
  %115 = getelementptr inbounds %struct.priv, %struct.priv* %114, i32 0, i32 2
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.priv*, %struct.priv** %3, align 8
  %119 = getelementptr inbounds %struct.priv, %struct.priv* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.mp_image*, %struct.mp_image** %5, align 8
  %122 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.mp_image*, %struct.mp_image** %5, align 8
  %125 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @mp_update_av_hw_frames_pool(i32* %110, i32 %113, i32 %117, i32 %120, i32 %123, i32 %126)
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %132, label %129

129:                                              ; preds = %108
  %130 = load %struct.mp_filter*, %struct.mp_filter** %2, align 8
  %131 = call i32 @MP_ERR(%struct.mp_filter* %130, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  br label %162

132:                                              ; preds = %108
  %133 = load %struct.priv*, %struct.priv** %3, align 8
  %134 = getelementptr inbounds %struct.priv, %struct.priv* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.mp_image*, %struct.mp_image** %5, align 8
  %137 = call %struct.mp_image* @mp_av_pool_image_hw_upload(i32 %135, %struct.mp_image* %136)
  store %struct.mp_image* %137, %struct.mp_image** %6, align 8
  %138 = load %struct.mp_image*, %struct.mp_image** %6, align 8
  %139 = icmp ne %struct.mp_image* %138, null
  br i1 %139, label %141, label %140

140:                                              ; preds = %132
  br label %162

141:                                              ; preds = %132
  %142 = call i32 @mp_frame_unref(%struct.mp_frame* %4)
  %143 = load %struct.mp_filter*, %struct.mp_filter** %2, align 8
  %144 = getelementptr inbounds %struct.mp_filter, %struct.mp_filter* %143, i32 0, i32 0
  %145 = load i32*, i32** %144, align 8
  %146 = getelementptr inbounds i32, i32* %145, i64 1
  %147 = load i32, i32* %146, align 4
  %148 = load i64, i64* @MP_FRAME_VIDEO, align 8
  %149 = load %struct.mp_image*, %struct.mp_image** %6, align 8
  %150 = call { i64, %struct.mp_image* } @MAKE_FRAME(i64 %148, %struct.mp_image* %149)
  %151 = bitcast %struct.mp_frame* %7 to { i64, %struct.mp_image* }*
  %152 = getelementptr inbounds { i64, %struct.mp_image* }, { i64, %struct.mp_image* }* %151, i32 0, i32 0
  %153 = extractvalue { i64, %struct.mp_image* } %150, 0
  store i64 %153, i64* %152, align 8
  %154 = getelementptr inbounds { i64, %struct.mp_image* }, { i64, %struct.mp_image* }* %151, i32 0, i32 1
  %155 = extractvalue { i64, %struct.mp_image* } %150, 1
  store %struct.mp_image* %155, %struct.mp_image** %154, align 8
  %156 = bitcast %struct.mp_frame* %7 to { i64, %struct.mp_image* }*
  %157 = getelementptr inbounds { i64, %struct.mp_image* }, { i64, %struct.mp_image* }* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = getelementptr inbounds { i64, %struct.mp_image* }, { i64, %struct.mp_image* }* %156, i32 0, i32 1
  %160 = load %struct.mp_image*, %struct.mp_image** %159, align 8
  %161 = call i32 @mp_pin_in_write(i32 %147, i64 %158, %struct.mp_image* %160)
  br label %168

162:                                              ; preds = %140, %129, %105, %95, %60
  %163 = call i32 @mp_frame_unref(%struct.mp_frame* %4)
  %164 = load %struct.mp_filter*, %struct.mp_filter** %2, align 8
  %165 = call i32 @MP_ERR(%struct.mp_filter* %164, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  %166 = load %struct.mp_filter*, %struct.mp_filter** %2, align 8
  %167 = call i32 @mp_filter_internal_mark_failed(%struct.mp_filter* %166)
  br label %168

168:                                              ; preds = %162, %141, %71, %43, %23
  ret void
}

declare dso_local i32 @mp_pin_can_transfer_data(i32, i32) #1

declare dso_local { i64, %struct.mp_image* } @mp_pin_out_read(i32) #1

declare dso_local i64 @mp_frame_is_signaling(i64, %struct.mp_image*) #1

declare dso_local i32 @mp_pin_in_write(i32, i64, %struct.mp_image*) #1

declare dso_local i32 @MP_ERR(%struct.mp_filter*, i8*) #1

declare dso_local i64 @IMGFMT_IS_HWACCEL(i32) #1

declare dso_local i32 @update_format_decision(%struct.priv*, i32) #1

declare dso_local i32 @mp_update_av_hw_frames_pool(i32*, i32, i32, i32, i32, i32) #1

declare dso_local %struct.mp_image* @mp_av_pool_image_hw_upload(i32, %struct.mp_image*) #1

declare dso_local i32 @mp_frame_unref(%struct.mp_frame*) #1

declare dso_local { i64, %struct.mp_image* } @MAKE_FRAME(i64, %struct.mp_image*) #1

declare dso_local i32 @mp_filter_internal_mark_failed(%struct.mp_filter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
