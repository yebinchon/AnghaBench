; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_forward.c_check_add_routes_dowork.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_forward.c_check_add_routes_dowork.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.context = type { %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { i32, %struct.TYPE_8__, i32, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i64, i32 }

@ETT_DEFAULT = common dso_local global i32 0, align 4
@D_ROUTE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"Route: Waiting for TUN/TAP interface to come up...\00", align 1
@SIGHUP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"ip-fail\00", align 1
@now = common dso_local global i32 0, align 4
@M_INFO = common dso_local global i32 0, align 4
@M_NOPREFIX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @check_add_routes_dowork(%struct.context* %0) #0 {
  %2 = alloca %struct.context*, align 8
  store %struct.context* %0, %struct.context** %2, align 8
  %3 = load %struct.context*, %struct.context** %2, align 8
  %4 = getelementptr inbounds %struct.context, %struct.context* %3, i32 0, i32 2
  %5 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 1
  %6 = load i32, i32* %5, align 8
  %7 = load %struct.context*, %struct.context** %2, align 8
  %8 = getelementptr inbounds %struct.context, %struct.context* %7, i32 0, i32 2
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = call i64 @test_routes(i32 %6, i64 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load %struct.context*, %struct.context** %2, align 8
  %15 = call i32 @check_add_routes_action(%struct.context* %14, i32 0)
  br label %72

16:                                               ; preds = %1
  %17 = load %struct.context*, %struct.context** %2, align 8
  %18 = getelementptr inbounds %struct.context, %struct.context* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 3
  %20 = load %struct.context*, %struct.context** %2, align 8
  %21 = getelementptr inbounds %struct.context, %struct.context* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 2
  %23 = load i32, i32* @ETT_DEFAULT, align 4
  %24 = call i64 @event_timeout_trigger(i32* %19, i32* %22, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %16
  %27 = load %struct.context*, %struct.context** %2, align 8
  %28 = call i32 @check_add_routes_action(%struct.context* %27, i32 1)
  br label %71

29:                                               ; preds = %16
  %30 = load i32, i32* @D_ROUTE, align 4
  %31 = call i32 @msg(i32 %30, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  %32 = load %struct.context*, %struct.context** %2, align 8
  %33 = getelementptr inbounds %struct.context, %struct.context* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %52

37:                                               ; preds = %29
  %38 = load %struct.context*, %struct.context** %2, align 8
  %39 = getelementptr inbounds %struct.context, %struct.context* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @tun_standby(i64 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %51, label %44

44:                                               ; preds = %37
  %45 = load %struct.context*, %struct.context** %2, align 8
  %46 = load i32, i32* @SIGHUP, align 4
  %47 = call i32 @register_signal(%struct.context* %45, i32 %46, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %48 = load %struct.context*, %struct.context** %2, align 8
  %49 = getelementptr inbounds %struct.context, %struct.context* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  store i32 10, i32* %50, align 8
  br label %51

51:                                               ; preds = %44, %37
  br label %52

52:                                               ; preds = %51, %29
  %53 = call i32 (...) @update_time()
  %54 = load %struct.context*, %struct.context** %2, align 8
  %55 = getelementptr inbounds %struct.context, %struct.context* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = icmp ne i32 %58, 1
  br i1 %59, label %60, label %66

60:                                               ; preds = %52
  %61 = load %struct.context*, %struct.context** %2, align 8
  %62 = getelementptr inbounds %struct.context, %struct.context* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 1
  %64 = load i32, i32* @now, align 4
  %65 = call i32 @event_timeout_init(%struct.TYPE_8__* %63, i32 1, i32 %64)
  br label %66

66:                                               ; preds = %60, %52
  %67 = load %struct.context*, %struct.context** %2, align 8
  %68 = getelementptr inbounds %struct.context, %struct.context* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  %70 = call i32 @event_timeout_reset(i32* %69)
  br label %71

71:                                               ; preds = %66, %26
  br label %72

72:                                               ; preds = %71, %13
  ret void
}

declare dso_local i64 @test_routes(i32, i64) #1

declare dso_local i32 @check_add_routes_action(%struct.context*, i32) #1

declare dso_local i64 @event_timeout_trigger(i32*, i32*, i32) #1

declare dso_local i32 @msg(i32, i8*) #1

declare dso_local i32 @tun_standby(i64) #1

declare dso_local i32 @register_signal(%struct.context*, i32, i8*) #1

declare dso_local i32 @update_time(...) #1

declare dso_local i32 @event_timeout_init(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @event_timeout_reset(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
