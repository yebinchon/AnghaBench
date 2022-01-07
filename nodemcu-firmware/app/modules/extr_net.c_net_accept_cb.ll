; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_net.c_net_accept_cb.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_net.c_net_accept_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcp_pcb = type { i32, i32, i32 }
%struct.TYPE_7__ = type { i64, i64, %struct.tcp_pcb*, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i64, i32 }

@TYPE_TCP_SERVER = common dso_local global i64 0, align 8
@ERR_ABRT = common dso_local global i32 0, align 4
@LUA_NOREF = common dso_local global i64 0, align 8
@LUA_REGISTRYINDEX = common dso_local global i32 0, align 4
@TYPE_TCP_CLIENT = common dso_local global i32 0, align 4
@net_err_cb = common dso_local global i32 0, align 4
@net_tcp_recv_cb = common dso_local global i32 0, align 4
@net_sent_cb = common dso_local global i32 0, align 4
@SOF_KEEPALIVE = common dso_local global i32 0, align 4
@ERR_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.tcp_pcb*, i32)* @net_accept_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @net_accept_cb(i8* %0, %struct.tcp_pcb* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.tcp_pcb*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_7__*, align 8
  store i8* %0, i8** %5, align 8
  store %struct.tcp_pcb* %1, %struct.tcp_pcb** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %12, %struct.TYPE_7__** %8, align 8
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %14 = icmp ne %struct.TYPE_7__* %13, null
  br i1 %14, label %15, label %26

15:                                               ; preds = %3
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @TYPE_TCP_SERVER, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %26, label %21

21:                                               ; preds = %15
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %21, %15, %3
  %27 = load i32, i32* @ERR_ABRT, align 4
  store i32 %27, i32* %4, align 4
  br label %117

28:                                               ; preds = %21
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @LUA_NOREF, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %41, label %34

34:                                               ; preds = %28
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 3
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @LUA_NOREF, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %34, %28
  %42 = load i32, i32* @ERR_ABRT, align 4
  store i32 %42, i32* %4, align 4
  br label %117

43:                                               ; preds = %34
  %44 = call i32* (...) @lua_getstate()
  store i32* %44, i32** %9, align 8
  %45 = load i32*, i32** %9, align 8
  %46 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 3
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = call i32 @lua_rawgeti(i32* %45, i32 %46, i64 %50)
  %52 = load i32*, i32** %9, align 8
  %53 = load i32, i32* @TYPE_TCP_CLIENT, align 4
  %54 = call %struct.TYPE_7__* @net_create(i32* %52, i32 %53)
  store %struct.TYPE_7__* %54, %struct.TYPE_7__** %10, align 8
  %55 = load i32*, i32** %9, align 8
  %56 = call i32 @lua_pushvalue(i32* %55, i32 2)
  %57 = load i32*, i32** %9, align 8
  %58 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %59 = call i64 @luaL_ref(i32* %57, i32 %58)
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 1
  store i64 %59, i64* %61, align 8
  %62 = load %struct.tcp_pcb*, %struct.tcp_pcb** %6, align 8
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 2
  store %struct.tcp_pcb* %62, %struct.tcp_pcb** %64, align 8
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 2
  %67 = load %struct.tcp_pcb*, %struct.tcp_pcb** %66, align 8
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %69 = call i32 @tcp_arg(%struct.tcp_pcb* %67, %struct.TYPE_7__* %68)
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 2
  %72 = load %struct.tcp_pcb*, %struct.tcp_pcb** %71, align 8
  %73 = load i32, i32* @net_err_cb, align 4
  %74 = call i32 @tcp_err(%struct.tcp_pcb* %72, i32 %73)
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 2
  %77 = load %struct.tcp_pcb*, %struct.tcp_pcb** %76, align 8
  %78 = load i32, i32* @net_tcp_recv_cb, align 4
  %79 = call i32 @tcp_recv(%struct.tcp_pcb* %77, i32 %78)
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 2
  %82 = load %struct.tcp_pcb*, %struct.tcp_pcb** %81, align 8
  %83 = load i32, i32* @net_sent_cb, align 4
  %84 = call i32 @tcp_sent(%struct.tcp_pcb* %82, i32 %83)
  %85 = load i32, i32* @SOF_KEEPALIVE, align 4
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 2
  %88 = load %struct.tcp_pcb*, %struct.tcp_pcb** %87, align 8
  %89 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = or i32 %90, %85
  store i32 %91, i32* %89, align 4
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 3
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = mul nsw i32 %95, 1000
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 2
  %99 = load %struct.tcp_pcb*, %struct.tcp_pcb** %98, align 8
  %100 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %99, i32 0, i32 0
  store i32 %96, i32* %100, align 4
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 2
  %103 = load %struct.tcp_pcb*, %struct.tcp_pcb** %102, align 8
  %104 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %103, i32 0, i32 1
  store i32 1, i32* %104, align 4
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 2
  %107 = load %struct.tcp_pcb*, %struct.tcp_pcb** %106, align 8
  %108 = call i32 @tcp_accepted(%struct.tcp_pcb* %107)
  %109 = load i32*, i32** %9, align 8
  %110 = call i32 @lua_call(i32* %109, i32 1, i32 0)
  %111 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 2
  %114 = load %struct.tcp_pcb*, %struct.tcp_pcb** %113, align 8
  %115 = load i32, i32* @ERR_OK, align 4
  %116 = call i32 @net_connected_cb(%struct.TYPE_7__* %111, %struct.tcp_pcb* %114, i32 %115)
  store i32 %116, i32* %4, align 4
  br label %117

117:                                              ; preds = %43, %41, %26
  %118 = load i32, i32* %4, align 4
  ret i32 %118
}

declare dso_local i32* @lua_getstate(...) #1

declare dso_local i32 @lua_rawgeti(i32*, i32, i64) #1

declare dso_local %struct.TYPE_7__* @net_create(i32*, i32) #1

declare dso_local i32 @lua_pushvalue(i32*, i32) #1

declare dso_local i64 @luaL_ref(i32*, i32) #1

declare dso_local i32 @tcp_arg(%struct.tcp_pcb*, %struct.TYPE_7__*) #1

declare dso_local i32 @tcp_err(%struct.tcp_pcb*, i32) #1

declare dso_local i32 @tcp_recv(%struct.tcp_pcb*, i32) #1

declare dso_local i32 @tcp_sent(%struct.tcp_pcb*, i32) #1

declare dso_local i32 @tcp_accepted(%struct.tcp_pcb*) #1

declare dso_local i32 @lua_call(i32*, i32, i32) #1

declare dso_local i32 @net_connected_cb(%struct.TYPE_7__*, %struct.tcp_pcb*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
