; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_net.c_net_udp_recv_cb.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_net.c_net_udp_recv_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.udp_pcb = type { i32 }
%struct.pbuf = type { i32 }
%struct.TYPE_3__ = type { i64, i64, i32 }

@TYPE_UDP_SOCKET = common dso_local global i64 0, align 8
@LUA_NOREF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.udp_pcb*, %struct.pbuf*, i32*, i32)* @net_udp_recv_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @net_udp_recv_cb(i8* %0, %struct.udp_pcb* %1, %struct.pbuf* %2, i32* %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca %struct.udp_pcb*, align 8
  %8 = alloca %struct.pbuf*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_3__*, align 8
  store i8* %0, i8** %6, align 8
  store %struct.udp_pcb* %1, %struct.udp_pcb** %7, align 8
  store %struct.pbuf* %2, %struct.pbuf** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 %4, i32* %10, align 4
  %12 = load i8*, i8** %6, align 8
  %13 = bitcast i8* %12 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %13, %struct.TYPE_3__** %11, align 8
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %15 = icmp ne %struct.TYPE_3__* %14, null
  br i1 %15, label %16, label %33

16:                                               ; preds = %5
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %33

21:                                               ; preds = %16
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @TYPE_UDP_SOCKET, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %33, label %27

27:                                               ; preds = %21
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @LUA_NOREF, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %40

33:                                               ; preds = %27, %21, %16, %5
  %34 = load %struct.pbuf*, %struct.pbuf** %8, align 8
  %35 = icmp ne %struct.pbuf* %34, null
  br i1 %35, label %36, label %39

36:                                               ; preds = %33
  %37 = load %struct.pbuf*, %struct.pbuf** %8, align 8
  %38 = call i32 @pbuf_free(%struct.pbuf* %37)
  br label %39

39:                                               ; preds = %36, %33
  br label %46

40:                                               ; preds = %27
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %42 = load %struct.pbuf*, %struct.pbuf** %8, align 8
  %43 = load i32*, i32** %9, align 8
  %44 = load i32, i32* %10, align 4
  %45 = call i32 @net_recv_cb(%struct.TYPE_3__* %41, %struct.pbuf* %42, i32* %43, i32 %44)
  br label %46

46:                                               ; preds = %40, %39
  ret void
}

declare dso_local i32 @pbuf_free(%struct.pbuf*) #1

declare dso_local i32 @net_recv_cb(%struct.TYPE_3__*, %struct.pbuf*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
