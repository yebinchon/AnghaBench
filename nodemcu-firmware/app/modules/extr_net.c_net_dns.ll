; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_net.c_net_dns.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_net.c_net_dns.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i64, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64, i32 }

@TYPE_TCP_SERVER = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [18 x i8] c"invalid user data\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"no domain specified\00", align 1
@LUA_REGISTRYINDEX = common dso_local global i32 0, align 4
@LUA_NOREF = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [22 x i8] c"no callback specified\00", align 1
@ERR_OK = common dso_local global i64 0, align 8
@ERR_INPROGRESS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @net_dns(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  %10 = load i32*, i32** %3, align 8
  %11 = call %struct.TYPE_8__* @net_get_udata(i32* %10)
  store %struct.TYPE_8__* %11, %struct.TYPE_8__** %4, align 8
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %13 = icmp ne %struct.TYPE_8__* %12, null
  br i1 %13, label %14, label %20

14:                                               ; preds = %1
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @TYPE_TCP_SERVER, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %14, %1
  %21 = load i32*, i32** %3, align 8
  %22 = call i32 @luaL_error(i32* %21, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  store i32 %22, i32* %2, align 4
  br label %125

23:                                               ; preds = %14
  store i64 0, i64* %5, align 8
  %24 = load i32*, i32** %3, align 8
  %25 = call i8* @luaL_checklstring(i32* %24, i32 2, i64* %5)
  store i8* %25, i8** %6, align 8
  %26 = load i8*, i8** %6, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %23
  %29 = load i32*, i32** %3, align 8
  %30 = call i32 @luaL_error(i32* %29, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  store i32 %30, i32* %2, align 4
  br label %125

31:                                               ; preds = %23
  %32 = load i32*, i32** %3, align 8
  %33 = call i64 @lua_isfunction(i32* %32, i32 3)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %31
  %36 = load i32*, i32** %3, align 8
  %37 = call i64 @lua_islightfunction(i32* %36, i32 3)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %56

39:                                               ; preds = %35, %31
  %40 = load i32*, i32** %3, align 8
  %41 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = call i32 @luaL_unref(i32* %40, i32 %41, i64 %45)
  %47 = load i32*, i32** %3, align 8
  %48 = call i32 @lua_pushvalue(i32* %47, i32 3)
  %49 = load i32*, i32** %3, align 8
  %50 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %51 = call i8* @luaL_ref(i32* %49, i32 %50)
  %52 = ptrtoint i8* %51 to i64
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  store i64 %52, i64* %55, align 8
  br label %56

56:                                               ; preds = %39, %35
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @LUA_NOREF, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %56
  %64 = load i32*, i32** %3, align 8
  %65 = call i32 @luaL_error(i32* %64, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  store i32 %65, i32* %2, align 4
  br label %125

66:                                               ; preds = %56
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %69, align 8
  store i32 0, i32* %7, align 4
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @LUA_NOREF, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %86

77:                                               ; preds = %66
  store i32 1, i32* %7, align 4
  %78 = load i32*, i32** %3, align 8
  %79 = call i32 @lua_pushvalue(i32* %78, i32 1)
  %80 = load i32*, i32** %3, align 8
  %81 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %82 = call i8* @luaL_ref(i32* %80, i32 %81)
  %83 = ptrtoint i8* %82 to i64
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 1
  store i64 %83, i64* %85, align 8
  br label %86

86:                                               ; preds = %77, %66
  %87 = load i8*, i8** %6, align 8
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %89 = call i64 @dns_gethostbyname(i8* %87, i32* %8, i32 (i8*, i32*, %struct.TYPE_8__*)* @net_dns_cb, %struct.TYPE_8__* %88)
  store i64 %89, i64* %9, align 8
  %90 = load i64, i64* %9, align 8
  %91 = load i64, i64* @ERR_OK, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %97

93:                                               ; preds = %86
  %94 = load i8*, i8** %6, align 8
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %96 = call i32 @net_dns_cb(i8* %94, i32* %8, %struct.TYPE_8__* %95)
  br label %124

97:                                               ; preds = %86
  %98 = load i64, i64* %9, align 8
  %99 = load i64, i64* @ERR_INPROGRESS, align 8
  %100 = icmp ne i64 %98, %99
  br i1 %100, label %101, label %123

101:                                              ; preds = %97
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 2
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  %106 = add nsw i32 %105, -1
  store i32 %106, i32* %104, align 8
  %107 = load i32, i32* %7, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %119

109:                                              ; preds = %101
  %110 = load i32*, i32** %3, align 8
  %111 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %112 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = call i32 @luaL_unref(i32* %110, i32 %111, i64 %114)
  %116 = load i64, i64* @LUA_NOREF, align 8
  %117 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 1
  store i64 %116, i64* %118, align 8
  br label %119

119:                                              ; preds = %109, %101
  %120 = load i32*, i32** %3, align 8
  %121 = load i64, i64* %9, align 8
  %122 = call i32 @lwip_lua_checkerr(i32* %120, i64 %121)
  store i32 %122, i32* %2, align 4
  br label %125

123:                                              ; preds = %97
  br label %124

124:                                              ; preds = %123, %93
  store i32 0, i32* %2, align 4
  br label %125

125:                                              ; preds = %124, %119, %63, %28, %20
  %126 = load i32, i32* %2, align 4
  ret i32 %126
}

declare dso_local %struct.TYPE_8__* @net_get_udata(i32*) #1

declare dso_local i32 @luaL_error(i32*, i8*) #1

declare dso_local i8* @luaL_checklstring(i32*, i32, i64*) #1

declare dso_local i64 @lua_isfunction(i32*, i32) #1

declare dso_local i64 @lua_islightfunction(i32*, i32) #1

declare dso_local i32 @luaL_unref(i32*, i32, i64) #1

declare dso_local i32 @lua_pushvalue(i32*, i32) #1

declare dso_local i8* @luaL_ref(i32*, i32) #1

declare dso_local i64 @dns_gethostbyname(i8*, i32*, i32 (i8*, i32*, %struct.TYPE_8__*)*, %struct.TYPE_8__*) #1

declare dso_local i32 @net_dns_cb(i8*, i32*, %struct.TYPE_8__*) #1

declare dso_local i32 @lwip_lua_checkerr(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
