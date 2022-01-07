; ModuleID = '/home/carl/AnghaBench/mpv/common/extr_encode_lavc.c_maybe_init_muxer.c'
source_filename = "/home/carl/AnghaBench/mpv/common/extr_encode_lavc.c_maybe_init_muxer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.encode_lavc_context = type { %struct.TYPE_7__*, %struct.encode_priv* }
%struct.TYPE_7__ = type { i32 }
%struct.encode_priv = type { i32, i32, i32, %struct.mux_stream**, i32, %struct.TYPE_8__*, %struct.TYPE_6__*, i32 }
%struct.mux_stream = type { i32, i32 (i32)*, i32 }
%struct.TYPE_8__ = type { i32, %struct.TYPE_5__*, i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32*, i32* }

@AVFMT_NOFILE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Opening output file: %s\0A\00", align 1
@AVIO_FLAG_WRITE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"could not open '%s'\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"Opening muxer: %s [%s]\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"Failed to initialize muxer.\0A\00", align 1
@MSGL_WARN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.encode_lavc_context*)* @maybe_init_muxer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @maybe_init_muxer(%struct.encode_lavc_context* %0) #0 {
  %2 = alloca %struct.encode_lavc_context*, align 8
  %3 = alloca %struct.encode_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mux_stream*, align 8
  store %struct.encode_lavc_context* %0, %struct.encode_lavc_context** %2, align 8
  %9 = load %struct.encode_lavc_context*, %struct.encode_lavc_context** %2, align 8
  %10 = getelementptr inbounds %struct.encode_lavc_context, %struct.encode_lavc_context* %9, i32 0, i32 1
  %11 = load %struct.encode_priv*, %struct.encode_priv** %10, align 8
  store %struct.encode_priv* %11, %struct.encode_priv** %3, align 8
  %12 = load %struct.encode_priv*, %struct.encode_priv** %3, align 8
  %13 = getelementptr inbounds %struct.encode_priv, %struct.encode_priv* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %1
  %17 = load %struct.encode_priv*, %struct.encode_priv** %3, align 8
  %18 = getelementptr inbounds %struct.encode_priv, %struct.encode_priv* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %16, %1
  br label %214

22:                                               ; preds = %16
  store i32 0, i32* %4, align 4
  br label %23

23:                                               ; preds = %42, %22
  %24 = load i32, i32* %4, align 4
  %25 = load %struct.encode_priv*, %struct.encode_priv** %3, align 8
  %26 = getelementptr inbounds %struct.encode_priv, %struct.encode_priv* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = icmp slt i32 %24, %27
  br i1 %28, label %29, label %45

29:                                               ; preds = %23
  %30 = load %struct.encode_priv*, %struct.encode_priv** %3, align 8
  %31 = getelementptr inbounds %struct.encode_priv, %struct.encode_priv* %30, i32 0, i32 3
  %32 = load %struct.mux_stream**, %struct.mux_stream*** %31, align 8
  %33 = load i32, i32* %4, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.mux_stream*, %struct.mux_stream** %32, i64 %34
  %36 = load %struct.mux_stream*, %struct.mux_stream** %35, align 8
  %37 = getelementptr inbounds %struct.mux_stream, %struct.mux_stream* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %29
  br label %214

41:                                               ; preds = %29
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %4, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %4, align 4
  br label %23

45:                                               ; preds = %23
  %46 = load %struct.encode_priv*, %struct.encode_priv** %3, align 8
  %47 = getelementptr inbounds %struct.encode_priv, %struct.encode_priv* %46, i32 0, i32 5
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 1
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @AVFMT_NOFILE, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %85, label %56

56:                                               ; preds = %45
  %57 = load %struct.encode_priv*, %struct.encode_priv** %3, align 8
  %58 = load %struct.encode_priv*, %struct.encode_priv** %3, align 8
  %59 = getelementptr inbounds %struct.encode_priv, %struct.encode_priv* %58, i32 0, i32 5
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = call i32 (%struct.encode_priv*, i8*, i32, ...) @MP_INFO(%struct.encode_priv* %57, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %62)
  %64 = load %struct.encode_priv*, %struct.encode_priv** %3, align 8
  %65 = getelementptr inbounds %struct.encode_priv, %struct.encode_priv* %64, i32 0, i32 5
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 3
  %68 = load %struct.encode_priv*, %struct.encode_priv** %3, align 8
  %69 = getelementptr inbounds %struct.encode_priv, %struct.encode_priv* %68, i32 0, i32 5
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @AVIO_FLAG_WRITE, align 4
  %74 = call i64 @avio_open(i32* %67, i32 %72, i32 %73)
  %75 = icmp slt i64 %74, 0
  br i1 %75, label %76, label %84

76:                                               ; preds = %56
  %77 = load %struct.encode_priv*, %struct.encode_priv** %3, align 8
  %78 = load %struct.encode_priv*, %struct.encode_priv** %3, align 8
  %79 = getelementptr inbounds %struct.encode_priv, %struct.encode_priv* %78, i32 0, i32 5
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = call i32 (%struct.encode_priv*, i8*, ...) @MP_FATAL(%struct.encode_priv* %77, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %82)
  br label %211

84:                                               ; preds = %56
  br label %85

85:                                               ; preds = %84, %45
  %86 = call i32 (...) @mp_time_sec()
  %87 = load %struct.encode_priv*, %struct.encode_priv** %3, align 8
  %88 = getelementptr inbounds %struct.encode_priv, %struct.encode_priv* %87, i32 0, i32 7
  store i32 %86, i32* %88, align 8
  %89 = load %struct.encode_priv*, %struct.encode_priv** %3, align 8
  %90 = load %struct.encode_priv*, %struct.encode_priv** %3, align 8
  %91 = getelementptr inbounds %struct.encode_priv, %struct.encode_priv* %90, i32 0, i32 5
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 1
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.encode_priv*, %struct.encode_priv** %3, align 8
  %98 = getelementptr inbounds %struct.encode_priv, %struct.encode_priv* %97, i32 0, i32 5
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 1
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = call i32 (%struct.encode_priv*, i8*, i32, ...) @MP_INFO(%struct.encode_priv* %89, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %96, i32 %103)
  %105 = load %struct.encode_priv*, %struct.encode_priv** %3, align 8
  %106 = getelementptr inbounds %struct.encode_priv, %struct.encode_priv* %105, i32 0, i32 6
  %107 = load %struct.TYPE_6__*, %struct.TYPE_6__** %106, align 8
  %108 = icmp ne %struct.TYPE_6__* %107, null
  br i1 %108, label %109, label %146

109:                                              ; preds = %85
  store i32 0, i32* %5, align 4
  br label %110

110:                                              ; preds = %142, %109
  %111 = load i32, i32* %5, align 4
  %112 = load %struct.encode_priv*, %struct.encode_priv** %3, align 8
  %113 = getelementptr inbounds %struct.encode_priv, %struct.encode_priv* %112, i32 0, i32 6
  %114 = load %struct.TYPE_6__*, %struct.TYPE_6__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = icmp slt i32 %111, %116
  br i1 %117, label %118, label %145

118:                                              ; preds = %110
  %119 = load %struct.encode_priv*, %struct.encode_priv** %3, align 8
  %120 = getelementptr inbounds %struct.encode_priv, %struct.encode_priv* %119, i32 0, i32 5
  %121 = load %struct.TYPE_8__*, %struct.TYPE_8__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 0
  %123 = load %struct.encode_priv*, %struct.encode_priv** %3, align 8
  %124 = getelementptr inbounds %struct.encode_priv, %struct.encode_priv* %123, i32 0, i32 6
  %125 = load %struct.TYPE_6__*, %struct.TYPE_6__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 2
  %127 = load i32*, i32** %126, align 8
  %128 = load i32, i32* %5, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32, i32* %127, i64 %129
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.encode_priv*, %struct.encode_priv** %3, align 8
  %133 = getelementptr inbounds %struct.encode_priv, %struct.encode_priv* %132, i32 0, i32 6
  %134 = load %struct.TYPE_6__*, %struct.TYPE_6__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 1
  %136 = load i32*, i32** %135, align 8
  %137 = load i32, i32* %5, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i32, i32* %136, i64 %138
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @av_dict_set(i32* %122, i32 %131, i32 %140, i32 0)
  br label %142

142:                                              ; preds = %118
  %143 = load i32, i32* %5, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %5, align 4
  br label %110

145:                                              ; preds = %110
  br label %146

146:                                              ; preds = %145, %85
  store i32* null, i32** %6, align 8
  %147 = load %struct.encode_lavc_context*, %struct.encode_lavc_context** %2, align 8
  %148 = getelementptr inbounds %struct.encode_lavc_context, %struct.encode_lavc_context* %147, i32 0, i32 0
  %149 = load %struct.TYPE_7__*, %struct.TYPE_7__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = call i32 @mp_set_avdict(i32** %6, i32 %151)
  %153 = load %struct.encode_priv*, %struct.encode_priv** %3, align 8
  %154 = getelementptr inbounds %struct.encode_priv, %struct.encode_priv* %153, i32 0, i32 5
  %155 = load %struct.TYPE_8__*, %struct.TYPE_8__** %154, align 8
  %156 = call i64 @avformat_write_header(%struct.TYPE_8__* %155, i32** %6)
  %157 = icmp slt i64 %156, 0
  br i1 %157, label %158, label %163

158:                                              ; preds = %146
  %159 = load %struct.encode_priv*, %struct.encode_priv** %3, align 8
  %160 = call i32 (%struct.encode_priv*, i8*, ...) @MP_FATAL(%struct.encode_priv* %159, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  %161 = load %struct.encode_priv*, %struct.encode_priv** %3, align 8
  %162 = getelementptr inbounds %struct.encode_priv, %struct.encode_priv* %161, i32 0, i32 1
  store i32 1, i32* %162, align 4
  br label %170

163:                                              ; preds = %146
  %164 = load %struct.encode_priv*, %struct.encode_priv** %3, align 8
  %165 = getelementptr inbounds %struct.encode_priv, %struct.encode_priv* %164, i32 0, i32 4
  %166 = load i32, i32* %165, align 8
  %167 = load i32, i32* @MSGL_WARN, align 4
  %168 = load i32*, i32** %6, align 8
  %169 = call i32 @mp_avdict_print_unset(i32 %166, i32 %167, i32* %168)
  br label %170

170:                                              ; preds = %163, %158
  %171 = call i32 @av_dict_free(i32** %6)
  %172 = load %struct.encode_priv*, %struct.encode_priv** %3, align 8
  %173 = getelementptr inbounds %struct.encode_priv, %struct.encode_priv* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %177

176:                                              ; preds = %170
  br label %211

177:                                              ; preds = %170
  %178 = load %struct.encode_priv*, %struct.encode_priv** %3, align 8
  %179 = getelementptr inbounds %struct.encode_priv, %struct.encode_priv* %178, i32 0, i32 0
  store i32 1, i32* %179, align 8
  store i32 0, i32* %7, align 4
  br label %180

180:                                              ; preds = %207, %177
  %181 = load i32, i32* %7, align 4
  %182 = load %struct.encode_priv*, %struct.encode_priv** %3, align 8
  %183 = getelementptr inbounds %struct.encode_priv, %struct.encode_priv* %182, i32 0, i32 2
  %184 = load i32, i32* %183, align 8
  %185 = icmp slt i32 %181, %184
  br i1 %185, label %186, label %210

186:                                              ; preds = %180
  %187 = load %struct.encode_priv*, %struct.encode_priv** %3, align 8
  %188 = getelementptr inbounds %struct.encode_priv, %struct.encode_priv* %187, i32 0, i32 3
  %189 = load %struct.mux_stream**, %struct.mux_stream*** %188, align 8
  %190 = load i32, i32* %7, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds %struct.mux_stream*, %struct.mux_stream** %189, i64 %191
  %193 = load %struct.mux_stream*, %struct.mux_stream** %192, align 8
  store %struct.mux_stream* %193, %struct.mux_stream** %8, align 8
  %194 = load %struct.mux_stream*, %struct.mux_stream** %8, align 8
  %195 = getelementptr inbounds %struct.mux_stream, %struct.mux_stream* %194, i32 0, i32 1
  %196 = load i32 (i32)*, i32 (i32)** %195, align 8
  %197 = icmp ne i32 (i32)* %196, null
  br i1 %197, label %198, label %206

198:                                              ; preds = %186
  %199 = load %struct.mux_stream*, %struct.mux_stream** %8, align 8
  %200 = getelementptr inbounds %struct.mux_stream, %struct.mux_stream* %199, i32 0, i32 1
  %201 = load i32 (i32)*, i32 (i32)** %200, align 8
  %202 = load %struct.mux_stream*, %struct.mux_stream** %8, align 8
  %203 = getelementptr inbounds %struct.mux_stream, %struct.mux_stream* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 8
  %205 = call i32 %201(i32 %204)
  br label %206

206:                                              ; preds = %198, %186
  br label %207

207:                                              ; preds = %206
  %208 = load i32, i32* %7, align 4
  %209 = add nsw i32 %208, 1
  store i32 %209, i32* %7, align 4
  br label %180

210:                                              ; preds = %180
  br label %214

211:                                              ; preds = %176, %76
  %212 = load %struct.encode_priv*, %struct.encode_priv** %3, align 8
  %213 = getelementptr inbounds %struct.encode_priv, %struct.encode_priv* %212, i32 0, i32 1
  store i32 1, i32* %213, align 4
  br label %214

214:                                              ; preds = %211, %210, %40, %21
  ret void
}

declare dso_local i32 @MP_INFO(%struct.encode_priv*, i8*, i32, ...) #1

declare dso_local i64 @avio_open(i32*, i32, i32) #1

declare dso_local i32 @MP_FATAL(%struct.encode_priv*, i8*, ...) #1

declare dso_local i32 @mp_time_sec(...) #1

declare dso_local i32 @av_dict_set(i32*, i32, i32, i32) #1

declare dso_local i32 @mp_set_avdict(i32**, i32) #1

declare dso_local i64 @avformat_write_header(%struct.TYPE_8__*, i32**) #1

declare dso_local i32 @mp_avdict_print_unset(i32, i32, i32*) #1

declare dso_local i32 @av_dict_free(i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
