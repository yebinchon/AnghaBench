; ModuleID = '/home/carl/AnghaBench/nginx-rtmp-module/extr_ngx_rtmp_handshake.c_ngx_rtmp_handshake_done.c'
source_filename = "/home/carl/AnghaBench/nginx-rtmp-module/extr_ngx_rtmp_handshake.c_ngx_rtmp_handshake_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }

@NGX_LOG_DEBUG_RTMP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"handshake: done\00", align 1
@NGX_RTMP_HANDSHAKE_DONE = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*)* @ngx_rtmp_handshake_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ngx_rtmp_handshake_done(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %2, align 8
  %3 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %4 = call i32 @ngx_rtmp_free_handshake_buffers(%struct.TYPE_9__* %3)
  %5 = load i32, i32* @NGX_LOG_DEBUG_RTMP, align 4
  %6 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 0
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @ngx_log_debug0(i32 %5, i32 %10, i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %13 = load i32, i32* @NGX_RTMP_HANDSHAKE_DONE, align 4
  %14 = call i64 @ngx_rtmp_fire_event(%struct.TYPE_9__* %12, i32 %13, i32* null, i32* null)
  %15 = load i64, i64* @NGX_OK, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %19 = call i32 @ngx_rtmp_finalize_session(%struct.TYPE_9__* %18)
  br label %23

20:                                               ; preds = %1
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %22 = call i32 @ngx_rtmp_cycle(%struct.TYPE_9__* %21)
  br label %23

23:                                               ; preds = %20, %17
  ret void
}

declare dso_local i32 @ngx_rtmp_free_handshake_buffers(%struct.TYPE_9__*) #1

declare dso_local i32 @ngx_log_debug0(i32, i32, i32, i8*) #1

declare dso_local i64 @ngx_rtmp_fire_event(%struct.TYPE_9__*, i32, i32*, i32*) #1

declare dso_local i32 @ngx_rtmp_finalize_session(%struct.TYPE_9__*) #1

declare dso_local i32 @ngx_rtmp_cycle(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
