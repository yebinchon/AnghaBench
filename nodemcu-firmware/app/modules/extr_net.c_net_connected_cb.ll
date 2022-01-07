; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_net.c_net_connected_cb.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_net.c_net_connected_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcp_pcb = type { i32 }
%struct.TYPE_4__ = type { i64, %struct.TYPE_3__, %struct.tcp_pcb* }
%struct.TYPE_3__ = type { i64 }

@ERR_ABRT = common dso_local global i64 0, align 8
@ERR_OK = common dso_local global i64 0, align 8
@LUA_NOREF = common dso_local global i64 0, align 8
@LUA_REGISTRYINDEX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, %struct.tcp_pcb*, i64)* @net_connected_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @net_connected_cb(i8* %0, %struct.tcp_pcb* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.tcp_pcb*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i32*, align 8
  store i8* %0, i8** %5, align 8
  store %struct.tcp_pcb* %1, %struct.tcp_pcb** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %11, %struct.TYPE_4__** %8, align 8
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %13 = icmp ne %struct.TYPE_4__* %12, null
  br i1 %13, label %14, label %20

14:                                               ; preds = %3
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 2
  %17 = load %struct.tcp_pcb*, %struct.tcp_pcb** %16, align 8
  %18 = load %struct.tcp_pcb*, %struct.tcp_pcb** %6, align 8
  %19 = icmp ne %struct.tcp_pcb* %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %14, %3
  %21 = load i64, i64* @ERR_ABRT, align 8
  store i64 %21, i64* %4, align 8
  br label %63

22:                                               ; preds = %14
  %23 = load i64, i64* %7, align 8
  %24 = load i64, i64* @ERR_OK, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %31

26:                                               ; preds = %22
  %27 = load i8*, i8** %5, align 8
  %28 = load i64, i64* %7, align 8
  %29 = call i32 @net_err_cb(i8* %27, i64 %28)
  %30 = load i64, i64* @ERR_ABRT, align 8
  store i64 %30, i64* %4, align 8
  br label %63

31:                                               ; preds = %22
  %32 = call i32* (...) @lua_getstate()
  store i32* %32, i32** %9, align 8
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @LUA_NOREF, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %61

38:                                               ; preds = %31
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @LUA_NOREF, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %61

45:                                               ; preds = %38
  %46 = load i32*, i32** %9, align 8
  %47 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = call i32 @lua_rawgeti(i32* %46, i32 %47, i64 %51)
  %53 = load i32*, i32** %9, align 8
  %54 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = call i32 @lua_rawgeti(i32* %53, i32 %54, i64 %57)
  %59 = load i32*, i32** %9, align 8
  %60 = call i32 @lua_call(i32* %59, i32 1, i32 0)
  br label %61

61:                                               ; preds = %45, %38, %31
  %62 = load i64, i64* @ERR_OK, align 8
  store i64 %62, i64* %4, align 8
  br label %63

63:                                               ; preds = %61, %26, %20
  %64 = load i64, i64* %4, align 8
  ret i64 %64
}

declare dso_local i32 @net_err_cb(i8*, i64) #1

declare dso_local i32* @lua_getstate(...) #1

declare dso_local i32 @lua_rawgeti(i32*, i32, i64) #1

declare dso_local i32 @lua_call(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
