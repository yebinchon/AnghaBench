; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_mqtt.c_mqtt_socket_sent.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_mqtt.c_mqtt_socket_sent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.espconn = type { i64 }
%struct.TYPE_7__ = type { i64, i64, i64, %struct.TYPE_5__, i32, i64, i64, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i64, i64 }

@.str = private unnamed_addr constant [25 x i8] c"enter mqtt_socket_sent.\0A\00", align 1
@MQTT_CONNECT_SENDING = common dso_local global i64 0, align 8
@MQTT_CONNECT_SENT = common dso_local global i64 0, align 8
@MQTT_SEND_TIMEOUT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"sent1, queue size: %d\0A\00", align 1
@MQTT_MSG_TYPE_PUBLISH = common dso_local global i64 0, align 8
@LUA_NOREF = common dso_local global i64 0, align 8
@LUA_REGISTRYINDEX = common dso_local global i32 0, align 4
@MQTT_MSG_TYPE_PUBACK = common dso_local global i64 0, align 8
@MQTT_MSG_TYPE_PUBCOMP = common dso_local global i64 0, align 8
@MQTT_MSG_TYPE_PINGREQ = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [23 x i8] c"sent2, queue size: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"leave mqtt_socket_sent.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @mqtt_socket_sent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mqtt_socket_sent(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.espconn*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32*, align 8
  store i8* %0, i8** %2, align 8
  %8 = call i32 (i8*, ...) @NODE_DBG(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %9 = load i8*, i8** %2, align 8
  %10 = bitcast i8* %9 to %struct.espconn*
  store %struct.espconn* %10, %struct.espconn** %3, align 8
  %11 = load %struct.espconn*, %struct.espconn** %3, align 8
  %12 = icmp eq %struct.espconn* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %166

14:                                               ; preds = %1
  %15 = load %struct.espconn*, %struct.espconn** %3, align 8
  %16 = getelementptr inbounds %struct.espconn, %struct.espconn* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %18, %struct.TYPE_7__** %4, align 8
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %20 = icmp eq %struct.TYPE_7__* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %14
  br label %166

22:                                               ; preds = %14
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 7
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %22
  br label %166

28:                                               ; preds = %22
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 5
  store i64 0, i64* %30, align 8
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 6
  store i64 0, i64* %32, align 8
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @MQTT_CONNECT_SENDING, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %45

38:                                               ; preds = %28
  %39 = load i64, i64* @MQTT_CONNECT_SENT, align 8
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  store i64 %39, i64* %41, align 8
  %42 = load i64, i64* @MQTT_SEND_TIMEOUT, align 8
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 5
  store i64 %42, i64* %44, align 8
  br label %166

45:                                               ; preds = %28
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 3
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = call i32 @msg_size(i32* %48)
  %50 = call i32 (i8*, ...) @NODE_DBG(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %49)
  store i32 1, i32* %5, align 4
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 3
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = call %struct.TYPE_6__* @msg_peek(i32* %53)
  store %struct.TYPE_6__* %54, %struct.TYPE_6__** %6, align 8
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %56 = icmp ne %struct.TYPE_6__* %55, null
  br i1 %56, label %57, label %102

57:                                               ; preds = %45
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @MQTT_MSG_TYPE_PUBLISH, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %102

63:                                               ; preds = %57
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %68, label %102

68:                                               ; preds = %63
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 3
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  %72 = call i32 @msg_dequeue(i32* %71)
  %73 = call i32 @msg_destroy(i32 %72)
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @LUA_NOREF, align 8
  %78 = icmp ne i64 %76, %77
  br i1 %78, label %79, label %101

79:                                               ; preds = %68
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @LUA_NOREF, align 8
  %84 = icmp ne i64 %82, %83
  br i1 %84, label %85, label %101

85:                                               ; preds = %79
  %86 = call i32* (...) @lua_getstate()
  store i32* %86, i32** %7, align 8
  %87 = load i32*, i32** %7, align 8
  %88 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = call i32 @lua_rawgeti(i32* %87, i32 %88, i64 %91)
  %93 = load i32*, i32** %7, align 8
  %94 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 2
  %97 = load i64, i64* %96, align 8
  %98 = call i32 @lua_rawgeti(i32* %93, i32 %94, i64 %97)
  %99 = load i32*, i32** %7, align 8
  %100 = call i32 @lua_call(i32* %99, i32 1, i32 0)
  br label %101

101:                                              ; preds = %85, %79, %68
  br label %151

102:                                              ; preds = %63, %57, %45
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %104 = icmp ne %struct.TYPE_6__* %103, null
  br i1 %104, label %105, label %117

105:                                              ; preds = %102
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @MQTT_MSG_TYPE_PUBACK, align 8
  %110 = icmp eq i64 %108, %109
  br i1 %110, label %111, label %117

111:                                              ; preds = %105
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 3
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 0
  %115 = call i32 @msg_dequeue(i32* %114)
  %116 = call i32 @msg_destroy(i32 %115)
  br label %150

117:                                              ; preds = %105, %102
  %118 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %119 = icmp ne %struct.TYPE_6__* %118, null
  br i1 %119, label %120, label %132

120:                                              ; preds = %117
  %121 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* @MQTT_MSG_TYPE_PUBCOMP, align 8
  %125 = icmp eq i64 %123, %124
  br i1 %125, label %126, label %132

126:                                              ; preds = %120
  %127 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i32 0, i32 3
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i32 0, i32 0
  %130 = call i32 @msg_dequeue(i32* %129)
  %131 = call i32 @msg_destroy(i32 %130)
  br label %149

132:                                              ; preds = %120, %117
  %133 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %134 = icmp ne %struct.TYPE_6__* %133, null
  br i1 %134, label %135, label %147

135:                                              ; preds = %132
  %136 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = load i64, i64* @MQTT_MSG_TYPE_PINGREQ, align 8
  %140 = icmp eq i64 %138, %139
  br i1 %140, label %141, label %147

141:                                              ; preds = %135
  %142 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %143 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %142, i32 0, i32 3
  %144 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %143, i32 0, i32 0
  %145 = call i32 @msg_dequeue(i32* %144)
  %146 = call i32 @msg_destroy(i32 %145)
  br label %148

147:                                              ; preds = %135, %132
  store i32 0, i32* %5, align 4
  br label %148

148:                                              ; preds = %147, %141
  br label %149

149:                                              ; preds = %148, %126
  br label %150

150:                                              ; preds = %149, %111
  br label %151

151:                                              ; preds = %150, %101
  %152 = load i32, i32* %5, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %159

154:                                              ; preds = %151
  %155 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %156 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %155, i32 0, i32 4
  %157 = load i32, i32* %156, align 4
  %158 = call i32 @mqtt_send_if_possible(i32 %157)
  br label %159

159:                                              ; preds = %154, %151
  %160 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %161 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %160, i32 0, i32 3
  %162 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %161, i32 0, i32 0
  %163 = call i32 @msg_size(i32* %162)
  %164 = call i32 (i8*, ...) @NODE_DBG(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %163)
  %165 = call i32 (i8*, ...) @NODE_DBG(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  br label %166

166:                                              ; preds = %159, %38, %27, %21, %13
  ret void
}

declare dso_local i32 @NODE_DBG(i8*, ...) #1

declare dso_local i32 @msg_size(i32*) #1

declare dso_local %struct.TYPE_6__* @msg_peek(i32*) #1

declare dso_local i32 @msg_destroy(i32) #1

declare dso_local i32 @msg_dequeue(i32*) #1

declare dso_local i32* @lua_getstate(...) #1

declare dso_local i32 @lua_rawgeti(i32*, i32, i64) #1

declare dso_local i32 @lua_call(i32*, i32, i32) #1

declare dso_local i32 @mqtt_send_if_possible(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
