; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_mqtt.c_mqtt_socket_timer.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_mqtt.c_mqtt_socket_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i64, i64, i32, i32*, %struct.TYPE_9__, i64, i32 }
%struct.TYPE_9__ = type { i32, i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_10__ = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"enter mqtt_socket_timer.\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"mud->pesp_conn is NULL.\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"timer, queue size: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"event_timeout: %d.\0A\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"event timeout. \0A\00", align 1
@MQTT_DATA = common dso_local global i64 0, align 8
@MQTT_INIT = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [28 x i8] c"Can not connect to broker.\0A\00", align 1
@MQTT_CONN_FAIL_SERVER_NOT_FOUND = common dso_local global i32 0, align 4
@MQTT_CONNECT_SENDING = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [28 x i8] c"sSend MQTT_CONNECT failed.\0A\00", align 1
@MQTT_CONN_FAIL_TIMEOUT_SENDING = common dso_local global i32 0, align 4
@MQTT_CONNECT_SENT = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [23 x i8] c"MQTT_CONNECT timeout.\0A\00", align 1
@MQTT_CONN_FAIL_TIMEOUT_RECEIVING = common dso_local global i32 0, align 4
@MQTT_BUF_SIZE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [32 x i8] c"\0D\0AMQTT: Send keepalive packet\0D\0A\00", align 1
@MQTT_MSG_TYPE_PINGREQ = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [21 x i8] c"keep_alive_tick: %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"leave mqtt_socket_timer.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mqtt_socket_timer(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i32*, align 8
  store i8* %0, i8** %2, align 8
  %9 = call i32 (i8*, ...) @NODE_DBG(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %10 = load i8*, i8** %2, align 8
  %11 = bitcast i8* %10 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %11, %struct.TYPE_11__** %3, align 8
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %13 = icmp eq %struct.TYPE_11__* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %210

15:                                               ; preds = %1
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 4
  %18 = load i32*, i32** %17, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %25

20:                                               ; preds = %15
  %21 = call i32 (i8*, ...) @NODE_DBG(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 7
  %24 = call i32 @os_timer_disarm(i32* %23)
  br label %210

25:                                               ; preds = %15
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 5
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  %29 = call i32 @msg_size(i32* %28)
  %30 = call i32 (i8*, ...) @NODE_DBG(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %29)
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp sgt i64 %33, 0
  br i1 %34, label %35, label %64

35:                                               ; preds = %25
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = call i32 (i8*, ...) @NODE_DBG(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i64 %38)
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = add nsw i64 %42, -1
  store i64 %43, i64* %41, align 8
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp sgt i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %35
  br label %210

49:                                               ; preds = %35
  %50 = call i32 (i8*, ...) @NODE_DBG(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @MQTT_DATA, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %62

56:                                               ; preds = %49
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 5
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 0
  %60 = call i32 @msg_dequeue(i32* %59)
  %61 = call i32 @msg_destroy(i32 %60)
  br label %62

62:                                               ; preds = %56, %49
  br label %63

63:                                               ; preds = %62
  br label %64

64:                                               ; preds = %63, %25
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @MQTT_INIT, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %82

70:                                               ; preds = %64
  %71 = call i32 (i8*, ...) @NODE_DBG(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0))
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 7
  %74 = call i32 @os_timer_disarm(i32* %73)
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %76 = load i32, i32* @MQTT_CONN_FAIL_SERVER_NOT_FOUND, align 4
  %77 = call i32 @mqtt_connack_fail(%struct.TYPE_11__* %75, i32 %76)
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 4
  %80 = load i32*, i32** %79, align 8
  %81 = call i32 @espconn_disconnect(i32* %80)
  br label %204

82:                                               ; preds = %64
  %83 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @MQTT_CONNECT_SENDING, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %102

88:                                               ; preds = %82
  %89 = call i32 (i8*, ...) @NODE_DBG(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0))
  %90 = load i64, i64* @MQTT_INIT, align 8
  %91 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i32 0, i32 1
  store i64 %90, i64* %92, align 8
  %93 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %94 = load i32, i32* @MQTT_CONN_FAIL_TIMEOUT_SENDING, align 4
  %95 = call i32 @mqtt_connack_fail(%struct.TYPE_11__* %93, i32 %94)
  %96 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i32 0, i32 4
  %98 = load i32*, i32** %97, align 8
  %99 = call i32 @espconn_disconnect(i32* %98)
  %100 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %101 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %100, i32 0, i32 2
  store i64 0, i64* %101, align 8
  br label %203

102:                                              ; preds = %82
  %103 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %104 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @MQTT_CONNECT_SENT, align 8
  %107 = icmp eq i64 %105, %106
  br i1 %107, label %108, label %120

108:                                              ; preds = %102
  %109 = call i32 (i8*, ...) @NODE_DBG(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0))
  %110 = load i64, i64* @MQTT_INIT, align 8
  %111 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %112 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %111, i32 0, i32 1
  store i64 %110, i64* %112, align 8
  %113 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %114 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %113, i32 0, i32 4
  %115 = load i32*, i32** %114, align 8
  %116 = call i32 @espconn_disconnect(i32* %115)
  %117 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %118 = load i32, i32* @MQTT_CONN_FAIL_TIMEOUT_RECEIVING, align 4
  %119 = call i32 @mqtt_connack_fail(%struct.TYPE_11__* %117, i32 %118)
  br label %202

120:                                              ; preds = %102
  %121 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %122 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* @MQTT_DATA, align 8
  %125 = icmp eq i64 %123, %124
  br i1 %125, label %126, label %201

126:                                              ; preds = %120
  %127 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %128 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %127, i32 0, i32 5
  %129 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %128, i32 0, i32 0
  %130 = call i32* @msg_peek(i32* %129)
  store i32* %130, i32** %4, align 8
  %131 = load i32*, i32** %4, align 8
  %132 = icmp ne i32* %131, null
  br i1 %132, label %133, label %138

133:                                              ; preds = %126
  %134 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %135 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %134, i32 0, i32 4
  %136 = load i32*, i32** %135, align 8
  %137 = call i32 @mqtt_send_if_possible(i32* %136)
  br label %200

138:                                              ; preds = %126
  %139 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %140 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %139, i32 0, i32 2
  %141 = load i64, i64* %140, align 8
  %142 = add nsw i64 %141, 1
  store i64 %142, i64* %140, align 8
  %143 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %144 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %143, i32 0, i32 2
  %145 = load i64, i64* %144, align 8
  %146 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %147 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %146, i32 0, i32 5
  %148 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %147, i32 0, i32 2
  %149 = load %struct.TYPE_8__*, %struct.TYPE_8__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = icmp sgt i64 %145, %151
  br i1 %152, label %153, label %199

153:                                              ; preds = %138
  %154 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %155 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %154, i32 0, i32 3
  %156 = load i32, i32* %155, align 8
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %163

158:                                              ; preds = %153
  %159 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %160 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %159, i32 0, i32 4
  %161 = load i32*, i32** %160, align 8
  %162 = call i32 @mqtt_socket_reconnected(i32* %161, i32 0)
  br label %198

163:                                              ; preds = %153
  %164 = load i32, i32* @MQTT_BUF_SIZE, align 4
  %165 = zext i32 %164 to i64
  %166 = call i8* @llvm.stacksave()
  store i8* %166, i8** %5, align 8
  %167 = alloca i32, i64 %165, align 16
  store i64 %165, i64* %6, align 8
  %168 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %169 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %168, i32 0, i32 5
  %170 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %169, i32 0, i32 1
  %171 = load i32, i32* @MQTT_BUF_SIZE, align 4
  %172 = call i32 @mqtt_msg_init(i32* %170, i32* %167, i32 %171)
  %173 = call i32 (i8*, ...) @NODE_DBG(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i64 0, i64 0))
  %174 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %175 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %174, i32 0, i32 5
  %176 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %175, i32 0, i32 1
  %177 = call %struct.TYPE_10__* @mqtt_msg_pingreq(i32* %176)
  store %struct.TYPE_10__* %177, %struct.TYPE_10__** %7, align 8
  %178 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %179 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %178, i32 0, i32 5
  %180 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %179, i32 0, i32 0
  %181 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %182 = load i32, i32* @MQTT_MSG_TYPE_PINGREQ, align 4
  %183 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %184 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 4
  %186 = call i64 @mqtt_get_qos(i32 %185)
  %187 = trunc i64 %186 to i32
  %188 = call i32* @msg_enqueue(i32* %180, %struct.TYPE_10__* %181, i32 0, i32 %182, i32 %187)
  store i32* %188, i32** %8, align 8
  %189 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %190 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %189, i32 0, i32 3
  store i32 1, i32* %190, align 8
  %191 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %192 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %191, i32 0, i32 2
  store i64 0, i64* %192, align 8
  %193 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %194 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %193, i32 0, i32 4
  %195 = load i32*, i32** %194, align 8
  %196 = call i32 @mqtt_send_if_possible(i32* %195)
  %197 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %197)
  br label %198

198:                                              ; preds = %163, %158
  br label %199

199:                                              ; preds = %198, %138
  br label %200

200:                                              ; preds = %199, %133
  br label %201

201:                                              ; preds = %200, %120
  br label %202

202:                                              ; preds = %201, %108
  br label %203

203:                                              ; preds = %202, %88
  br label %204

204:                                              ; preds = %203, %70
  %205 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %206 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %205, i32 0, i32 2
  %207 = load i64, i64* %206, align 8
  %208 = call i32 (i8*, ...) @NODE_DBG(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0), i64 %207)
  %209 = call i32 (i8*, ...) @NODE_DBG(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0))
  br label %210

210:                                              ; preds = %204, %48, %20, %14
  ret void
}

declare dso_local i32 @NODE_DBG(i8*, ...) #1

declare dso_local i32 @os_timer_disarm(i32*) #1

declare dso_local i32 @msg_size(i32*) #1

declare dso_local i32 @msg_destroy(i32) #1

declare dso_local i32 @msg_dequeue(i32*) #1

declare dso_local i32 @mqtt_connack_fail(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @espconn_disconnect(i32*) #1

declare dso_local i32* @msg_peek(i32*) #1

declare dso_local i32 @mqtt_send_if_possible(i32*) #1

declare dso_local i32 @mqtt_socket_reconnected(i32*, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @mqtt_msg_init(i32*, i32*, i32) #1

declare dso_local %struct.TYPE_10__* @mqtt_msg_pingreq(i32*) #1

declare dso_local i32* @msg_enqueue(i32*, %struct.TYPE_10__*, i32, i32, i32) #1

declare dso_local i64 @mqtt_get_qos(i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
