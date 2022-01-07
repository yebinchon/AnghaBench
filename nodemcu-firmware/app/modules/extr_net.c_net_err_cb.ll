; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_net.c_net_err_cb.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_net.c_net_err_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32, %struct.TYPE_3__, i32* }
%struct.TYPE_3__ = type { i32, i32, i64 }

@TYPE_TCP_CLIENT = common dso_local global i64 0, align 8
@LUA_NOREF = common dso_local global i32 0, align 4
@ERR_OK = common dso_local global i32 0, align 4
@LUA_REGISTRYINDEX = common dso_local global i32 0, align 4
@LUA_GCSTOP = common dso_local global i32 0, align 4
@LUA_GCRESTART = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @net_err_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @net_err_cb(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i8*, i8** %3, align 8
  %9 = bitcast i8* %8 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %9, %struct.TYPE_4__** %5, align 8
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %11 = icmp ne %struct.TYPE_4__* %10, null
  br i1 %11, label %12, label %24

12:                                               ; preds = %2
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @TYPE_TCP_CLIENT, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %24, label %18

18:                                               ; preds = %12
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @LUA_NOREF, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %18, %12, %2
  br label %91

25:                                               ; preds = %18
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 3
  store i32* null, i32** %27, align 8
  %28 = call i32* (...) @lua_getstate()
  store i32* %28, i32** %6, align 8
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* @ERR_OK, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %32, label %44

32:                                               ; preds = %25
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @LUA_NOREF, align 4
  %38 = icmp ne i32 %36, %37
  br i1 %38, label %39, label %44

39:                                               ; preds = %32
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  store i32 %43, i32* %7, align 4
  br label %49

44:                                               ; preds = %32, %25
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %7, align 4
  br label %49

49:                                               ; preds = %44, %39
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* @LUA_NOREF, align 4
  %52 = icmp ne i32 %50, %51
  br i1 %52, label %53, label %69

53:                                               ; preds = %49
  %54 = load i32*, i32** %6, align 8
  %55 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %56 = load i32, i32* %7, align 4
  %57 = call i32 @lua_rawgeti(i32* %54, i32 %55, i32 %56)
  %58 = load i32*, i32** %6, align 8
  %59 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @lua_rawgeti(i32* %58, i32 %59, i32 %62)
  %64 = load i32*, i32** %6, align 8
  %65 = load i32, i32* %4, align 4
  %66 = call i32 @lua_pushinteger(i32* %64, i32 %65)
  %67 = load i32*, i32** %6, align 8
  %68 = call i32 @lua_call(i32* %67, i32 2, i32 0)
  br label %69

69:                                               ; preds = %53, %49
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = icmp eq i64 %73, 0
  br i1 %74, label %75, label %91

75:                                               ; preds = %69
  %76 = load i32*, i32** %6, align 8
  %77 = load i32, i32* @LUA_GCSTOP, align 4
  %78 = call i32 @lua_gc(i32* %76, i32 %77, i32 0)
  %79 = load i32*, i32** %6, align 8
  %80 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @luaL_unref(i32* %79, i32 %80, i32 %83)
  %85 = load i32, i32* @LUA_NOREF, align 4
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 1
  store i32 %85, i32* %87, align 8
  %88 = load i32*, i32** %6, align 8
  %89 = load i32, i32* @LUA_GCRESTART, align 4
  %90 = call i32 @lua_gc(i32* %88, i32 %89, i32 0)
  br label %91

91:                                               ; preds = %24, %75, %69
  ret void
}

declare dso_local i32* @lua_getstate(...) #1

declare dso_local i32 @lua_rawgeti(i32*, i32, i32) #1

declare dso_local i32 @lua_pushinteger(i32*, i32) #1

declare dso_local i32 @lua_call(i32*, i32, i32) #1

declare dso_local i32 @lua_gc(i32*, i32, i32) #1

declare dso_local i32 @luaL_unref(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
