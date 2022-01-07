; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_mqtt.c_mqtt_socket_close.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_mqtt.c_mqtt_socket_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_14__, i64, %struct.TYPE_17__*, i64 }
%struct.TYPE_14__ = type { i64, i32 }
%struct.TYPE_17__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i64, i64 }
%struct.TYPE_15__ = type { i32, i32* }

@.str = private unnamed_addr constant [26 x i8] c"enter mqtt_socket_close.\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"mqtt.socket\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"mqtt.socket expected\00", align 1
@ESPCONN_CONN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [58 x i8] c"Send MQTT disconnect infomation, data len: %d, d[0]=%d \0D\0A\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"leave mqtt_socket_close.\0A\00", align 1
@ESPCONN_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @mqtt_socket_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mqtt_socket_close(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_15__*, align 8
  store i32* %0, i32** %3, align 8
  %8 = call i32 (i8*, ...) @NODE_DBG(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %5, align 8
  %9 = load i32*, i32** %3, align 8
  %10 = call i64 @luaL_checkudata(i32* %9, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %11 = inttoptr i64 %10 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %11, %struct.TYPE_16__** %5, align 8
  %12 = load i32*, i32** %3, align 8
  %13 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %14 = call i32 @luaL_argcheck(i32* %12, %struct.TYPE_16__* %13, i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %15 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %16 = icmp eq %struct.TYPE_16__* %15, null
  br i1 %16, label %22, label %17

17:                                               ; preds = %1
  %18 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %18, i32 0, i32 2
  %20 = load %struct.TYPE_17__*, %struct.TYPE_17__** %19, align 8
  %21 = icmp eq %struct.TYPE_17__* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %17, %1
  %23 = load i32*, i32** %3, align 8
  %24 = call i32 @lua_pushboolean(i32* %23, i32 0)
  store i32 1, i32* %2, align 4
  br label %109

25:                                               ; preds = %17
  %26 = load i32, i32* @ESPCONN_CONN, align 4
  store i32 %26, i32* %6, align 4
  %27 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %82

31:                                               ; preds = %25
  %32 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i32 0, i32 1
  %35 = call %struct.TYPE_15__* @mqtt_msg_disconnect(i32* %34)
  store %struct.TYPE_15__* %35, %struct.TYPE_15__** %7, align 8
  %36 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 (i8*, ...) @NODE_DBG(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.3, i64 0, i64 0), i32 %38, i32 %43)
  %45 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %45, i32 0, i32 2
  %47 = load %struct.TYPE_17__*, %struct.TYPE_17__** %46, align 8
  %48 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @espconn_send(%struct.TYPE_17__* %47, i32* %50, i32 %53)
  store i32 %54, i32* %6, align 4
  %55 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %55, i32 0, i32 2
  %57 = load %struct.TYPE_17__*, %struct.TYPE_17__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %74, label %64

64:                                               ; preds = %31
  %65 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %65, i32 0, i32 2
  %67 = load %struct.TYPE_17__*, %struct.TYPE_17__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %81

74:                                               ; preds = %64, %31
  %75 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %75, i32 0, i32 2
  %77 = load %struct.TYPE_17__*, %struct.TYPE_17__** %76, align 8
  %78 = call i32 @espconn_disconnect(%struct.TYPE_17__* %77)
  %79 = load i32, i32* %6, align 4
  %80 = or i32 %79, %78
  store i32 %80, i32* %6, align 4
  br label %81

81:                                               ; preds = %74, %64
  br label %82

82:                                               ; preds = %81, %25
  %83 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %83, i32 0, i32 1
  store i64 0, i64* %84, align 8
  br label %85

85:                                               ; preds = %91, %82
  %86 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %97

91:                                               ; preds = %85
  %92 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %93, i32 0, i32 0
  %95 = call i32 @msg_dequeue(i64* %94)
  %96 = call i32 @msg_destroy(i32 %95)
  br label %85

97:                                               ; preds = %85
  %98 = call i32 (i8*, ...) @NODE_DBG(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  %99 = load i32, i32* %6, align 4
  %100 = load i32, i32* @ESPCONN_OK, align 4
  %101 = icmp eq i32 %99, %100
  br i1 %101, label %102, label %105

102:                                              ; preds = %97
  %103 = load i32*, i32** %3, align 8
  %104 = call i32 @lua_pushboolean(i32* %103, i32 1)
  br label %108

105:                                              ; preds = %97
  %106 = load i32*, i32** %3, align 8
  %107 = call i32 @lua_pushboolean(i32* %106, i32 0)
  br label %108

108:                                              ; preds = %105, %102
  store i32 1, i32* %2, align 4
  br label %109

109:                                              ; preds = %108, %22
  %110 = load i32, i32* %2, align 4
  ret i32 %110
}

declare dso_local i32 @NODE_DBG(i8*, ...) #1

declare dso_local i64 @luaL_checkudata(i32*, i32, i8*) #1

declare dso_local i32 @luaL_argcheck(i32*, %struct.TYPE_16__*, i32, i8*) #1

declare dso_local i32 @lua_pushboolean(i32*, i32) #1

declare dso_local %struct.TYPE_15__* @mqtt_msg_disconnect(i32*) #1

declare dso_local i32 @espconn_send(%struct.TYPE_17__*, i32*, i32) #1

declare dso_local i32 @espconn_disconnect(%struct.TYPE_17__*) #1

declare dso_local i32 @msg_destroy(i32) #1

declare dso_local i32 @msg_dequeue(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
