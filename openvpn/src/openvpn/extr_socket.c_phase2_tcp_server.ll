; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_socket.c_phase2_tcp_server.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_socket.c_phase2_tcp_server.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.link_socket = type { i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 }

@SIGTERM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.link_socket*, i8*, i32*)* @phase2_tcp_server to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @phase2_tcp_server(%struct.link_socket* %0, i8* %1, i32* %2) #0 {
  %4 = alloca %struct.link_socket*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  store %struct.link_socket* %0, %struct.link_socket** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32* %2, i32** %6, align 8
  %7 = load %struct.link_socket*, %struct.link_socket** %4, align 8
  %8 = getelementptr inbounds %struct.link_socket, %struct.link_socket* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  switch i32 %9, label %68 [
    i32 130, label %10
    i32 128, label %30
    i32 129, label %41
  ]

10:                                               ; preds = %3
  %11 = load %struct.link_socket*, %struct.link_socket** %4, align 8
  %12 = getelementptr inbounds %struct.link_socket, %struct.link_socket* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.link_socket*, %struct.link_socket** %4, align 8
  %15 = getelementptr inbounds %struct.link_socket, %struct.link_socket* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i8*, i8** %5, align 8
  %20 = load %struct.link_socket*, %struct.link_socket** %4, align 8
  %21 = getelementptr inbounds %struct.link_socket, %struct.link_socket* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32*, i32** %6, align 8
  %27 = call i32 @socket_listen_accept(i32 %13, i32* %18, i8* %19, i32 %25, i32 1, i32 0, i32* %26)
  %28 = load %struct.link_socket*, %struct.link_socket** %4, align 8
  %29 = getelementptr inbounds %struct.link_socket, %struct.link_socket* %28, i32 0, i32 2
  store i32 %27, i32* %29, align 8
  br label %70

30:                                               ; preds = %3
  %31 = load %struct.link_socket*, %struct.link_socket** %4, align 8
  %32 = getelementptr inbounds %struct.link_socket, %struct.link_socket* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.link_socket*, %struct.link_socket** %4, align 8
  %35 = getelementptr inbounds %struct.link_socket, %struct.link_socket* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @socket_do_listen(i32 %33, i32 %39, i32 1, i32 0)
  br label %70

41:                                               ; preds = %3
  %42 = load %struct.link_socket*, %struct.link_socket** %4, align 8
  %43 = getelementptr inbounds %struct.link_socket, %struct.link_socket* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.link_socket*, %struct.link_socket** %4, align 8
  %46 = getelementptr inbounds %struct.link_socket, %struct.link_socket* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = call i32 @socket_do_accept(i32 %44, i32* %49, i32 0)
  %51 = load %struct.link_socket*, %struct.link_socket** %4, align 8
  %52 = getelementptr inbounds %struct.link_socket, %struct.link_socket* %51, i32 0, i32 2
  store i32 %50, i32* %52, align 8
  %53 = load %struct.link_socket*, %struct.link_socket** %4, align 8
  %54 = getelementptr inbounds %struct.link_socket, %struct.link_socket* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @socket_defined(i32 %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %41
  %59 = load i32, i32* @SIGTERM, align 4
  %60 = load i32*, i32** %6, align 8
  store volatile i32 %59, i32* %60, align 4
  br label %70

61:                                               ; preds = %41
  %62 = load %struct.link_socket*, %struct.link_socket** %4, align 8
  %63 = getelementptr inbounds %struct.link_socket, %struct.link_socket* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  %67 = call i32 @tcp_connection_established(i32* %66)
  br label %70

68:                                               ; preds = %3
  %69 = call i32 @ASSERT(i32 0)
  br label %70

70:                                               ; preds = %58, %68, %61, %30, %10
  ret void
}

declare dso_local i32 @socket_listen_accept(i32, i32*, i8*, i32, i32, i32, i32*) #1

declare dso_local i32 @socket_do_listen(i32, i32, i32, i32) #1

declare dso_local i32 @socket_do_accept(i32, i32*, i32) #1

declare dso_local i32 @socket_defined(i32) #1

declare dso_local i32 @tcp_connection_established(i32*) #1

declare dso_local i32 @ASSERT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
