; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_mqtt.c_mqtt_socket_subscribe.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_mqtt.c_mqtt_socket_subscribe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_14__, i32*, i32, i32, i32 }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_16__ = type { i64, i32 }
%struct.TYPE_15__ = type { %struct.TYPE_13__, i32, i32 }
%struct.TYPE_13__ = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"enter mqtt_socket_subscribe.\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"mqtt.socket\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"mqtt.socket expected\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"userdata is nil.\0A\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"mud->pesp_conn is NULL.\0A\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"not connected\00", align 1
@MQTT_BUF_SIZE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [17 x i8] c"subscribe table\0A\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"topic: %s - qos: %d, length: %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"no topics found\00", align 1
@.str.9 = private unnamed_addr constant [49 x i8] c"buffer overflow, can't enqueue all subscriptions\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"subscribe string\0A\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"need topic name\00", align 1
@LUA_TFUNCTION = common dso_local global i64 0, align 8
@LUA_TLIGHTFUNCTION = common dso_local global i64 0, align 8
@LUA_REGISTRYINDEX = common dso_local global i32 0, align 4
@MQTT_MSG_TYPE_SUBSCRIBE = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [42 x i8] c"topic: %s - id: %d - qos: %d, length: %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [33 x i8] c"msg_size: %d, event_timeout: %d\0A\00", align 1
@ESPCONN_IF = common dso_local global i64 0, align 8
@ESPCONN_OK = common dso_local global i64 0, align 8
@.str.14 = private unnamed_addr constant [27 x i8] c"subscribe, queue size: %d\0A\00", align 1
@.str.15 = private unnamed_addr constant [30 x i8] c"leave mqtt_socket_subscribe.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @mqtt_socket_subscribe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mqtt_socket_subscribe(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_17__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_16__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_15__*, align 8
  %17 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  %18 = call i32 (i8*, ...) @NODE_DBG(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %19 = load i32*, i32** %3, align 8
  %20 = load i32, i32* %4, align 4
  %21 = call i64 @luaL_checkudata(i32* %19, i32 %20, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %22 = inttoptr i64 %21 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %22, %struct.TYPE_17__** %9, align 8
  %23 = load i32*, i32** %3, align 8
  %24 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @luaL_argcheck(i32* %23, %struct.TYPE_17__* %24, i32 %25, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %27 = load i32, i32* %4, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %4, align 4
  %29 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %30 = icmp eq %struct.TYPE_17__* %29, null
  br i1 %30, label %31, label %35

31:                                               ; preds = %1
  %32 = call i32 (i8*, ...) @NODE_DBG(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %33 = load i32*, i32** %3, align 8
  %34 = call i32 @lua_pushboolean(i32* %33, i32 0)
  store i32 1, i32* %2, align 4
  br label %251

35:                                               ; preds = %1
  %36 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %37 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = icmp eq i32* %38, null
  br i1 %39, label %40, label %44

40:                                               ; preds = %35
  %41 = call i32 (i8*, ...) @NODE_DBG(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  %42 = load i32*, i32** %3, align 8
  %43 = call i32 @lua_pushboolean(i32* %42, i32 0)
  store i32 1, i32* %2, align 4
  br label %251

44:                                               ; preds = %35
  %45 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %46 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 8
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %54, label %49

49:                                               ; preds = %44
  %50 = load i32*, i32** %3, align 8
  %51 = call i32 @luaL_error(i32* %50, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  %52 = load i32*, i32** %3, align 8
  %53 = call i32 @lua_pushboolean(i32* %52, i32 0)
  store i32 1, i32* %2, align 4
  br label %251

54:                                               ; preds = %44
  %55 = load i32, i32* @MQTT_BUF_SIZE, align 4
  %56 = zext i32 %55 to i64
  %57 = call i8* @llvm.stacksave()
  store i8* %57, i8** %10, align 8
  %58 = alloca i32, i64 %56, align 16
  store i64 %56, i64* %11, align 8
  %59 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %60 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %60, i32 0, i32 1
  %62 = load i32, i32* @MQTT_BUF_SIZE, align 4
  %63 = call i32 @mqtt_msg_init(i32* %61, i32* %58, i32 %62)
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %12, align 8
  %64 = load i32*, i32** %3, align 8
  %65 = load i32, i32* %4, align 4
  %66 = call i64 @lua_istable(i32* %64, i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %141

68:                                               ; preds = %54
  %69 = call i32 (i8*, ...) @NODE_DBG(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0))
  %70 = load i32*, i32** %3, align 8
  %71 = call i32 @lua_pushnil(i32* %70)
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  br label %72

72:                                               ; preds = %111, %68
  %73 = load i32*, i32** %3, align 8
  %74 = load i32, i32* %4, align 4
  %75 = call i64 @lua_next(i32* %73, i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %114

77:                                               ; preds = %72
  %78 = load i32*, i32** %3, align 8
  %79 = call i8* @luaL_checkstring(i32* %78, i32 -2)
  store i8* %79, i8** %7, align 8
  %80 = load i32*, i32** %3, align 8
  %81 = call i32 @luaL_checkinteger(i32* %80, i32 -1)
  store i32 %81, i32* %5, align 4
  %82 = load i32, i32* %13, align 4
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %77
  %85 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %86 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %86, i32 0, i32 1
  %88 = call %struct.TYPE_16__* @mqtt_msg_subscribe_init(i32* %87, i32* %6)
  store %struct.TYPE_16__* %88, %struct.TYPE_16__** %12, align 8
  br label %89

89:                                               ; preds = %84, %77
  %90 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %91 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %91, i32 0, i32 1
  %93 = load i8*, i8** %7, align 8
  %94 = load i32, i32* %5, align 4
  %95 = call %struct.TYPE_16__* @mqtt_msg_subscribe_topic(i32* %92, i8* %93, i32 %94)
  store %struct.TYPE_16__* %95, %struct.TYPE_16__** %12, align 8
  %96 = load i32, i32* %13, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %13, align 4
  %98 = load i8*, i8** %7, align 8
  %99 = load i32, i32* %5, align 4
  %100 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %101 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = call i32 (i8*, ...) @NODE_DBG(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0), i8* %98, i32 %99, i64 %102)
  %104 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %105 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = icmp eq i64 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %89
  %109 = load i32*, i32** %3, align 8
  %110 = call i32 @lua_pop(i32* %109, i32 1)
  store i32 1, i32* %14, align 4
  br label %114

111:                                              ; preds = %89
  %112 = load i32*, i32** %3, align 8
  %113 = call i32 @lua_pop(i32* %112, i32 1)
  br label %72

114:                                              ; preds = %108, %72
  %115 = load i32, i32* %13, align 4
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %120

117:                                              ; preds = %114
  %118 = load i32*, i32** %3, align 8
  %119 = call i32 @luaL_error(i32* %118, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0))
  store i32 %119, i32* %2, align 4
  store i32 1, i32* %15, align 4
  br label %249

120:                                              ; preds = %114
  %121 = load i32, i32* %14, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %126

123:                                              ; preds = %120
  %124 = load i32*, i32** %3, align 8
  %125 = call i32 @luaL_error(i32* %124, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.9, i64 0, i64 0))
  store i32 %125, i32* %2, align 4
  store i32 1, i32* %15, align 4
  br label %249

126:                                              ; preds = %120
  %127 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %128 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %128, i32 0, i32 1
  %130 = call %struct.TYPE_16__* @mqtt_msg_subscribe_fini(i32* %129)
  store %struct.TYPE_16__* %130, %struct.TYPE_16__** %12, align 8
  %131 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %132 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = icmp eq i64 %133, 0
  br i1 %134, label %135, label %138

135:                                              ; preds = %126
  %136 = load i32*, i32** %3, align 8
  %137 = call i32 @luaL_error(i32* %136, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.9, i64 0, i64 0))
  store i32 %137, i32* %2, align 4
  store i32 1, i32* %15, align 4
  br label %249

138:                                              ; preds = %126
  %139 = load i32, i32* %4, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %4, align 4
  br label %165

141:                                              ; preds = %54
  %142 = call i32 (i8*, ...) @NODE_DBG(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i64 0, i64 0))
  %143 = load i32*, i32** %3, align 8
  %144 = load i32, i32* %4, align 4
  %145 = call i8* @luaL_checklstring(i32* %143, i32 %144, i64* %8)
  store i8* %145, i8** %7, align 8
  %146 = load i32, i32* %4, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %4, align 4
  %148 = load i8*, i8** %7, align 8
  %149 = icmp eq i8* %148, null
  br i1 %149, label %150, label %153

150:                                              ; preds = %141
  %151 = load i32*, i32** %3, align 8
  %152 = call i32 @luaL_error(i32* %151, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0))
  store i32 %152, i32* %2, align 4
  store i32 1, i32* %15, align 4
  br label %249

153:                                              ; preds = %141
  %154 = load i32*, i32** %3, align 8
  %155 = load i32, i32* %4, align 4
  %156 = call i32 @luaL_checkinteger(i32* %154, i32 %155)
  store i32 %156, i32* %5, align 4
  %157 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %158 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %158, i32 0, i32 1
  %160 = load i8*, i8** %7, align 8
  %161 = load i32, i32* %5, align 4
  %162 = call %struct.TYPE_16__* @mqtt_msg_subscribe(i32* %159, i8* %160, i32 %161, i32* %6)
  store %struct.TYPE_16__* %162, %struct.TYPE_16__** %12, align 8
  %163 = load i32, i32* %4, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %4, align 4
  br label %165

165:                                              ; preds = %153, %138
  %166 = load i32*, i32** %3, align 8
  %167 = load i32, i32* %4, align 4
  %168 = call i64 @lua_type(i32* %166, i32 %167)
  %169 = load i64, i64* @LUA_TFUNCTION, align 8
  %170 = icmp eq i64 %168, %169
  br i1 %170, label %177, label %171

171:                                              ; preds = %165
  %172 = load i32*, i32** %3, align 8
  %173 = load i32, i32* %4, align 4
  %174 = call i64 @lua_type(i32* %172, i32 %173)
  %175 = load i64, i64* @LUA_TLIGHTFUNCTION, align 8
  %176 = icmp eq i64 %174, %175
  br i1 %176, label %177, label %192

177:                                              ; preds = %171, %165
  %178 = load i32*, i32** %3, align 8
  %179 = load i32, i32* %4, align 4
  %180 = call i32 @lua_pushvalue(i32* %178, i32 %179)
  %181 = load i32*, i32** %3, align 8
  %182 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %183 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %184 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %183, i32 0, i32 3
  %185 = load i32, i32* %184, align 4
  %186 = call i32 @luaL_unref(i32* %181, i32 %182, i32 %185)
  %187 = load i32*, i32** %3, align 8
  %188 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %189 = call i32 @luaL_ref(i32* %187, i32 %188)
  %190 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %191 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %190, i32 0, i32 3
  store i32 %189, i32* %191, align 4
  br label %192

192:                                              ; preds = %177, %171
  %193 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %194 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %193, i32 0, i32 0
  %195 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %194, i32 0, i32 0
  %196 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %197 = load i32, i32* %6, align 4
  %198 = load i32, i32* @MQTT_MSG_TYPE_SUBSCRIBE, align 4
  %199 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %200 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %199, i32 0, i32 1
  %201 = load i32, i32* %200, align 8
  %202 = call i64 @mqtt_get_qos(i32 %201)
  %203 = trunc i64 %202 to i32
  %204 = call %struct.TYPE_15__* @msg_enqueue(i32* %195, %struct.TYPE_16__* %196, i32 %197, i32 %198, i32 %203)
  store %struct.TYPE_15__* %204, %struct.TYPE_15__** %16, align 8
  %205 = load i8*, i8** %7, align 8
  %206 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %207 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %206, i32 0, i32 2
  %208 = load i32, i32* %207, align 4
  %209 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %210 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %209, i32 0, i32 1
  %211 = load i32, i32* %210, align 4
  %212 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %213 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %212, i32 0, i32 0
  %214 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 4
  %216 = call i32 (i8*, ...) @NODE_DBG(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.12, i64 0, i64 0), i8* %205, i32 %208, i32 %211, i32 %215)
  %217 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %218 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %217, i32 0, i32 0
  %219 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %218, i32 0, i32 0
  %220 = call i32 @msg_size(i32* %219)
  %221 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %222 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %221, i32 0, i32 2
  %223 = load i32, i32* %222, align 8
  %224 = call i32 (i8*, ...) @NODE_DBG(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.13, i64 0, i64 0), i32 %220, i32 %223)
  %225 = load i64, i64* @ESPCONN_IF, align 8
  store i64 %225, i64* %17, align 8
  %226 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %227 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %226, i32 0, i32 1
  %228 = load i32*, i32** %227, align 8
  %229 = call i64 @mqtt_send_if_possible(i32* %228)
  store i64 %229, i64* %17, align 8
  %230 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %231 = icmp ne %struct.TYPE_15__* %230, null
  br i1 %231, label %232, label %236

232:                                              ; preds = %192
  %233 = load i64, i64* %17, align 8
  %234 = load i64, i64* @ESPCONN_OK, align 8
  %235 = icmp ne i64 %233, %234
  br i1 %235, label %236, label %239

236:                                              ; preds = %232, %192
  %237 = load i32*, i32** %3, align 8
  %238 = call i32 @lua_pushboolean(i32* %237, i32 0)
  br label %242

239:                                              ; preds = %232
  %240 = load i32*, i32** %3, align 8
  %241 = call i32 @lua_pushboolean(i32* %240, i32 1)
  br label %242

242:                                              ; preds = %239, %236
  %243 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %244 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %243, i32 0, i32 0
  %245 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %244, i32 0, i32 0
  %246 = call i32 @msg_size(i32* %245)
  %247 = call i32 (i8*, ...) @NODE_DBG(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.14, i64 0, i64 0), i32 %246)
  %248 = call i32 (i8*, ...) @NODE_DBG(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.15, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  store i32 1, i32* %15, align 4
  br label %249

249:                                              ; preds = %242, %150, %135, %123, %117
  %250 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %250)
  br label %251

251:                                              ; preds = %249, %49, %40, %31
  %252 = load i32, i32* %2, align 4
  ret i32 %252
}

declare dso_local i32 @NODE_DBG(i8*, ...) #1

declare dso_local i64 @luaL_checkudata(i32*, i32, i8*) #1

declare dso_local i32 @luaL_argcheck(i32*, %struct.TYPE_17__*, i32, i8*) #1

declare dso_local i32 @lua_pushboolean(i32*, i32) #1

declare dso_local i32 @luaL_error(i32*, i8*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @mqtt_msg_init(i32*, i32*, i32) #1

declare dso_local i64 @lua_istable(i32*, i32) #1

declare dso_local i32 @lua_pushnil(i32*) #1

declare dso_local i64 @lua_next(i32*, i32) #1

declare dso_local i8* @luaL_checkstring(i32*, i32) #1

declare dso_local i32 @luaL_checkinteger(i32*, i32) #1

declare dso_local %struct.TYPE_16__* @mqtt_msg_subscribe_init(i32*, i32*) #1

declare dso_local %struct.TYPE_16__* @mqtt_msg_subscribe_topic(i32*, i8*, i32) #1

declare dso_local i32 @lua_pop(i32*, i32) #1

declare dso_local %struct.TYPE_16__* @mqtt_msg_subscribe_fini(i32*) #1

declare dso_local i8* @luaL_checklstring(i32*, i32, i64*) #1

declare dso_local %struct.TYPE_16__* @mqtt_msg_subscribe(i32*, i8*, i32, i32*) #1

declare dso_local i64 @lua_type(i32*, i32) #1

declare dso_local i32 @lua_pushvalue(i32*, i32) #1

declare dso_local i32 @luaL_unref(i32*, i32, i32) #1

declare dso_local i32 @luaL_ref(i32*, i32) #1

declare dso_local %struct.TYPE_15__* @msg_enqueue(i32*, %struct.TYPE_16__*, i32, i32, i32) #1

declare dso_local i64 @mqtt_get_qos(i32) #1

declare dso_local i32 @msg_size(i32*) #1

declare dso_local i64 @mqtt_send_if_possible(i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
