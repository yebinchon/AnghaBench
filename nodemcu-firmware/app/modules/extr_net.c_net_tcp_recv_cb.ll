; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_net.c_net_tcp_recv_cb.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_net.c_net_tcp_recv_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcp_pcb = type { i32 }
%struct.pbuf = type { i32 }
%struct.TYPE_5__ = type { i64, i64, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i64 }

@TYPE_TCP_CLIENT = common dso_local global i64 0, align 8
@LUA_NOREF = common dso_local global i64 0, align 8
@ERR_ABRT = common dso_local global i32 0, align 4
@TCP_WND = common dso_local global i32 0, align 4
@ERR_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.tcp_pcb*, %struct.pbuf*, i32)* @net_tcp_recv_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @net_tcp_recv_cb(i8* %0, %struct.tcp_pcb* %1, %struct.pbuf* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.tcp_pcb*, align 8
  %8 = alloca %struct.pbuf*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_5__*, align 8
  store i8* %0, i8** %6, align 8
  store %struct.tcp_pcb* %1, %struct.tcp_pcb** %7, align 8
  store %struct.pbuf* %2, %struct.pbuf** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %12, %struct.TYPE_5__** %10, align 8
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %14 = icmp ne %struct.TYPE_5__* %13, null
  br i1 %14, label %15, label %32

15:                                               ; preds = %4
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %32

20:                                               ; preds = %15
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @TYPE_TCP_CLIENT, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %32, label %26

26:                                               ; preds = %20
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @LUA_NOREF, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %26, %20, %15, %4
  %33 = load i32, i32* @ERR_ABRT, align 4
  store i32 %33, i32* %5, align 4
  br label %60

34:                                               ; preds = %26
  %35 = load %struct.pbuf*, %struct.pbuf** %8, align 8
  %36 = icmp ne %struct.pbuf* %35, null
  br i1 %36, label %43, label %37

37:                                               ; preds = %34
  %38 = load i8*, i8** %6, align 8
  %39 = load i32, i32* %9, align 4
  %40 = call i32 @net_err_cb(i8* %38, i32 %39)
  %41 = load %struct.tcp_pcb*, %struct.tcp_pcb** %7, align 8
  %42 = call i32 @tcp_close(%struct.tcp_pcb* %41)
  store i32 %42, i32* %5, align 4
  br label %60

43:                                               ; preds = %34
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %45 = load %struct.pbuf*, %struct.pbuf** %8, align 8
  %46 = call i32 @net_recv_cb(%struct.TYPE_5__* %44, %struct.pbuf* %45, i32 0, i32 0)
  %47 = load %struct.tcp_pcb*, %struct.tcp_pcb** %7, align 8
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %43
  br label %56

54:                                               ; preds = %43
  %55 = load i32, i32* @TCP_WND, align 4
  br label %56

56:                                               ; preds = %54, %53
  %57 = phi i32 [ 0, %53 ], [ %55, %54 ]
  %58 = call i32 @tcp_recved(%struct.tcp_pcb* %47, i32 %57)
  %59 = load i32, i32* @ERR_OK, align 4
  store i32 %59, i32* %5, align 4
  br label %60

60:                                               ; preds = %56, %37, %32
  %61 = load i32, i32* %5, align 4
  ret i32 %61
}

declare dso_local i32 @net_err_cb(i8*, i32) #1

declare dso_local i32 @tcp_close(%struct.tcp_pcb*) #1

declare dso_local i32 @net_recv_cb(%struct.TYPE_5__*, %struct.pbuf*, i32, i32) #1

declare dso_local i32 @tcp_recved(%struct.tcp_pcb*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
