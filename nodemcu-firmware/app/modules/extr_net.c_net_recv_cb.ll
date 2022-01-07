; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_net.c_net_recv_cb.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_net.c_net_recv_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.pbuf = type { %struct.pbuf*, i32, i32 }
%struct.TYPE_8__ = type { i32 }

@LUA_NOREF = common dso_local global i64 0, align 8
@TYPE_UDP_SOCKET = common dso_local global i64 0, align 8
@IPSTR = common dso_local global i32 0, align 4
@LUA_REGISTRYINDEX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, %struct.pbuf*, %struct.TYPE_8__*, i32)* @net_recv_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @net_recv_cb(%struct.TYPE_7__* %0, %struct.pbuf* %1, %struct.TYPE_8__* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca %struct.pbuf*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [16 x i8], align 16
  %11 = alloca i32*, align 8
  %12 = alloca %struct.pbuf*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store %struct.pbuf* %1, %struct.pbuf** %6, align 8
  store %struct.TYPE_8__* %2, %struct.TYPE_8__** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @LUA_NOREF, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %4
  %20 = load %struct.pbuf*, %struct.pbuf** %6, align 8
  %21 = call i32 @pbuf_free(%struct.pbuf* %20)
  br label %88

22:                                               ; preds = %4
  store i32 2, i32* %9, align 4
  %23 = bitcast [16 x i8]* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %23, i8 0, i64 16, i1 false)
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @TYPE_UDP_SOCKET, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %38

29:                                               ; preds = %22
  %30 = load i32, i32* %9, align 4
  %31 = add nsw i32 %30, 2
  store i32 %31, i32* %9, align 4
  %32 = getelementptr inbounds [16 x i8], [16 x i8]* %10, i64 0, i64 0
  %33 = load i32, i32* @IPSTR, align 4
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = call i32 @IP2STR(i32* %35)
  %37 = call i32 @ets_sprintf(i8* %32, i32 %33, i32 %36)
  br label %38

38:                                               ; preds = %29, %22
  %39 = call i32* (...) @lua_getstate()
  store i32* %39, i32** %11, align 8
  %40 = load %struct.pbuf*, %struct.pbuf** %6, align 8
  store %struct.pbuf* %40, %struct.pbuf** %12, align 8
  br label %41

41:                                               ; preds = %78, %38
  %42 = load %struct.pbuf*, %struct.pbuf** %12, align 8
  %43 = icmp ne %struct.pbuf* %42, null
  br i1 %43, label %44, label %85

44:                                               ; preds = %41
  %45 = load i32*, i32** %11, align 8
  %46 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = call i32 @lua_rawgeti(i32* %45, i32 %46, i64 %50)
  %52 = load i32*, i32** %11, align 8
  %53 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = call i32 @lua_rawgeti(i32* %52, i32 %53, i64 %56)
  %58 = load i32*, i32** %11, align 8
  %59 = load %struct.pbuf*, %struct.pbuf** %12, align 8
  %60 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.pbuf*, %struct.pbuf** %12, align 8
  %63 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @lua_pushlstring(i32* %58, i32 %61, i32 %64)
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @TYPE_UDP_SOCKET, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %78

71:                                               ; preds = %44
  %72 = load i32*, i32** %11, align 8
  %73 = load i32, i32* %8, align 4
  %74 = call i32 @lua_pushinteger(i32* %72, i32 %73)
  %75 = load i32*, i32** %11, align 8
  %76 = getelementptr inbounds [16 x i8], [16 x i8]* %10, i64 0, i64 0
  %77 = call i32 @lua_pushstring(i32* %75, i8* %76)
  br label %78

78:                                               ; preds = %71, %44
  %79 = load i32*, i32** %11, align 8
  %80 = load i32, i32* %9, align 4
  %81 = call i32 @lua_call(i32* %79, i32 %80, i32 0)
  %82 = load %struct.pbuf*, %struct.pbuf** %12, align 8
  %83 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %82, i32 0, i32 0
  %84 = load %struct.pbuf*, %struct.pbuf** %83, align 8
  store %struct.pbuf* %84, %struct.pbuf** %12, align 8
  br label %41

85:                                               ; preds = %41
  %86 = load %struct.pbuf*, %struct.pbuf** %6, align 8
  %87 = call i32 @pbuf_free(%struct.pbuf* %86)
  br label %88

88:                                               ; preds = %85, %19
  ret void
}

declare dso_local i32 @pbuf_free(%struct.pbuf*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @ets_sprintf(i8*, i32, i32) #1

declare dso_local i32 @IP2STR(i32*) #1

declare dso_local i32* @lua_getstate(...) #1

declare dso_local i32 @lua_rawgeti(i32*, i32, i64) #1

declare dso_local i32 @lua_pushlstring(i32*, i32, i32) #1

declare dso_local i32 @lua_pushinteger(i32*, i32) #1

declare dso_local i32 @lua_pushstring(i32*, i8*) #1

declare dso_local i32 @lua_call(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
