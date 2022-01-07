; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_net.c_net_dns_cb.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_net.c_net_dns_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i64, i64, %struct.TYPE_7__, i64, %struct.TYPE_10__* }
%struct.TYPE_7__ = type { i64, i64 }
%struct.TYPE_10__ = type { i64, i32 }

@LUA_NOREF = common dso_local global i64 0, align 8
@LUA_REGISTRYINDEX = common dso_local global i32 0, align 4
@IPSTR = common dso_local global i32 0, align 4
@TYPE_TCP_CLIENT = common dso_local global i64 0, align 8
@CLOSED = common dso_local global i64 0, align 8
@net_connected_cb = common dso_local global i32 0, align 4
@LUA_GCSTOP = common dso_local global i32 0, align 4
@LUA_GCRESTART = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.TYPE_9__*, i8*)* @net_dns_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @net_dns_cb(i8* %0, %struct.TYPE_9__* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_9__, align 4
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca [16 x i8], align 16
  store i8* %0, i8** %4, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %5, align 8
  store i8* %2, i8** %6, align 8
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %12 = icmp ne %struct.TYPE_9__* %11, null
  br i1 %12, label %13, label %17

13:                                               ; preds = %3
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %15 = bitcast %struct.TYPE_9__* %7 to i8*
  %16 = bitcast %struct.TYPE_9__* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %15, i8* align 4 %16, i64 4, i1 false)
  br label %19

17:                                               ; preds = %3
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 0
  store i32 -1, i32* %18, align 4
  br label %19

19:                                               ; preds = %17, %13
  %20 = load i8*, i8** %6, align 8
  %21 = bitcast i8* %20 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %21, %struct.TYPE_8__** %8, align 8
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %23 = icmp ne %struct.TYPE_8__* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %19
  br label %136

25:                                               ; preds = %19
  %26 = call i32* (...) @lua_getstate()
  store i32* %26, i32** %9, align 8
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @LUA_NOREF, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %73

32:                                               ; preds = %25
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @LUA_NOREF, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %73

39:                                               ; preds = %32
  %40 = load i32*, i32** %9, align 8
  %41 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = call i32 @lua_rawgeti(i32* %40, i32 %41, i64 %45)
  %47 = load i32*, i32** %9, align 8
  %48 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = call i32 @lua_rawgeti(i32* %47, i32 %48, i64 %51)
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = icmp ne i32 %54, -1
  br i1 %55, label %56, label %67

56:                                               ; preds = %39
  %57 = getelementptr inbounds [16 x i8], [16 x i8]* %10, i64 0, i64 0
  %58 = call i32 @bzero(i8* %57, i32 16)
  %59 = getelementptr inbounds [16 x i8], [16 x i8]* %10, i64 0, i64 0
  %60 = load i32, i32* @IPSTR, align 4
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 0
  %62 = call i32 @IP2STR(i32* %61)
  %63 = call i32 @ets_sprintf(i8* %59, i32 %60, i32 %62)
  %64 = load i32*, i32** %9, align 8
  %65 = getelementptr inbounds [16 x i8], [16 x i8]* %10, i64 0, i64 0
  %66 = call i32 @lua_pushstring(i32* %64, i8* %65)
  br label %70

67:                                               ; preds = %39
  %68 = load i32*, i32** %9, align 8
  %69 = call i32 @lua_pushnil(i32* %68)
  br label %70

70:                                               ; preds = %67, %56
  %71 = load i32*, i32** %9, align 8
  %72 = call i32 @lua_call(i32* %71, i32 2, i32 0)
  br label %73

73:                                               ; preds = %70, %32, %25
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = add nsw i64 %77, -1
  store i64 %78, i64* %76, align 8
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 3
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %108

83:                                               ; preds = %73
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @TYPE_TCP_CLIENT, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %108

89:                                               ; preds = %83
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 4
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @CLOSED, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %97, label %108

97:                                               ; preds = %89
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 4
  %100 = load %struct.TYPE_10__*, %struct.TYPE_10__** %99, align 8
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 4
  %103 = load %struct.TYPE_10__*, %struct.TYPE_10__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* @net_connected_cb, align 4
  %107 = call i32 @tcp_connect(%struct.TYPE_10__* %100, %struct.TYPE_9__* %7, i32 %105, i32 %106)
  br label %136

108:                                              ; preds = %89, %83, %73
  %109 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 3
  %111 = load i64, i64* %110, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %135, label %113

113:                                              ; preds = %108
  %114 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 2
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = icmp eq i64 %117, 0
  br i1 %118, label %119, label %135

119:                                              ; preds = %113
  %120 = load i32*, i32** %9, align 8
  %121 = load i32, i32* @LUA_GCSTOP, align 4
  %122 = call i32 @lua_gc(i32* %120, i32 %121, i32 0)
  %123 = load i32*, i32** %9, align 8
  %124 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %125 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = call i32 @luaL_unref(i32* %123, i32 %124, i64 %127)
  %129 = load i64, i64* @LUA_NOREF, align 8
  %130 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i32 0, i32 0
  store i64 %129, i64* %131, align 8
  %132 = load i32*, i32** %9, align 8
  %133 = load i32, i32* @LUA_GCRESTART, align 4
  %134 = call i32 @lua_gc(i32* %132, i32 %133, i32 0)
  br label %135

135:                                              ; preds = %119, %113, %108
  br label %136

136:                                              ; preds = %24, %135, %97
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32* @lua_getstate(...) #2

declare dso_local i32 @lua_rawgeti(i32*, i32, i64) #2

declare dso_local i32 @bzero(i8*, i32) #2

declare dso_local i32 @ets_sprintf(i8*, i32, i32) #2

declare dso_local i32 @IP2STR(i32*) #2

declare dso_local i32 @lua_pushstring(i32*, i8*) #2

declare dso_local i32 @lua_pushnil(i32*) #2

declare dso_local i32 @lua_call(i32*, i32, i32) #2

declare dso_local i32 @tcp_connect(%struct.TYPE_10__*, %struct.TYPE_9__*, i32, i32) #2

declare dso_local i32 @lua_gc(i32*, i32, i32) #2

declare dso_local i32 @luaL_unref(i32*, i32, i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
