; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_socket.c_tcp_connection_established.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_socket.c_tcp_connection_established.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.link_socket_actual = type { i32 }
%struct.gc_arena = type { i32 }

@M_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"TCP connection established with %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.link_socket_actual*)* @tcp_connection_established to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcp_connection_established(%struct.link_socket_actual* %0) #0 {
  %2 = alloca %struct.link_socket_actual*, align 8
  %3 = alloca %struct.gc_arena, align 4
  store %struct.link_socket_actual* %0, %struct.link_socket_actual** %2, align 8
  %4 = call i32 (...) @gc_new()
  %5 = getelementptr inbounds %struct.gc_arena, %struct.gc_arena* %3, i32 0, i32 0
  store i32 %4, i32* %5, align 4
  %6 = load i32, i32* @M_INFO, align 4
  %7 = load %struct.link_socket_actual*, %struct.link_socket_actual** %2, align 8
  %8 = call i32 @print_link_socket_actual(%struct.link_socket_actual* %7, %struct.gc_arena* %3)
  %9 = call i32 @msg(i32 %6, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %8)
  %10 = call i32 @gc_free(%struct.gc_arena* %3)
  ret void
}

declare dso_local i32 @gc_new(...) #1

declare dso_local i32 @msg(i32, i8*, i32) #1

declare dso_local i32 @print_link_socket_actual(%struct.link_socket_actual*, %struct.gc_arena*) #1

declare dso_local i32 @gc_free(%struct.gc_arena*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
