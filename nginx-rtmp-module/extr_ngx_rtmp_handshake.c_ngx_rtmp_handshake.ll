; ModuleID = '/home/carl/AnghaBench/nginx-rtmp-module/extr_ngx_rtmp_handshake.c_ngx_rtmp_handshake.c'
source_filename = "/home/carl/AnghaBench/nginx-rtmp-module/extr_ngx_rtmp_handshake.c_ngx_rtmp_handshake.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_10__*, i32, %struct.TYPE_7__* }
%struct.TYPE_10__ = type { i32 (%struct.TYPE_10__*)* }
%struct.TYPE_7__ = type { i32 }

@ngx_rtmp_handshake_send = common dso_local global i32 0, align 4
@NGX_LOG_DEBUG_RTMP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"handshake: start server handshake\00", align 1
@NGX_RTMP_HANDSHAKE_SERVER_RECV_CHALLENGE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ngx_rtmp_handshake(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %4 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 2
  %6 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  store %struct.TYPE_9__* %6, %struct.TYPE_9__** %3, align 8
  %7 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 0
  store i32 (%struct.TYPE_10__*)* @ngx_rtmp_handshake_recv, i32 (%struct.TYPE_10__*)** %10, align 8
  %11 = load i32, i32* @ngx_rtmp_handshake_send, align 4
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 2
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  store i32 %11, i32* %15, align 4
  %16 = load i32, i32* @NGX_LOG_DEBUG_RTMP, align 4
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 2
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @ngx_log_debug0(i32 %16, i32 %21, i32 0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %24 = call i32 @ngx_rtmp_alloc_handshake_buffer(%struct.TYPE_8__* %23)
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* @NGX_RTMP_HANDSHAKE_SERVER_RECV_CHALLENGE, align 4
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 8
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %31, align 8
  %33 = call i32 @ngx_rtmp_handshake_recv(%struct.TYPE_10__* %32)
  ret void
}

declare dso_local i32 @ngx_rtmp_handshake_recv(%struct.TYPE_10__*) #1

declare dso_local i32 @ngx_log_debug0(i32, i32, i32, i8*) #1

declare dso_local i32 @ngx_rtmp_alloc_handshake_buffer(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
