; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_forward.c_read_incoming_link.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_forward.c_read_incoming_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.context = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i64 }

@PERF_READ_IN_LINK = common dso_local global i32 0, align 4
@FRAME_HEADROOM_MARKER_READ_LINK = common dso_local global i32 0, align 4
@SIGTERM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"connection-reset-inetd\00", align 1
@D_STREAM_ERRORS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"Connection reset, inetd/xinetd exit [%d]\00", align 1
@SIGUSR1 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"connection-reset\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"Connection reset, restarting [%d]\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"read\00", align 1
@port_share = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @read_incoming_link(%struct.context* %0) #0 {
  %2 = alloca %struct.context*, align 8
  %3 = alloca i32, align 4
  store %struct.context* %0, %struct.context** %2, align 8
  %4 = load i32, i32* @PERF_READ_IN_LINK, align 4
  %5 = call i32 @perf_push(i32 %4)
  %6 = load %struct.context*, %struct.context** %2, align 8
  %7 = getelementptr inbounds %struct.context, %struct.context* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 5
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.context*, %struct.context** %2, align 8
  %13 = getelementptr inbounds %struct.context, %struct.context* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 3
  store i32 %11, i32* %14, align 4
  %15 = load %struct.context*, %struct.context** %2, align 8
  %16 = getelementptr inbounds %struct.context, %struct.context* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 3
  %18 = load %struct.context*, %struct.context** %2, align 8
  %19 = getelementptr inbounds %struct.context, %struct.context* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 4
  %21 = load i32, i32* @FRAME_HEADROOM_MARKER_READ_LINK, align 4
  %22 = call i32 @FRAME_HEADROOM_ADJ(i32* %20, i32 %21)
  %23 = call i32 @buf_init(i32* %17, i32 %22)
  %24 = call i32 @ASSERT(i32 %23)
  %25 = load %struct.context*, %struct.context** %2, align 8
  %26 = getelementptr inbounds %struct.context, %struct.context* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.context*, %struct.context** %2, align 8
  %30 = getelementptr inbounds %struct.context, %struct.context* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 3
  %32 = load %struct.context*, %struct.context** %2, align 8
  %33 = getelementptr inbounds %struct.context, %struct.context* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 2
  %35 = call i32 @link_socket_read(i32 %28, i32* %31, i32* %34)
  store i32 %35, i32* %3, align 4
  %36 = load %struct.context*, %struct.context** %2, align 8
  %37 = getelementptr inbounds %struct.context, %struct.context* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* %3, align 4
  %41 = call i64 @socket_connection_reset(i32 %39, i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %65

43:                                               ; preds = %1
  %44 = load %struct.context*, %struct.context** %2, align 8
  %45 = getelementptr inbounds %struct.context, %struct.context* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %43
  %50 = load %struct.context*, %struct.context** %2, align 8
  %51 = load i32, i32* @SIGTERM, align 4
  %52 = call i32 @register_signal(%struct.context* %50, i32 %51, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %53 = load i32, i32* @D_STREAM_ERRORS, align 4
  %54 = load i32, i32* %3, align 4
  %55 = call i32 @msg(i32 %53, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %54)
  br label %63

56:                                               ; preds = %43
  %57 = load %struct.context*, %struct.context** %2, align 8
  %58 = load i32, i32* @SIGUSR1, align 4
  %59 = call i32 @register_signal(%struct.context* %57, i32 %58, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %60 = load i32, i32* @D_STREAM_ERRORS, align 4
  %61 = load i32, i32* %3, align 4
  %62 = call i32 @msg(i32 %60, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %61)
  br label %63

63:                                               ; preds = %56, %49
  %64 = call i32 (...) @perf_pop()
  br label %75

65:                                               ; preds = %1
  %66 = load i32, i32* %3, align 4
  %67 = load %struct.context*, %struct.context** %2, align 8
  %68 = getelementptr inbounds %struct.context, %struct.context* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @check_status(i32 %66, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 %70, i32* null)
  %72 = load %struct.context*, %struct.context** %2, align 8
  %73 = call i32 @socks_postprocess_incoming_link(%struct.context* %72)
  %74 = call i32 (...) @perf_pop()
  br label %75

75:                                               ; preds = %65, %63
  ret void
}

declare dso_local i32 @perf_push(i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @buf_init(i32*, i32) #1

declare dso_local i32 @FRAME_HEADROOM_ADJ(i32*, i32) #1

declare dso_local i32 @link_socket_read(i32, i32*, i32*) #1

declare dso_local i64 @socket_connection_reset(i32, i32) #1

declare dso_local i32 @register_signal(%struct.context*, i32, i8*) #1

declare dso_local i32 @msg(i32, i8*, i32) #1

declare dso_local i32 @perf_pop(...) #1

declare dso_local i32 @check_status(i32, i8*, i32, i32*) #1

declare dso_local i32 @socks_postprocess_incoming_link(%struct.context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
