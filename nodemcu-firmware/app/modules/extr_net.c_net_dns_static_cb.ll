; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_net.c_net_dns_static_cb.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_net.c_net_dns_static_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@LUA_REGISTRYINDEX = common dso_local global i32 0, align 4
@IPSTR = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.TYPE_3__*, i8*)* @net_dns_static_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @net_dns_static_cb(i8* %0, %struct.TYPE_3__* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_3__, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca [20 x i8], align 16
  %11 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %5, align 8
  store i8* %2, i8** %6, align 8
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %13 = icmp ne %struct.TYPE_3__* %12, null
  br i1 %13, label %14, label %18

14:                                               ; preds = %3
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %16 = bitcast %struct.TYPE_3__* %7 to i8*
  %17 = bitcast %struct.TYPE_3__* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %16, i8* align 4 %17, i64 4, i1 false)
  br label %20

18:                                               ; preds = %3
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  store i32 -1, i32* %19, align 4
  br label %20

20:                                               ; preds = %18, %14
  %21 = load i8*, i8** %6, align 8
  %22 = bitcast i8* %21 to i32*
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %8, align 4
  %25 = load i8*, i8** %6, align 8
  %26 = call i32 @free(i8* %25)
  %27 = call i32* (...) @lua_getstate()
  store i32* %27, i32** %9, align 8
  %28 = load i32*, i32** %9, align 8
  %29 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @lua_rawgeti(i32* %28, i32 %29, i32 %30)
  %32 = load i32*, i32** %9, align 8
  %33 = call i32 @lua_pushnil(i32* %32)
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, -1
  br i1 %36, label %37, label %47

37:                                               ; preds = %20
  %38 = getelementptr inbounds [20 x i8], [20 x i8]* %10, i64 0, i64 0
  %39 = load i8*, i8** @IPSTR, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %41 = call i32 @IP2STR(i32* %40)
  %42 = call i64 @sprintf(i8* %38, i8* %39, i32 %41)
  store i64 %42, i64* %11, align 8
  %43 = load i32*, i32** %9, align 8
  %44 = getelementptr inbounds [20 x i8], [20 x i8]* %10, i64 0, i64 0
  %45 = load i64, i64* %11, align 8
  %46 = call i32 @lua_pushlstring(i32* %43, i8* %44, i64 %45)
  br label %50

47:                                               ; preds = %20
  %48 = load i32*, i32** %9, align 8
  %49 = call i32 @lua_pushnil(i32* %48)
  br label %50

50:                                               ; preds = %47, %37
  %51 = load i32*, i32** %9, align 8
  %52 = call i32 @lua_call(i32* %51, i32 2, i32 0)
  %53 = load i32*, i32** %9, align 8
  %54 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %55 = load i32, i32* %8, align 4
  %56 = call i32 @luaL_unref(i32* %53, i32 %54, i32 %55)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @free(i8*) #2

declare dso_local i32* @lua_getstate(...) #2

declare dso_local i32 @lua_rawgeti(i32*, i32, i32) #2

declare dso_local i32 @lua_pushnil(i32*) #2

declare dso_local i64 @sprintf(i8*, i8*, i32) #2

declare dso_local i32 @IP2STR(i32*) #2

declare dso_local i32 @lua_pushlstring(i32*, i8*, i64) #2

declare dso_local i32 @lua_call(i32*, i32, i32) #2

declare dso_local i32 @luaL_unref(i32*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
