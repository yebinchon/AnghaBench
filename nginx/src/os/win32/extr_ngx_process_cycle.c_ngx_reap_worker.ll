; ModuleID = '/home/carl/AnghaBench/nginx/src/os/win32/extr_ngx_process_cycle.c_ngx_reap_worker.c'
source_filename = "/home/carl/AnghaBench/nginx/src/os/win32/extr_ngx_process_cycle.c_ngx_reap_worker.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32*, i32, i32, i32*, i32*, i32*, i32*, i32* }
%struct.TYPE_5__ = type { i32 }

@ngx_last_process = common dso_local global i64 0, align 8
@ngx_processes = common dso_local global %struct.TYPE_6__* null, align 8
@NGX_LOG_ALERT = common dso_local global i32 0, align 4
@ngx_errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"GetExitCodeProcess(%P) failed\00", align 1
@NGX_LOG_NOTICE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"%s process %P exited with code %Xl\00", align 1
@ngx_terminate = common dso_local global i32 0, align 4
@ngx_quit = common dso_local global i32 0, align 4
@NGX_INVALID_PID = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [21 x i8] c"could not respawn %s\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"unknown process handle %p\00", align 1
@NGX_LOG_DEBUG_CORE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [28 x i8] c"process: %d %P %p e:%d j:%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32*)* @ngx_reap_worker to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_reap_worker(%struct.TYPE_5__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 0, i64* %7, align 8
  br label %8

8:                                                ; preds = %134, %2
  %9 = load i64, i64* %7, align 8
  %10 = load i64, i64* @ngx_last_process, align 8
  %11 = icmp ult i64 %9, %10
  br i1 %11, label %12, label %137

12:                                               ; preds = %8
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ngx_processes, align 8
  %14 = load i64, i64* %7, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i64 %14
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = load i32*, i32** %5, align 8
  %19 = icmp ne i32* %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %12
  br label %134

21:                                               ; preds = %12
  %22 = load i32*, i32** %5, align 8
  %23 = call i64 @GetExitCodeProcess(i32* %22, i32* %6)
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %37

25:                                               ; preds = %21
  %26 = load i32, i32* @NGX_LOG_ALERT, align 4
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @ngx_errno, align 4
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ngx_processes, align 8
  %32 = load i64, i64* %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 3
  %35 = load i32*, i32** %34, align 8
  %36 = call i32 (i32, i32, i32, i8*, i32*, ...) @ngx_log_error(i32 %26, i32 %29, i32 %30, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32* %35)
  br label %37

37:                                               ; preds = %25, %21
  %38 = load i32, i32* @NGX_LOG_NOTICE, align 4
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ngx_processes, align 8
  %43 = load i64, i64* %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 4
  %46 = load i32*, i32** %45, align 8
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ngx_processes, align 8
  %48 = load i64, i64* %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 3
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* %6, align 4
  %53 = call i32 (i32, i32, i32, i8*, i32*, ...) @ngx_log_error(i32 %38, i32 %41, i32 0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32* %46, i32* %51, i32 %52)
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ngx_processes, align 8
  %55 = load i64, i64* %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 5
  %58 = load i32*, i32** %57, align 8
  %59 = call i32 @ngx_close_handle(i32* %58)
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ngx_processes, align 8
  %61 = load i64, i64* %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 6
  %64 = load i32*, i32** %63, align 8
  %65 = call i32 @ngx_close_handle(i32* %64)
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ngx_processes, align 8
  %67 = load i64, i64* %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 7
  %70 = load i32*, i32** %69, align 8
  %71 = call i32 @ngx_close_handle(i32* %70)
  %72 = load i32*, i32** %5, align 8
  %73 = call i32 @ngx_close_handle(i32* %72)
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ngx_processes, align 8
  %75 = load i64, i64* %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  store i32* null, i32** %77, align 8
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ngx_processes, align 8
  %79 = load i64, i64* %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 7
  store i32* null, i32** %81, align 8
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ngx_processes, align 8
  %83 = load i64, i64* %7, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 6
  store i32* null, i32** %85, align 8
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ngx_processes, align 8
  %87 = load i64, i64* %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 5
  store i32* null, i32** %89, align 8
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ngx_processes, align 8
  %91 = load i64, i64* %7, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %133, label %96

96:                                               ; preds = %37
  %97 = load i32, i32* @ngx_terminate, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %133, label %99

99:                                               ; preds = %96
  %100 = load i32, i32* @ngx_quit, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %133, label %102

102:                                              ; preds = %99
  %103 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ngx_processes, align 8
  %105 = load i64, i64* %7, align 8
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 4
  %108 = load i32*, i32** %107, align 8
  %109 = load i64, i64* %7, align 8
  %110 = call i64 @ngx_spawn_process(%struct.TYPE_5__* %103, i32* %108, i64 %109)
  %111 = load i64, i64* @NGX_INVALID_PID, align 8
  %112 = icmp eq i64 %110, %111
  br i1 %112, label %113, label %132

113:                                              ; preds = %102
  %114 = load i32, i32* @NGX_LOG_ALERT, align 4
  %115 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ngx_processes, align 8
  %119 = load i64, i64* %7, align 8
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 4
  %122 = load i32*, i32** %121, align 8
  %123 = call i32 (i32, i32, i32, i8*, i32*, ...) @ngx_log_error(i32 %114, i32 %117, i32 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32* %122)
  %124 = load i64, i64* %7, align 8
  %125 = load i64, i64* @ngx_last_process, align 8
  %126 = sub i64 %125, 1
  %127 = icmp eq i64 %124, %126
  br i1 %127, label %128, label %131

128:                                              ; preds = %113
  %129 = load i64, i64* @ngx_last_process, align 8
  %130 = add i64 %129, -1
  store i64 %130, i64* @ngx_last_process, align 8
  br label %131

131:                                              ; preds = %128, %113
  br label %132

132:                                              ; preds = %131, %102
  br label %133

133:                                              ; preds = %132, %99, %96, %37
  br label %144

134:                                              ; preds = %20
  %135 = load i64, i64* %7, align 8
  %136 = add i64 %135, 1
  store i64 %136, i64* %7, align 8
  br label %8

137:                                              ; preds = %8
  %138 = load i32, i32* @NGX_LOG_ALERT, align 4
  %139 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %140 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = load i32*, i32** %5, align 8
  %143 = call i32 (i32, i32, i32, i8*, i32*, ...) @ngx_log_error(i32 %138, i32 %141, i32 0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32* %142)
  br label %144

144:                                              ; preds = %137, %133
  store i64 0, i64* %7, align 8
  br label %145

145:                                              ; preds = %184, %144
  %146 = load i64, i64* %7, align 8
  %147 = load i64, i64* @ngx_last_process, align 8
  %148 = icmp ult i64 %146, %147
  br i1 %148, label %149, label %187

149:                                              ; preds = %145
  %150 = load i32, i32* @NGX_LOG_DEBUG_CORE, align 4
  %151 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %152 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = load i64, i64* %7, align 8
  %155 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ngx_processes, align 8
  %156 = load i64, i64* %7, align 8
  %157 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %155, i64 %156
  %158 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %157, i32 0, i32 3
  %159 = load i32*, i32** %158, align 8
  %160 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ngx_processes, align 8
  %161 = load i64, i64* %7, align 8
  %162 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %160, i64 %161
  %163 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %162, i32 0, i32 0
  %164 = load i32*, i32** %163, align 8
  %165 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ngx_processes, align 8
  %166 = load i64, i64* %7, align 8
  %167 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %165, i64 %166
  %168 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %167, i32 0, i32 2
  %169 = load i32, i32* %168, align 4
  %170 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ngx_processes, align 8
  %171 = load i64, i64* %7, align 8
  %172 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %170, i64 %171
  %173 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 8
  %175 = call i32 @ngx_log_debug5(i32 %150, i32 %153, i32 0, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i64 %154, i32* %159, i32* %164, i32 %169, i32 %174)
  %176 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ngx_processes, align 8
  %177 = load i64, i64* %7, align 8
  %178 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %176, i64 %177
  %179 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %178, i32 0, i32 0
  %180 = load i32*, i32** %179, align 8
  %181 = icmp ne i32* %180, null
  br i1 %181, label %182, label %183

182:                                              ; preds = %149
  store i32 1, i32* %3, align 4
  br label %188

183:                                              ; preds = %149
  br label %184

184:                                              ; preds = %183
  %185 = load i64, i64* %7, align 8
  %186 = add i64 %185, 1
  store i64 %186, i64* %7, align 8
  br label %145

187:                                              ; preds = %145
  store i32 0, i32* %3, align 4
  br label %188

188:                                              ; preds = %187, %182
  %189 = load i32, i32* %3, align 4
  ret i32 %189
}

declare dso_local i64 @GetExitCodeProcess(i32*, i32*) #1

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*, i32*, ...) #1

declare dso_local i32 @ngx_close_handle(i32*) #1

declare dso_local i64 @ngx_spawn_process(%struct.TYPE_5__*, i32*, i64) #1

declare dso_local i32 @ngx_log_debug5(i32, i32, i32, i8*, i64, i32*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
