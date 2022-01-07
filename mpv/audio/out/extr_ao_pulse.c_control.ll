; ModuleID = '/home/carl/AnghaBench/mpv/audio/out/extr_ao_pulse.c_control.c'
source_filename = "/home/carl/AnghaBench/mpv/audio/out/extr_ao_pulse.c_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ao = type { %struct.TYPE_6__, %struct.priv* }
%struct.TYPE_6__ = type { i32 }
%struct.priv = type { i32, i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32* }
%struct.TYPE_7__ = type { i8*, i8* }
%struct.pa_cvolume = type { i32, i8** }

@info_func = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"pa_context_get_sink_input_info() failed\00", align 1
@CONTROL_ERROR = common dso_local global i32 0, align 4
@CONTROL_OK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"pa_context_set_sink_input_volume() failed\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"pa_context_set_sink_input_mute() failed\00", align 1
@success_cb = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"pa_stream_set_name() failed\00", align 1
@CONTROL_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ao*, i32, i8*)* @control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @control(%struct.ao* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ao*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.priv*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_7__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_7__*, align 8
  %15 = alloca %struct.pa_cvolume, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i8*, align 8
  store %struct.ao* %0, %struct.ao** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %18 = load %struct.ao*, %struct.ao** %5, align 8
  %19 = getelementptr inbounds %struct.ao, %struct.ao* %18, i32 0, i32 1
  %20 = load %struct.priv*, %struct.priv** %19, align 8
  store %struct.priv* %20, %struct.priv** %8, align 8
  %21 = load i32, i32* %6, align 4
  switch i32 %21, label %218 [
    i32 132, label %22
    i32 131, label %22
    i32 130, label %102
    i32 129, label %102
    i32 128, label %197
  ]

22:                                               ; preds = %3, %3
  %23 = load %struct.priv*, %struct.priv** %8, align 8
  %24 = getelementptr inbounds %struct.priv, %struct.priv* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @pa_stream_get_index(i32 %25)
  store i32 %26, i32* %9, align 4
  %27 = load %struct.priv*, %struct.priv** %8, align 8
  %28 = getelementptr inbounds %struct.priv, %struct.priv* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @pa_threaded_mainloop_lock(i32 %29)
  %31 = load %struct.priv*, %struct.priv** %8, align 8
  %32 = load %struct.priv*, %struct.priv** %8, align 8
  %33 = getelementptr inbounds %struct.priv, %struct.priv* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* @info_func, align 4
  %37 = load %struct.ao*, %struct.ao** %5, align 8
  %38 = call i32 @pa_context_get_sink_input_info(i32 %34, i32 %35, i32 %36, %struct.ao* %37)
  %39 = call i32 @waitop(%struct.priv* %31, i32 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %22
  %42 = call i32 @GENERIC_ERR_MSG(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %43 = load i32, i32* @CONTROL_ERROR, align 4
  store i32 %43, i32* %4, align 4
  br label %220

44:                                               ; preds = %22
  %45 = load i32, i32* %6, align 4
  %46 = icmp eq i32 %45, 131
  br i1 %46, label %47, label %88

47:                                               ; preds = %44
  %48 = load i8*, i8** %7, align 8
  %49 = bitcast i8* %48 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %49, %struct.TYPE_7__** %10, align 8
  %50 = load %struct.priv*, %struct.priv** %8, align 8
  %51 = getelementptr inbounds %struct.priv, %struct.priv* %50, i32 0, i32 3
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp ne i32 %54, 2
  br i1 %55, label %56, label %66

56:                                               ; preds = %47
  %57 = load %struct.priv*, %struct.priv** %8, align 8
  %58 = getelementptr inbounds %struct.priv, %struct.priv* %57, i32 0, i32 3
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 1
  %60 = call i32 @pa_cvolume_avg(%struct.TYPE_8__* %59)
  %61 = call i8* @VOL_PA2MP(i32 %60)
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 0
  store i8* %61, i8** %63, align 8
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 1
  store i8* %61, i8** %65, align 8
  br label %87

66:                                               ; preds = %47
  %67 = load %struct.priv*, %struct.priv** %8, align 8
  %68 = getelementptr inbounds %struct.priv, %struct.priv* %67, i32 0, i32 3
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 1
  %71 = load i32*, i32** %70, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 0
  %73 = load i32, i32* %72, align 4
  %74 = call i8* @VOL_PA2MP(i32 %73)
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 1
  store i8* %74, i8** %76, align 8
  %77 = load %struct.priv*, %struct.priv** %8, align 8
  %78 = getelementptr inbounds %struct.priv, %struct.priv* %77, i32 0, i32 3
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 1
  %81 = load i32*, i32** %80, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 1
  %83 = load i32, i32* %82, align 4
  %84 = call i8* @VOL_PA2MP(i32 %83)
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 0
  store i8* %84, i8** %86, align 8
  br label %87

87:                                               ; preds = %66, %56
  br label %100

88:                                               ; preds = %44
  %89 = load i32, i32* %6, align 4
  %90 = icmp eq i32 %89, 132
  br i1 %90, label %91, label %99

91:                                               ; preds = %88
  %92 = load i8*, i8** %7, align 8
  %93 = bitcast i8* %92 to i32*
  store i32* %93, i32** %11, align 8
  %94 = load %struct.priv*, %struct.priv** %8, align 8
  %95 = getelementptr inbounds %struct.priv, %struct.priv* %94, i32 0, i32 3
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load i32*, i32** %11, align 8
  store i32 %97, i32* %98, align 4
  br label %99

99:                                               ; preds = %91, %88
  br label %100

100:                                              ; preds = %99, %87
  %101 = load i32, i32* @CONTROL_OK, align 4
  store i32 %101, i32* %4, align 4
  br label %220

102:                                              ; preds = %3, %3
  %103 = load %struct.priv*, %struct.priv** %8, align 8
  %104 = getelementptr inbounds %struct.priv, %struct.priv* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @pa_threaded_mainloop_lock(i32 %105)
  %107 = load %struct.priv*, %struct.priv** %8, align 8
  %108 = getelementptr inbounds %struct.priv, %struct.priv* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @pa_stream_get_index(i32 %109)
  store i32 %110, i32* %13, align 4
  %111 = load i32, i32* %6, align 4
  %112 = icmp eq i32 %111, 129
  br i1 %112, label %113, label %163

113:                                              ; preds = %102
  %114 = load i8*, i8** %7, align 8
  %115 = bitcast i8* %114 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %115, %struct.TYPE_7__** %14, align 8
  %116 = load %struct.ao*, %struct.ao** %5, align 8
  %117 = getelementptr inbounds %struct.ao, %struct.ao* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = call i32 @pa_cvolume_reset(%struct.pa_cvolume* %15, i32 %119)
  %121 = getelementptr inbounds %struct.pa_cvolume, %struct.pa_cvolume* %15, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = icmp ne i32 %122, 2
  br i1 %123, label %124, label %132

124:                                              ; preds = %113
  %125 = getelementptr inbounds %struct.pa_cvolume, %struct.pa_cvolume* %15, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i32 0, i32 1
  %129 = load i8*, i8** %128, align 8
  %130 = call i8* @VOL_MP2PA(i8* %129)
  %131 = call i32 @pa_cvolume_set(%struct.pa_cvolume* %15, i32 %126, i8* %130)
  br label %147

132:                                              ; preds = %113
  %133 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %134 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %133, i32 0, i32 1
  %135 = load i8*, i8** %134, align 8
  %136 = call i8* @VOL_MP2PA(i8* %135)
  %137 = getelementptr inbounds %struct.pa_cvolume, %struct.pa_cvolume* %15, i32 0, i32 1
  %138 = load i8**, i8*** %137, align 8
  %139 = getelementptr inbounds i8*, i8** %138, i64 0
  store i8* %136, i8** %139, align 8
  %140 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %141 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %140, i32 0, i32 0
  %142 = load i8*, i8** %141, align 8
  %143 = call i8* @VOL_MP2PA(i8* %142)
  %144 = getelementptr inbounds %struct.pa_cvolume, %struct.pa_cvolume* %15, i32 0, i32 1
  %145 = load i8**, i8*** %144, align 8
  %146 = getelementptr inbounds i8*, i8** %145, i64 1
  store i8* %143, i8** %146, align 8
  br label %147

147:                                              ; preds = %132, %124
  %148 = load %struct.priv*, %struct.priv** %8, align 8
  %149 = getelementptr inbounds %struct.priv, %struct.priv* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 8
  %151 = load i32, i32* %13, align 4
  %152 = call i32* @pa_context_set_sink_input_volume(i32 %150, i32 %151, %struct.pa_cvolume* %15, i32* null, i32* null)
  store i32* %152, i32** %12, align 8
  %153 = load i32*, i32** %12, align 8
  %154 = icmp ne i32* %153, null
  br i1 %154, label %162, label %155

155:                                              ; preds = %147
  %156 = load %struct.priv*, %struct.priv** %8, align 8
  %157 = getelementptr inbounds %struct.priv, %struct.priv* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = call i32 @pa_threaded_mainloop_unlock(i32 %158)
  %160 = call i32 @GENERIC_ERR_MSG(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  %161 = load i32, i32* @CONTROL_ERROR, align 4
  store i32 %161, i32* %4, align 4
  br label %220

162:                                              ; preds = %147
  br label %189

163:                                              ; preds = %102
  %164 = load i32, i32* %6, align 4
  %165 = icmp eq i32 %164, 130
  br i1 %165, label %166, label %186

166:                                              ; preds = %163
  %167 = load i8*, i8** %7, align 8
  %168 = bitcast i8* %167 to i32*
  store i32* %168, i32** %16, align 8
  %169 = load %struct.priv*, %struct.priv** %8, align 8
  %170 = getelementptr inbounds %struct.priv, %struct.priv* %169, i32 0, i32 2
  %171 = load i32, i32* %170, align 8
  %172 = load i32, i32* %13, align 4
  %173 = load i32*, i32** %16, align 8
  %174 = load i32, i32* %173, align 4
  %175 = call i32* @pa_context_set_sink_input_mute(i32 %171, i32 %172, i32 %174, i32* null, i32* null)
  store i32* %175, i32** %12, align 8
  %176 = load i32*, i32** %12, align 8
  %177 = icmp ne i32* %176, null
  br i1 %177, label %185, label %178

178:                                              ; preds = %166
  %179 = load %struct.priv*, %struct.priv** %8, align 8
  %180 = getelementptr inbounds %struct.priv, %struct.priv* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 4
  %182 = call i32 @pa_threaded_mainloop_unlock(i32 %181)
  %183 = call i32 @GENERIC_ERR_MSG(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  %184 = load i32, i32* @CONTROL_ERROR, align 4
  store i32 %184, i32* %4, align 4
  br label %220

185:                                              ; preds = %166
  br label %188

186:                                              ; preds = %163
  %187 = call i32 (...) @abort() #3
  unreachable

188:                                              ; preds = %185
  br label %189

189:                                              ; preds = %188, %162
  %190 = load i32*, i32** %12, align 8
  %191 = call i32 @pa_operation_unref(i32* %190)
  %192 = load %struct.priv*, %struct.priv** %8, align 8
  %193 = getelementptr inbounds %struct.priv, %struct.priv* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 4
  %195 = call i32 @pa_threaded_mainloop_unlock(i32 %194)
  %196 = load i32, i32* @CONTROL_OK, align 4
  store i32 %196, i32* %4, align 4
  br label %220

197:                                              ; preds = %3
  %198 = load i8*, i8** %7, align 8
  store i8* %198, i8** %17, align 8
  %199 = load %struct.priv*, %struct.priv** %8, align 8
  %200 = getelementptr inbounds %struct.priv, %struct.priv* %199, i32 0, i32 1
  %201 = load i32, i32* %200, align 4
  %202 = call i32 @pa_threaded_mainloop_lock(i32 %201)
  %203 = load %struct.priv*, %struct.priv** %8, align 8
  %204 = load %struct.priv*, %struct.priv** %8, align 8
  %205 = getelementptr inbounds %struct.priv, %struct.priv* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 8
  %207 = load i8*, i8** %17, align 8
  %208 = load i32, i32* @success_cb, align 4
  %209 = load %struct.ao*, %struct.ao** %5, align 8
  %210 = call i32 @pa_stream_set_name(i32 %206, i8* %207, i32 %208, %struct.ao* %209)
  %211 = call i32 @waitop(%struct.priv* %203, i32 %210)
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %216, label %213

213:                                              ; preds = %197
  %214 = call i32 @GENERIC_ERR_MSG(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %215 = load i32, i32* @CONTROL_ERROR, align 4
  store i32 %215, i32* %4, align 4
  br label %220

216:                                              ; preds = %197
  %217 = load i32, i32* @CONTROL_OK, align 4
  store i32 %217, i32* %4, align 4
  br label %220

218:                                              ; preds = %3
  %219 = load i32, i32* @CONTROL_UNKNOWN, align 4
  store i32 %219, i32* %4, align 4
  br label %220

220:                                              ; preds = %218, %216, %213, %189, %178, %155, %100, %41
  %221 = load i32, i32* %4, align 4
  ret i32 %221
}

declare dso_local i32 @pa_stream_get_index(i32) #1

declare dso_local i32 @pa_threaded_mainloop_lock(i32) #1

declare dso_local i32 @waitop(%struct.priv*, i32) #1

declare dso_local i32 @pa_context_get_sink_input_info(i32, i32, i32, %struct.ao*) #1

declare dso_local i32 @GENERIC_ERR_MSG(i8*) #1

declare dso_local i8* @VOL_PA2MP(i32) #1

declare dso_local i32 @pa_cvolume_avg(%struct.TYPE_8__*) #1

declare dso_local i32 @pa_cvolume_reset(%struct.pa_cvolume*, i32) #1

declare dso_local i32 @pa_cvolume_set(%struct.pa_cvolume*, i32, i8*) #1

declare dso_local i8* @VOL_MP2PA(i8*) #1

declare dso_local i32* @pa_context_set_sink_input_volume(i32, i32, %struct.pa_cvolume*, i32*, i32*) #1

declare dso_local i32 @pa_threaded_mainloop_unlock(i32) #1

declare dso_local i32* @pa_context_set_sink_input_mute(i32, i32, i32, i32*, i32*) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i32 @pa_operation_unref(i32*) #1

declare dso_local i32 @pa_stream_set_name(i32, i8*, i32, %struct.ao*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
