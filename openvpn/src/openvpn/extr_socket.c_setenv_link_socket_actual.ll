; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_socket.c_setenv_link_socket_actual.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_socket.c_setenv_link_socket_actual.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.env_set = type { i32 }
%struct.link_socket_actual = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @setenv_link_socket_actual(%struct.env_set* %0, i8* %1, %struct.link_socket_actual* %2, i32 %3) #0 {
  %5 = alloca %struct.env_set*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.link_socket_actual*, align 8
  %8 = alloca i32, align 4
  store %struct.env_set* %0, %struct.env_set** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.link_socket_actual* %2, %struct.link_socket_actual** %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load %struct.env_set*, %struct.env_set** %5, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = load %struct.link_socket_actual*, %struct.link_socket_actual** %7, align 8
  %12 = getelementptr inbounds %struct.link_socket_actual, %struct.link_socket_actual* %11, i32 0, i32 0
  %13 = load i32, i32* %8, align 4
  %14 = call i32 @setenv_sockaddr(%struct.env_set* %9, i8* %10, i32* %12, i32 %13)
  ret void
}

declare dso_local i32 @setenv_sockaddr(%struct.env_set*, i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
