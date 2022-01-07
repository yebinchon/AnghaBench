; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_openvpn.c_tunnel_point_to_point.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_openvpn.c_tunnel_point_to_point.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.context = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i64 }

@CM_P2P = common dso_local global i32 0, align 4
@CC_HARD_USR1_TO_HUP = common dso_local global i32 0, align 4
@PERF_EVENT_LOOP = common dso_local global i32 0, align 4
@ES_TIMEOUT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.context*)* @tunnel_point_to_point to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tunnel_point_to_point(%struct.context* %0) #0 {
  %2 = alloca %struct.context*, align 8
  store %struct.context* %0, %struct.context** %2, align 8
  %3 = load %struct.context*, %struct.context** %2, align 8
  %4 = call i32 @context_clear_2(%struct.context* %3)
  %5 = load i32, i32* @CM_P2P, align 4
  %6 = load %struct.context*, %struct.context** %2, align 8
  %7 = getelementptr inbounds %struct.context, %struct.context* %6, i32 0, i32 2
  store i32 %5, i32* %7, align 4
  %8 = load %struct.context*, %struct.context** %2, align 8
  %9 = load %struct.context*, %struct.context** %2, align 8
  %10 = getelementptr inbounds %struct.context, %struct.context* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @CC_HARD_USR1_TO_HUP, align 4
  %13 = call i32 @init_instance_handle_signals(%struct.context* %8, i32 %11, i32 %12)
  %14 = load %struct.context*, %struct.context** %2, align 8
  %15 = call i64 @IS_SIG(%struct.context* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  ret void

18:                                               ; preds = %1
  br label %19

19:                                               ; preds = %18, %36, %38
  %20 = load i32, i32* @PERF_EVENT_LOOP, align 4
  %21 = call i32 @perf_push(i32 %20)
  %22 = load %struct.context*, %struct.context** %2, align 8
  %23 = call i32 @pre_select(%struct.context* %22)
  %24 = call i32 (...) @P2P_CHECK_SIG()
  %25 = load %struct.context*, %struct.context** %2, align 8
  %26 = load %struct.context*, %struct.context** %2, align 8
  %27 = call i32 @p2p_iow_flags(%struct.context* %26)
  %28 = call i32 @io_wait(%struct.context* %25, i32 %27)
  %29 = call i32 (...) @P2P_CHECK_SIG()
  %30 = load %struct.context*, %struct.context** %2, align 8
  %31 = getelementptr inbounds %struct.context, %struct.context* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @ES_TIMEOUT, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %19
  %37 = call i32 (...) @perf_pop()
  br label %19

38:                                               ; preds = %19
  %39 = load %struct.context*, %struct.context** %2, align 8
  %40 = call i32 @process_io(%struct.context* %39)
  %41 = call i32 (...) @P2P_CHECK_SIG()
  %42 = call i32 (...) @perf_pop()
  br label %19
}

declare dso_local i32 @context_clear_2(%struct.context*) #1

declare dso_local i32 @init_instance_handle_signals(%struct.context*, i32, i32) #1

declare dso_local i64 @IS_SIG(%struct.context*) #1

declare dso_local i32 @perf_push(i32) #1

declare dso_local i32 @pre_select(%struct.context*) #1

declare dso_local i32 @P2P_CHECK_SIG(...) #1

declare dso_local i32 @io_wait(%struct.context*, i32) #1

declare dso_local i32 @p2p_iow_flags(%struct.context*) #1

declare dso_local i32 @perf_pop(...) #1

declare dso_local i32 @process_io(%struct.context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
