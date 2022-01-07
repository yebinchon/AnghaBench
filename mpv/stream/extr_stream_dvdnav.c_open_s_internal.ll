; ModuleID = '/home/carl/AnghaBench/mpv/stream/extr_stream_dvdnav.c_open_s_internal.c'
source_filename = "/home/carl/AnghaBench/mpv/stream/extr_stream_dvdnav.c_open_s_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i8*, i8*, i32, i32, i32, i32, %struct.priv* }
%struct.priv = type { i8*, i64, i64, %struct.TYPE_11__*, i32* }
%struct.TYPE_11__ = type { i8*, i32 }

@dvd_conf = common dso_local global i32 0, align 4
@DEFAULT_DVD_DEVICE = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [30 x i8] c"Couldn't open DVD device: %s\0A\00", align 1
@STREAM_UNSUPPORTED = common dso_local global i32 0, align 4
@TITLE_LONGEST = common dso_local global i64 0, align 8
@DVDNAV_STATUS_OK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [27 x i8] c"List of available titles:\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"title: %3d duration: %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"Selecting title %d.\0A\00", align 1
@.str.4 = private unnamed_addr constant [53 x i8] c"dvdnav_stream, couldn't select title %d, error '%s'\0A\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"DVD menu support has been removed.\0A\00", align 1
@STREAM_ERROR = common dso_local global i32 0, align 4
@fill_buffer = common dso_local global i32 0, align 4
@control = common dso_local global i32 0, align 4
@stream_dvdnav_close = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [6 x i8] c"+disc\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"mpeg\00", align 1
@STREAM_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*)* @open_s_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @open_s_internal(%struct.TYPE_10__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca %struct.priv*, align 8
  %5 = alloca %struct.priv*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 6
  %17 = load %struct.priv*, %struct.priv** %16, align 8
  store %struct.priv* %17, %struct.priv** %5, align 8
  store %struct.priv* %17, %struct.priv** %4, align 8
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 5
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.TYPE_11__* @mp_get_config_group(%struct.TYPE_10__* %18, i32 %21, i32* @dvd_conf)
  %23 = load %struct.priv*, %struct.priv** %5, align 8
  %24 = getelementptr inbounds %struct.priv, %struct.priv* %23, i32 0, i32 3
  store %struct.TYPE_11__* %22, %struct.TYPE_11__** %24, align 8
  %25 = load %struct.priv*, %struct.priv** %5, align 8
  %26 = getelementptr inbounds %struct.priv, %struct.priv* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %41

29:                                               ; preds = %1
  %30 = load %struct.priv*, %struct.priv** %5, align 8
  %31 = getelementptr inbounds %struct.priv, %struct.priv* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 0
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %29
  %38 = load %struct.priv*, %struct.priv** %5, align 8
  %39 = getelementptr inbounds %struct.priv, %struct.priv* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  store i8* %40, i8** %6, align 8
  br label %67

41:                                               ; preds = %29, %1
  %42 = load %struct.priv*, %struct.priv** %5, align 8
  %43 = getelementptr inbounds %struct.priv, %struct.priv* %42, i32 0, i32 3
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %48, label %64

48:                                               ; preds = %41
  %49 = load %struct.priv*, %struct.priv** %5, align 8
  %50 = getelementptr inbounds %struct.priv, %struct.priv* %49, i32 0, i32 3
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 0
  %53 = load i8*, i8** %52, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 0
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %48
  %59 = load %struct.priv*, %struct.priv** %5, align 8
  %60 = getelementptr inbounds %struct.priv, %struct.priv* %59, i32 0, i32 3
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 0
  %63 = load i8*, i8** %62, align 8
  store i8* %63, i8** %6, align 8
  br label %66

64:                                               ; preds = %48, %41
  %65 = load i8*, i8** @DEFAULT_DVD_DEVICE, align 8
  store i8* %65, i8** %6, align 8
  br label %66

66:                                               ; preds = %64, %58
  br label %67

67:                                               ; preds = %66, %37
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %69 = load i8*, i8** %6, align 8
  %70 = call i32 @new_dvdnav_stream(%struct.TYPE_10__* %68, i8* %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %77, label %72

72:                                               ; preds = %67
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %74 = load i8*, i8** %6, align 8
  %75 = call i32 @MP_ERR(%struct.TYPE_10__* %73, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i8* %74)
  %76 = load i32, i32* @STREAM_UNSUPPORTED, align 4
  store i32 %76, i32* %2, align 4
  br label %214

77:                                               ; preds = %67
  %78 = load %struct.priv*, %struct.priv** %5, align 8
  %79 = getelementptr inbounds %struct.priv, %struct.priv* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @TITLE_LONGEST, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %145

83:                                               ; preds = %77
  %84 = load %struct.priv*, %struct.priv** %4, align 8
  %85 = getelementptr inbounds %struct.priv, %struct.priv* %84, i32 0, i32 4
  %86 = load i32*, i32** %85, align 8
  store i32* %86, i32** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 -1, i32* %9, align 4
  %87 = load i32*, i32** %7, align 8
  %88 = call i64 @dvdnav_get_number_of_titles(i32* %87, i32* %10)
  %89 = load i64, i64* @DVDNAV_STATUS_OK, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %133

91:                                               ; preds = %83
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %93 = call i32 (%struct.TYPE_10__*, i8*, ...) @MP_VERBOSE(%struct.TYPE_10__* %92, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %11, align 4
  br label %94

94:                                               ; preds = %129, %91
  %95 = load i32, i32* %11, align 4
  %96 = load i32, i32* %10, align 4
  %97 = icmp sle i32 %95, %96
  br i1 %97, label %98, label %132

98:                                               ; preds = %94
  store i32* null, i32** %12, align 8
  store i32 0, i32* %13, align 4
  %99 = load i32*, i32** %7, align 8
  %100 = load i32, i32* %11, align 4
  %101 = call i32 @dvdnav_describe_title_chapters(i32* %99, i32 %100, i32** %12, i32* %13)
  %102 = load i32*, i32** %12, align 8
  %103 = icmp ne i32* %102, null
  br i1 %103, label %104, label %128

104:                                              ; preds = %98
  %105 = load i32, i32* %13, align 4
  %106 = load i32, i32* %8, align 4
  %107 = icmp sgt i32 %105, %106
  br i1 %107, label %108, label %111

108:                                              ; preds = %104
  %109 = load i32, i32* %13, align 4
  store i32 %109, i32* %8, align 4
  %110 = load i32, i32* %11, align 4
  store i32 %110, i32* %9, align 4
  br label %111

111:                                              ; preds = %108, %104
  %112 = load i32, i32* %13, align 4
  %113 = icmp sgt i32 %112, 90000
  br i1 %113, label %114, label %125

114:                                              ; preds = %111
  %115 = load i32, i32* %13, align 4
  %116 = sdiv i32 %115, 90000
  %117 = call i8* @mp_format_time(i32 %116, i32 0)
  store i8* %117, i8** %14, align 8
  %118 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %119 = load i32, i32* %11, align 4
  %120 = sub nsw i32 %119, 1
  %121 = load i8*, i8** %14, align 8
  %122 = call i32 (%struct.TYPE_10__*, i8*, ...) @MP_VERBOSE(%struct.TYPE_10__* %118, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %120, i8* %121)
  %123 = load i8*, i8** %14, align 8
  %124 = call i32 @talloc_free(i8* %123)
  br label %125

125:                                              ; preds = %114, %111
  %126 = load i32*, i32** %12, align 8
  %127 = call i32 @free(i32* %126)
  br label %128

128:                                              ; preds = %125, %98
  br label %129

129:                                              ; preds = %128
  %130 = load i32, i32* %11, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %11, align 4
  br label %94

132:                                              ; preds = %94
  br label %133

133:                                              ; preds = %132, %83
  %134 = load i32, i32* %9, align 4
  %135 = sub nsw i32 %134, 1
  %136 = sext i32 %135 to i64
  %137 = load %struct.priv*, %struct.priv** %5, align 8
  %138 = getelementptr inbounds %struct.priv, %struct.priv* %137, i32 0, i32 1
  store i64 %136, i64* %138, align 8
  %139 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %140 = load %struct.priv*, %struct.priv** %5, align 8
  %141 = getelementptr inbounds %struct.priv, %struct.priv* %140, i32 0, i32 1
  %142 = load i64, i64* %141, align 8
  %143 = trunc i64 %142 to i32
  %144 = call i32 @MP_INFO(%struct.TYPE_10__* %139, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 %143)
  br label %145

145:                                              ; preds = %133, %77
  %146 = load %struct.priv*, %struct.priv** %5, align 8
  %147 = getelementptr inbounds %struct.priv, %struct.priv* %146, i32 0, i32 1
  %148 = load i64, i64* %147, align 8
  %149 = icmp sge i64 %148, 0
  br i1 %149, label %150, label %178

150:                                              ; preds = %145
  %151 = load %struct.priv*, %struct.priv** %5, align 8
  %152 = getelementptr inbounds %struct.priv, %struct.priv* %151, i32 0, i32 1
  %153 = load i64, i64* %152, align 8
  %154 = load %struct.priv*, %struct.priv** %4, align 8
  %155 = getelementptr inbounds %struct.priv, %struct.priv* %154, i32 0, i32 2
  store i64 %153, i64* %155, align 8
  %156 = load %struct.priv*, %struct.priv** %4, align 8
  %157 = getelementptr inbounds %struct.priv, %struct.priv* %156, i32 0, i32 4
  %158 = load i32*, i32** %157, align 8
  %159 = load %struct.priv*, %struct.priv** %5, align 8
  %160 = getelementptr inbounds %struct.priv, %struct.priv* %159, i32 0, i32 1
  %161 = load i64, i64* %160, align 8
  %162 = add nsw i64 %161, 1
  %163 = call i64 @dvdnav_title_play(i32* %158, i64 %162)
  %164 = load i64, i64* @DVDNAV_STATUS_OK, align 8
  %165 = icmp ne i64 %163, %164
  br i1 %165, label %166, label %177

166:                                              ; preds = %150
  %167 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %168 = load %struct.priv*, %struct.priv** %5, align 8
  %169 = getelementptr inbounds %struct.priv, %struct.priv* %168, i32 0, i32 1
  %170 = load i64, i64* %169, align 8
  %171 = load %struct.priv*, %struct.priv** %4, align 8
  %172 = getelementptr inbounds %struct.priv, %struct.priv* %171, i32 0, i32 4
  %173 = load i32*, i32** %172, align 8
  %174 = call i32 @dvdnav_err_to_string(i32* %173)
  %175 = call i32 (%struct.TYPE_10__*, i8*, ...) @MP_FATAL(%struct.TYPE_10__* %167, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.4, i64 0, i64 0), i64 %170, i32 %174)
  %176 = load i32, i32* @STREAM_UNSUPPORTED, align 4
  store i32 %176, i32* %2, align 4
  br label %214

177:                                              ; preds = %150
  br label %182

178:                                              ; preds = %145
  %179 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %180 = call i32 (%struct.TYPE_10__*, i8*, ...) @MP_FATAL(%struct.TYPE_10__* %179, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0))
  %181 = load i32, i32* @STREAM_ERROR, align 4
  store i32 %181, i32* %2, align 4
  br label %214

182:                                              ; preds = %177
  %183 = load %struct.priv*, %struct.priv** %5, align 8
  %184 = getelementptr inbounds %struct.priv, %struct.priv* %183, i32 0, i32 3
  %185 = load %struct.TYPE_11__*, %struct.TYPE_11__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 8
  %188 = icmp sgt i32 %187, 1
  br i1 %188, label %189, label %199

189:                                              ; preds = %182
  %190 = load %struct.priv*, %struct.priv** %4, align 8
  %191 = getelementptr inbounds %struct.priv, %struct.priv* %190, i32 0, i32 4
  %192 = load i32*, i32** %191, align 8
  %193 = load %struct.priv*, %struct.priv** %5, align 8
  %194 = getelementptr inbounds %struct.priv, %struct.priv* %193, i32 0, i32 3
  %195 = load %struct.TYPE_11__*, %struct.TYPE_11__** %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 8
  %198 = call i32 @dvdnav_angle_change(i32* %192, i32 %197)
  br label %199

199:                                              ; preds = %189, %182
  %200 = load i32, i32* @fill_buffer, align 4
  %201 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %202 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %201, i32 0, i32 4
  store i32 %200, i32* %202, align 8
  %203 = load i32, i32* @control, align 4
  %204 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %205 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %204, i32 0, i32 3
  store i32 %203, i32* %205, align 4
  %206 = load i32, i32* @stream_dvdnav_close, align 4
  %207 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %208 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %207, i32 0, i32 2
  store i32 %206, i32* %208, align 8
  %209 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %210 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %209, i32 0, i32 0
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8** %210, align 8
  %211 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %212 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %211, i32 0, i32 1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8** %212, align 8
  %213 = load i32, i32* @STREAM_OK, align 4
  store i32 %213, i32* %2, align 4
  br label %214

214:                                              ; preds = %199, %178, %166, %72
  %215 = load i32, i32* %2, align 4
  ret i32 %215
}

declare dso_local %struct.TYPE_11__* @mp_get_config_group(%struct.TYPE_10__*, i32, i32*) #1

declare dso_local i32 @new_dvdnav_stream(%struct.TYPE_10__*, i8*) #1

declare dso_local i32 @MP_ERR(%struct.TYPE_10__*, i8*, i8*) #1

declare dso_local i64 @dvdnav_get_number_of_titles(i32*, i32*) #1

declare dso_local i32 @MP_VERBOSE(%struct.TYPE_10__*, i8*, ...) #1

declare dso_local i32 @dvdnav_describe_title_chapters(i32*, i32, i32**, i32*) #1

declare dso_local i8* @mp_format_time(i32, i32) #1

declare dso_local i32 @talloc_free(i8*) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @MP_INFO(%struct.TYPE_10__*, i8*, i32) #1

declare dso_local i64 @dvdnav_title_play(i32*, i64) #1

declare dso_local i32 @MP_FATAL(%struct.TYPE_10__*, i8*, ...) #1

declare dso_local i32 @dvdnav_err_to_string(i32*) #1

declare dso_local i32 @dvdnav_angle_change(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
