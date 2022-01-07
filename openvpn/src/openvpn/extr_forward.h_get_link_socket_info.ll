; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_forward.h_get_link_socket_info.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_forward.h_get_link_socket_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.link_socket_info = type { i32 }
%struct.context = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__*, %struct.link_socket_info* }
%struct.TYPE_3__ = type { %struct.link_socket_info }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.link_socket_info* (%struct.context*)* @get_link_socket_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.link_socket_info* @get_link_socket_info(%struct.context* %0) #0 {
  %2 = alloca %struct.link_socket_info*, align 8
  %3 = alloca %struct.context*, align 8
  store %struct.context* %0, %struct.context** %3, align 8
  %4 = load %struct.context*, %struct.context** %3, align 8
  %5 = getelementptr inbounds %struct.context, %struct.context* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 1
  %7 = load %struct.link_socket_info*, %struct.link_socket_info** %6, align 8
  %8 = icmp ne %struct.link_socket_info* %7, null
  br i1 %8, label %9, label %14

9:                                                ; preds = %1
  %10 = load %struct.context*, %struct.context** %3, align 8
  %11 = getelementptr inbounds %struct.context, %struct.context* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 1
  %13 = load %struct.link_socket_info*, %struct.link_socket_info** %12, align 8
  store %struct.link_socket_info* %13, %struct.link_socket_info** %2, align 8
  br label %20

14:                                               ; preds = %1
  %15 = load %struct.context*, %struct.context** %3, align 8
  %16 = getelementptr inbounds %struct.context, %struct.context* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  store %struct.link_socket_info* %19, %struct.link_socket_info** %2, align 8
  br label %20

20:                                               ; preds = %14, %9
  %21 = load %struct.link_socket_info*, %struct.link_socket_info** %2, align 8
  ret %struct.link_socket_info* %21
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
