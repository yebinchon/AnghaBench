; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_coap.c_coap_start.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_coap.c_coap_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.espconn = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_8__ = type { i64, %struct.espconn* }
%struct.TYPE_9__ = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"Server/Client expected\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"userdata is nil.\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"UDP port is set: %d.\0A\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"0.0.0.0\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"UDP ip is set: \00", align 1
@IPSTR = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@LUA_NOREF = common dso_local global i64 0, align 8
@LUA_REGISTRYINDEX = common dso_local global i32 0, align 4
@coap_received = common dso_local global i32 0, align 4
@coap_sent = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [33 x i8] c"Coap Server started on port: %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"coap_start is called.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*)* @coap_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @coap_start(i32* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.espconn*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_9__, align 4
  %11 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.espconn* null, %struct.espconn** %6, align 8
  %12 = load i32*, i32** %4, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = call i64 @luaL_checkudata(i32* %12, i32 1, i8* %13)
  %15 = inttoptr i64 %14 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %15, %struct.TYPE_8__** %7, align 8
  %16 = load i32*, i32** %4, align 8
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %18 = call i32 @luaL_argcheck(i32* %16, %struct.TYPE_8__* %17, i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %20 = icmp eq %struct.TYPE_8__* %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %2
  %22 = call i32 (i8*, ...) @NODE_DBG(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %92

23:                                               ; preds = %2
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 1
  %26 = load %struct.espconn*, %struct.espconn** %25, align 8
  store %struct.espconn* %26, %struct.espconn** %6, align 8
  %27 = load i32*, i32** %4, align 8
  %28 = call i32 @luaL_checkinteger(i32* %27, i32 2)
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = load %struct.espconn*, %struct.espconn** %6, align 8
  %31 = getelementptr inbounds %struct.espconn, %struct.espconn* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  store i32 %29, i32* %34, align 4
  %35 = load i32, i32* %8, align 4
  %36 = call i32 (i8*, ...) @NODE_DBG(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %35)
  %37 = load i32*, i32** %4, align 8
  %38 = call i64 @lua_isstring(i32* %37, i32 3)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %66

40:                                               ; preds = %23
  %41 = load i32*, i32** %4, align 8
  %42 = call i8* @luaL_checklstring(i32* %41, i32 3, i64* %9)
  store i8* %42, i8** %11, align 8
  %43 = load i8*, i8** %11, align 8
  %44 = icmp eq i8* %43, null
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8** %11, align 8
  br label %46

46:                                               ; preds = %45, %40
  %47 = load i8*, i8** %11, align 8
  %48 = call i32 @ipaddr_addr(i8* %47)
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  store i32 %48, i32* %49, align 4
  %50 = load %struct.espconn*, %struct.espconn** %6, align 8
  %51 = getelementptr inbounds %struct.espconn, %struct.espconn* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  %57 = call i32 @memcpy(i32 %55, i32* %56, i32 4)
  %58 = call i32 (i8*, ...) @NODE_DBG(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  %59 = load i32, i32* @IPSTR, align 4
  %60 = sext i32 %59 to i64
  %61 = inttoptr i64 %60 to i8*
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  %63 = call i32 @IP2STR(i32* %62)
  %64 = call i32 (i8*, ...) @NODE_DBG(i8* %61, i32 %63)
  %65 = call i32 (i8*, ...) @NODE_DBG(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  br label %66

66:                                               ; preds = %46, %23
  %67 = load i64, i64* @LUA_NOREF, align 8
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp eq i64 %67, %70
  br i1 %71, label %72, label %80

72:                                               ; preds = %66
  %73 = load i32*, i32** %4, align 8
  %74 = call i32 @lua_pushvalue(i32* %73, i32 1)
  %75 = load i32*, i32** %4, align 8
  %76 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %77 = call i64 @luaL_ref(i32* %75, i32 %76)
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 0
  store i64 %77, i64* %79, align 8
  br label %80

80:                                               ; preds = %72, %66
  %81 = load %struct.espconn*, %struct.espconn** %6, align 8
  %82 = load i32, i32* @coap_received, align 4
  %83 = call i32 @espconn_regist_recvcb(%struct.espconn* %81, i32 %82)
  %84 = load %struct.espconn*, %struct.espconn** %6, align 8
  %85 = load i32, i32* @coap_sent, align 4
  %86 = call i32 @espconn_regist_sentcb(%struct.espconn* %84, i32 %85)
  %87 = load %struct.espconn*, %struct.espconn** %6, align 8
  %88 = call i32 @espconn_create(%struct.espconn* %87)
  %89 = load i32, i32* %8, align 4
  %90 = call i32 (i8*, ...) @NODE_DBG(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0), i32 %89)
  %91 = call i32 (i8*, ...) @NODE_DBG(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %92

92:                                               ; preds = %80, %21
  %93 = load i32, i32* %3, align 4
  ret i32 %93
}

declare dso_local i64 @luaL_checkudata(i32*, i32, i8*) #1

declare dso_local i32 @luaL_argcheck(i32*, %struct.TYPE_8__*, i32, i8*) #1

declare dso_local i32 @NODE_DBG(i8*, ...) #1

declare dso_local i32 @luaL_checkinteger(i32*, i32) #1

declare dso_local i64 @lua_isstring(i32*, i32) #1

declare dso_local i8* @luaL_checklstring(i32*, i32, i64*) #1

declare dso_local i32 @ipaddr_addr(i8*) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @IP2STR(i32*) #1

declare dso_local i32 @lua_pushvalue(i32*, i32) #1

declare dso_local i64 @luaL_ref(i32*, i32) #1

declare dso_local i32 @espconn_regist_recvcb(%struct.espconn*, i32) #1

declare dso_local i32 @espconn_regist_sentcb(%struct.espconn*, i32) #1

declare dso_local i32 @espconn_create(%struct.espconn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
