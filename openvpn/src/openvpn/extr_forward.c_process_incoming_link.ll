; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_forward.c_process_incoming_link.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_forward.c_process_incoming_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.context = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.link_socket_info = type { i32 }

@PERF_PROC_IN_LINK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.context*)* @process_incoming_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_incoming_link(%struct.context* %0) #0 {
  %2 = alloca %struct.context*, align 8
  %3 = alloca %struct.link_socket_info*, align 8
  %4 = alloca i32*, align 8
  store %struct.context* %0, %struct.context** %2, align 8
  %5 = load i32, i32* @PERF_PROC_IN_LINK, align 4
  %6 = call i32 @perf_push(i32 %5)
  %7 = load %struct.context*, %struct.context** %2, align 8
  %8 = call %struct.link_socket_info* @get_link_socket_info(%struct.context* %7)
  store %struct.link_socket_info* %8, %struct.link_socket_info** %3, align 8
  %9 = load %struct.context*, %struct.context** %2, align 8
  %10 = getelementptr inbounds %struct.context, %struct.context* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  store i32* %13, i32** %4, align 8
  %14 = load %struct.context*, %struct.context** %2, align 8
  %15 = load %struct.link_socket_info*, %struct.link_socket_info** %3, align 8
  %16 = call i32 @process_incoming_link_part1(%struct.context* %14, %struct.link_socket_info* %15, i32 0)
  %17 = load %struct.context*, %struct.context** %2, align 8
  %18 = load %struct.link_socket_info*, %struct.link_socket_info** %3, align 8
  %19 = load i32*, i32** %4, align 8
  %20 = call i32 @process_incoming_link_part2(%struct.context* %17, %struct.link_socket_info* %18, i32* %19)
  %21 = call i32 (...) @perf_pop()
  ret void
}

declare dso_local i32 @perf_push(i32) #1

declare dso_local %struct.link_socket_info* @get_link_socket_info(%struct.context*) #1

declare dso_local i32 @process_incoming_link_part1(%struct.context*, %struct.link_socket_info*, i32) #1

declare dso_local i32 @process_incoming_link_part2(%struct.context*, %struct.link_socket_info*, i32*) #1

declare dso_local i32 @perf_pop(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
