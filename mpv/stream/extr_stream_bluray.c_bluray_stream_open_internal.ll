; ModuleID = '/home/carl/AnghaBench/mpv/stream/extr_stream_bluray.c_bluray_stream_open_internal.c'
source_filename = "/home/carl/AnghaBench/mpv/stream/extr_stream_bluray.c_bluray_stream_open_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i8*, %struct.bluray_priv_s*, i32, i32, i32, i32, i32 }
%struct.bluray_priv_s = type { i8*, i32, i32, i32, i64, i32* }
%struct.TYPE_13__ = type { i32, i32 }

@.str = private unnamed_addr constant [14 x i8] c"bluray-device\00", align 1
@m_option_type_string = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"No Blu-ray device/location was specified ...\0A\00", align 1
@STREAM_UNSUPPORTED = common dso_local global i32 0, align 4
@MSGL_DEBUG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"Couldn't open Blu-ray device: %s\0A\00", align 1
@BLURAY_DEFAULT_TITLE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [39 x i8] c"BluRay menu support has been removed.\0A\00", align 1
@STREAM_ERROR = common dso_local global i32 0, align 4
@TITLES_RELEVANT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [47 x i8] c"Can't find any Blu-ray-compatible title here.\0A\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"List of available titles:\0A\00", align 1
@.str.6 = private unnamed_addr constant [45 x i8] c"idx: %3d duration: %s (playlist: %05d.mpls)\0A\00", align 1
@bluray_stream_fill_buffer = common dso_local global i32 0, align 4
@bluray_stream_close = common dso_local global i32 0, align 4
@bluray_stream_control = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [6 x i8] c"+disc\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"Blu-ray successfully opened.\0A\00", align 1
@STREAM_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*)* @bluray_stream_open_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bluray_stream_open_internal(%struct.TYPE_12__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca %struct.bluray_priv_s*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_13__*, align 8
  %11 = alloca i8*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 1
  %14 = load %struct.bluray_priv_s*, %struct.bluray_priv_s** %13, align 8
  store %struct.bluray_priv_s* %14, %struct.bluray_priv_s** %4, align 8
  store i8* null, i8** %5, align 8
  %15 = load %struct.bluray_priv_s*, %struct.bluray_priv_s** %4, align 8
  %16 = getelementptr inbounds %struct.bluray_priv_s, %struct.bluray_priv_s* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %31

19:                                               ; preds = %1
  %20 = load %struct.bluray_priv_s*, %struct.bluray_priv_s** %4, align 8
  %21 = getelementptr inbounds %struct.bluray_priv_s, %struct.bluray_priv_s* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 0
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %19
  %28 = load %struct.bluray_priv_s*, %struct.bluray_priv_s** %4, align 8
  %29 = getelementptr inbounds %struct.bluray_priv_s, %struct.bluray_priv_s* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  store i8* %30, i8** %5, align 8
  br label %36

31:                                               ; preds = %19, %1
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 6
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @mp_read_option_raw(i32 %34, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32* @m_option_type_string, i8** %5)
  br label %36

36:                                               ; preds = %31, %27
  %37 = load i8*, i8** %5, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %39, label %44

39:                                               ; preds = %36
  %40 = load i8*, i8** %5, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 0
  %42 = load i8, i8* %41, align 1
  %43 = icmp ne i8 %42, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %39, %36
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %46 = call i32 (%struct.TYPE_12__*, i8*, ...) @MP_ERR(%struct.TYPE_12__* %45, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  %47 = load i32, i32* @STREAM_UNSUPPORTED, align 4
  store i32 %47, i32* %2, align 4
  br label %179

48:                                               ; preds = %39
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 5
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @MSGL_DEBUG, align 4
  %53 = call i32 @mp_msg_test(i32 %51, i32 %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %57, label %55

55:                                               ; preds = %48
  %56 = call i32 @bd_set_debug_mask(i32 0)
  br label %57

57:                                               ; preds = %55, %48
  %58 = load i8*, i8** %5, align 8
  %59 = call i32* @bd_open(i8* %58, i32* null)
  store i32* %59, i32** %6, align 8
  %60 = load i32*, i32** %6, align 8
  %61 = icmp ne i32* %60, null
  br i1 %61, label %67, label %62

62:                                               ; preds = %57
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %64 = load i8*, i8** %5, align 8
  %65 = call i32 (%struct.TYPE_12__*, i8*, ...) @MP_ERR(%struct.TYPE_12__* %63, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i8* %64)
  %66 = load i32, i32* @STREAM_UNSUPPORTED, align 4
  store i32 %66, i32* %2, align 4
  br label %179

67:                                               ; preds = %57
  %68 = load i32*, i32** %6, align 8
  %69 = load %struct.bluray_priv_s*, %struct.bluray_priv_s** %4, align 8
  %70 = getelementptr inbounds %struct.bluray_priv_s, %struct.bluray_priv_s* %69, i32 0, i32 5
  store i32* %68, i32** %70, align 8
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %72 = call i32 @check_disc_info(%struct.TYPE_12__* %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %78, label %74

74:                                               ; preds = %67
  %75 = load %struct.bluray_priv_s*, %struct.bluray_priv_s** %4, align 8
  %76 = call i32 @destruct(%struct.bluray_priv_s* %75)
  %77 = load i32, i32* @STREAM_UNSUPPORTED, align 4
  store i32 %77, i32* %2, align 4
  br label %179

78:                                               ; preds = %67
  %79 = load i32, i32* @BLURAY_DEFAULT_TITLE, align 4
  store i32 %79, i32* %7, align 4
  %80 = load %struct.bluray_priv_s*, %struct.bluray_priv_s** %4, align 8
  %81 = getelementptr inbounds %struct.bluray_priv_s, %struct.bluray_priv_s* %80, i32 0, i32 4
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %78
  %85 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %86 = call i32 @MP_FATAL(%struct.TYPE_12__* %85, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0))
  %87 = load i32, i32* @STREAM_ERROR, align 4
  store i32 %87, i32* %2, align 4
  br label %179

88:                                               ; preds = %78
  %89 = load i32*, i32** %6, align 8
  %90 = load i32, i32* @TITLES_RELEVANT, align 4
  %91 = call i32 @bd_get_titles(i32* %89, i32 %90, i32 0)
  %92 = load %struct.bluray_priv_s*, %struct.bluray_priv_s** %4, align 8
  %93 = getelementptr inbounds %struct.bluray_priv_s, %struct.bluray_priv_s* %92, i32 0, i32 1
  store i32 %91, i32* %93, align 8
  %94 = load %struct.bluray_priv_s*, %struct.bluray_priv_s** %4, align 8
  %95 = getelementptr inbounds %struct.bluray_priv_s, %struct.bluray_priv_s* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %104, label %98

98:                                               ; preds = %88
  %99 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %100 = call i32 (%struct.TYPE_12__*, i8*, ...) @MP_ERR(%struct.TYPE_12__* %99, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0))
  %101 = load %struct.bluray_priv_s*, %struct.bluray_priv_s** %4, align 8
  %102 = call i32 @destruct(%struct.bluray_priv_s* %101)
  %103 = load i32, i32* @STREAM_UNSUPPORTED, align 4
  store i32 %103, i32* %2, align 4
  br label %179

104:                                              ; preds = %88
  %105 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %106 = call i32 (%struct.TYPE_12__*, i8*, ...) @MP_INFO(%struct.TYPE_12__* %105, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %107

107:                                              ; preds = %148, %104
  %108 = load i32, i32* %9, align 4
  %109 = load %struct.bluray_priv_s*, %struct.bluray_priv_s** %4, align 8
  %110 = getelementptr inbounds %struct.bluray_priv_s, %struct.bluray_priv_s* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = icmp slt i32 %108, %111
  br i1 %112, label %113, label %151

113:                                              ; preds = %107
  %114 = load i32*, i32** %6, align 8
  %115 = load i32, i32* %9, align 4
  %116 = call %struct.TYPE_13__* @bd_get_title_info(i32* %114, i32 %115, i32 0)
  store %struct.TYPE_13__* %116, %struct.TYPE_13__** %10, align 8
  %117 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %118 = icmp ne %struct.TYPE_13__* %117, null
  br i1 %118, label %120, label %119

119:                                              ; preds = %113
  br label %148

120:                                              ; preds = %113
  %121 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %122 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = sdiv i32 %123, 90000
  %125 = call i8* @mp_format_time(i32 %124, i32 0)
  store i8* %125, i8** %11, align 8
  %126 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %127 = load i32, i32* %9, align 4
  %128 = load i8*, i8** %11, align 8
  %129 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %130 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = call i32 (%struct.TYPE_12__*, i8*, ...) @MP_INFO(%struct.TYPE_12__* %126, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.6, i64 0, i64 0), i32 %127, i8* %128, i32 %131)
  %133 = load i8*, i8** %11, align 8
  %134 = call i32 @talloc_free(i8* %133)
  %135 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %136 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* %8, align 4
  %139 = icmp sgt i32 %137, %138
  br i1 %139, label %140, label %145

140:                                              ; preds = %120
  %141 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %142 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  store i32 %143, i32* %8, align 4
  %144 = load i32, i32* %9, align 4
  store i32 %144, i32* %7, align 4
  br label %145

145:                                              ; preds = %140, %120
  %146 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %147 = call i32 @bd_free_title_info(%struct.TYPE_13__* %146)
  br label %148

148:                                              ; preds = %145, %119
  %149 = load i32, i32* %9, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %9, align 4
  br label %107

151:                                              ; preds = %107
  br label %152

152:                                              ; preds = %151
  %153 = load %struct.bluray_priv_s*, %struct.bluray_priv_s** %4, align 8
  %154 = getelementptr inbounds %struct.bluray_priv_s, %struct.bluray_priv_s* %153, i32 0, i32 2
  store i32 -1, i32* %154, align 4
  %155 = load %struct.bluray_priv_s*, %struct.bluray_priv_s** %4, align 8
  %156 = getelementptr inbounds %struct.bluray_priv_s, %struct.bluray_priv_s* %155, i32 0, i32 3
  store i32 -1, i32* %156, align 8
  %157 = load i32*, i32** %6, align 8
  %158 = call i32 @bd_get_event(i32* %157, i32* null)
  %159 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %160 = load i32, i32* %7, align 4
  %161 = call i32 @select_initial_title(%struct.TYPE_12__* %159, i32 %160)
  %162 = load i32, i32* @bluray_stream_fill_buffer, align 4
  %163 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %164 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %163, i32 0, i32 4
  store i32 %162, i32* %164, align 8
  %165 = load i32, i32* @bluray_stream_close, align 4
  %166 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %167 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %166, i32 0, i32 3
  store i32 %165, i32* %167, align 4
  %168 = load i32, i32* @bluray_stream_control, align 4
  %169 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %170 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %169, i32 0, i32 2
  store i32 %168, i32* %170, align 8
  %171 = load %struct.bluray_priv_s*, %struct.bluray_priv_s** %4, align 8
  %172 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %173 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %172, i32 0, i32 1
  store %struct.bluray_priv_s* %171, %struct.bluray_priv_s** %173, align 8
  %174 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %175 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %174, i32 0, i32 0
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8** %175, align 8
  %176 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %177 = call i32 @MP_VERBOSE(%struct.TYPE_12__* %176, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i64 0, i64 0))
  %178 = load i32, i32* @STREAM_OK, align 4
  store i32 %178, i32* %2, align 4
  br label %179

179:                                              ; preds = %152, %98, %84, %74, %62, %44
  %180 = load i32, i32* %2, align 4
  ret i32 %180
}

declare dso_local i32 @mp_read_option_raw(i32, i8*, i32*, i8**) #1

declare dso_local i32 @MP_ERR(%struct.TYPE_12__*, i8*, ...) #1

declare dso_local i32 @mp_msg_test(i32, i32) #1

declare dso_local i32 @bd_set_debug_mask(i32) #1

declare dso_local i32* @bd_open(i8*, i32*) #1

declare dso_local i32 @check_disc_info(%struct.TYPE_12__*) #1

declare dso_local i32 @destruct(%struct.bluray_priv_s*) #1

declare dso_local i32 @MP_FATAL(%struct.TYPE_12__*, i8*) #1

declare dso_local i32 @bd_get_titles(i32*, i32, i32) #1

declare dso_local i32 @MP_INFO(%struct.TYPE_12__*, i8*, ...) #1

declare dso_local %struct.TYPE_13__* @bd_get_title_info(i32*, i32, i32) #1

declare dso_local i8* @mp_format_time(i32, i32) #1

declare dso_local i32 @talloc_free(i8*) #1

declare dso_local i32 @bd_free_title_info(%struct.TYPE_13__*) #1

declare dso_local i32 @bd_get_event(i32*, i32*) #1

declare dso_local i32 @select_initial_title(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @MP_VERBOSE(%struct.TYPE_12__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
