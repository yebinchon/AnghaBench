; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_coap.c_coap_create.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_coap.c_coap_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.espconn = type { %struct.TYPE_4__*, i32, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { %struct.espconn*, i32 }
%struct.TYPE_3__ = type { i32*, i32* }

@LUA_NOREF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"not enough memory\00", align 1
@ESPCONN_UDP = common dso_local global i32 0, align 4
@ESPCONN_NONE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"UDP server/client is set.\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"coap_create is called.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*)* @coap_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @coap_create(i32* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.espconn*, align 8
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.espconn* null, %struct.espconn** %6, align 8
  store i32 1, i32* %9, align 4
  %10 = load i32*, i32** %4, align 8
  %11 = call i64 @lua_newuserdata(i32* %10, i32 16)
  %12 = inttoptr i64 %11 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %12, %struct.TYPE_4__** %7, align 8
  %13 = load i32, i32* @LUA_NOREF, align 4
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  store i32 %13, i32* %15, align 8
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  store %struct.espconn* null, %struct.espconn** %17, align 8
  %18 = load i32*, i32** %4, align 8
  %19 = load i8*, i8** %5, align 8
  %20 = call i32 @luaL_getmetatable(i32* %18, i8* %19)
  %21 = load i32*, i32** %4, align 8
  %22 = call i32 @lua_setmetatable(i32* %21, i32 -2)
  %23 = call i64 @calloc(i32 1, i32 40)
  %24 = inttoptr i64 %23 to %struct.espconn*
  store %struct.espconn* %24, %struct.espconn** %6, align 8
  %25 = load %struct.espconn*, %struct.espconn** %6, align 8
  %26 = icmp ne %struct.espconn* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %2
  %28 = load i32*, i32** %4, align 8
  %29 = call i32 @luaL_error(i32* %28, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  store i32 %29, i32* %3, align 4
  br label %69

30:                                               ; preds = %2
  %31 = load %struct.espconn*, %struct.espconn** %6, align 8
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  store %struct.espconn* %31, %struct.espconn** %33, align 8
  %34 = load i32, i32* @ESPCONN_UDP, align 4
  %35 = load %struct.espconn*, %struct.espconn** %6, align 8
  %36 = getelementptr inbounds %struct.espconn, %struct.espconn* %35, i32 0, i32 3
  store i32 %34, i32* %36, align 8
  %37 = load %struct.espconn*, %struct.espconn** %6, align 8
  %38 = getelementptr inbounds %struct.espconn, %struct.espconn* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  store i32* null, i32** %39, align 8
  %40 = load %struct.espconn*, %struct.espconn** %6, align 8
  %41 = getelementptr inbounds %struct.espconn, %struct.espconn* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  store i32* null, i32** %42, align 8
  %43 = call i64 @calloc(i32 1, i32 4)
  %44 = inttoptr i64 %43 to i32*
  %45 = load %struct.espconn*, %struct.espconn** %6, align 8
  %46 = getelementptr inbounds %struct.espconn, %struct.espconn* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  store i32* %44, i32** %47, align 8
  %48 = load %struct.espconn*, %struct.espconn** %6, align 8
  %49 = getelementptr inbounds %struct.espconn, %struct.espconn* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = icmp ne i32* %51, null
  br i1 %52, label %60, label %53

53:                                               ; preds = %30
  %54 = load %struct.espconn*, %struct.espconn** %6, align 8
  %55 = call i32 @free(%struct.espconn* %54)
  store %struct.espconn* null, %struct.espconn** %6, align 8
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  store %struct.espconn* null, %struct.espconn** %57, align 8
  %58 = load i32*, i32** %4, align 8
  %59 = call i32 @luaL_error(i32* %58, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  store i32 %59, i32* %3, align 4
  br label %69

60:                                               ; preds = %30
  %61 = load i32, i32* @ESPCONN_NONE, align 4
  %62 = load %struct.espconn*, %struct.espconn** %6, align 8
  %63 = getelementptr inbounds %struct.espconn, %struct.espconn* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 8
  %64 = call i32 @NODE_DBG(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %66 = load %struct.espconn*, %struct.espconn** %6, align 8
  %67 = getelementptr inbounds %struct.espconn, %struct.espconn* %66, i32 0, i32 0
  store %struct.TYPE_4__* %65, %struct.TYPE_4__** %67, align 8
  %68 = call i32 @NODE_DBG(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %69

69:                                               ; preds = %60, %53, %27
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local i64 @lua_newuserdata(i32*, i32) #1

declare dso_local i32 @luaL_getmetatable(i32*, i8*) #1

declare dso_local i32 @lua_setmetatable(i32*, i32) #1

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @luaL_error(i32*, i8*) #1

declare dso_local i32 @free(%struct.espconn*) #1

declare dso_local i32 @NODE_DBG(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
