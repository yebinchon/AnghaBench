; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_mqtt.c_mqtt_socket_unsubscribe.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_mqtt.c_mqtt_socket_unsubscribe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_14__, i32*, i32, i32, i32 }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_16__ = type { i64, i32 }
%struct.TYPE_15__ = type { %struct.TYPE_13__, i32, i32 }
%struct.TYPE_13__ = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"enter mqtt_socket_unsubscribe.\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"mqtt.socket\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"mqtt.socket expected\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"userdata is nil.\0A\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"mud->pesp_conn is NULL.\0A\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"not connected\00", align 1
@MQTT_BUF_SIZE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [19 x i8] c"unsubscribe table\0A\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"topic: %s - length: %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"no topics found\00", align 1
@.str.9 = private unnamed_addr constant [51 x i8] c"buffer overflow, can't enqueue all unsubscriptions\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"unsubscribe string\0A\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"need topic name\00", align 1
@LUA_TFUNCTION = common dso_local global i64 0, align 8
@LUA_TLIGHTFUNCTION = common dso_local global i64 0, align 8
@LUA_REGISTRYINDEX = common dso_local global i32 0, align 4
@MQTT_MSG_TYPE_UNSUBSCRIBE = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [42 x i8] c"topic: %s - id: %d - qos: %d, length: %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [33 x i8] c"msg_size: %d, event_timeout: %d\0A\00", align 1
@ESPCONN_IF = common dso_local global i64 0, align 8
@ESPCONN_OK = common dso_local global i64 0, align 8
@.str.14 = private unnamed_addr constant [29 x i8] c"unsubscribe, queue size: %d\0A\00", align 1
@.str.15 = private unnamed_addr constant [32 x i8] c"leave mqtt_socket_unsubscribe.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @mqtt_socket_unsubscribe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mqtt_socket_unsubscribe(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_17__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_16__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_15__*, align 8
  %16 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  %17 = call i32 (i8*, ...) @NODE_DBG(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %18 = load i32*, i32** %3, align 8
  %19 = load i32, i32* %4, align 4
  %20 = call i64 @luaL_checkudata(i32* %18, i32 %19, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %21 = inttoptr i64 %20 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %21, %struct.TYPE_17__** %8, align 8
  %22 = load i32*, i32** %3, align 8
  %23 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @luaL_argcheck(i32* %22, %struct.TYPE_17__* %23, i32 %24, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %26 = load i32, i32* %4, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %4, align 4
  %28 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %29 = icmp eq %struct.TYPE_17__* %28, null
  br i1 %29, label %30, label %34

30:                                               ; preds = %1
  %31 = call i32 (i8*, ...) @NODE_DBG(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %32 = load i32*, i32** %3, align 8
  %33 = call i32 @lua_pushboolean(i32* %32, i32 0)
  store i32 1, i32* %2, align 4
  br label %240

34:                                               ; preds = %1
  %35 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = icmp eq i32* %37, null
  br i1 %38, label %39, label %43

39:                                               ; preds = %34
  %40 = call i32 (i8*, ...) @NODE_DBG(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  %41 = load i32*, i32** %3, align 8
  %42 = call i32 @lua_pushboolean(i32* %41, i32 0)
  store i32 1, i32* %2, align 4
  br label %240

43:                                               ; preds = %34
  %44 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 8
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %53, label %48

48:                                               ; preds = %43
  %49 = load i32*, i32** %3, align 8
  %50 = call i32 @luaL_error(i32* %49, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  %51 = load i32*, i32** %3, align 8
  %52 = call i32 @lua_pushboolean(i32* %51, i32 0)
  store i32 1, i32* %2, align 4
  br label %240

53:                                               ; preds = %43
  %54 = load i32, i32* @MQTT_BUF_SIZE, align 4
  %55 = zext i32 %54 to i64
  %56 = call i8* @llvm.stacksave()
  store i8* %56, i8** %9, align 8
  %57 = alloca i32, i64 %55, align 16
  store i64 %55, i64* %10, align 8
  %58 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %59, i32 0, i32 1
  %61 = load i32, i32* @MQTT_BUF_SIZE, align 4
  %62 = call i32 @mqtt_msg_init(i32* %60, i32* %57, i32 %61)
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %11, align 8
  %63 = load i32*, i32** %3, align 8
  %64 = load i32, i32* %4, align 4
  %65 = call i64 @lua_istable(i32* %63, i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %136

67:                                               ; preds = %53
  %68 = call i32 (i8*, ...) @NODE_DBG(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0))
  %69 = load i32*, i32** %3, align 8
  %70 = call i32 @lua_pushnil(i32* %69)
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %71

71:                                               ; preds = %106, %67
  %72 = load i32*, i32** %3, align 8
  %73 = load i32, i32* %4, align 4
  %74 = call i64 @lua_next(i32* %72, i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %109

76:                                               ; preds = %71
  %77 = load i32*, i32** %3, align 8
  %78 = call i8* @luaL_checkstring(i32* %77, i32 -2)
  store i8* %78, i8** %6, align 8
  %79 = load i32, i32* %12, align 4
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %76
  %82 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %83 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %83, i32 0, i32 1
  %85 = call %struct.TYPE_16__* @mqtt_msg_unsubscribe_init(i32* %84, i32* %5)
  store %struct.TYPE_16__* %85, %struct.TYPE_16__** %11, align 8
  br label %86

86:                                               ; preds = %81, %76
  %87 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %88 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %88, i32 0, i32 1
  %90 = load i8*, i8** %6, align 8
  %91 = call %struct.TYPE_16__* @mqtt_msg_unsubscribe_topic(i32* %89, i8* %90)
  store %struct.TYPE_16__* %91, %struct.TYPE_16__** %11, align 8
  %92 = load i32, i32* %12, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %12, align 4
  %94 = load i8*, i8** %6, align 8
  %95 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %96 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = call i32 (i8*, ...) @NODE_DBG(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0), i8* %94, i64 %97)
  %99 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %100 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = icmp eq i64 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %86
  %104 = load i32*, i32** %3, align 8
  %105 = call i32 @lua_pop(i32* %104, i32 1)
  store i32 1, i32* %13, align 4
  br label %109

106:                                              ; preds = %86
  %107 = load i32*, i32** %3, align 8
  %108 = call i32 @lua_pop(i32* %107, i32 1)
  br label %71

109:                                              ; preds = %103, %71
  %110 = load i32, i32* %12, align 4
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %109
  %113 = load i32*, i32** %3, align 8
  %114 = call i32 @luaL_error(i32* %113, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0))
  store i32 %114, i32* %2, align 4
  store i32 1, i32* %14, align 4
  br label %238

115:                                              ; preds = %109
  %116 = load i32, i32* %13, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %121

118:                                              ; preds = %115
  %119 = load i32*, i32** %3, align 8
  %120 = call i32 @luaL_error(i32* %119, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.9, i64 0, i64 0))
  store i32 %120, i32* %2, align 4
  store i32 1, i32* %14, align 4
  br label %238

121:                                              ; preds = %115
  %122 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %123 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %123, i32 0, i32 1
  %125 = call %struct.TYPE_16__* @mqtt_msg_unsubscribe_fini(i32* %124)
  store %struct.TYPE_16__* %125, %struct.TYPE_16__** %11, align 8
  %126 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %127 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = icmp eq i64 %128, 0
  br i1 %129, label %130, label %133

130:                                              ; preds = %121
  %131 = load i32*, i32** %3, align 8
  %132 = call i32 @luaL_error(i32* %131, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.9, i64 0, i64 0))
  store i32 %132, i32* %2, align 4
  store i32 1, i32* %14, align 4
  br label %238

133:                                              ; preds = %121
  %134 = load i32, i32* %4, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %4, align 4
  br label %154

136:                                              ; preds = %53
  %137 = call i32 (i8*, ...) @NODE_DBG(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i64 0, i64 0))
  %138 = load i32*, i32** %3, align 8
  %139 = load i32, i32* %4, align 4
  %140 = call i8* @luaL_checklstring(i32* %138, i32 %139, i64* %7)
  store i8* %140, i8** %6, align 8
  %141 = load i32, i32* %4, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %4, align 4
  %143 = load i8*, i8** %6, align 8
  %144 = icmp eq i8* %143, null
  br i1 %144, label %145, label %148

145:                                              ; preds = %136
  %146 = load i32*, i32** %3, align 8
  %147 = call i32 @luaL_error(i32* %146, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0))
  store i32 %147, i32* %2, align 4
  store i32 1, i32* %14, align 4
  br label %238

148:                                              ; preds = %136
  %149 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %150 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %150, i32 0, i32 1
  %152 = load i8*, i8** %6, align 8
  %153 = call %struct.TYPE_16__* @mqtt_msg_unsubscribe(i32* %151, i8* %152, i32* %5)
  store %struct.TYPE_16__* %153, %struct.TYPE_16__** %11, align 8
  br label %154

154:                                              ; preds = %148, %133
  %155 = load i32*, i32** %3, align 8
  %156 = load i32, i32* %4, align 4
  %157 = call i64 @lua_type(i32* %155, i32 %156)
  %158 = load i64, i64* @LUA_TFUNCTION, align 8
  %159 = icmp eq i64 %157, %158
  br i1 %159, label %166, label %160

160:                                              ; preds = %154
  %161 = load i32*, i32** %3, align 8
  %162 = load i32, i32* %4, align 4
  %163 = call i64 @lua_type(i32* %161, i32 %162)
  %164 = load i64, i64* @LUA_TLIGHTFUNCTION, align 8
  %165 = icmp eq i64 %163, %164
  br i1 %165, label %166, label %181

166:                                              ; preds = %160, %154
  %167 = load i32*, i32** %3, align 8
  %168 = load i32, i32* %4, align 4
  %169 = call i32 @lua_pushvalue(i32* %167, i32 %168)
  %170 = load i32*, i32** %3, align 8
  %171 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %172 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %173 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %172, i32 0, i32 3
  %174 = load i32, i32* %173, align 4
  %175 = call i32 @luaL_unref(i32* %170, i32 %171, i32 %174)
  %176 = load i32*, i32** %3, align 8
  %177 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %178 = call i32 @luaL_ref(i32* %176, i32 %177)
  %179 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %180 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %179, i32 0, i32 3
  store i32 %178, i32* %180, align 4
  br label %181

181:                                              ; preds = %166, %160
  %182 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %183 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %183, i32 0, i32 0
  %185 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %186 = load i32, i32* %5, align 4
  %187 = load i32, i32* @MQTT_MSG_TYPE_UNSUBSCRIBE, align 4
  %188 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %189 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 8
  %191 = call i64 @mqtt_get_qos(i32 %190)
  %192 = trunc i64 %191 to i32
  %193 = call %struct.TYPE_15__* @msg_enqueue(i32* %184, %struct.TYPE_16__* %185, i32 %186, i32 %187, i32 %192)
  store %struct.TYPE_15__* %193, %struct.TYPE_15__** %15, align 8
  %194 = load i8*, i8** %6, align 8
  %195 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %196 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %195, i32 0, i32 2
  %197 = load i32, i32* %196, align 4
  %198 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %199 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 4
  %201 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %202 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %201, i32 0, i32 0
  %203 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 4
  %205 = call i32 (i8*, ...) @NODE_DBG(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.12, i64 0, i64 0), i8* %194, i32 %197, i32 %200, i32 %204)
  %206 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %207 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %206, i32 0, i32 0
  %208 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %207, i32 0, i32 0
  %209 = call i32 @msg_size(i32* %208)
  %210 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %211 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %210, i32 0, i32 2
  %212 = load i32, i32* %211, align 8
  %213 = call i32 (i8*, ...) @NODE_DBG(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.13, i64 0, i64 0), i32 %209, i32 %212)
  %214 = load i64, i64* @ESPCONN_IF, align 8
  store i64 %214, i64* %16, align 8
  %215 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %216 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %215, i32 0, i32 1
  %217 = load i32*, i32** %216, align 8
  %218 = call i64 @mqtt_send_if_possible(i32* %217)
  store i64 %218, i64* %16, align 8
  %219 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %220 = icmp ne %struct.TYPE_15__* %219, null
  br i1 %220, label %221, label %225

221:                                              ; preds = %181
  %222 = load i64, i64* %16, align 8
  %223 = load i64, i64* @ESPCONN_OK, align 8
  %224 = icmp ne i64 %222, %223
  br i1 %224, label %225, label %228

225:                                              ; preds = %221, %181
  %226 = load i32*, i32** %3, align 8
  %227 = call i32 @lua_pushboolean(i32* %226, i32 0)
  br label %231

228:                                              ; preds = %221
  %229 = load i32*, i32** %3, align 8
  %230 = call i32 @lua_pushboolean(i32* %229, i32 1)
  br label %231

231:                                              ; preds = %228, %225
  %232 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %233 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %232, i32 0, i32 0
  %234 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %233, i32 0, i32 0
  %235 = call i32 @msg_size(i32* %234)
  %236 = call i32 (i8*, ...) @NODE_DBG(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.14, i64 0, i64 0), i32 %235)
  %237 = call i32 (i8*, ...) @NODE_DBG(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.15, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  store i32 1, i32* %14, align 4
  br label %238

238:                                              ; preds = %231, %145, %130, %118, %112
  %239 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %239)
  br label %240

240:                                              ; preds = %238, %48, %39, %30
  %241 = load i32, i32* %2, align 4
  ret i32 %241
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

declare dso_local %struct.TYPE_16__* @mqtt_msg_unsubscribe_init(i32*, i32*) #1

declare dso_local %struct.TYPE_16__* @mqtt_msg_unsubscribe_topic(i32*, i8*) #1

declare dso_local i32 @lua_pop(i32*, i32) #1

declare dso_local %struct.TYPE_16__* @mqtt_msg_unsubscribe_fini(i32*) #1

declare dso_local i8* @luaL_checklstring(i32*, i32, i64*) #1

declare dso_local %struct.TYPE_16__* @mqtt_msg_unsubscribe(i32*, i8*, i32*) #1

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
