; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_socket.c_bind_local.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_socket.c_bind_local.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.link_socket = type { %struct.TYPE_4__, i32, i32, i64, i64 }
%struct.TYPE_4__ = type { i64, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@PROTO_UDP = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [6 x i8] c"SOCKS\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"TCP/UDP\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.link_socket*, i32)* @bind_local to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bind_local(%struct.link_socket* %0, i32 %1) #0 {
  %3 = alloca %struct.link_socket*, align 8
  %4 = alloca i32, align 4
  store %struct.link_socket* %0, %struct.link_socket** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.link_socket*, %struct.link_socket** %3, align 8
  %6 = getelementptr inbounds %struct.link_socket, %struct.link_socket* %5, i32 0, i32 4
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %50

9:                                                ; preds = %2
  %10 = load %struct.link_socket*, %struct.link_socket** %3, align 8
  %11 = getelementptr inbounds %struct.link_socket, %struct.link_socket* %10, i32 0, i32 3
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %33

14:                                               ; preds = %9
  %15 = load %struct.link_socket*, %struct.link_socket** %3, align 8
  %16 = getelementptr inbounds %struct.link_socket, %struct.link_socket* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @PROTO_UDP, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %33

21:                                               ; preds = %14
  %22 = load %struct.link_socket*, %struct.link_socket** %3, align 8
  %23 = getelementptr inbounds %struct.link_socket, %struct.link_socket* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.link_socket*, %struct.link_socket** %3, align 8
  %26 = getelementptr inbounds %struct.link_socket, %struct.link_socket* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 2
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @socket_bind(i32 %24, i32 %30, i32 %31, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 0)
  br label %49

33:                                               ; preds = %14, %9
  %34 = load %struct.link_socket*, %struct.link_socket** %3, align 8
  %35 = getelementptr inbounds %struct.link_socket, %struct.link_socket* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.link_socket*, %struct.link_socket** %3, align 8
  %38 = getelementptr inbounds %struct.link_socket, %struct.link_socket* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 2
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %4, align 4
  %44 = load %struct.link_socket*, %struct.link_socket** %3, align 8
  %45 = getelementptr inbounds %struct.link_socket, %struct.link_socket* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @socket_bind(i32 %36, i32 %42, i32 %43, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %47)
  br label %49

49:                                               ; preds = %33, %21
  br label %50

50:                                               ; preds = %49, %2
  ret void
}

declare dso_local i32 @socket_bind(i32, i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
