; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_net.c_net_send.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_net.c_net_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i64, i32, %struct.TYPE_9__, i32*, i32 }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_11__ = type { i32 }
%struct.pbuf = type { i32 }

@TYPE_TCP_SERVER = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [18 x i8] c"invalid user data\00", align 1
@TYPE_UDP_SOCKET = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"need port\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"need IP address\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"invalid IP address\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"no data to send\00", align 1
@LUA_REGISTRYINDEX = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [20 x i8] c"cannot allocate PCB\00", align 1
@net_udp_recv_cb = common dso_local global i32 0, align 4
@ERR_OK = common dso_local global i64 0, align 8
@LUA_NOREF = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [14 x i8] c"not connected\00", align 1
@PBUF_TRANSPORT = common dso_local global i32 0, align 4
@PBUF_RAM = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [31 x i8] c"cannot allocate message buffer\00", align 1
@TYPE_TCP_CLIENT = common dso_local global i64 0, align 8
@TCP_WRITE_FLAG_COPY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @net_send(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.TYPE_11__, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_11__, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.pbuf*, align 8
  store i32* %0, i32** %3, align 8
  %16 = load i32*, i32** %3, align 8
  %17 = call %struct.TYPE_10__* @net_get_udata(i32* %16)
  store %struct.TYPE_10__* %17, %struct.TYPE_10__** %4, align 8
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %19 = icmp ne %struct.TYPE_10__* %18, null
  br i1 %19, label %20, label %26

20:                                               ; preds = %1
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @TYPE_TCP_SERVER, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %20, %1
  %27 = load i32*, i32** %3, align 8
  %28 = call i32 @luaL_error(i32* %27, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  store i32 %28, i32* %2, align 4
  br label %253

29:                                               ; preds = %20
  store i64 0, i64* %8, align 8
  store i32 2, i32* %9, align 4
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @TYPE_UDP_SOCKET, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %63

35:                                               ; preds = %29
  store i64 0, i64* %10, align 8
  %36 = load i32*, i32** %3, align 8
  %37 = load i32, i32* %9, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %9, align 4
  %39 = call i64 @luaL_checkinteger(i32* %36, i32 %37)
  store i64 %39, i64* %6, align 8
  %40 = load i64, i64* %6, align 8
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %35
  %43 = load i32*, i32** %3, align 8
  %44 = call i32 @luaL_error(i32* %43, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  store i32 %44, i32* %2, align 4
  br label %253

45:                                               ; preds = %35
  %46 = load i32*, i32** %3, align 8
  %47 = load i32, i32* %9, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %9, align 4
  %49 = call i8* @luaL_checklstring(i32* %46, i32 %47, i64* %10)
  store i8* %49, i8** %11, align 8
  %50 = load i8*, i8** %11, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %55, label %52

52:                                               ; preds = %45
  %53 = load i32*, i32** %3, align 8
  %54 = call i32 @luaL_error(i32* %53, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  store i32 %54, i32* %2, align 4
  br label %253

55:                                               ; preds = %45
  %56 = load i8*, i8** %11, align 8
  %57 = call i32 @ipaddr_aton(i8* %56, %struct.TYPE_11__* %5)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %62, label %59

59:                                               ; preds = %55
  %60 = load i32*, i32** %3, align 8
  %61 = call i32 @luaL_error(i32* %60, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  store i32 %61, i32* %2, align 4
  br label %253

62:                                               ; preds = %55
  br label %63

63:                                               ; preds = %62, %29
  %64 = load i32*, i32** %3, align 8
  %65 = load i32, i32* %9, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %9, align 4
  %67 = call i8* @luaL_checklstring(i32* %64, i32 %65, i64* %8)
  store i8* %67, i8** %7, align 8
  %68 = load i8*, i8** %7, align 8
  %69 = icmp ne i8* %68, null
  br i1 %69, label %70, label %73

70:                                               ; preds = %63
  %71 = load i64, i64* %8, align 8
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %70, %63
  %74 = load i32*, i32** %3, align 8
  %75 = call i32 @luaL_error(i32* %74, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  store i32 %75, i32* %2, align 4
  br label %253

76:                                               ; preds = %70
  %77 = load i32*, i32** %3, align 8
  %78 = load i32, i32* %9, align 4
  %79 = call i64 @lua_isfunction(i32* %77, i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %86, label %81

81:                                               ; preds = %76
  %82 = load i32*, i32** %3, align 8
  %83 = load i32, i32* %9, align 4
  %84 = call i64 @lua_islightfunction(i32* %82, i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %105

86:                                               ; preds = %81, %76
  %87 = load i32*, i32** %3, align 8
  %88 = load i32, i32* %9, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %9, align 4
  %90 = call i32 @lua_pushvalue(i32* %87, i32 %88)
  %91 = load i32*, i32** %3, align 8
  %92 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 3
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = call i32 @luaL_unref(i32* %91, i32 %92, i64 %96)
  %98 = load i32*, i32** %3, align 8
  %99 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %100 = call i8* @luaL_ref(i32* %98, i32 %99)
  %101 = ptrtoint i8* %100 to i64
  %102 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i32 0, i32 3
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 0
  store i64 %101, i64* %104, align 8
  br label %105

105:                                              ; preds = %86, %81
  %106 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @TYPE_UDP_SOCKET, align 8
  %110 = icmp eq i64 %108, %109
  br i1 %110, label %111, label %168

111:                                              ; preds = %105
  %112 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %112, i32 0, i32 5
  %114 = load i32, i32* %113, align 8
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %168, label %116

116:                                              ; preds = %111
  %117 = call i32* (...) @udp_new()
  %118 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %119 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %118, i32 0, i32 4
  store i32* %117, i32** %119, align 8
  %120 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %121 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %120, i32 0, i32 4
  %122 = load i32*, i32** %121, align 8
  %123 = icmp ne i32* %122, null
  br i1 %123, label %127, label %124

124:                                              ; preds = %116
  %125 = load i32*, i32** %3, align 8
  %126 = call i32 @luaL_error(i32* %125, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0))
  store i32 %126, i32* %2, align 4
  br label %253

127:                                              ; preds = %116
  %128 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %129 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %128, i32 0, i32 4
  %130 = load i32*, i32** %129, align 8
  %131 = load i32, i32* @net_udp_recv_cb, align 4
  %132 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %133 = call i32 @udp_recv(i32* %130, i32 %131, %struct.TYPE_10__* %132)
  %134 = bitcast %struct.TYPE_11__* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %134, i8 0, i64 4, i1 false)
  %135 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %136 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %135, i32 0, i32 4
  %137 = load i32*, i32** %136, align 8
  %138 = call i64 @udp_bind(i32* %137, %struct.TYPE_11__* %12, i32 0)
  store i64 %138, i64* %13, align 8
  %139 = load i64, i64* %13, align 8
  %140 = load i64, i64* @ERR_OK, align 8
  %141 = icmp ne i64 %139, %140
  br i1 %141, label %142, label %152

142:                                              ; preds = %127
  %143 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %144 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %143, i32 0, i32 4
  %145 = load i32*, i32** %144, align 8
  %146 = call i32 @udp_remove(i32* %145)
  %147 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %148 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %147, i32 0, i32 4
  store i32* null, i32** %148, align 8
  %149 = load i32*, i32** %3, align 8
  %150 = load i64, i64* %13, align 8
  %151 = call i32 @lwip_lua_checkerr(i32* %149, i64 %150)
  store i32 %151, i32* %2, align 4
  br label %253

152:                                              ; preds = %127
  %153 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %154 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %153, i32 0, i32 1
  %155 = load i64, i64* %154, align 8
  %156 = load i64, i64* @LUA_NOREF, align 8
  %157 = icmp eq i64 %155, %156
  br i1 %157, label %158, label %167

158:                                              ; preds = %152
  %159 = load i32*, i32** %3, align 8
  %160 = call i32 @lua_pushvalue(i32* %159, i32 1)
  %161 = load i32*, i32** %3, align 8
  %162 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %163 = call i8* @luaL_ref(i32* %161, i32 %162)
  %164 = ptrtoint i8* %163 to i64
  %165 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %166 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %165, i32 0, i32 1
  store i64 %164, i64* %166, align 8
  br label %167

167:                                              ; preds = %158, %152
  br label %168

168:                                              ; preds = %167, %111, %105
  %169 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %170 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %169, i32 0, i32 5
  %171 = load i32, i32* %170, align 8
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %179

173:                                              ; preds = %168
  %174 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %175 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %174, i32 0, i32 1
  %176 = load i64, i64* %175, align 8
  %177 = load i64, i64* @LUA_NOREF, align 8
  %178 = icmp eq i64 %176, %177
  br i1 %178, label %179, label %182

179:                                              ; preds = %173, %168
  %180 = load i32*, i32** %3, align 8
  %181 = call i32 @luaL_error(i32* %180, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0))
  store i32 %181, i32* %2, align 4
  br label %253

182:                                              ; preds = %173
  %183 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %184 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %183, i32 0, i32 0
  %185 = load i64, i64* %184, align 8
  %186 = load i64, i64* @TYPE_UDP_SOCKET, align 8
  %187 = icmp eq i64 %185, %186
  br i1 %187, label %188, label %234

188:                                              ; preds = %182
  %189 = load i32, i32* @PBUF_TRANSPORT, align 4
  %190 = load i64, i64* %8, align 8
  %191 = load i32, i32* @PBUF_RAM, align 4
  %192 = call %struct.pbuf* @pbuf_alloc(i32 %189, i64 %190, i32 %191)
  store %struct.pbuf* %192, %struct.pbuf** %15, align 8
  %193 = load %struct.pbuf*, %struct.pbuf** %15, align 8
  %194 = icmp ne %struct.pbuf* %193, null
  br i1 %194, label %198, label %195

195:                                              ; preds = %188
  %196 = load i32*, i32** %3, align 8
  %197 = call i32 @luaL_error(i32* %196, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0))
  store i32 %197, i32* %2, align 4
  br label %253

198:                                              ; preds = %188
  %199 = load %struct.pbuf*, %struct.pbuf** %15, align 8
  %200 = load i8*, i8** %7, align 8
  %201 = load i64, i64* %8, align 8
  %202 = call i32 @pbuf_take(%struct.pbuf* %199, i8* %200, i64 %201)
  %203 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %204 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %203, i32 0, i32 4
  %205 = load i32*, i32** %204, align 8
  %206 = load %struct.pbuf*, %struct.pbuf** %15, align 8
  %207 = load i64, i64* %6, align 8
  %208 = call i64 @udp_sendto(i32* %205, %struct.pbuf* %206, %struct.TYPE_11__* %5, i64 %207)
  store i64 %208, i64* %14, align 8
  %209 = load %struct.pbuf*, %struct.pbuf** %15, align 8
  %210 = call i32 @pbuf_free(%struct.pbuf* %209)
  %211 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %212 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %211, i32 0, i32 3
  %213 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %212, i32 0, i32 0
  %214 = load i64, i64* %213, align 8
  %215 = load i64, i64* @LUA_NOREF, align 8
  %216 = icmp ne i64 %214, %215
  br i1 %216, label %217, label %233

217:                                              ; preds = %198
  %218 = load i32*, i32** %3, align 8
  %219 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %220 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %221 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %220, i32 0, i32 3
  %222 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %221, i32 0, i32 0
  %223 = load i64, i64* %222, align 8
  %224 = call i32 @lua_rawgeti(i32* %218, i32 %219, i64 %223)
  %225 = load i32*, i32** %3, align 8
  %226 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %227 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %228 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %227, i32 0, i32 1
  %229 = load i64, i64* %228, align 8
  %230 = call i32 @lua_rawgeti(i32* %225, i32 %226, i64 %229)
  %231 = load i32*, i32** %3, align 8
  %232 = call i32 @lua_call(i32* %231, i32 1, i32 0)
  br label %233

233:                                              ; preds = %217, %198
  br label %249

234:                                              ; preds = %182
  %235 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %236 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %235, i32 0, i32 0
  %237 = load i64, i64* %236, align 8
  %238 = load i64, i64* @TYPE_TCP_CLIENT, align 8
  %239 = icmp eq i64 %237, %238
  br i1 %239, label %240, label %248

240:                                              ; preds = %234
  %241 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %242 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %241, i32 0, i32 2
  %243 = load i32, i32* %242, align 8
  %244 = load i8*, i8** %7, align 8
  %245 = load i64, i64* %8, align 8
  %246 = load i32, i32* @TCP_WRITE_FLAG_COPY, align 4
  %247 = call i64 @tcp_write(i32 %243, i8* %244, i64 %245, i32 %246)
  store i64 %247, i64* %14, align 8
  br label %248

248:                                              ; preds = %240, %234
  br label %249

249:                                              ; preds = %248, %233
  %250 = load i32*, i32** %3, align 8
  %251 = load i64, i64* %14, align 8
  %252 = call i32 @lwip_lua_checkerr(i32* %250, i64 %251)
  store i32 %252, i32* %2, align 4
  br label %253

253:                                              ; preds = %249, %195, %179, %142, %124, %73, %59, %52, %42, %26
  %254 = load i32, i32* %2, align 4
  ret i32 %254
}

declare dso_local %struct.TYPE_10__* @net_get_udata(i32*) #1

declare dso_local i32 @luaL_error(i32*, i8*) #1

declare dso_local i64 @luaL_checkinteger(i32*, i32) #1

declare dso_local i8* @luaL_checklstring(i32*, i32, i64*) #1

declare dso_local i32 @ipaddr_aton(i8*, %struct.TYPE_11__*) #1

declare dso_local i64 @lua_isfunction(i32*, i32) #1

declare dso_local i64 @lua_islightfunction(i32*, i32) #1

declare dso_local i32 @lua_pushvalue(i32*, i32) #1

declare dso_local i32 @luaL_unref(i32*, i32, i64) #1

declare dso_local i8* @luaL_ref(i32*, i32) #1

declare dso_local i32* @udp_new(...) #1

declare dso_local i32 @udp_recv(i32*, i32, %struct.TYPE_10__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i64 @udp_bind(i32*, %struct.TYPE_11__*, i32) #1

declare dso_local i32 @udp_remove(i32*) #1

declare dso_local i32 @lwip_lua_checkerr(i32*, i64) #1

declare dso_local %struct.pbuf* @pbuf_alloc(i32, i64, i32) #1

declare dso_local i32 @pbuf_take(%struct.pbuf*, i8*, i64) #1

declare dso_local i64 @udp_sendto(i32*, %struct.pbuf*, %struct.TYPE_11__*, i64) #1

declare dso_local i32 @pbuf_free(%struct.pbuf*) #1

declare dso_local i32 @lua_rawgeti(i32*, i32, i64) #1

declare dso_local i32 @lua_call(i32*, i32, i32) #1

declare dso_local i64 @tcp_write(i32, i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
