; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_forward.c_read_incoming_tun.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_forward.c_read_incoming_tun.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.context = type { %struct.TYPE_13__, %struct.TYPE_12__, %struct.TYPE_11__ }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_14__, i32, i32, %struct.TYPE_10__* }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_14__ }
%struct.TYPE_11__ = type { i32 }

@PERF_READ_IN_TUN = common dso_local global i32 0, align 4
@SIGTERM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"tun-stop\00", align 1
@M_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"TUN/TAP interface has been stopped, exiting\00", align 1
@SIGHUP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"tun-abort\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"TUN/TAP I/O operation aborted, restarting\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"read from TUN/TAP\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @read_incoming_tun(%struct.context* %0) #0 {
  %2 = alloca %struct.context*, align 8
  store %struct.context* %0, %struct.context** %2, align 8
  %3 = load i32, i32* @PERF_READ_IN_TUN, align 4
  %4 = call i32 @perf_push(i32 %3)
  %5 = load %struct.context*, %struct.context** %2, align 8
  %6 = getelementptr inbounds %struct.context, %struct.context* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 0
  %8 = load %struct.context*, %struct.context** %2, align 8
  %9 = getelementptr inbounds %struct.context, %struct.context* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 3
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 0
  %13 = bitcast %struct.TYPE_14__* %7 to i8*
  %14 = bitcast %struct.TYPE_14__* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %13, i8* align 4 %14, i64 4, i1 false)
  %15 = load %struct.context*, %struct.context** %2, align 8
  %16 = getelementptr inbounds %struct.context, %struct.context* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 0
  %18 = load %struct.context*, %struct.context** %2, align 8
  %19 = getelementptr inbounds %struct.context, %struct.context* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 2
  %21 = call i32 @FRAME_HEADROOM(i32* %20)
  %22 = call i32 @buf_init(%struct.TYPE_14__* %17, i32 %21)
  %23 = call i32 @ASSERT(i32 %22)
  %24 = load %struct.context*, %struct.context** %2, align 8
  %25 = getelementptr inbounds %struct.context, %struct.context* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 0
  %27 = load %struct.context*, %struct.context** %2, align 8
  %28 = getelementptr inbounds %struct.context, %struct.context* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 2
  %30 = call i32 @MAX_RW_SIZE_TUN(i32* %29)
  %31 = call i32 @buf_safe(%struct.TYPE_14__* %26, i32 %30)
  %32 = call i32 @ASSERT(i32 %31)
  %33 = load %struct.context*, %struct.context** %2, align 8
  %34 = getelementptr inbounds %struct.context, %struct.context* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.context*, %struct.context** %2, align 8
  %38 = getelementptr inbounds %struct.context, %struct.context* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 0
  %40 = call i32 @BPTR(%struct.TYPE_14__* %39)
  %41 = load %struct.context*, %struct.context** %2, align 8
  %42 = getelementptr inbounds %struct.context, %struct.context* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 2
  %44 = call i32 @MAX_RW_SIZE_TUN(i32* %43)
  %45 = call i32 @read_tun(i32 %36, i32 %40, i32 %44)
  %46 = load %struct.context*, %struct.context** %2, align 8
  %47 = getelementptr inbounds %struct.context, %struct.context* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %48, i32 0, i32 0
  store i32 %45, i32* %49, align 8
  %50 = load %struct.context*, %struct.context** %2, align 8
  %51 = getelementptr inbounds %struct.context, %struct.context* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i64 @tuntap_stop(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %64

57:                                               ; preds = %1
  %58 = load %struct.context*, %struct.context** %2, align 8
  %59 = load i32, i32* @SIGTERM, align 4
  %60 = call i32 @register_signal(%struct.context* %58, i32 %59, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %61 = load i32, i32* @M_INFO, align 4
  %62 = call i32 @msg(i32 %61, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  %63 = call i32 (...) @perf_pop()
  br label %94

64:                                               ; preds = %1
  %65 = load %struct.context*, %struct.context** %2, align 8
  %66 = getelementptr inbounds %struct.context, %struct.context* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = call i64 @tuntap_abort(i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %82

72:                                               ; preds = %64
  %73 = load %struct.context*, %struct.context** %2, align 8
  %74 = load i32, i32* @SIGHUP, align 4
  %75 = call i32 @register_signal(%struct.context* %73, i32 %74, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %76 = load %struct.context*, %struct.context** %2, align 8
  %77 = getelementptr inbounds %struct.context, %struct.context* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i32 0, i32 0
  store i32 10, i32* %78, align 8
  %79 = load i32, i32* @M_INFO, align 4
  %80 = call i32 @msg(i32 %79, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0))
  %81 = call i32 (...) @perf_pop()
  br label %94

82:                                               ; preds = %64
  %83 = load %struct.context*, %struct.context** %2, align 8
  %84 = getelementptr inbounds %struct.context, %struct.context* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.context*, %struct.context** %2, align 8
  %89 = getelementptr inbounds %struct.context, %struct.context* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @check_status(i32 %87, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32* null, i32 %91)
  %93 = call i32 (...) @perf_pop()
  br label %94

94:                                               ; preds = %82, %72, %57
  ret void
}

declare dso_local i32 @perf_push(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @buf_init(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @FRAME_HEADROOM(i32*) #1

declare dso_local i32 @buf_safe(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @MAX_RW_SIZE_TUN(i32*) #1

declare dso_local i32 @read_tun(i32, i32, i32) #1

declare dso_local i32 @BPTR(%struct.TYPE_14__*) #1

declare dso_local i64 @tuntap_stop(i32) #1

declare dso_local i32 @register_signal(%struct.context*, i32, i8*) #1

declare dso_local i32 @msg(i32, i8*) #1

declare dso_local i32 @perf_pop(...) #1

declare dso_local i64 @tuntap_abort(i32) #1

declare dso_local i32 @check_status(i32, i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
