; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_mqtt.c_mqtt_socket_connect.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_mqtt.c_mqtt_socket_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i64 }
%struct.TYPE_13__ = type { i32, i32, i32, i8*, i8*, i8*, %struct.TYPE_12__, %struct.espconn* }
%struct.TYPE_12__ = type { i32 }
%struct.espconn = type { %struct.TYPE_11__, i32, i32, %struct.TYPE_13__* }
%struct.TYPE_11__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32, i64, i32 }
%struct.TYPE_14__ = type { i64 }

@.str = private unnamed_addr constant [28 x i8] c"enter mqtt_socket_connect.\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"mqtt.socket\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"mqtt.socket expected\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"already connected\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"not enough memory\00", align 1
@ESPCONN_TCP = common dso_local global i32 0, align 4
@ESPCONN_NONE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [10 x i8] c"127.0.0.1\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"TCP ip is set: \00", align 1
@IPSTR = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"TCP port is set: %d.\0A\00", align 1
@.str.9 = private unnamed_addr constant [41 x i8] c"mqtt.connect secure parameter as integer\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"in the future\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"ssl not available\00", align 1
@LUA_TFUNCTION = common dso_local global i64 0, align 8
@LUA_TLIGHTFUNCTION = common dso_local global i64 0, align 8
@LUA_REGISTRYINDEX = common dso_local global i32 0, align 4
@mqtt_socket_connected = common dso_local global i32 0, align 4
@mqtt_socket_reconnected = common dso_local global i32 0, align 4
@mqtt_socket_timer = common dso_local global i64 0, align 8
@SWTIMER_RESUME = common dso_local global i32 0, align 4
@IPADDR_NONE = common dso_local global i64 0, align 8
@.str.12 = private unnamed_addr constant [16 x i8] c"255.255.255.255\00", align 1
@host_ip = common dso_local global %struct.TYPE_16__ zeroinitializer, align 8
@dns_reconn_count = common dso_local global i64 0, align 8
@ESPCONN_OK = common dso_local global i32 0, align 4
@socket_dns_foundcb = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [28 x i8] c"leave mqtt_socket_connect.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @mqtt_socket_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mqtt_socket_connect(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_14__, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.espconn*, align 8
  store i32* %0, i32** %3, align 8
  %14 = call i32 (i8*, ...) @NODE_DBG(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %4, align 8
  store i32 1883, i32* %5, align 4
  store i32 1, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %15 = load i32*, i32** %3, align 8
  %16 = call i32 @lua_gettop(i32* %15)
  store i32 %16, i32* %11, align 4
  %17 = load i32*, i32** %3, align 8
  %18 = load i32, i32* %9, align 4
  %19 = call i64 @luaL_checkudata(i32* %17, i32 %18, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %20 = inttoptr i64 %19 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %20, %struct.TYPE_13__** %4, align 8
  %21 = load i32*, i32** %3, align 8
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %23 = load i32, i32* %9, align 4
  %24 = call i32 @luaL_argcheck(i32* %21, %struct.TYPE_13__* %22, i32 %23, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %25 = load i32, i32* %9, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %9, align 4
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %28 = icmp eq %struct.TYPE_13__* %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %355

30:                                               ; preds = %1
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = load i32*, i32** %3, align 8
  %37 = call i32 @luaL_error(i32* %36, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  store i32 %37, i32* %2, align 4
  br label %355

38:                                               ; preds = %30
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 7
  %41 = load %struct.espconn*, %struct.espconn** %40, align 8
  store %struct.espconn* %41, %struct.espconn** %13, align 8
  %42 = load %struct.espconn*, %struct.espconn** %13, align 8
  %43 = icmp ne %struct.espconn* %42, null
  br i1 %43, label %49, label %44

44:                                               ; preds = %38
  %45 = call i64 @calloc(i32 1, i32 24)
  %46 = inttoptr i64 %45 to %struct.espconn*
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 7
  store %struct.espconn* %46, %struct.espconn** %48, align 8
  store %struct.espconn* %46, %struct.espconn** %13, align 8
  br label %52

49:                                               ; preds = %38
  %50 = load %struct.espconn*, %struct.espconn** %13, align 8
  %51 = call i32 @espconn_delete(%struct.espconn* %50)
  br label %52

52:                                               ; preds = %49, %44
  %53 = load %struct.espconn*, %struct.espconn** %13, align 8
  %54 = icmp ne %struct.espconn* %53, null
  br i1 %54, label %58, label %55

55:                                               ; preds = %52
  %56 = load i32*, i32** %3, align 8
  %57 = call i32 @luaL_error(i32* %56, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  store i32 %57, i32* %2, align 4
  br label %355

58:                                               ; preds = %52
  %59 = load %struct.espconn*, %struct.espconn** %13, align 8
  %60 = getelementptr inbounds %struct.espconn, %struct.espconn* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_15__*, %struct.TYPE_15__** %61, align 8
  %63 = icmp ne %struct.TYPE_15__* %62, null
  br i1 %63, label %70, label %64

64:                                               ; preds = %58
  %65 = call i64 @calloc(i32 1, i32 24)
  %66 = inttoptr i64 %65 to %struct.TYPE_15__*
  %67 = load %struct.espconn*, %struct.espconn** %13, align 8
  %68 = getelementptr inbounds %struct.espconn, %struct.espconn* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 0
  store %struct.TYPE_15__* %66, %struct.TYPE_15__** %69, align 8
  br label %70

70:                                               ; preds = %64, %58
  %71 = load %struct.espconn*, %struct.espconn** %13, align 8
  %72 = getelementptr inbounds %struct.espconn, %struct.espconn* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 0
  %74 = load %struct.TYPE_15__*, %struct.TYPE_15__** %73, align 8
  %75 = icmp ne %struct.TYPE_15__* %74, null
  br i1 %75, label %83, label %76

76:                                               ; preds = %70
  %77 = load %struct.espconn*, %struct.espconn** %13, align 8
  %78 = call i32 @free(%struct.espconn* %77)
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i32 0, i32 7
  store %struct.espconn* null, %struct.espconn** %80, align 8
  store %struct.espconn* null, %struct.espconn** %13, align 8
  %81 = load i32*, i32** %3, align 8
  %82 = call i32 @luaL_error(i32* %81, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  store i32 %82, i32* %2, align 4
  br label %355

83:                                               ; preds = %70
  %84 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %85 = load %struct.espconn*, %struct.espconn** %13, align 8
  %86 = getelementptr inbounds %struct.espconn, %struct.espconn* %85, i32 0, i32 3
  store %struct.TYPE_13__* %84, %struct.TYPE_13__** %86, align 8
  %87 = load i32, i32* @ESPCONN_TCP, align 4
  %88 = load %struct.espconn*, %struct.espconn** %13, align 8
  %89 = getelementptr inbounds %struct.espconn, %struct.espconn* %88, i32 0, i32 2
  store i32 %87, i32* %89, align 4
  %90 = load i32, i32* @ESPCONN_NONE, align 4
  %91 = load %struct.espconn*, %struct.espconn** %13, align 8
  %92 = getelementptr inbounds %struct.espconn, %struct.espconn* %91, i32 0, i32 1
  store i32 %90, i32* %92, align 8
  %93 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %93, i32 0, i32 0
  store i32 0, i32* %94, align 8
  %95 = load i32, i32* %9, align 4
  %96 = load i32, i32* %11, align 4
  %97 = icmp sle i32 %95, %96
  br i1 %97, label %98, label %132

98:                                               ; preds = %83
  %99 = load i32*, i32** %3, align 8
  %100 = load i32, i32* %9, align 4
  %101 = call i64 @lua_isstring(i32* %99, i32 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %132

103:                                              ; preds = %98
  %104 = load i32*, i32** %3, align 8
  %105 = load i32, i32* %9, align 4
  %106 = call i8* @luaL_checklstring(i32* %104, i32 %105, i64* %6)
  store i8* %106, i8** %8, align 8
  %107 = load i32, i32* %9, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %9, align 4
  %109 = load i8*, i8** %8, align 8
  %110 = icmp eq i8* %109, null
  br i1 %110, label %111, label %112

111:                                              ; preds = %103
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i8** %8, align 8
  br label %112

112:                                              ; preds = %111, %103
  %113 = load i8*, i8** %8, align 8
  %114 = call i64 @ipaddr_addr(i8* %113)
  %115 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %7, i32 0, i32 0
  store i64 %114, i64* %115, align 8
  %116 = load %struct.espconn*, %struct.espconn** %13, align 8
  %117 = getelementptr inbounds %struct.espconn, %struct.espconn* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %117, i32 0, i32 0
  %119 = load %struct.TYPE_15__*, %struct.TYPE_15__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %7, i32 0, i32 0
  %123 = call i32 @memcpy(i32 %121, i64* %122, i32 4)
  %124 = call i32 (i8*, ...) @NODE_DBG(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0))
  %125 = load i32, i32* @IPSTR, align 4
  %126 = sext i32 %125 to i64
  %127 = inttoptr i64 %126 to i8*
  %128 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %7, i32 0, i32 0
  %129 = call i32 @IP2STR(i64* %128)
  %130 = call i32 (i8*, ...) @NODE_DBG(i8* %127, i32 %129)
  %131 = call i32 (i8*, ...) @NODE_DBG(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  br label %132

132:                                              ; preds = %112, %98, %83
  %133 = load i32, i32* %9, align 4
  %134 = load i32, i32* %11, align 4
  %135 = icmp sle i32 %133, %134
  br i1 %135, label %136, label %149

136:                                              ; preds = %132
  %137 = load i32*, i32** %3, align 8
  %138 = load i32, i32* %9, align 4
  %139 = call i64 @lua_isnumber(i32* %137, i32 %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %149

141:                                              ; preds = %136
  %142 = load i32*, i32** %3, align 8
  %143 = load i32, i32* %9, align 4
  %144 = call i32 @lua_tointeger(i32* %142, i32 %143)
  store i32 %144, i32* %5, align 4
  %145 = load i32, i32* %9, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %9, align 4
  %147 = load i32, i32* %5, align 4
  %148 = call i32 (i8*, ...) @NODE_DBG(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0), i32 %147)
  br label %149

149:                                              ; preds = %141, %136, %132
  %150 = load i32, i32* %5, align 4
  %151 = load %struct.espconn*, %struct.espconn** %13, align 8
  %152 = getelementptr inbounds %struct.espconn, %struct.espconn* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %152, i32 0, i32 0
  %154 = load %struct.TYPE_15__*, %struct.TYPE_15__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %154, i32 0, i32 0
  store i32 %150, i32* %155, align 8
  %156 = load %struct.espconn*, %struct.espconn** %13, align 8
  %157 = getelementptr inbounds %struct.espconn, %struct.espconn* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %157, i32 0, i32 0
  %159 = load %struct.TYPE_15__*, %struct.TYPE_15__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %159, i32 0, i32 1
  %161 = load i64, i64* %160, align 8
  %162 = icmp eq i64 %161, 0
  br i1 %162, label %163, label %170

163:                                              ; preds = %149
  %164 = call i64 (...) @espconn_port()
  %165 = load %struct.espconn*, %struct.espconn** %13, align 8
  %166 = getelementptr inbounds %struct.espconn, %struct.espconn* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %166, i32 0, i32 0
  %168 = load %struct.TYPE_15__*, %struct.TYPE_15__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %168, i32 0, i32 1
  store i64 %164, i64* %169, align 8
  br label %170

170:                                              ; preds = %163, %149
  %171 = load i32, i32* %5, align 4
  %172 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %173 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %172, i32 0, i32 6
  %174 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %173, i32 0, i32 0
  store i32 %171, i32* %174, align 8
  %175 = load i32, i32* %9, align 4
  %176 = load i32, i32* %11, align 4
  %177 = icmp sle i32 %175, %176
  br i1 %177, label %178, label %209

178:                                              ; preds = %170
  %179 = load i32*, i32** %3, align 8
  %180 = load i32, i32* %9, align 4
  %181 = call i64 @lua_isnumber(i32* %179, i32 %180)
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %188, label %183

183:                                              ; preds = %178
  %184 = load i32*, i32** %3, align 8
  %185 = load i32, i32* %9, align 4
  %186 = call i64 @lua_isboolean(i32* %184, i32 %185)
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %209

188:                                              ; preds = %183, %178
  %189 = load i32*, i32** %3, align 8
  %190 = load i32, i32* %9, align 4
  %191 = call i64 @lua_isnumber(i32* %189, i32 %190)
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %202

193:                                              ; preds = %188
  %194 = call i32 @platform_print_deprecation_note(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0))
  %195 = load i32*, i32** %3, align 8
  %196 = load i32, i32* %9, align 4
  %197 = call i32 @lua_tointeger(i32* %195, i32 %196)
  %198 = icmp ne i32 %197, 0
  %199 = xor i1 %198, true
  %200 = xor i1 %199, true
  %201 = zext i1 %200 to i32
  store i32 %201, i32* %10, align 4
  br label %206

202:                                              ; preds = %188
  %203 = load i32*, i32** %3, align 8
  %204 = load i32, i32* %9, align 4
  %205 = call i32 @lua_toboolean(i32* %203, i32 %204)
  store i32 %205, i32* %10, align 4
  br label %206

206:                                              ; preds = %202, %193
  %207 = load i32, i32* %9, align 4
  %208 = add nsw i32 %207, 1
  store i32 %208, i32* %9, align 4
  br label %210

209:                                              ; preds = %183, %170
  store i32 0, i32* %10, align 4
  br label %210

210:                                              ; preds = %209, %206
  %211 = load i32, i32* %10, align 4
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %216

213:                                              ; preds = %210
  %214 = load i32*, i32** %3, align 8
  %215 = call i32 @luaL_error(i32* %214, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i64 0, i64 0))
  store i32 %215, i32* %2, align 4
  br label %355

216:                                              ; preds = %210
  %217 = load i32, i32* %9, align 4
  %218 = load i32, i32* %11, align 4
  %219 = icmp sle i32 %217, %218
  br i1 %219, label %220, label %247

220:                                              ; preds = %216
  %221 = load i32*, i32** %3, align 8
  %222 = load i32, i32* %9, align 4
  %223 = call i64 @lua_type(i32* %221, i32 %222)
  %224 = load i64, i64* @LUA_TFUNCTION, align 8
  %225 = icmp eq i64 %223, %224
  br i1 %225, label %232, label %226

226:                                              ; preds = %220
  %227 = load i32*, i32** %3, align 8
  %228 = load i32, i32* %9, align 4
  %229 = call i64 @lua_type(i32* %227, i32 %228)
  %230 = load i64, i64* @LUA_TLIGHTFUNCTION, align 8
  %231 = icmp eq i64 %229, %230
  br i1 %231, label %232, label %247

232:                                              ; preds = %226, %220
  %233 = load i32*, i32** %3, align 8
  %234 = load i32, i32* %9, align 4
  %235 = call i32 @lua_pushvalue(i32* %233, i32 %234)
  %236 = load i32*, i32** %3, align 8
  %237 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %238 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %239 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %238, i32 0, i32 5
  %240 = load i8*, i8** %239, align 8
  %241 = call i32 @luaL_unref(i32* %236, i32 %237, i8* %240)
  %242 = load i32*, i32** %3, align 8
  %243 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %244 = call i8* @luaL_ref(i32* %242, i32 %243)
  %245 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %246 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %245, i32 0, i32 5
  store i8* %244, i8** %246, align 8
  br label %247

247:                                              ; preds = %232, %226, %216
  %248 = load i32, i32* %9, align 4
  %249 = add nsw i32 %248, 1
  store i32 %249, i32* %9, align 4
  %250 = load i32, i32* %9, align 4
  %251 = load i32, i32* %11, align 4
  %252 = icmp sle i32 %250, %251
  br i1 %252, label %253, label %282

253:                                              ; preds = %247
  %254 = load i32*, i32** %3, align 8
  %255 = load i32, i32* %9, align 4
  %256 = call i64 @lua_type(i32* %254, i32 %255)
  %257 = load i64, i64* @LUA_TFUNCTION, align 8
  %258 = icmp eq i64 %256, %257
  br i1 %258, label %265, label %259

259:                                              ; preds = %253
  %260 = load i32*, i32** %3, align 8
  %261 = load i32, i32* %9, align 4
  %262 = call i64 @lua_type(i32* %260, i32 %261)
  %263 = load i64, i64* @LUA_TLIGHTFUNCTION, align 8
  %264 = icmp eq i64 %262, %263
  br i1 %264, label %265, label %282

265:                                              ; preds = %259, %253
  %266 = load i32*, i32** %3, align 8
  %267 = load i32, i32* %9, align 4
  %268 = call i32 @lua_pushvalue(i32* %266, i32 %267)
  %269 = load i32*, i32** %3, align 8
  %270 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %271 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %272 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %271, i32 0, i32 4
  %273 = load i8*, i8** %272, align 8
  %274 = call i32 @luaL_unref(i32* %269, i32 %270, i8* %273)
  %275 = load i32*, i32** %3, align 8
  %276 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %277 = call i8* @luaL_ref(i32* %275, i32 %276)
  %278 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %279 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %278, i32 0, i32 4
  store i8* %277, i8** %279, align 8
  %280 = load i32, i32* %9, align 4
  %281 = add nsw i32 %280, 1
  store i32 %281, i32* %9, align 4
  br label %282

282:                                              ; preds = %265, %259, %247
  %283 = load i32*, i32** %3, align 8
  %284 = call i32 @lua_pushvalue(i32* %283, i32 1)
  %285 = load i32*, i32** %3, align 8
  %286 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %287 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %288 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %287, i32 0, i32 3
  %289 = load i8*, i8** %288, align 8
  %290 = call i32 @luaL_unref(i32* %285, i32 %286, i8* %289)
  %291 = load i32*, i32** %3, align 8
  %292 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %293 = call i8* @luaL_ref(i32* %291, i32 %292)
  %294 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %295 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %294, i32 0, i32 3
  store i8* %293, i8** %295, align 8
  %296 = load %struct.espconn*, %struct.espconn** %13, align 8
  %297 = load i32, i32* @mqtt_socket_connected, align 4
  %298 = call i32 @espconn_regist_connectcb(%struct.espconn* %296, i32 %297)
  store i32 %298, i32* %12, align 4
  %299 = load %struct.espconn*, %struct.espconn** %13, align 8
  %300 = load i32, i32* @mqtt_socket_reconnected, align 4
  %301 = call i32 @espconn_regist_reconcb(%struct.espconn* %299, i32 %300)
  %302 = load i32, i32* %12, align 4
  %303 = or i32 %302, %301
  store i32 %303, i32* %12, align 4
  %304 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %305 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %304, i32 0, i32 2
  %306 = call i32 @os_timer_disarm(i32* %305)
  %307 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %308 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %307, i32 0, i32 2
  %309 = load i64, i64* @mqtt_socket_timer, align 8
  %310 = inttoptr i64 %309 to i32*
  %311 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %312 = call i32 @os_timer_setfn(i32* %308, i32* %310, %struct.TYPE_13__* %311)
  %313 = load i64, i64* @mqtt_socket_timer, align 8
  %314 = load i32, i32* @SWTIMER_RESUME, align 4
  %315 = call i32 @SWTIMER_REG_CB(i64 %313, i32 %314)
  %316 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %7, i32 0, i32 0
  %317 = load i64, i64* %316, align 8
  %318 = load i64, i64* @IPADDR_NONE, align 8
  %319 = icmp eq i64 %317, %318
  br i1 %319, label %320, label %338

320:                                              ; preds = %282
  %321 = load i8*, i8** %8, align 8
  %322 = call i64 @memcmp(i8* %321, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i64 0, i64 0), i32 16)
  %323 = icmp ne i64 %322, 0
  br i1 %323, label %324, label %338

324:                                              ; preds = %320
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @host_ip, i32 0, i32 0), align 8
  store i64 0, i64* @dns_reconn_count, align 8
  %325 = load i32, i32* @ESPCONN_OK, align 4
  %326 = load %struct.espconn*, %struct.espconn** %13, align 8
  %327 = load i8*, i8** %8, align 8
  %328 = load i32, i32* @socket_dns_foundcb, align 4
  %329 = call i32 @espconn_gethostbyname(%struct.espconn* %326, i8* %327, %struct.TYPE_16__* @host_ip, i32 %328)
  %330 = icmp eq i32 %325, %329
  br i1 %330, label %331, label %337

331:                                              ; preds = %324
  %332 = load i8*, i8** %8, align 8
  %333 = load %struct.espconn*, %struct.espconn** %13, align 8
  %334 = call i32 @socket_dns_found(i8* %332, %struct.TYPE_16__* @host_ip, %struct.espconn* %333)
  %335 = load i32, i32* %12, align 4
  %336 = or i32 %335, %334
  store i32 %336, i32* %12, align 4
  br label %337

337:                                              ; preds = %331, %324
  br label %343

338:                                              ; preds = %320, %282
  %339 = load %struct.espconn*, %struct.espconn** %13, align 8
  %340 = call i32 @socket_connect(%struct.espconn* %339)
  %341 = load i32, i32* %12, align 4
  %342 = or i32 %341, %340
  store i32 %342, i32* %12, align 4
  br label %343

343:                                              ; preds = %338, %337
  %344 = call i32 (i8*, ...) @NODE_DBG(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.13, i64 0, i64 0))
  %345 = load i32, i32* %12, align 4
  %346 = load i32, i32* @ESPCONN_OK, align 4
  %347 = icmp eq i32 %345, %346
  br i1 %347, label %348, label %351

348:                                              ; preds = %343
  %349 = load i32*, i32** %3, align 8
  %350 = call i32 @lua_pushboolean(i32* %349, i32 1)
  br label %354

351:                                              ; preds = %343
  %352 = load i32*, i32** %3, align 8
  %353 = call i32 @lua_pushboolean(i32* %352, i32 0)
  br label %354

354:                                              ; preds = %351, %348
  store i32 1, i32* %2, align 4
  br label %355

355:                                              ; preds = %354, %213, %76, %55, %35, %29
  %356 = load i32, i32* %2, align 4
  ret i32 %356
}

declare dso_local i32 @NODE_DBG(i8*, ...) #1

declare dso_local i32 @lua_gettop(i32*) #1

declare dso_local i64 @luaL_checkudata(i32*, i32, i8*) #1

declare dso_local i32 @luaL_argcheck(i32*, %struct.TYPE_13__*, i32, i8*) #1

declare dso_local i32 @luaL_error(i32*, i8*) #1

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @espconn_delete(%struct.espconn*) #1

declare dso_local i32 @free(%struct.espconn*) #1

declare dso_local i64 @lua_isstring(i32*, i32) #1

declare dso_local i8* @luaL_checklstring(i32*, i32, i64*) #1

declare dso_local i64 @ipaddr_addr(i8*) #1

declare dso_local i32 @memcpy(i32, i64*, i32) #1

declare dso_local i32 @IP2STR(i64*) #1

declare dso_local i64 @lua_isnumber(i32*, i32) #1

declare dso_local i32 @lua_tointeger(i32*, i32) #1

declare dso_local i64 @espconn_port(...) #1

declare dso_local i64 @lua_isboolean(i32*, i32) #1

declare dso_local i32 @platform_print_deprecation_note(i8*, i8*) #1

declare dso_local i32 @lua_toboolean(i32*, i32) #1

declare dso_local i64 @lua_type(i32*, i32) #1

declare dso_local i32 @lua_pushvalue(i32*, i32) #1

declare dso_local i32 @luaL_unref(i32*, i32, i8*) #1

declare dso_local i8* @luaL_ref(i32*, i32) #1

declare dso_local i32 @espconn_regist_connectcb(%struct.espconn*, i32) #1

declare dso_local i32 @espconn_regist_reconcb(%struct.espconn*, i32) #1

declare dso_local i32 @os_timer_disarm(i32*) #1

declare dso_local i32 @os_timer_setfn(i32*, i32*, %struct.TYPE_13__*) #1

declare dso_local i32 @SWTIMER_REG_CB(i64, i32) #1

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

declare dso_local i32 @espconn_gethostbyname(%struct.espconn*, i8*, %struct.TYPE_16__*, i32) #1

declare dso_local i32 @socket_dns_found(i8*, %struct.TYPE_16__*, %struct.espconn*) #1

declare dso_local i32 @socket_connect(%struct.espconn*) #1

declare dso_local i32 @lua_pushboolean(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
