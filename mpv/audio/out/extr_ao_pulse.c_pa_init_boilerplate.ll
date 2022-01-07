; ModuleID = '/home/carl/AnghaBench/mpv/audio/out/extr_ao_pulse.c_pa_init_boilerplate.c'
source_filename = "/home/carl/AnghaBench/mpv/audio/out/extr_ao_pulse.c_pa_init_boilerplate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ao = type { i64, i32, %struct.priv* }
%struct.priv = type { i8*, i32, i64, i32, i32 }

@.str = private unnamed_addr constant [30 x i8] c"Failed to allocate main loop\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Failed to allocate context\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"Library version: %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"Proto: %lu\0A\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"Server proto: %lu\0A\00", align 1
@context_state_cb = common dso_local global i32 0, align 4
@subscribe_cb = common dso_local global i32 0, align 4
@PA_CONTEXT_READY = common dso_local global i32 0, align 4
@PA_ERR_CONNECTIONREFUSED = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [12 x i8] c"Init failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ao*)* @pa_init_boilerplate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pa_init_boilerplate(%struct.ao* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ao*, align 8
  %4 = alloca %struct.priv*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ao* %0, %struct.ao** %3, align 8
  %8 = load %struct.ao*, %struct.ao** %3, align 8
  %9 = getelementptr inbounds %struct.ao, %struct.ao* %8, i32 0, i32 2
  %10 = load %struct.priv*, %struct.priv** %9, align 8
  store %struct.priv* %10, %struct.priv** %4, align 8
  %11 = load %struct.priv*, %struct.priv** %4, align 8
  %12 = getelementptr inbounds %struct.priv, %struct.priv* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %27

15:                                               ; preds = %1
  %16 = load %struct.priv*, %struct.priv** %4, align 8
  %17 = getelementptr inbounds %struct.priv, %struct.priv* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 0
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %15
  %24 = load %struct.priv*, %struct.priv** %4, align 8
  %25 = getelementptr inbounds %struct.priv, %struct.priv* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  br label %28

27:                                               ; preds = %15, %1
  br label %28

28:                                               ; preds = %27, %23
  %29 = phi i8* [ %26, %23 ], [ null, %27 ]
  store i8* %29, i8** %5, align 8
  store i32 0, i32* %6, align 4
  %30 = load %struct.priv*, %struct.priv** %4, align 8
  %31 = getelementptr inbounds %struct.priv, %struct.priv* %30, i32 0, i32 4
  %32 = call i32 @pthread_mutex_init(i32* %31, i32* null)
  %33 = load %struct.priv*, %struct.priv** %4, align 8
  %34 = getelementptr inbounds %struct.priv, %struct.priv* %33, i32 0, i32 3
  %35 = call i32 @pthread_cond_init(i32* %34, i32* null)
  %36 = call i32 (...) @pa_threaded_mainloop_new()
  %37 = load %struct.priv*, %struct.priv** %4, align 8
  %38 = getelementptr inbounds %struct.priv, %struct.priv* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 8
  %39 = icmp ne i32 %36, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %28
  %41 = load %struct.ao*, %struct.ao** %3, align 8
  %42 = call i32 @MP_ERR(%struct.ao* %41, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %129

43:                                               ; preds = %28
  %44 = load %struct.priv*, %struct.priv** %4, align 8
  %45 = getelementptr inbounds %struct.priv, %struct.priv* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = call i64 @pa_threaded_mainloop_start(i32 %46)
  %48 = icmp slt i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %43
  br label %129

50:                                               ; preds = %43
  %51 = load %struct.priv*, %struct.priv** %4, align 8
  %52 = getelementptr inbounds %struct.priv, %struct.priv* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @pa_threaded_mainloop_lock(i32 %53)
  store i32 1, i32* %6, align 4
  %55 = load %struct.priv*, %struct.priv** %4, align 8
  %56 = getelementptr inbounds %struct.priv, %struct.priv* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @pa_threaded_mainloop_get_api(i32 %57)
  %59 = load %struct.ao*, %struct.ao** %3, align 8
  %60 = getelementptr inbounds %struct.ao, %struct.ao* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = call i64 @pa_context_new(i32 %58, i32 %61)
  %63 = load %struct.priv*, %struct.priv** %4, align 8
  %64 = getelementptr inbounds %struct.priv, %struct.priv* %63, i32 0, i32 2
  store i64 %62, i64* %64, align 8
  %65 = icmp ne i64 %62, 0
  br i1 %65, label %69, label %66

66:                                               ; preds = %50
  %67 = load %struct.ao*, %struct.ao** %3, align 8
  %68 = call i32 @MP_ERR(%struct.ao* %67, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %129

69:                                               ; preds = %50
  %70 = load %struct.ao*, %struct.ao** %3, align 8
  %71 = call i64 (...) @pa_get_library_version()
  %72 = call i32 @MP_VERBOSE(%struct.ao* %70, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i64 %71)
  %73 = load %struct.ao*, %struct.ao** %3, align 8
  %74 = load %struct.priv*, %struct.priv** %4, align 8
  %75 = getelementptr inbounds %struct.priv, %struct.priv* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = call i64 @pa_context_get_protocol_version(i64 %76)
  %78 = call i32 @MP_VERBOSE(%struct.ao* %73, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i64 %77)
  %79 = load %struct.ao*, %struct.ao** %3, align 8
  %80 = load %struct.priv*, %struct.priv** %4, align 8
  %81 = getelementptr inbounds %struct.priv, %struct.priv* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = call i64 @pa_context_get_server_protocol_version(i64 %82)
  %84 = call i32 @MP_VERBOSE(%struct.ao* %79, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i64 %83)
  %85 = load %struct.priv*, %struct.priv** %4, align 8
  %86 = getelementptr inbounds %struct.priv, %struct.priv* %85, i32 0, i32 2
  %87 = load i64, i64* %86, align 8
  %88 = load i32, i32* @context_state_cb, align 4
  %89 = load %struct.ao*, %struct.ao** %3, align 8
  %90 = call i32 @pa_context_set_state_callback(i64 %87, i32 %88, %struct.ao* %89)
  %91 = load %struct.priv*, %struct.priv** %4, align 8
  %92 = getelementptr inbounds %struct.priv, %struct.priv* %91, i32 0, i32 2
  %93 = load i64, i64* %92, align 8
  %94 = load i32, i32* @subscribe_cb, align 4
  %95 = load %struct.ao*, %struct.ao** %3, align 8
  %96 = call i32 @pa_context_set_subscribe_callback(i64 %93, i32 %94, %struct.ao* %95)
  %97 = load %struct.priv*, %struct.priv** %4, align 8
  %98 = getelementptr inbounds %struct.priv, %struct.priv* %97, i32 0, i32 2
  %99 = load i64, i64* %98, align 8
  %100 = load i8*, i8** %5, align 8
  %101 = call i64 @pa_context_connect(i64 %99, i8* %100, i32 0, i32* null)
  %102 = icmp slt i64 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %69
  br label %129

104:                                              ; preds = %69
  br label %105

105:                                              ; preds = %104, %119
  %106 = load %struct.priv*, %struct.priv** %4, align 8
  %107 = getelementptr inbounds %struct.priv, %struct.priv* %106, i32 0, i32 2
  %108 = load i64, i64* %107, align 8
  %109 = call i32 @pa_context_get_state(i64 %108)
  store i32 %109, i32* %7, align 4
  %110 = load i32, i32* %7, align 4
  %111 = load i32, i32* @PA_CONTEXT_READY, align 4
  %112 = icmp eq i32 %110, %111
  br i1 %112, label %113, label %114

113:                                              ; preds = %105
  br label %124

114:                                              ; preds = %105
  %115 = load i32, i32* %7, align 4
  %116 = call i32 @PA_CONTEXT_IS_GOOD(i32 %115)
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %119, label %118

118:                                              ; preds = %114
  br label %129

119:                                              ; preds = %114
  %120 = load %struct.priv*, %struct.priv** %4, align 8
  %121 = getelementptr inbounds %struct.priv, %struct.priv* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 8
  %123 = call i32 @pa_threaded_mainloop_wait(i32 %122)
  br label %105

124:                                              ; preds = %113
  %125 = load %struct.priv*, %struct.priv** %4, align 8
  %126 = getelementptr inbounds %struct.priv, %struct.priv* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 8
  %128 = call i32 @pa_threaded_mainloop_unlock(i32 %127)
  store i32 0, i32* %2, align 4
  br label %168

129:                                              ; preds = %118, %103, %66, %49, %40
  %130 = load i32, i32* %6, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %137

132:                                              ; preds = %129
  %133 = load %struct.priv*, %struct.priv** %4, align 8
  %134 = getelementptr inbounds %struct.priv, %struct.priv* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 8
  %136 = call i32 @pa_threaded_mainloop_unlock(i32 %135)
  br label %137

137:                                              ; preds = %132, %129
  %138 = load %struct.priv*, %struct.priv** %4, align 8
  %139 = getelementptr inbounds %struct.priv, %struct.priv* %138, i32 0, i32 2
  %140 = load i64, i64* %139, align 8
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %165

142:                                              ; preds = %137
  %143 = load %struct.priv*, %struct.priv** %4, align 8
  %144 = getelementptr inbounds %struct.priv, %struct.priv* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 8
  %146 = call i32 @pa_threaded_mainloop_lock(i32 %145)
  %147 = load %struct.priv*, %struct.priv** %4, align 8
  %148 = getelementptr inbounds %struct.priv, %struct.priv* %147, i32 0, i32 2
  %149 = load i64, i64* %148, align 8
  %150 = call i64 @pa_context_errno(i64 %149)
  %151 = load i64, i64* @PA_ERR_CONNECTIONREFUSED, align 8
  %152 = icmp eq i64 %150, %151
  br i1 %152, label %153, label %158

153:                                              ; preds = %142
  %154 = load %struct.ao*, %struct.ao** %3, align 8
  %155 = getelementptr inbounds %struct.ao, %struct.ao* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %160, label %158

158:                                              ; preds = %153, %142
  %159 = call i32 @GENERIC_ERR_MSG(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  br label %160

160:                                              ; preds = %158, %153
  %161 = load %struct.priv*, %struct.priv** %4, align 8
  %162 = getelementptr inbounds %struct.priv, %struct.priv* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 8
  %164 = call i32 @pa_threaded_mainloop_unlock(i32 %163)
  br label %165

165:                                              ; preds = %160, %137
  %166 = load %struct.ao*, %struct.ao** %3, align 8
  %167 = call i32 @uninit(%struct.ao* %166)
  store i32 -1, i32* %2, align 4
  br label %168

168:                                              ; preds = %165, %124
  %169 = load i32, i32* %2, align 4
  ret i32 %169
}

declare dso_local i32 @pthread_mutex_init(i32*, i32*) #1

declare dso_local i32 @pthread_cond_init(i32*, i32*) #1

declare dso_local i32 @pa_threaded_mainloop_new(...) #1

declare dso_local i32 @MP_ERR(%struct.ao*, i8*) #1

declare dso_local i64 @pa_threaded_mainloop_start(i32) #1

declare dso_local i32 @pa_threaded_mainloop_lock(i32) #1

declare dso_local i64 @pa_context_new(i32, i32) #1

declare dso_local i32 @pa_threaded_mainloop_get_api(i32) #1

declare dso_local i32 @MP_VERBOSE(%struct.ao*, i8*, i64) #1

declare dso_local i64 @pa_get_library_version(...) #1

declare dso_local i64 @pa_context_get_protocol_version(i64) #1

declare dso_local i64 @pa_context_get_server_protocol_version(i64) #1

declare dso_local i32 @pa_context_set_state_callback(i64, i32, %struct.ao*) #1

declare dso_local i32 @pa_context_set_subscribe_callback(i64, i32, %struct.ao*) #1

declare dso_local i64 @pa_context_connect(i64, i8*, i32, i32*) #1

declare dso_local i32 @pa_context_get_state(i64) #1

declare dso_local i32 @PA_CONTEXT_IS_GOOD(i32) #1

declare dso_local i32 @pa_threaded_mainloop_wait(i32) #1

declare dso_local i32 @pa_threaded_mainloop_unlock(i32) #1

declare dso_local i64 @pa_context_errno(i64) #1

declare dso_local i32 @GENERIC_ERR_MSG(i8*) #1

declare dso_local i32 @uninit(%struct.ao*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
