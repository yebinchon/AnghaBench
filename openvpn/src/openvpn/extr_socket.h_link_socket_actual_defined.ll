; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_socket.h_link_socket_actual_defined.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_socket.h_link_socket_actual_defined.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.link_socket_actual = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.link_socket_actual*)* @link_socket_actual_defined to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @link_socket_actual_defined(%struct.link_socket_actual* %0) #0 {
  %2 = alloca %struct.link_socket_actual*, align 8
  store %struct.link_socket_actual* %0, %struct.link_socket_actual** %2, align 8
  %3 = load %struct.link_socket_actual*, %struct.link_socket_actual** %2, align 8
  %4 = icmp ne %struct.link_socket_actual* %3, null
  br i1 %4, label %5, label %10

5:                                                ; preds = %1
  %6 = load %struct.link_socket_actual*, %struct.link_socket_actual** %2, align 8
  %7 = getelementptr inbounds %struct.link_socket_actual, %struct.link_socket_actual* %6, i32 0, i32 0
  %8 = call i64 @addr_defined(i32* %7)
  %9 = icmp ne i64 %8, 0
  br label %10

10:                                               ; preds = %5, %1
  %11 = phi i1 [ false, %1 ], [ %9, %5 ]
  %12 = zext i1 %11 to i32
  ret i32 %12
}

declare dso_local i64 @addr_defined(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
