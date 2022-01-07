; ModuleID = '/home/carl/AnghaBench/mpv/demux/extr_demux_mf.c_demux_open_mf.c'
source_filename = "/home/carl/AnghaBench/mpv/demux/extr_demux_mf.c_demux_open_mf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i32, i8*, %struct.TYPE_13__*, i32, i32 }
%struct.TYPE_13__ = type { i32, i64, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_15__ = type { i32, %struct.sh_stream*, i64, i32 }
%struct.sh_stream = type { %struct.mp_codec_params* }
%struct.mp_codec_params = type { i8*, double, i32, i64, i64 }

@.str = private unnamed_addr constant [6 x i8] c"mf://\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"mf\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"mf-fps\00", align 1
@m_option_type_double = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"mf-type\00", align 1
@m_option_type_string = common dso_local global i32 0, align 4
@STREAM_VIDEO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*, i32)* @demux_open_mf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @demux_open_mf(%struct.TYPE_16__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca double, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.sh_stream*, align 8
  %12 = alloca %struct.mp_codec_params*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 3
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = call i64 @strncmp(i64 %17, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 5)
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %49

20:                                               ; preds = %2
  %21 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i32 0, i32 3
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 2
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %24, align 8
  %26 = icmp ne %struct.TYPE_14__* %25, null
  br i1 %26, label %27, label %49

27:                                               ; preds = %20
  %28 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %28, i32 0, i32 3
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i32 0, i32 2
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @strcmp(i32 %34, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %49

37:                                               ; preds = %27
  %38 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %39 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %39, i32 0, i32 5
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %42, i32 0, i32 3
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = add nsw i64 %46, 5
  %48 = call %struct.TYPE_15__* @open_mf_pattern(%struct.TYPE_16__* %38, i32 %41, i64 %47)
  store %struct.TYPE_15__* %48, %struct.TYPE_15__** %6, align 8
  br label %69

49:                                               ; preds = %27, %20, %2
  %50 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %51 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %51, i32 0, i32 5
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %54, i32 0, i32 3
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = call %struct.TYPE_15__* @open_mf_single(%struct.TYPE_16__* %50, i32 %53, i64 %58)
  store %struct.TYPE_15__* %59, %struct.TYPE_15__** %6, align 8
  store i32 0, i32* %7, align 4
  %60 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %61 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* %7, align 4
  %65 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %65, i32 0, i32 3
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %66, align 8
  %68 = call i32 @MP_TARRAY_APPEND(%struct.TYPE_15__* %60, i32 %63, i32 %64, %struct.TYPE_13__* %67)
  br label %69

69:                                               ; preds = %49, %37
  %70 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %71 = icmp ne %struct.TYPE_15__* %70, null
  br i1 %71, label %72, label %77

72:                                               ; preds = %69
  %73 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = icmp slt i32 %75, 1
  br i1 %76, label %77, label %78

77:                                               ; preds = %72, %69
  br label %162

78:                                               ; preds = %72
  %79 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %79, i32 0, i32 4
  %81 = load i32, i32* %80, align 8
  %82 = call i32 (i32, i8*, i32*, ...) @mp_read_option_raw(i32 %81, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32* @m_option_type_double, double* %8)
  %83 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %83, i32 0, i32 4
  %85 = load i32, i32* %84, align 8
  %86 = call i32 (i32, i8*, i32*, ...) @mp_read_option_raw(i32 %85, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32* @m_option_type_string, i8** %9)
  %87 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %87, i32 0, i32 3
  %89 = load %struct.TYPE_13__*, %struct.TYPE_13__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = call i8* @mp_map_mimetype_to_video_codec(i32 %91)
  store i8* %92, i8** %10, align 8
  %93 = load i8*, i8** %10, align 8
  %94 = icmp ne i8* %93, null
  br i1 %94, label %95, label %104

95:                                               ; preds = %78
  %96 = load i8*, i8** %9, align 8
  %97 = icmp ne i8* %96, null
  br i1 %97, label %98, label %109

98:                                               ; preds = %95
  %99 = load i8*, i8** %9, align 8
  %100 = getelementptr inbounds i8, i8* %99, i64 0
  %101 = load i8, i8* %100, align 1
  %102 = sext i8 %101 to i32
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %109

104:                                              ; preds = %98, %78
  %105 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %106 = load i8*, i8** %9, align 8
  %107 = load i32, i32* %5, align 4
  %108 = call i8* @probe_format(%struct.TYPE_15__* %105, i8* %106, i32 %107)
  store i8* %108, i8** %10, align 8
  br label %109

109:                                              ; preds = %104, %98, %95
  %110 = load i8*, i8** %9, align 8
  %111 = call i32 @talloc_free(i8* %110)
  %112 = load i8*, i8** %10, align 8
  %113 = icmp ne i8* %112, null
  br i1 %113, label %115, label %114

114:                                              ; preds = %109
  br label %162

115:                                              ; preds = %109
  %116 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %117 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %116, i32 0, i32 2
  store i64 0, i64* %117, align 8
  %118 = load i32, i32* @STREAM_VIDEO, align 4
  %119 = call %struct.sh_stream* @demux_alloc_sh_stream(i32 %118)
  store %struct.sh_stream* %119, %struct.sh_stream** %11, align 8
  %120 = load %struct.sh_stream*, %struct.sh_stream** %11, align 8
  %121 = getelementptr inbounds %struct.sh_stream, %struct.sh_stream* %120, i32 0, i32 0
  %122 = load %struct.mp_codec_params*, %struct.mp_codec_params** %121, align 8
  store %struct.mp_codec_params* %122, %struct.mp_codec_params** %12, align 8
  %123 = load i8*, i8** %10, align 8
  %124 = load %struct.mp_codec_params*, %struct.mp_codec_params** %12, align 8
  %125 = getelementptr inbounds %struct.mp_codec_params, %struct.mp_codec_params* %124, i32 0, i32 0
  store i8* %123, i8** %125, align 8
  %126 = load %struct.mp_codec_params*, %struct.mp_codec_params** %12, align 8
  %127 = getelementptr inbounds %struct.mp_codec_params, %struct.mp_codec_params* %126, i32 0, i32 4
  store i64 0, i64* %127, align 8
  %128 = load %struct.mp_codec_params*, %struct.mp_codec_params** %12, align 8
  %129 = getelementptr inbounds %struct.mp_codec_params, %struct.mp_codec_params* %128, i32 0, i32 3
  store i64 0, i64* %129, align 8
  %130 = load double, double* %8, align 8
  %131 = load %struct.mp_codec_params*, %struct.mp_codec_params** %12, align 8
  %132 = getelementptr inbounds %struct.mp_codec_params, %struct.mp_codec_params* %131, i32 0, i32 1
  store double %130, double* %132, align 8
  %133 = load %struct.mp_codec_params*, %struct.mp_codec_params** %12, align 8
  %134 = getelementptr inbounds %struct.mp_codec_params, %struct.mp_codec_params* %133, i32 0, i32 2
  store i32 1, i32* %134, align 8
  %135 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %136 = load %struct.sh_stream*, %struct.sh_stream** %11, align 8
  %137 = call i32 @demux_add_sh_stream(%struct.TYPE_16__* %135, %struct.sh_stream* %136)
  %138 = load %struct.sh_stream*, %struct.sh_stream** %11, align 8
  %139 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %140 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %139, i32 0, i32 1
  store %struct.sh_stream* %138, %struct.sh_stream** %140, align 8
  %141 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %142 = bitcast %struct.TYPE_15__* %141 to i8*
  %143 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %144 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %143, i32 0, i32 2
  store i8* %142, i8** %144, align 8
  %145 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %146 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %145, i32 0, i32 0
  store i32 1, i32* %146, align 8
  %147 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %148 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = sitofp i32 %149 to double
  %151 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %152 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %151, i32 0, i32 1
  %153 = load %struct.sh_stream*, %struct.sh_stream** %152, align 8
  %154 = getelementptr inbounds %struct.sh_stream, %struct.sh_stream* %153, i32 0, i32 0
  %155 = load %struct.mp_codec_params*, %struct.mp_codec_params** %154, align 8
  %156 = getelementptr inbounds %struct.mp_codec_params, %struct.mp_codec_params* %155, i32 0, i32 1
  %157 = load double, double* %156, align 8
  %158 = fdiv double %150, %157
  %159 = fptosi double %158 to i32
  %160 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %161 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %160, i32 0, i32 1
  store i32 %159, i32* %161, align 4
  store i32 0, i32* %3, align 4
  br label %163

162:                                              ; preds = %114, %77
  store i32 -1, i32* %3, align 4
  br label %163

163:                                              ; preds = %162, %115
  %164 = load i32, i32* %3, align 4
  ret i32 %164
}

declare dso_local i64 @strncmp(i64, i8*, i32) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local %struct.TYPE_15__* @open_mf_pattern(%struct.TYPE_16__*, i32, i64) #1

declare dso_local %struct.TYPE_15__* @open_mf_single(%struct.TYPE_16__*, i32, i64) #1

declare dso_local i32 @MP_TARRAY_APPEND(%struct.TYPE_15__*, i32, i32, %struct.TYPE_13__*) #1

declare dso_local i32 @mp_read_option_raw(i32, i8*, i32*, ...) #1

declare dso_local i8* @mp_map_mimetype_to_video_codec(i32) #1

declare dso_local i8* @probe_format(%struct.TYPE_15__*, i8*, i32) #1

declare dso_local i32 @talloc_free(i8*) #1

declare dso_local %struct.sh_stream* @demux_alloc_sh_stream(i32) #1

declare dso_local i32 @demux_add_sh_stream(%struct.TYPE_16__*, %struct.sh_stream*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
