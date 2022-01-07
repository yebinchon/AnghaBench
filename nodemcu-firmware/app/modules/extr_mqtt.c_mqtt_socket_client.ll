; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_mqtt.c_mqtt_socket_client.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_mqtt.c_mqtt_socket_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_5__, %struct.TYPE_6__, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.TYPE_5__ = type { i32, i32, i64, i32*, %struct.TYPE_6__*, i32* }
%struct.TYPE_6__ = type { i32, i32, i32, i64, i64, i64*, i64*, i64* }

@.str = private unnamed_addr constant [27 x i8] c"enter mqtt_socket_client.\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%s%x\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"NodeMCU_\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@LUA_NOREF = common dso_local global i8* null, align 8
@MQTT_INIT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [12 x i8] c"mqtt.socket\00", align 1
@MQTT_DEFAULT_KEEPALIVE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [22 x i8] c"length username: %d\0D\0A\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"length password: %d\0D\0A\00", align 1
@DEFAULT_MAX_MESSAGE_LENGTH = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [18 x i8] c"not enough memory\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"MQTT: Init info: %s, %s, %s\0D\0A\00", align 1
@MQTT_RECV_NORMAL = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [27 x i8] c"leave mqtt_socket_client.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @mqtt_socket_client to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mqtt_socket_client(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca [20 x i8], align 16
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %17 = call i32 (i8*, ...) @NODE_DBG(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %18 = bitcast [20 x i8]* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %18, i8 0, i64 20, i1 false)
  %19 = getelementptr inbounds [20 x i8], [20 x i8]* %5, i64 0, i64 0
  %20 = call i32 (...) @system_get_chip_id()
  %21 = call i32 @sprintf(i8* %19, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %20)
  %22 = getelementptr inbounds [20 x i8], [20 x i8]* %5, i64 0, i64 0
  %23 = call i32 (i8*, ...) @NODE_DBG(i8* %22)
  %24 = call i32 (i8*, ...) @NODE_DBG(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %25 = getelementptr inbounds [20 x i8], [20 x i8]* %5, i64 0, i64 0
  store i8* %25, i8** %6, align 8
  store i8* null, i8** %7, align 8
  store i8* null, i8** %8, align 8
  %26 = getelementptr inbounds [20 x i8], [20 x i8]* %5, i64 0, i64 0
  %27 = call i64 @strlen(i8* %26)
  store i64 %27, i64* %9, align 8
  store i64 0, i64* %10, align 8
  store i64 0, i64* %11, align 8
  store i32 0, i32* %12, align 4
  store i32 1, i32* %13, align 4
  store i32 1, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %28 = load i32*, i32** %3, align 8
  %29 = call i32 @lua_gettop(i32* %28)
  store i32 %29, i32* %16, align 4
  %30 = load i32*, i32** %3, align 8
  %31 = call i64 @lua_newuserdata(i32* %30, i32 176)
  %32 = inttoptr i64 %31 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %32, %struct.TYPE_7__** %4, align 8
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %34 = call i32 @memset(%struct.TYPE_7__* %33, i32 0, i32 176)
  %35 = load i8*, i8** @LUA_NOREF, align 8
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 11
  store i8* %35, i8** %37, align 8
  %38 = load i8*, i8** @LUA_NOREF, align 8
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 10
  store i8* %38, i8** %40, align 8
  %41 = load i8*, i8** @LUA_NOREF, align 8
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 9
  store i8* %41, i8** %43, align 8
  %44 = load i8*, i8** @LUA_NOREF, align 8
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 8
  store i8* %44, i8** %46, align 8
  %47 = load i8*, i8** @LUA_NOREF, align 8
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 7
  store i8* %47, i8** %49, align 8
  %50 = load i8*, i8** @LUA_NOREF, align 8
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 6
  store i8* %50, i8** %52, align 8
  %53 = load i8*, i8** @LUA_NOREF, align 8
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 5
  store i8* %53, i8** %55, align 8
  %56 = load i8*, i8** @LUA_NOREF, align 8
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 4
  store i8* %56, i8** %58, align 8
  %59 = load i8*, i8** @LUA_NOREF, align 8
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 3
  store i8* %59, i8** %61, align 8
  %62 = load i32, i32* @MQTT_INIT, align 4
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 2
  store i32 %62, i32* %64, align 8
  %65 = load i32*, i32** %3, align 8
  %66 = call i32 @luaL_getmetatable(i32* %65, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  %67 = load i32*, i32** %3, align 8
  %68 = call i32 @lua_setmetatable(i32* %67, i32 -2)
  %69 = load i32*, i32** %3, align 8
  %70 = load i32, i32* %13, align 4
  %71 = call i64 @lua_isstring(i32* %69, i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %1
  %74 = load i32*, i32** %3, align 8
  %75 = load i32, i32* %13, align 4
  %76 = call i8* @luaL_checklstring(i32* %74, i32 %75, i64* %9)
  store i8* %76, i8** %6, align 8
  %77 = load i32, i32* %13, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %13, align 4
  br label %79

79:                                               ; preds = %73, %1
  %80 = load i32*, i32** %3, align 8
  %81 = load i32, i32* %13, align 4
  %82 = call i64 @lua_isnumber(i32* %80, i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %90

84:                                               ; preds = %79
  %85 = load i32*, i32** %3, align 8
  %86 = load i32, i32* %13, align 4
  %87 = call i32 @luaL_checkinteger(i32* %85, i32 %86)
  store i32 %87, i32* %12, align 4
  %88 = load i32, i32* %13, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %13, align 4
  br label %90

90:                                               ; preds = %84, %79
  %91 = load i32, i32* %12, align 4
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %90
  %94 = load i32, i32* @MQTT_DEFAULT_KEEPALIVE, align 4
  store i32 %94, i32* %12, align 4
  br label %95

95:                                               ; preds = %93, %90
  %96 = load i32*, i32** %3, align 8
  %97 = load i32, i32* %13, align 4
  %98 = call i64 @lua_isstring(i32* %96, i32 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %106

100:                                              ; preds = %95
  %101 = load i32*, i32** %3, align 8
  %102 = load i32, i32* %13, align 4
  %103 = call i8* @luaL_checklstring(i32* %101, i32 %102, i64* %10)
  store i8* %103, i8** %7, align 8
  %104 = load i32, i32* %13, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %13, align 4
  br label %106

106:                                              ; preds = %100, %95
  %107 = load i8*, i8** %7, align 8
  %108 = icmp eq i8* %107, null
  br i1 %108, label %109, label %110

109:                                              ; preds = %106
  store i64 0, i64* %10, align 8
  br label %110

110:                                              ; preds = %109, %106
  %111 = load i64, i64* %10, align 8
  %112 = call i32 (i8*, ...) @NODE_DBG(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i64 %111)
  %113 = load i32*, i32** %3, align 8
  %114 = load i32, i32* %13, align 4
  %115 = call i64 @lua_isstring(i32* %113, i32 %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %123

117:                                              ; preds = %110
  %118 = load i32*, i32** %3, align 8
  %119 = load i32, i32* %13, align 4
  %120 = call i8* @luaL_checklstring(i32* %118, i32 %119, i64* %11)
  store i8* %120, i8** %8, align 8
  %121 = load i32, i32* %13, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %13, align 4
  br label %123

123:                                              ; preds = %117, %110
  %124 = load i8*, i8** %8, align 8
  %125 = icmp eq i8* %124, null
  br i1 %125, label %126, label %127

126:                                              ; preds = %123
  store i64 0, i64* %11, align 8
  br label %127

127:                                              ; preds = %126, %123
  %128 = load i64, i64* %11, align 8
  %129 = call i32 (i8*, ...) @NODE_DBG(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0), i64 %128)
  %130 = load i32*, i32** %3, align 8
  %131 = load i32, i32* %13, align 4
  %132 = call i64 @lua_isnumber(i32* %130, i32 %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %140

134:                                              ; preds = %127
  %135 = load i32*, i32** %3, align 8
  %136 = load i32, i32* %13, align 4
  %137 = call i32 @luaL_checkinteger(i32* %135, i32 %136)
  store i32 %137, i32* %14, align 4
  %138 = load i32, i32* %13, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %13, align 4
  br label %140

140:                                              ; preds = %134, %127
  %141 = load i32, i32* %14, align 4
  %142 = icmp sgt i32 %141, 1
  br i1 %142, label %143, label %144

143:                                              ; preds = %140
  store i32 1, i32* %14, align 4
  br label %144

144:                                              ; preds = %143, %140
  %145 = load i32*, i32** %3, align 8
  %146 = load i32, i32* %13, align 4
  %147 = call i64 @lua_isnumber(i32* %145, i32 %146)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %155

149:                                              ; preds = %144
  %150 = load i32*, i32** %3, align 8
  %151 = load i32, i32* %13, align 4
  %152 = call i32 @luaL_checkinteger(i32* %150, i32 %151)
  store i32 %152, i32* %15, align 4
  %153 = load i32, i32* %13, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %13, align 4
  br label %155

155:                                              ; preds = %149, %144
  %156 = load i32, i32* %15, align 4
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %158, label %160

158:                                              ; preds = %155
  %159 = load i32, i32* @DEFAULT_MAX_MESSAGE_LENGTH, align 4
  store i32 %159, i32* %15, align 4
  br label %160

160:                                              ; preds = %158, %155
  %161 = load i64, i64* %9, align 8
  %162 = add i64 %161, 1
  %163 = call i64 @calloc(i32 1, i64 %162)
  %164 = inttoptr i64 %163 to i64*
  %165 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %166 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %165, i32 0, i32 1
  %167 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %166, i32 0, i32 7
  store i64* %164, i64** %167, align 8
  %168 = load i64, i64* %10, align 8
  %169 = add i64 %168, 1
  %170 = call i64 @calloc(i32 1, i64 %169)
  %171 = inttoptr i64 %170 to i64*
  %172 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %173 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %172, i32 0, i32 1
  %174 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %173, i32 0, i32 6
  store i64* %171, i64** %174, align 8
  %175 = load i64, i64* %11, align 8
  %176 = add i64 %175, 1
  %177 = call i64 @calloc(i32 1, i64 %176)
  %178 = inttoptr i64 %177 to i64*
  %179 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %180 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %179, i32 0, i32 1
  %181 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %180, i32 0, i32 5
  store i64* %178, i64** %181, align 8
  %182 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %183 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %182, i32 0, i32 1
  %184 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %183, i32 0, i32 7
  %185 = load i64*, i64** %184, align 8
  %186 = icmp ne i64* %185, null
  br i1 %186, label %187, label %199

187:                                              ; preds = %160
  %188 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %189 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %188, i32 0, i32 1
  %190 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %189, i32 0, i32 6
  %191 = load i64*, i64** %190, align 8
  %192 = icmp ne i64* %191, null
  br i1 %192, label %193, label %199

193:                                              ; preds = %187
  %194 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %195 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %194, i32 0, i32 1
  %196 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %195, i32 0, i32 5
  %197 = load i64*, i64** %196, align 8
  %198 = icmp ne i64* %197, null
  br i1 %198, label %247, label %199

199:                                              ; preds = %193, %187, %160
  %200 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %201 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %200, i32 0, i32 1
  %202 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %201, i32 0, i32 7
  %203 = load i64*, i64** %202, align 8
  %204 = icmp ne i64* %203, null
  br i1 %204, label %205, label %214

205:                                              ; preds = %199
  %206 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %207 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %206, i32 0, i32 1
  %208 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %207, i32 0, i32 7
  %209 = load i64*, i64** %208, align 8
  %210 = call i32 @free(i64* %209)
  %211 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %212 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %211, i32 0, i32 1
  %213 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %212, i32 0, i32 7
  store i64* null, i64** %213, align 8
  br label %214

214:                                              ; preds = %205, %199
  %215 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %216 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %215, i32 0, i32 1
  %217 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %216, i32 0, i32 6
  %218 = load i64*, i64** %217, align 8
  %219 = icmp ne i64* %218, null
  br i1 %219, label %220, label %229

220:                                              ; preds = %214
  %221 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %222 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %221, i32 0, i32 1
  %223 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %222, i32 0, i32 6
  %224 = load i64*, i64** %223, align 8
  %225 = call i32 @free(i64* %224)
  %226 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %227 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %226, i32 0, i32 1
  %228 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %227, i32 0, i32 6
  store i64* null, i64** %228, align 8
  br label %229

229:                                              ; preds = %220, %214
  %230 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %231 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %230, i32 0, i32 1
  %232 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %231, i32 0, i32 5
  %233 = load i64*, i64** %232, align 8
  %234 = icmp ne i64* %233, null
  br i1 %234, label %235, label %244

235:                                              ; preds = %229
  %236 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %237 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %236, i32 0, i32 1
  %238 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %237, i32 0, i32 5
  %239 = load i64*, i64** %238, align 8
  %240 = call i32 @free(i64* %239)
  %241 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %242 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %241, i32 0, i32 1
  %243 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %242, i32 0, i32 5
  store i64* null, i64** %243, align 8
  br label %244

244:                                              ; preds = %235, %229
  %245 = load i32*, i32** %3, align 8
  %246 = call i32 @luaL_error(i32* %245, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0))
  store i32 %246, i32* %2, align 4
  br label %340

247:                                              ; preds = %193
  %248 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %249 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %248, i32 0, i32 1
  %250 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %249, i32 0, i32 7
  %251 = load i64*, i64** %250, align 8
  %252 = load i8*, i8** %6, align 8
  %253 = load i64, i64* %9, align 8
  %254 = call i32 @memcpy(i64* %251, i8* %252, i64 %253)
  %255 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %256 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %255, i32 0, i32 1
  %257 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %256, i32 0, i32 7
  %258 = load i64*, i64** %257, align 8
  %259 = load i64, i64* %9, align 8
  %260 = getelementptr inbounds i64, i64* %258, i64 %259
  store i64 0, i64* %260, align 8
  %261 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %262 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %261, i32 0, i32 1
  %263 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %262, i32 0, i32 6
  %264 = load i64*, i64** %263, align 8
  %265 = load i8*, i8** %7, align 8
  %266 = load i64, i64* %10, align 8
  %267 = call i32 @memcpy(i64* %264, i8* %265, i64 %266)
  %268 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %269 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %268, i32 0, i32 1
  %270 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %269, i32 0, i32 6
  %271 = load i64*, i64** %270, align 8
  %272 = load i64, i64* %10, align 8
  %273 = getelementptr inbounds i64, i64* %271, i64 %272
  store i64 0, i64* %273, align 8
  %274 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %275 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %274, i32 0, i32 1
  %276 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %275, i32 0, i32 5
  %277 = load i64*, i64** %276, align 8
  %278 = load i8*, i8** %8, align 8
  %279 = load i64, i64* %11, align 8
  %280 = call i32 @memcpy(i64* %277, i8* %278, i64 %279)
  %281 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %282 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %281, i32 0, i32 1
  %283 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %282, i32 0, i32 5
  %284 = load i64*, i64** %283, align 8
  %285 = load i64, i64* %11, align 8
  %286 = getelementptr inbounds i64, i64* %284, i64 %285
  store i64 0, i64* %286, align 8
  %287 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %288 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %287, i32 0, i32 1
  %289 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %288, i32 0, i32 7
  %290 = load i64*, i64** %289, align 8
  %291 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %292 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %291, i32 0, i32 1
  %293 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %292, i32 0, i32 6
  %294 = load i64*, i64** %293, align 8
  %295 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %296 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %295, i32 0, i32 1
  %297 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %296, i32 0, i32 5
  %298 = load i64*, i64** %297, align 8
  %299 = call i32 (i8*, ...) @NODE_DBG(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i64 0, i64 0), i64* %290, i64* %294, i64* %298)
  %300 = load i32, i32* %14, align 4
  %301 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %302 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %301, i32 0, i32 1
  %303 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %302, i32 0, i32 0
  store i32 %300, i32* %303, align 8
  %304 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %305 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %304, i32 0, i32 1
  %306 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %305, i32 0, i32 4
  store i64 0, i64* %306, align 8
  %307 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %308 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %307, i32 0, i32 1
  %309 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %308, i32 0, i32 3
  store i64 0, i64* %309, align 8
  %310 = load i32, i32* %12, align 4
  %311 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %312 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %311, i32 0, i32 1
  %313 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %312, i32 0, i32 1
  store i32 %310, i32* %313, align 4
  %314 = load i32, i32* %15, align 4
  %315 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %316 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %315, i32 0, i32 1
  %317 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %316, i32 0, i32 2
  store i32 %314, i32* %317, align 8
  %318 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %319 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %318, i32 0, i32 0
  %320 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %319, i32 0, i32 5
  store i32* null, i32** %320, align 8
  %321 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %322 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %321, i32 0, i32 0
  %323 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %322, i32 0, i32 0
  store i32 1883, i32* %323, align 8
  %324 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %325 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %324, i32 0, i32 1
  %326 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %327 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %326, i32 0, i32 0
  %328 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %327, i32 0, i32 4
  store %struct.TYPE_6__* %325, %struct.TYPE_6__** %328, align 8
  %329 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %330 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %329, i32 0, i32 0
  %331 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %330, i32 0, i32 3
  store i32* null, i32** %331, align 8
  %332 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %333 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %332, i32 0, i32 0
  %334 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %333, i32 0, i32 2
  store i64 0, i64* %334, align 8
  %335 = load i32, i32* @MQTT_RECV_NORMAL, align 4
  %336 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %337 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %336, i32 0, i32 0
  %338 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %337, i32 0, i32 1
  store i32 %335, i32* %338, align 4
  %339 = call i32 (i8*, ...) @NODE_DBG(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %340

340:                                              ; preds = %247, %244
  %341 = load i32, i32* %2, align 4
  ret i32 %341
}

declare dso_local i32 @NODE_DBG(i8*, ...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @sprintf(i8*, i8*, i8*, i32) #1

declare dso_local i32 @system_get_chip_id(...) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @lua_gettop(i32*) #1

declare dso_local i64 @lua_newuserdata(i32*, i32) #1

declare dso_local i32 @memset(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @luaL_getmetatable(i32*, i8*) #1

declare dso_local i32 @lua_setmetatable(i32*, i32) #1

declare dso_local i64 @lua_isstring(i32*, i32) #1

declare dso_local i8* @luaL_checklstring(i32*, i32, i64*) #1

declare dso_local i64 @lua_isnumber(i32*, i32) #1

declare dso_local i32 @luaL_checkinteger(i32*, i32) #1

declare dso_local i64 @calloc(i32, i64) #1

declare dso_local i32 @free(i64*) #1

declare dso_local i32 @luaL_error(i32*, i8*) #1

declare dso_local i32 @memcpy(i64*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
