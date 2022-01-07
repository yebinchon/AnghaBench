; ModuleID = '/home/carl/AnghaBench/mpv/filters/extr_f_decoder_wrapper.c_mp_decoder_wrapper_create.c'
source_filename = "/home/carl/AnghaBench/mpv/filters/extr_f_decoder_wrapper.c_mp_decoder_wrapper_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_decoder_wrapper = type { i32, i64, %struct.mp_filter* }
%struct.mp_filter = type { i32*, i8*, i32, %struct.priv* }
%struct.priv = type { i32, %struct.sh_stream*, i8*, %struct.mp_decoder_wrapper, %struct.TYPE_4__*, %struct.TYPE_3__*, %struct.mp_filter* }
%struct.TYPE_4__ = type { %struct.MPOpts* }
%struct.MPOpts = type { i64 }
%struct.TYPE_3__ = type { i64 }
%struct.sh_stream = type { i64, %struct.TYPE_3__* }

@decode_wrapper_filter = common dso_local global i32 0, align 4
@GLOBAL_CONFIG = common dso_local global i32 0, align 4
@MP_PIN_OUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"out\00", align 1
@STREAM_VIDEO = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"!vd\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"Container reported FPS: %f\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"FPS forced to %5.3f.\0A\00", align 1
@.str.4 = private unnamed_addr constant [49 x i8] c"Use --no-correct-pts to force FPS based timing.\0A\00", align 1
@STREAM_AUDIO = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [4 x i8] c"!ad\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mp_decoder_wrapper* @mp_decoder_wrapper_create(%struct.mp_filter* %0, %struct.sh_stream* %1) #0 {
  %3 = alloca %struct.mp_decoder_wrapper*, align 8
  %4 = alloca %struct.mp_filter*, align 8
  %5 = alloca %struct.sh_stream*, align 8
  %6 = alloca %struct.mp_filter*, align 8
  %7 = alloca %struct.priv*, align 8
  %8 = alloca %struct.mp_decoder_wrapper*, align 8
  %9 = alloca %struct.MPOpts*, align 8
  %10 = alloca %struct.mp_filter*, align 8
  store %struct.mp_filter* %0, %struct.mp_filter** %4, align 8
  store %struct.sh_stream* %1, %struct.sh_stream** %5, align 8
  %11 = load %struct.mp_filter*, %struct.mp_filter** %4, align 8
  %12 = call %struct.mp_filter* @mp_filter_create(%struct.mp_filter* %11, i32* @decode_wrapper_filter)
  store %struct.mp_filter* %12, %struct.mp_filter** %6, align 8
  %13 = load %struct.mp_filter*, %struct.mp_filter** %6, align 8
  %14 = icmp ne %struct.mp_filter* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  store %struct.mp_decoder_wrapper* null, %struct.mp_decoder_wrapper** %3, align 8
  br label %154

16:                                               ; preds = %2
  %17 = load %struct.mp_filter*, %struct.mp_filter** %6, align 8
  %18 = getelementptr inbounds %struct.mp_filter, %struct.mp_filter* %17, i32 0, i32 3
  %19 = load %struct.priv*, %struct.priv** %18, align 8
  store %struct.priv* %19, %struct.priv** %7, align 8
  %20 = load %struct.priv*, %struct.priv** %7, align 8
  %21 = getelementptr inbounds %struct.priv, %struct.priv* %20, i32 0, i32 3
  store %struct.mp_decoder_wrapper* %21, %struct.mp_decoder_wrapper** %8, align 8
  %22 = load %struct.priv*, %struct.priv** %7, align 8
  %23 = load %struct.mp_filter*, %struct.mp_filter** %6, align 8
  %24 = getelementptr inbounds %struct.mp_filter, %struct.mp_filter* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @GLOBAL_CONFIG, align 4
  %27 = call %struct.TYPE_4__* @m_config_cache_alloc(%struct.priv* %22, i32 %25, i32 %26)
  %28 = load %struct.priv*, %struct.priv** %7, align 8
  %29 = getelementptr inbounds %struct.priv, %struct.priv* %28, i32 0, i32 4
  store %struct.TYPE_4__* %27, %struct.TYPE_4__** %29, align 8
  %30 = load %struct.mp_filter*, %struct.mp_filter** %6, align 8
  %31 = getelementptr inbounds %struct.mp_filter, %struct.mp_filter* %30, i32 0, i32 1
  %32 = load i8*, i8** %31, align 8
  %33 = load %struct.priv*, %struct.priv** %7, align 8
  %34 = getelementptr inbounds %struct.priv, %struct.priv* %33, i32 0, i32 2
  store i8* %32, i8** %34, align 8
  %35 = load %struct.mp_filter*, %struct.mp_filter** %6, align 8
  %36 = load %struct.priv*, %struct.priv** %7, align 8
  %37 = getelementptr inbounds %struct.priv, %struct.priv* %36, i32 0, i32 6
  store %struct.mp_filter* %35, %struct.mp_filter** %37, align 8
  %38 = load %struct.sh_stream*, %struct.sh_stream** %5, align 8
  %39 = load %struct.priv*, %struct.priv** %7, align 8
  %40 = getelementptr inbounds %struct.priv, %struct.priv* %39, i32 0, i32 1
  store %struct.sh_stream* %38, %struct.sh_stream** %40, align 8
  %41 = load %struct.priv*, %struct.priv** %7, align 8
  %42 = getelementptr inbounds %struct.priv, %struct.priv* %41, i32 0, i32 1
  %43 = load %struct.sh_stream*, %struct.sh_stream** %42, align 8
  %44 = getelementptr inbounds %struct.sh_stream, %struct.sh_stream* %43, i32 0, i32 1
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %44, align 8
  %46 = load %struct.priv*, %struct.priv** %7, align 8
  %47 = getelementptr inbounds %struct.priv, %struct.priv* %46, i32 0, i32 5
  store %struct.TYPE_3__* %45, %struct.TYPE_3__** %47, align 8
  %48 = load %struct.mp_filter*, %struct.mp_filter** %6, align 8
  %49 = load %struct.mp_decoder_wrapper*, %struct.mp_decoder_wrapper** %8, align 8
  %50 = getelementptr inbounds %struct.mp_decoder_wrapper, %struct.mp_decoder_wrapper* %49, i32 0, i32 2
  store %struct.mp_filter* %48, %struct.mp_filter** %50, align 8
  %51 = load %struct.mp_decoder_wrapper*, %struct.mp_decoder_wrapper** %8, align 8
  %52 = getelementptr inbounds %struct.mp_decoder_wrapper, %struct.mp_decoder_wrapper* %51, i32 0, i32 0
  store i32 1, i32* %52, align 8
  %53 = load %struct.priv*, %struct.priv** %7, align 8
  %54 = getelementptr inbounds %struct.priv, %struct.priv* %53, i32 0, i32 4
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load %struct.MPOpts*, %struct.MPOpts** %56, align 8
  store %struct.MPOpts* %57, %struct.MPOpts** %9, align 8
  %58 = load %struct.mp_filter*, %struct.mp_filter** %6, align 8
  %59 = load i32, i32* @MP_PIN_OUT, align 4
  %60 = call i32 @mp_filter_add_pin(%struct.mp_filter* %58, i32 %59, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %61 = load %struct.priv*, %struct.priv** %7, align 8
  %62 = getelementptr inbounds %struct.priv, %struct.priv* %61, i32 0, i32 1
  %63 = load %struct.sh_stream*, %struct.sh_stream** %62, align 8
  %64 = getelementptr inbounds %struct.sh_stream, %struct.sh_stream* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @STREAM_VIDEO, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %112

68:                                               ; preds = %16
  %69 = load %struct.mp_filter*, %struct.mp_filter** %6, align 8
  %70 = load %struct.mp_filter*, %struct.mp_filter** %4, align 8
  %71 = getelementptr inbounds %struct.mp_filter, %struct.mp_filter* %70, i32 0, i32 1
  %72 = load i8*, i8** %71, align 8
  %73 = call i8* @mp_log_new(%struct.mp_filter* %69, i8* %72, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %74 = load %struct.mp_filter*, %struct.mp_filter** %6, align 8
  %75 = getelementptr inbounds %struct.mp_filter, %struct.mp_filter* %74, i32 0, i32 1
  store i8* %73, i8** %75, align 8
  %76 = load %struct.priv*, %struct.priv** %7, align 8
  %77 = getelementptr inbounds %struct.priv, %struct.priv* %76, i32 0, i32 2
  store i8* %73, i8** %77, align 8
  %78 = load %struct.sh_stream*, %struct.sh_stream** %5, align 8
  %79 = getelementptr inbounds %struct.sh_stream, %struct.sh_stream* %78, i32 0, i32 1
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.priv*, %struct.priv** %7, align 8
  %84 = getelementptr inbounds %struct.priv, %struct.priv* %83, i32 0, i32 3
  %85 = getelementptr inbounds %struct.mp_decoder_wrapper, %struct.mp_decoder_wrapper* %84, i32 0, i32 1
  store i64 %82, i64* %85, align 8
  %86 = load %struct.priv*, %struct.priv** %7, align 8
  %87 = load %struct.priv*, %struct.priv** %7, align 8
  %88 = getelementptr inbounds %struct.priv, %struct.priv* %87, i32 0, i32 3
  %89 = getelementptr inbounds %struct.mp_decoder_wrapper, %struct.mp_decoder_wrapper* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = call i32 @MP_VERBOSE(%struct.priv* %86, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i64 %90)
  %92 = load %struct.MPOpts*, %struct.MPOpts** %9, align 8
  %93 = getelementptr inbounds %struct.MPOpts, %struct.MPOpts* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %111

96:                                               ; preds = %68
  %97 = load %struct.MPOpts*, %struct.MPOpts** %9, align 8
  %98 = getelementptr inbounds %struct.MPOpts, %struct.MPOpts* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load %struct.priv*, %struct.priv** %7, align 8
  %101 = getelementptr inbounds %struct.priv, %struct.priv* %100, i32 0, i32 3
  %102 = getelementptr inbounds %struct.mp_decoder_wrapper, %struct.mp_decoder_wrapper* %101, i32 0, i32 1
  store i64 %99, i64* %102, align 8
  %103 = load %struct.priv*, %struct.priv** %7, align 8
  %104 = load %struct.priv*, %struct.priv** %7, align 8
  %105 = getelementptr inbounds %struct.priv, %struct.priv* %104, i32 0, i32 3
  %106 = getelementptr inbounds %struct.mp_decoder_wrapper, %struct.mp_decoder_wrapper* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = call i32 (%struct.priv*, i8*, ...) @MP_INFO(%struct.priv* %103, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i64 %107)
  %109 = load %struct.priv*, %struct.priv** %7, align 8
  %110 = call i32 (%struct.priv*, i8*, ...) @MP_INFO(%struct.priv* %109, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.4, i64 0, i64 0))
  br label %111

111:                                              ; preds = %96, %68
  br label %131

112:                                              ; preds = %16
  %113 = load %struct.priv*, %struct.priv** %7, align 8
  %114 = getelementptr inbounds %struct.priv, %struct.priv* %113, i32 0, i32 1
  %115 = load %struct.sh_stream*, %struct.sh_stream** %114, align 8
  %116 = getelementptr inbounds %struct.sh_stream, %struct.sh_stream* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* @STREAM_AUDIO, align 8
  %119 = icmp eq i64 %117, %118
  br i1 %119, label %120, label %130

120:                                              ; preds = %112
  %121 = load %struct.mp_filter*, %struct.mp_filter** %6, align 8
  %122 = load %struct.mp_filter*, %struct.mp_filter** %4, align 8
  %123 = getelementptr inbounds %struct.mp_filter, %struct.mp_filter* %122, i32 0, i32 1
  %124 = load i8*, i8** %123, align 8
  %125 = call i8* @mp_log_new(%struct.mp_filter* %121, i8* %124, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %126 = load %struct.mp_filter*, %struct.mp_filter** %6, align 8
  %127 = getelementptr inbounds %struct.mp_filter, %struct.mp_filter* %126, i32 0, i32 1
  store i8* %125, i8** %127, align 8
  %128 = load %struct.priv*, %struct.priv** %7, align 8
  %129 = getelementptr inbounds %struct.priv, %struct.priv* %128, i32 0, i32 2
  store i8* %125, i8** %129, align 8
  br label %130

130:                                              ; preds = %120, %112
  br label %131

131:                                              ; preds = %130, %111
  %132 = load %struct.mp_filter*, %struct.mp_filter** %6, align 8
  %133 = load %struct.priv*, %struct.priv** %7, align 8
  %134 = getelementptr inbounds %struct.priv, %struct.priv* %133, i32 0, i32 1
  %135 = load %struct.sh_stream*, %struct.sh_stream** %134, align 8
  %136 = call %struct.mp_filter* @mp_demux_in_create(%struct.mp_filter* %132, %struct.sh_stream* %135)
  store %struct.mp_filter* %136, %struct.mp_filter** %10, align 8
  %137 = load %struct.mp_filter*, %struct.mp_filter** %10, align 8
  %138 = icmp ne %struct.mp_filter* %137, null
  br i1 %138, label %140, label %139

139:                                              ; preds = %131
  br label %151

140:                                              ; preds = %131
  %141 = load %struct.mp_filter*, %struct.mp_filter** %10, align 8
  %142 = getelementptr inbounds %struct.mp_filter, %struct.mp_filter* %141, i32 0, i32 0
  %143 = load i32*, i32** %142, align 8
  %144 = getelementptr inbounds i32, i32* %143, i64 0
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.priv*, %struct.priv** %7, align 8
  %147 = getelementptr inbounds %struct.priv, %struct.priv* %146, i32 0, i32 0
  store i32 %145, i32* %147, align 8
  %148 = load %struct.mp_filter*, %struct.mp_filter** %6, align 8
  %149 = call i32 @reset(%struct.mp_filter* %148)
  %150 = load %struct.mp_decoder_wrapper*, %struct.mp_decoder_wrapper** %8, align 8
  store %struct.mp_decoder_wrapper* %150, %struct.mp_decoder_wrapper** %3, align 8
  br label %154

151:                                              ; preds = %139
  %152 = load %struct.mp_filter*, %struct.mp_filter** %6, align 8
  %153 = call i32 @talloc_free(%struct.mp_filter* %152)
  store %struct.mp_decoder_wrapper* null, %struct.mp_decoder_wrapper** %3, align 8
  br label %154

154:                                              ; preds = %151, %140, %15
  %155 = load %struct.mp_decoder_wrapper*, %struct.mp_decoder_wrapper** %3, align 8
  ret %struct.mp_decoder_wrapper* %155
}

declare dso_local %struct.mp_filter* @mp_filter_create(%struct.mp_filter*, i32*) #1

declare dso_local %struct.TYPE_4__* @m_config_cache_alloc(%struct.priv*, i32, i32) #1

declare dso_local i32 @mp_filter_add_pin(%struct.mp_filter*, i32, i8*) #1

declare dso_local i8* @mp_log_new(%struct.mp_filter*, i8*, i8*) #1

declare dso_local i32 @MP_VERBOSE(%struct.priv*, i8*, i64) #1

declare dso_local i32 @MP_INFO(%struct.priv*, i8*, ...) #1

declare dso_local %struct.mp_filter* @mp_demux_in_create(%struct.mp_filter*, %struct.sh_stream*) #1

declare dso_local i32 @reset(%struct.mp_filter*) #1

declare dso_local i32 @talloc_free(%struct.mp_filter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
