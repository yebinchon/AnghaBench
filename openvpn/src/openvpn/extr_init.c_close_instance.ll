; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_init.c_close_instance.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_init.c_close_instance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.context = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32* }

@CM_P2P = common dso_local global i64 0, align 8
@CM_CHILD_TCP = common dso_local global i64 0, align 8
@CM_CHILD_UDP = common dso_local global i64 0, align 8
@CM_TOP = common dso_local global i64 0, align 8
@management = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @close_instance(%struct.context* %0) #0 {
  %2 = alloca %struct.context*, align 8
  store %struct.context* %0, %struct.context** %2, align 8
  %3 = load %struct.context*, %struct.context** %2, align 8
  %4 = call i32 @do_close_event_set(%struct.context* %3)
  %5 = load %struct.context*, %struct.context** %2, align 8
  %6 = getelementptr inbounds %struct.context, %struct.context* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @CM_P2P, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %28, label %10

10:                                               ; preds = %1
  %11 = load %struct.context*, %struct.context** %2, align 8
  %12 = getelementptr inbounds %struct.context, %struct.context* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @CM_CHILD_TCP, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %28, label %16

16:                                               ; preds = %10
  %17 = load %struct.context*, %struct.context** %2, align 8
  %18 = getelementptr inbounds %struct.context, %struct.context* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @CM_CHILD_UDP, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %28, label %22

22:                                               ; preds = %16
  %23 = load %struct.context*, %struct.context** %2, align 8
  %24 = getelementptr inbounds %struct.context, %struct.context* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @CM_TOP, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %71

28:                                               ; preds = %22, %16, %10, %1
  %29 = load %struct.context*, %struct.context** %2, align 8
  %30 = call i32 @do_close_check_if_restart_permitted(%struct.context* %29)
  %31 = load %struct.context*, %struct.context** %2, align 8
  %32 = call i32 @do_close_free_buf(%struct.context* %31)
  %33 = load %struct.context*, %struct.context** %2, align 8
  %34 = call i32 @do_close_tls(%struct.context* %33)
  %35 = load %struct.context*, %struct.context** %2, align 8
  %36 = load %struct.context*, %struct.context** %2, align 8
  %37 = getelementptr inbounds %struct.context, %struct.context* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @CM_P2P, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %47, label %41

41:                                               ; preds = %28
  %42 = load %struct.context*, %struct.context** %2, align 8
  %43 = getelementptr inbounds %struct.context, %struct.context* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @CM_TOP, align 8
  %46 = icmp eq i64 %44, %45
  br label %47

47:                                               ; preds = %41, %28
  %48 = phi i1 [ true, %28 ], [ %46, %41 ]
  %49 = zext i1 %48 to i32
  %50 = call i32 @do_close_free_key_schedule(%struct.context* %35, i32 %49)
  %51 = load %struct.context*, %struct.context** %2, align 8
  %52 = call i32 @restore_ncp_options(%struct.context* %51)
  %53 = load %struct.context*, %struct.context** %2, align 8
  %54 = call i32 @do_close_link_socket(%struct.context* %53)
  %55 = load %struct.context*, %struct.context** %2, align 8
  %56 = call i32 @do_close_tun(%struct.context* %55, i32 0)
  %57 = load %struct.context*, %struct.context** %2, align 8
  %58 = call i32 @do_close_packet_id(%struct.context* %57)
  %59 = load %struct.context*, %struct.context** %2, align 8
  %60 = call i32 @do_close_status_output(%struct.context* %59)
  %61 = load %struct.context*, %struct.context** %2, align 8
  %62 = call i32 @do_close_ifconfig_pool_persist(%struct.context* %61)
  %63 = load %struct.context*, %struct.context** %2, align 8
  %64 = call i32 @do_env_set_destroy(%struct.context* %63)
  %65 = load %struct.context*, %struct.context** %2, align 8
  %66 = call i32 @uninit_proxy(%struct.context* %65)
  %67 = load %struct.context*, %struct.context** %2, align 8
  %68 = getelementptr inbounds %struct.context, %struct.context* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = call i32 @gc_free(i32* %69)
  br label %71

71:                                               ; preds = %47, %22
  ret void
}

declare dso_local i32 @do_close_event_set(%struct.context*) #1

declare dso_local i32 @do_close_check_if_restart_permitted(%struct.context*) #1

declare dso_local i32 @do_close_free_buf(%struct.context*) #1

declare dso_local i32 @do_close_tls(%struct.context*) #1

declare dso_local i32 @do_close_free_key_schedule(%struct.context*, i32) #1

declare dso_local i32 @restore_ncp_options(%struct.context*) #1

declare dso_local i32 @do_close_link_socket(%struct.context*) #1

declare dso_local i32 @do_close_tun(%struct.context*, i32) #1

declare dso_local i32 @do_close_packet_id(%struct.context*) #1

declare dso_local i32 @do_close_status_output(%struct.context*) #1

declare dso_local i32 @do_close_ifconfig_pool_persist(%struct.context*) #1

declare dso_local i32 @do_env_set_destroy(%struct.context*) #1

declare dso_local i32 @uninit_proxy(%struct.context*) #1

declare dso_local i32 @gc_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
