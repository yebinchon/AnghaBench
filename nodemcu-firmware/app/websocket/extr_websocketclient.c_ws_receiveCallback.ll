; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/websocket/extr_websocketclient.c_ws_receiveCallback.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/websocket/extr_websocketclient.c_ws_receiveCallback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.espconn = type { i64 }
%struct.TYPE_3__ = type { i8*, i16, i32, i8*, i32, i32, i32, i64, i32 (%struct.TYPE_3__*, i32, i8*, i32)*, i32, i64 }

@.str = private unnamed_addr constant [24 x i8] c"ws_receiveCallback %d \0A\00", align 1
@WS_PING_INTERVAL_MS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"Appending new frameBuffer to old one \0A\00", align 1
@.str.2 = private unnamed_addr constant [54 x i8] c"Failed to allocate new framebuffer, disconnecting...\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"New frameBufferLen: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"b[0] = %d \0A\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"b[1] = %d \0A\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"b[2] = %d \0A\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"b[3] = %d \0A\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"b[4] = %d \0A\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"b[5] = %d \0A\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"b[6] = %d \0A\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"b[7] = %d \0A\00", align 1
@.str.12 = private unnamed_addr constant [19 x i8] c"INCOMPLETE Frame \0A\00", align 1
@.str.13 = private unnamed_addr constant [27 x i8] c"Allocing new frameBuffer \0A\00", align 1
@.str.14 = private unnamed_addr constant [51 x i8] c"Failed to allocate framebuffer, disconnecting... \0A\00", align 1
@.str.15 = private unnamed_addr constant [63 x i8] c"PARTIAL frame! Should concat payload and later restore opcode\0A\00", align 1
@.str.16 = private unnamed_addr constant [29 x i8] c"Allocing new payloadBuffer \0A\00", align 1
@.str.17 = private unnamed_addr constant [52 x i8] c"Failed to allocate payloadBuffer, disconnecting...\0A\00", align 1
@.str.18 = private unnamed_addr constant [41 x i8] c"Appending new payloadBuffer to old one \0A\00", align 1
@WS_OPCODE_CONTINUATION = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [27 x i8] c"restoring original opcode\0A\00", align 1
@.str.20 = private unnamed_addr constant [80 x i8] c"Got FIN continuation frame but didn't receive any beforehand, disconnecting...\0A\00", align 1
@WS_OPCODE_CLOSE = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [20 x i8] c"Closing due to: %d\0A\00", align 1
@.str.22 = private unnamed_addr constant [46 x i8] c"Failed to allocate payload, disconnecting...\0A\00", align 1
@.str.23 = private unnamed_addr constant [11 x i8] c"isFin %d \0A\00", align 1
@.str.24 = private unnamed_addr constant [12 x i8] c"opCode %d \0A\00", align 1
@.str.25 = private unnamed_addr constant [13 x i8] c"hasMask %d \0A\00", align 1
@.str.26 = private unnamed_addr constant [19 x i8] c"payloadLength %d \0A\00", align 1
@.str.27 = private unnamed_addr constant [9 x i8] c"len %d \0A\00", align 1
@.str.28 = private unnamed_addr constant [15 x i8] c"bufOffset %d \0A\00", align 1
@.str.29 = private unnamed_addr constant [21 x i8] c"Closing message: %s\0A\00", align 1
@ws_closeSentCallback = common dso_local global i32 0, align 4
@WS_OPCODE_PING = common dso_local global i32 0, align 4
@WS_OPCODE_PONG = common dso_local global i32 0, align 4
@.str.30 = private unnamed_addr constant [49 x i8] c"Reallocing frameBuffer to remove consumed frame\0A\00", align 1
@.str.31 = private unnamed_addr constant [55 x i8] c"Failed to allocate new frame buffer, disconnecting...\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i16)* @ws_receiveCallback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ws_receiveCallback(i8* %0, i8* %1, i16 zeroext %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i16, align 2
  %7 = alloca %struct.espconn*, align 8
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i16 %2, i16* %6, align 2
  %20 = load i16, i16* %6, align 2
  %21 = zext i16 %20 to i32
  %22 = call i32 (i8*, ...) @NODE_DBG(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load i8*, i8** %4, align 8
  %24 = bitcast i8* %23 to %struct.espconn*
  store %struct.espconn* %24, %struct.espconn** %7, align 8
  %25 = load %struct.espconn*, %struct.espconn** %7, align 8
  %26 = getelementptr inbounds %struct.espconn, %struct.espconn* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = inttoptr i64 %27 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %28, %struct.TYPE_3__** %8, align 8
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 10
  store i64 0, i64* %30, align 8
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 9
  %33 = call i32 @os_timer_disarm(i32* %32)
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 9
  %36 = load i32, i32* @WS_PING_INTERVAL_MS, align 4
  %37 = call i32 @os_timer_arm(i32* %35, i32 %36, i32 1)
  %38 = load i8*, i8** %5, align 8
  store i8* %38, i8** %9, align 8
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %43, label %108

43:                                               ; preds = %3
  %44 = call i32 (i8*, ...) @NODE_DBG(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i8*, i8** %46, align 8
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 1
  %50 = load i16, i16* %49, align 8
  %51 = zext i16 %50 to i32
  %52 = load i16, i16* %6, align 2
  %53 = zext i16 %52 to i32
  %54 = add nsw i32 %51, %53
  %55 = trunc i32 %54 to i16
  %56 = call i8* @realloc(i8* %47, i16 zeroext %55)
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  store i8* %56, i8** %58, align 8
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load i8*, i8** %60, align 8
  %62 = icmp eq i8* %61, null
  br i1 %62, label %63, label %78

63:                                               ; preds = %43
  %64 = call i32 (i8*, ...) @NODE_DBG(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0))
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 2
  store i32 -8, i32* %66, align 4
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 7
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %63
  %72 = load %struct.espconn*, %struct.espconn** %7, align 8
  %73 = call i32 @espconn_secure_disconnect(%struct.espconn* %72)
  br label %77

74:                                               ; preds = %63
  %75 = load %struct.espconn*, %struct.espconn** %7, align 8
  %76 = call i32 @espconn_disconnect(%struct.espconn* %75)
  br label %77

77:                                               ; preds = %74, %71
  br label %744

78:                                               ; preds = %43
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 0
  %81 = load i8*, i8** %80, align 8
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 1
  %84 = load i16, i16* %83, align 8
  %85 = zext i16 %84 to i32
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i8, i8* %81, i64 %86
  %88 = load i8*, i8** %9, align 8
  %89 = load i16, i16* %6, align 2
  %90 = call i32 @memcpy(i8* %87, i8* %88, i16 zeroext %89)
  %91 = load i16, i16* %6, align 2
  %92 = zext i16 %91 to i32
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 1
  %95 = load i16, i16* %94, align 8
  %96 = zext i16 %95 to i32
  %97 = add nsw i32 %96, %92
  %98 = trunc i32 %97 to i16
  store i16 %98, i16* %94, align 8
  %99 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 1
  %101 = load i16, i16* %100, align 8
  store i16 %101, i16* %6, align 2
  %102 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 0
  %104 = load i8*, i8** %103, align 8
  store i8* %104, i8** %9, align 8
  %105 = load i16, i16* %6, align 2
  %106 = zext i16 %105 to i32
  %107 = call i32 (i8*, ...) @NODE_DBG(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %106)
  br label %108

108:                                              ; preds = %78, %3
  br label %109

109:                                              ; preds = %743, %108
  %110 = load i8*, i8** %9, align 8
  %111 = icmp ne i8* %110, null
  br i1 %111, label %112, label %744

112:                                              ; preds = %109
  %113 = load i8*, i8** %9, align 8
  %114 = getelementptr inbounds i8, i8* %113, i64 0
  %115 = load i8, i8* %114, align 1
  %116 = sext i8 %115 to i32
  %117 = call i32 (i8*, ...) @NODE_DBG(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 %116)
  %118 = load i8*, i8** %9, align 8
  %119 = getelementptr inbounds i8, i8* %118, i64 1
  %120 = load i8, i8* %119, align 1
  %121 = sext i8 %120 to i32
  %122 = call i32 (i8*, ...) @NODE_DBG(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i32 %121)
  %123 = load i8*, i8** %9, align 8
  %124 = getelementptr inbounds i8, i8* %123, i64 2
  %125 = load i8, i8* %124, align 1
  %126 = sext i8 %125 to i32
  %127 = call i32 (i8*, ...) @NODE_DBG(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i32 %126)
  %128 = load i8*, i8** %9, align 8
  %129 = getelementptr inbounds i8, i8* %128, i64 3
  %130 = load i8, i8* %129, align 1
  %131 = sext i8 %130 to i32
  %132 = call i32 (i8*, ...) @NODE_DBG(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i32 %131)
  %133 = load i8*, i8** %9, align 8
  %134 = getelementptr inbounds i8, i8* %133, i64 4
  %135 = load i8, i8* %134, align 1
  %136 = sext i8 %135 to i32
  %137 = call i32 (i8*, ...) @NODE_DBG(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), i32 %136)
  %138 = load i8*, i8** %9, align 8
  %139 = getelementptr inbounds i8, i8* %138, i64 5
  %140 = load i8, i8* %139, align 1
  %141 = sext i8 %140 to i32
  %142 = call i32 (i8*, ...) @NODE_DBG(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0), i32 %141)
  %143 = load i8*, i8** %9, align 8
  %144 = getelementptr inbounds i8, i8* %143, i64 6
  %145 = load i8, i8* %144, align 1
  %146 = sext i8 %145 to i32
  %147 = call i32 (i8*, ...) @NODE_DBG(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0), i32 %146)
  %148 = load i8*, i8** %9, align 8
  %149 = getelementptr inbounds i8, i8* %148, i64 7
  %150 = load i8, i8* %149, align 1
  %151 = sext i8 %150 to i32
  %152 = call i32 (i8*, ...) @NODE_DBG(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0), i32 %151)
  %153 = load i8*, i8** %9, align 8
  %154 = getelementptr inbounds i8, i8* %153, i64 0
  %155 = load i8, i8* %154, align 1
  %156 = sext i8 %155 to i32
  %157 = and i32 %156, 128
  %158 = icmp ne i32 %157, 0
  %159 = zext i1 %158 to i64
  %160 = select i1 %158, i32 1, i32 0
  store i32 %160, i32* %10, align 4
  %161 = load i8*, i8** %9, align 8
  %162 = getelementptr inbounds i8, i8* %161, i64 0
  %163 = load i8, i8* %162, align 1
  %164 = sext i8 %163 to i32
  %165 = and i32 %164, 15
  store i32 %165, i32* %11, align 4
  %166 = load i8*, i8** %9, align 8
  %167 = getelementptr inbounds i8, i8* %166, i64 1
  %168 = load i8, i8* %167, align 1
  %169 = sext i8 %168 to i32
  %170 = and i32 %169, 128
  %171 = icmp ne i32 %170, 0
  %172 = zext i1 %171 to i64
  %173 = select i1 %171, i32 1, i32 0
  store i32 %173, i32* %12, align 4
  %174 = load i8*, i8** %9, align 8
  %175 = getelementptr inbounds i8, i8* %174, i64 1
  %176 = load i8, i8* %175, align 1
  %177 = sext i8 %176 to i32
  %178 = and i32 %177, 127
  store i32 %178, i32* %13, align 4
  store i32 2, i32* %14, align 4
  %179 = load i32, i32* %13, align 4
  %180 = icmp eq i32 %179, 126
  br i1 %180, label %181, label %192

181:                                              ; preds = %112
  %182 = load i8*, i8** %9, align 8
  %183 = getelementptr inbounds i8, i8* %182, i64 2
  %184 = load i8, i8* %183, align 1
  %185 = sext i8 %184 to i32
  %186 = shl i32 %185, 8
  %187 = load i8*, i8** %9, align 8
  %188 = getelementptr inbounds i8, i8* %187, i64 3
  %189 = load i8, i8* %188, align 1
  %190 = sext i8 %189 to i32
  %191 = add nsw i32 %186, %190
  store i32 %191, i32* %13, align 4
  store i32 4, i32* %14, align 4
  br label %219

192:                                              ; preds = %112
  %193 = load i32, i32* %13, align 4
  %194 = icmp eq i32 %193, 127
  br i1 %194, label %195, label %218

195:                                              ; preds = %192
  %196 = load i8*, i8** %9, align 8
  %197 = getelementptr inbounds i8, i8* %196, i64 2
  %198 = load i8, i8* %197, align 1
  %199 = sext i8 %198 to i32
  %200 = shl i32 %199, 24
  %201 = load i8*, i8** %9, align 8
  %202 = getelementptr inbounds i8, i8* %201, i64 3
  %203 = load i8, i8* %202, align 1
  %204 = sext i8 %203 to i32
  %205 = shl i32 %204, 16
  %206 = add nsw i32 %200, %205
  %207 = load i8*, i8** %9, align 8
  %208 = getelementptr inbounds i8, i8* %207, i64 4
  %209 = load i8, i8* %208, align 1
  %210 = sext i8 %209 to i32
  %211 = shl i32 %210, 8
  %212 = add nsw i32 %206, %211
  %213 = load i8*, i8** %9, align 8
  %214 = getelementptr inbounds i8, i8* %213, i64 5
  %215 = load i8, i8* %214, align 1
  %216 = sext i8 %215 to i32
  %217 = add nsw i32 %212, %216
  store i32 %217, i32* %13, align 4
  store i32 6, i32* %14, align 4
  br label %218

218:                                              ; preds = %195, %192
  br label %219

219:                                              ; preds = %218, %181
  %220 = load i32, i32* %12, align 4
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %254

222:                                              ; preds = %219
  %223 = load i32, i32* %14, align 4
  store i32 %223, i32* %15, align 4
  %224 = load i32, i32* %14, align 4
  %225 = add nsw i32 %224, 4
  store i32 %225, i32* %14, align 4
  store i32 0, i32* %16, align 4
  br label %226

226:                                              ; preds = %250, %222
  %227 = load i32, i32* %16, align 4
  %228 = load i32, i32* %13, align 4
  %229 = icmp slt i32 %227, %228
  br i1 %229, label %230, label %253

230:                                              ; preds = %226
  %231 = load i8*, i8** %9, align 8
  %232 = load i32, i32* %15, align 4
  %233 = load i32, i32* %16, align 4
  %234 = srem i32 %233, 4
  %235 = add nsw i32 %232, %234
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds i8, i8* %231, i64 %236
  %238 = load i8, i8* %237, align 1
  %239 = sext i8 %238 to i32
  %240 = load i8*, i8** %9, align 8
  %241 = load i32, i32* %14, align 4
  %242 = load i32, i32* %16, align 4
  %243 = add nsw i32 %241, %242
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds i8, i8* %240, i64 %244
  %246 = load i8, i8* %245, align 1
  %247 = sext i8 %246 to i32
  %248 = xor i32 %247, %239
  %249 = trunc i32 %248 to i8
  store i8 %249, i8* %245, align 1
  br label %250

250:                                              ; preds = %230
  %251 = load i32, i32* %16, align 4
  %252 = add nsw i32 %251, 1
  store i32 %252, i32* %16, align 4
  br label %226

253:                                              ; preds = %226
  br label %254

254:                                              ; preds = %253, %219
  %255 = load i32, i32* %13, align 4
  %256 = load i16, i16* %6, align 2
  %257 = zext i16 %256 to i32
  %258 = load i32, i32* %14, align 4
  %259 = sub nsw i32 %257, %258
  %260 = icmp sgt i32 %255, %259
  br i1 %260, label %261, label %304

261:                                              ; preds = %254
  %262 = call i32 (i8*, ...) @NODE_DBG(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.12, i64 0, i64 0))
  %263 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %264 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %263, i32 0, i32 0
  %265 = load i8*, i8** %264, align 8
  %266 = icmp eq i8* %265, null
  br i1 %266, label %267, label %303

267:                                              ; preds = %261
  %268 = call i32 (i8*, ...) @NODE_DBG(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.13, i64 0, i64 0))
  %269 = load i16, i16* %6, align 2
  %270 = zext i16 %269 to i32
  %271 = call i8* @calloc(i32 1, i32 %270)
  %272 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %273 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %272, i32 0, i32 0
  store i8* %271, i8** %273, align 8
  %274 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %275 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %274, i32 0, i32 0
  %276 = load i8*, i8** %275, align 8
  %277 = icmp eq i8* %276, null
  br i1 %277, label %278, label %293

278:                                              ; preds = %267
  %279 = call i32 (i8*, ...) @NODE_DBG(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.14, i64 0, i64 0))
  %280 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %281 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %280, i32 0, i32 2
  store i32 -9, i32* %281, align 4
  %282 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %283 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %282, i32 0, i32 7
  %284 = load i64, i64* %283, align 8
  %285 = icmp ne i64 %284, 0
  br i1 %285, label %286, label %289

286:                                              ; preds = %278
  %287 = load %struct.espconn*, %struct.espconn** %7, align 8
  %288 = call i32 @espconn_secure_disconnect(%struct.espconn* %287)
  br label %292

289:                                              ; preds = %278
  %290 = load %struct.espconn*, %struct.espconn** %7, align 8
  %291 = call i32 @espconn_disconnect(%struct.espconn* %290)
  br label %292

292:                                              ; preds = %289, %286
  br label %744

293:                                              ; preds = %267
  %294 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %295 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %294, i32 0, i32 0
  %296 = load i8*, i8** %295, align 8
  %297 = load i8*, i8** %9, align 8
  %298 = load i16, i16* %6, align 2
  %299 = call i32 @memcpy(i8* %296, i8* %297, i16 zeroext %298)
  %300 = load i16, i16* %6, align 2
  %301 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %302 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %301, i32 0, i32 1
  store i16 %300, i16* %302, align 8
  br label %303

303:                                              ; preds = %293, %261
  br label %744

304:                                              ; preds = %254
  %305 = load i32, i32* %10, align 4
  %306 = icmp ne i32 %305, 0
  br i1 %306, label %411, label %307

307:                                              ; preds = %304
  %308 = call i32 (i8*, ...) @NODE_DBG(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.15, i64 0, i64 0))
  %309 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %310 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %309, i32 0, i32 3
  %311 = load i8*, i8** %310, align 8
  %312 = icmp eq i8* %311, null
  br i1 %312, label %313, label %356

313:                                              ; preds = %307
  %314 = call i32 (i8*, ...) @NODE_DBG(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.16, i64 0, i64 0))
  %315 = load i32, i32* %13, align 4
  %316 = call i8* @calloc(i32 1, i32 %315)
  %317 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %318 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %317, i32 0, i32 3
  store i8* %316, i8** %318, align 8
  %319 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %320 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %319, i32 0, i32 3
  %321 = load i8*, i8** %320, align 8
  %322 = icmp eq i8* %321, null
  br i1 %322, label %323, label %338

323:                                              ; preds = %313
  %324 = call i32 (i8*, ...) @NODE_DBG(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.17, i64 0, i64 0))
  %325 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %326 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %325, i32 0, i32 2
  store i32 -10, i32* %326, align 4
  %327 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %328 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %327, i32 0, i32 7
  %329 = load i64, i64* %328, align 8
  %330 = icmp ne i64 %329, 0
  br i1 %330, label %331, label %334

331:                                              ; preds = %323
  %332 = load %struct.espconn*, %struct.espconn** %7, align 8
  %333 = call i32 @espconn_secure_disconnect(%struct.espconn* %332)
  br label %337

334:                                              ; preds = %323
  %335 = load %struct.espconn*, %struct.espconn** %7, align 8
  %336 = call i32 @espconn_disconnect(%struct.espconn* %335)
  br label %337

337:                                              ; preds = %334, %331
  br label %744

338:                                              ; preds = %313
  %339 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %340 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %339, i32 0, i32 3
  %341 = load i8*, i8** %340, align 8
  %342 = load i8*, i8** %9, align 8
  %343 = load i32, i32* %14, align 4
  %344 = sext i32 %343 to i64
  %345 = getelementptr inbounds i8, i8* %342, i64 %344
  %346 = load i32, i32* %13, align 4
  %347 = trunc i32 %346 to i16
  %348 = call i32 @memcpy(i8* %341, i8* %345, i16 zeroext %347)
  %349 = load i32, i32* %13, align 4
  %350 = trunc i32 %349 to i16
  %351 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %352 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %351, i32 0, i32 1
  store i16 %350, i16* %352, align 8
  %353 = load i32, i32* %11, align 4
  %354 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %355 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %354, i32 0, i32 4
  store i32 %353, i32* %355, align 8
  br label %410

356:                                              ; preds = %307
  %357 = call i32 (i8*, ...) @NODE_DBG(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.18, i64 0, i64 0))
  %358 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %359 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %358, i32 0, i32 3
  %360 = load i8*, i8** %359, align 8
  %361 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %362 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %361, i32 0, i32 5
  %363 = load i32, i32* %362, align 4
  %364 = load i32, i32* %13, align 4
  %365 = add nsw i32 %363, %364
  %366 = trunc i32 %365 to i16
  %367 = call i8* @realloc(i8* %360, i16 zeroext %366)
  %368 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %369 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %368, i32 0, i32 3
  store i8* %367, i8** %369, align 8
  %370 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %371 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %370, i32 0, i32 3
  %372 = load i8*, i8** %371, align 8
  %373 = icmp eq i8* %372, null
  br i1 %373, label %374, label %389

374:                                              ; preds = %356
  %375 = call i32 (i8*, ...) @NODE_DBG(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0))
  %376 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %377 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %376, i32 0, i32 2
  store i32 -11, i32* %377, align 4
  %378 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %379 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %378, i32 0, i32 7
  %380 = load i64, i64* %379, align 8
  %381 = icmp ne i64 %380, 0
  br i1 %381, label %382, label %385

382:                                              ; preds = %374
  %383 = load %struct.espconn*, %struct.espconn** %7, align 8
  %384 = call i32 @espconn_secure_disconnect(%struct.espconn* %383)
  br label %388

385:                                              ; preds = %374
  %386 = load %struct.espconn*, %struct.espconn** %7, align 8
  %387 = call i32 @espconn_disconnect(%struct.espconn* %386)
  br label %388

388:                                              ; preds = %385, %382
  br label %744

389:                                              ; preds = %356
  %390 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %391 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %390, i32 0, i32 3
  %392 = load i8*, i8** %391, align 8
  %393 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %394 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %393, i32 0, i32 5
  %395 = load i32, i32* %394, align 4
  %396 = sext i32 %395 to i64
  %397 = getelementptr inbounds i8, i8* %392, i64 %396
  %398 = load i8*, i8** %9, align 8
  %399 = load i32, i32* %14, align 4
  %400 = sext i32 %399 to i64
  %401 = getelementptr inbounds i8, i8* %398, i64 %400
  %402 = load i32, i32* %13, align 4
  %403 = trunc i32 %402 to i16
  %404 = call i32 @memcpy(i8* %397, i8* %401, i16 zeroext %403)
  %405 = load i32, i32* %13, align 4
  %406 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %407 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %406, i32 0, i32 5
  %408 = load i32, i32* %407, align 4
  %409 = add nsw i32 %408, %405
  store i32 %409, i32* %407, align 4
  br label %410

410:                                              ; preds = %389, %338
  br label %644

411:                                              ; preds = %304
  %412 = load i32, i32* %11, align 4
  %413 = load i32, i32* @WS_OPCODE_CONTINUATION, align 4
  %414 = icmp eq i32 %412, %413
  br i1 %414, label %415, label %501

415:                                              ; preds = %411
  %416 = call i32 (i8*, ...) @NODE_DBG(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.19, i64 0, i64 0))
  %417 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %418 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %417, i32 0, i32 3
  %419 = load i8*, i8** %418, align 8
  %420 = icmp eq i8* %419, null
  br i1 %420, label %421, label %436

421:                                              ; preds = %415
  %422 = call i32 (i8*, ...) @NODE_DBG(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.20, i64 0, i64 0))
  %423 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %424 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %423, i32 0, i32 2
  store i32 -15, i32* %424, align 4
  %425 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %426 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %425, i32 0, i32 7
  %427 = load i64, i64* %426, align 8
  %428 = icmp ne i64 %427, 0
  br i1 %428, label %429, label %432

429:                                              ; preds = %421
  %430 = load %struct.espconn*, %struct.espconn** %7, align 8
  %431 = call i32 @espconn_secure_disconnect(%struct.espconn* %430)
  br label %435

432:                                              ; preds = %421
  %433 = load %struct.espconn*, %struct.espconn** %7, align 8
  %434 = call i32 @espconn_disconnect(%struct.espconn* %433)
  br label %435

435:                                              ; preds = %432, %429
  br label %744

436:                                              ; preds = %415
  %437 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %438 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %437, i32 0, i32 5
  %439 = load i32, i32* %438, align 4
  %440 = load i32, i32* %13, align 4
  %441 = add nsw i32 %439, %440
  %442 = call i8* @calloc(i32 1, i32 %441)
  store i8* %442, i8** %17, align 8
  %443 = load i8*, i8** %17, align 8
  %444 = icmp eq i8* %443, null
  br i1 %444, label %445, label %460

445:                                              ; preds = %436
  %446 = call i32 (i8*, ...) @NODE_DBG(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0))
  %447 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %448 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %447, i32 0, i32 2
  store i32 -12, i32* %448, align 4
  %449 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %450 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %449, i32 0, i32 7
  %451 = load i64, i64* %450, align 8
  %452 = icmp ne i64 %451, 0
  br i1 %452, label %453, label %456

453:                                              ; preds = %445
  %454 = load %struct.espconn*, %struct.espconn** %7, align 8
  %455 = call i32 @espconn_secure_disconnect(%struct.espconn* %454)
  br label %459

456:                                              ; preds = %445
  %457 = load %struct.espconn*, %struct.espconn** %7, align 8
  %458 = call i32 @espconn_disconnect(%struct.espconn* %457)
  br label %459

459:                                              ; preds = %456, %453
  br label %744

460:                                              ; preds = %436
  %461 = load i8*, i8** %17, align 8
  %462 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %463 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %462, i32 0, i32 3
  %464 = load i8*, i8** %463, align 8
  %465 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %466 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %465, i32 0, i32 5
  %467 = load i32, i32* %466, align 4
  %468 = trunc i32 %467 to i16
  %469 = call i32 @memcpy(i8* %461, i8* %464, i16 zeroext %468)
  %470 = load i8*, i8** %17, align 8
  %471 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %472 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %471, i32 0, i32 5
  %473 = load i32, i32* %472, align 4
  %474 = sext i32 %473 to i64
  %475 = getelementptr inbounds i8, i8* %470, i64 %474
  %476 = load i8*, i8** %9, align 8
  %477 = load i32, i32* %14, align 4
  %478 = sext i32 %477 to i64
  %479 = getelementptr inbounds i8, i8* %476, i64 %478
  %480 = load i32, i32* %13, align 4
  %481 = trunc i32 %480 to i16
  %482 = call i32 @memcpy(i8* %475, i8* %479, i16 zeroext %481)
  %483 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %484 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %483, i32 0, i32 3
  %485 = load i8*, i8** %484, align 8
  %486 = call i32 @os_free(i8* %485)
  %487 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %488 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %487, i32 0, i32 3
  store i8* null, i8** %488, align 8
  %489 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %490 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %489, i32 0, i32 5
  %491 = load i32, i32* %490, align 4
  %492 = load i32, i32* %13, align 4
  %493 = add nsw i32 %492, %491
  store i32 %493, i32* %13, align 4
  %494 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %495 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %494, i32 0, i32 5
  store i32 0, i32* %495, align 4
  %496 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %497 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %496, i32 0, i32 4
  %498 = load i32, i32* %497, align 8
  store i32 %498, i32* %11, align 4
  %499 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %500 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %499, i32 0, i32 4
  store i32 0, i32* %500, align 8
  br label %571

501:                                              ; preds = %411
  store i32 0, i32* %18, align 4
  %502 = load i32, i32* %11, align 4
  %503 = load i32, i32* @WS_OPCODE_CLOSE, align 4
  %504 = icmp eq i32 %502, %503
  br i1 %504, label %505, label %528

505:                                              ; preds = %501
  %506 = load i32, i32* %13, align 4
  %507 = icmp sgt i32 %506, 0
  br i1 %507, label %508, label %528

508:                                              ; preds = %505
  %509 = load i8*, i8** %9, align 8
  %510 = load i32, i32* %14, align 4
  %511 = sext i32 %510 to i64
  %512 = getelementptr inbounds i8, i8* %509, i64 %511
  %513 = load i8, i8* %512, align 1
  %514 = sext i8 %513 to i32
  %515 = load i8*, i8** %9, align 8
  %516 = load i32, i32* %14, align 4
  %517 = add nsw i32 %516, 1
  %518 = sext i32 %517 to i64
  %519 = getelementptr inbounds i8, i8* %515, i64 %518
  %520 = load i8, i8* %519, align 1
  %521 = sext i8 %520 to i32
  %522 = add nsw i32 8, %521
  %523 = shl i32 %514, %522
  store i32 %523, i32* %19, align 4
  %524 = load i32, i32* %19, align 4
  %525 = call i32 (i8*, ...) @NODE_DBG(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.21, i64 0, i64 0), i32 %524)
  %526 = load i32, i32* %18, align 4
  %527 = add nsw i32 %526, 2
  store i32 %527, i32* %18, align 4
  br label %528

528:                                              ; preds = %508, %505, %501
  %529 = load i32, i32* %13, align 4
  %530 = load i32, i32* %18, align 4
  %531 = sub nsw i32 %529, %530
  %532 = add nsw i32 %531, 1
  %533 = call i8* @calloc(i32 1, i32 %532)
  store i8* %533, i8** %17, align 8
  %534 = load i8*, i8** %17, align 8
  %535 = icmp eq i8* %534, null
  br i1 %535, label %536, label %551

536:                                              ; preds = %528
  %537 = call i32 (i8*, ...) @NODE_DBG(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.22, i64 0, i64 0))
  %538 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %539 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %538, i32 0, i32 2
  store i32 -13, i32* %539, align 4
  %540 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %541 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %540, i32 0, i32 7
  %542 = load i64, i64* %541, align 8
  %543 = icmp ne i64 %542, 0
  br i1 %543, label %544, label %547

544:                                              ; preds = %536
  %545 = load %struct.espconn*, %struct.espconn** %7, align 8
  %546 = call i32 @espconn_secure_disconnect(%struct.espconn* %545)
  br label %550

547:                                              ; preds = %536
  %548 = load %struct.espconn*, %struct.espconn** %7, align 8
  %549 = call i32 @espconn_disconnect(%struct.espconn* %548)
  br label %550

550:                                              ; preds = %547, %544
  br label %744

551:                                              ; preds = %528
  %552 = load i8*, i8** %17, align 8
  %553 = load i8*, i8** %9, align 8
  %554 = load i32, i32* %14, align 4
  %555 = sext i32 %554 to i64
  %556 = getelementptr inbounds i8, i8* %553, i64 %555
  %557 = load i32, i32* %18, align 4
  %558 = sext i32 %557 to i64
  %559 = getelementptr inbounds i8, i8* %556, i64 %558
  %560 = load i32, i32* %13, align 4
  %561 = load i32, i32* %18, align 4
  %562 = sub nsw i32 %560, %561
  %563 = trunc i32 %562 to i16
  %564 = call i32 @memcpy(i8* %552, i8* %559, i16 zeroext %563)
  %565 = load i8*, i8** %17, align 8
  %566 = load i32, i32* %13, align 4
  %567 = load i32, i32* %18, align 4
  %568 = sub nsw i32 %566, %567
  %569 = sext i32 %568 to i64
  %570 = getelementptr inbounds i8, i8* %565, i64 %569
  store i8 0, i8* %570, align 1
  br label %571

571:                                              ; preds = %551, %460
  %572 = load i32, i32* %10, align 4
  %573 = call i32 (i8*, ...) @NODE_DBG(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.23, i64 0, i64 0), i32 %572)
  %574 = load i32, i32* %11, align 4
  %575 = call i32 (i8*, ...) @NODE_DBG(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.24, i64 0, i64 0), i32 %574)
  %576 = load i32, i32* %12, align 4
  %577 = call i32 (i8*, ...) @NODE_DBG(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.25, i64 0, i64 0), i32 %576)
  %578 = load i32, i32* %13, align 4
  %579 = call i32 (i8*, ...) @NODE_DBG(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.26, i64 0, i64 0), i32 %578)
  %580 = load i16, i16* %6, align 2
  %581 = zext i16 %580 to i32
  %582 = call i32 (i8*, ...) @NODE_DBG(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.27, i64 0, i64 0), i32 %581)
  %583 = load i32, i32* %14, align 4
  %584 = call i32 (i8*, ...) @NODE_DBG(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.28, i64 0, i64 0), i32 %583)
  %585 = load i32, i32* %11, align 4
  %586 = load i32, i32* @WS_OPCODE_CLOSE, align 4
  %587 = icmp eq i32 %585, %586
  br i1 %587, label %588, label %605

588:                                              ; preds = %571
  %589 = load i8*, i8** %17, align 8
  %590 = call i32 (i8*, ...) @NODE_DBG(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.29, i64 0, i64 0), i8* %589)
  %591 = load %struct.espconn*, %struct.espconn** %7, align 8
  %592 = load i32, i32* @ws_closeSentCallback, align 4
  %593 = call i32 @espconn_regist_sentcb(%struct.espconn* %591, i32 %592)
  %594 = load %struct.espconn*, %struct.espconn** %7, align 8
  %595 = load i32, i32* @WS_OPCODE_CLOSE, align 4
  %596 = load i8*, i8** %9, align 8
  %597 = load i32, i32* %14, align 4
  %598 = sext i32 %597 to i64
  %599 = getelementptr inbounds i8, i8* %596, i64 %598
  %600 = load i32, i32* %13, align 4
  %601 = trunc i32 %600 to i16
  %602 = call i32 @ws_sendFrame(%struct.espconn* %594, i32 %595, i8* %599, i16 zeroext %601)
  %603 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %604 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %603, i32 0, i32 6
  store i32 4, i32* %604, align 8
  br label %641

605:                                              ; preds = %571
  %606 = load i32, i32* %11, align 4
  %607 = load i32, i32* @WS_OPCODE_PING, align 4
  %608 = icmp eq i32 %606, %607
  br i1 %608, label %609, label %619

609:                                              ; preds = %605
  %610 = load %struct.espconn*, %struct.espconn** %7, align 8
  %611 = load i32, i32* @WS_OPCODE_PONG, align 4
  %612 = load i8*, i8** %9, align 8
  %613 = load i32, i32* %14, align 4
  %614 = sext i32 %613 to i64
  %615 = getelementptr inbounds i8, i8* %612, i64 %614
  %616 = load i32, i32* %13, align 4
  %617 = trunc i32 %616 to i16
  %618 = call i32 @ws_sendFrame(%struct.espconn* %610, i32 %611, i8* %615, i16 zeroext %617)
  br label %640

619:                                              ; preds = %605
  %620 = load i32, i32* %11, align 4
  %621 = load i32, i32* @WS_OPCODE_PONG, align 4
  %622 = icmp eq i32 %620, %621
  br i1 %622, label %623, label %624

623:                                              ; preds = %619
  br label %639

624:                                              ; preds = %619
  %625 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %626 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %625, i32 0, i32 8
  %627 = load i32 (%struct.TYPE_3__*, i32, i8*, i32)*, i32 (%struct.TYPE_3__*, i32, i8*, i32)** %626, align 8
  %628 = icmp ne i32 (%struct.TYPE_3__*, i32, i8*, i32)* %627, null
  br i1 %628, label %629, label %638

629:                                              ; preds = %624
  %630 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %631 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %630, i32 0, i32 8
  %632 = load i32 (%struct.TYPE_3__*, i32, i8*, i32)*, i32 (%struct.TYPE_3__*, i32, i8*, i32)** %631, align 8
  %633 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %634 = load i32, i32* %13, align 4
  %635 = load i8*, i8** %17, align 8
  %636 = load i32, i32* %11, align 4
  %637 = call i32 %632(%struct.TYPE_3__* %633, i32 %634, i8* %635, i32 %636)
  br label %638

638:                                              ; preds = %629, %624
  br label %639

639:                                              ; preds = %638, %623
  br label %640

640:                                              ; preds = %639, %609
  br label %641

641:                                              ; preds = %640, %588
  %642 = load i8*, i8** %17, align 8
  %643 = call i32 @os_free(i8* %642)
  br label %644

644:                                              ; preds = %641, %410
  %645 = load i32, i32* %13, align 4
  %646 = load i32, i32* %14, align 4
  %647 = add nsw i32 %646, %645
  store i32 %647, i32* %14, align 4
  %648 = load i32, i32* %14, align 4
  %649 = call i32 (i8*, ...) @NODE_DBG(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.28, i64 0, i64 0), i32 %648)
  %650 = load i32, i32* %14, align 4
  %651 = load i16, i16* %6, align 2
  %652 = zext i16 %651 to i32
  %653 = icmp eq i32 %650, %652
  br i1 %653, label %654, label %669

654:                                              ; preds = %644
  store i8* null, i8** %9, align 8
  %655 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %656 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %655, i32 0, i32 0
  %657 = load i8*, i8** %656, align 8
  %658 = icmp ne i8* %657, null
  br i1 %658, label %659, label %668

659:                                              ; preds = %654
  %660 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %661 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %660, i32 0, i32 0
  %662 = load i8*, i8** %661, align 8
  %663 = call i32 @os_free(i8* %662)
  %664 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %665 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %664, i32 0, i32 0
  store i8* null, i8** %665, align 8
  %666 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %667 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %666, i32 0, i32 1
  store i16 0, i16* %667, align 8
  br label %668

668:                                              ; preds = %659, %654
  br label %743

669:                                              ; preds = %644
  %670 = load i32, i32* %14, align 4
  %671 = load i16, i16* %6, align 2
  %672 = zext i16 %671 to i32
  %673 = sub nsw i32 %672, %670
  %674 = trunc i32 %673 to i16
  store i16 %674, i16* %6, align 2
  %675 = load i32, i32* %14, align 4
  %676 = load i8*, i8** %9, align 8
  %677 = sext i32 %675 to i64
  %678 = getelementptr inbounds i8, i8* %676, i64 %677
  store i8* %678, i8** %9, align 8
  %679 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %680 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %679, i32 0, i32 0
  %681 = load i8*, i8** %680, align 8
  %682 = icmp ne i8* %681, null
  br i1 %682, label %683, label %742

683:                                              ; preds = %669
  %684 = call i32 (i8*, ...) @NODE_DBG(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.30, i64 0, i64 0))
  %685 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %686 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %685, i32 0, i32 0
  %687 = load i8*, i8** %686, align 8
  %688 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %689 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %688, i32 0, i32 1
  %690 = load i16, i16* %689, align 8
  %691 = zext i16 %690 to i32
  %692 = load i16, i16* %6, align 2
  %693 = zext i16 %692 to i32
  %694 = add nsw i32 %691, %693
  %695 = trunc i32 %694 to i16
  %696 = call i8* @realloc(i8* %687, i16 zeroext %695)
  %697 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %698 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %697, i32 0, i32 0
  store i8* %696, i8** %698, align 8
  %699 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %700 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %699, i32 0, i32 0
  %701 = load i8*, i8** %700, align 8
  %702 = icmp eq i8* %701, null
  br i1 %702, label %703, label %718

703:                                              ; preds = %683
  %704 = call i32 (i8*, ...) @NODE_DBG(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.31, i64 0, i64 0))
  %705 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %706 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %705, i32 0, i32 2
  store i32 -14, i32* %706, align 4
  %707 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %708 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %707, i32 0, i32 7
  %709 = load i64, i64* %708, align 8
  %710 = icmp ne i64 %709, 0
  br i1 %710, label %711, label %714

711:                                              ; preds = %703
  %712 = load %struct.espconn*, %struct.espconn** %7, align 8
  %713 = call i32 @espconn_secure_disconnect(%struct.espconn* %712)
  br label %717

714:                                              ; preds = %703
  %715 = load %struct.espconn*, %struct.espconn** %7, align 8
  %716 = call i32 @espconn_disconnect(%struct.espconn* %715)
  br label %717

717:                                              ; preds = %714, %711
  br label %744

718:                                              ; preds = %683
  %719 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %720 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %719, i32 0, i32 0
  %721 = load i8*, i8** %720, align 8
  %722 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %723 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %722, i32 0, i32 1
  %724 = load i16, i16* %723, align 8
  %725 = zext i16 %724 to i32
  %726 = sext i32 %725 to i64
  %727 = getelementptr inbounds i8, i8* %721, i64 %726
  %728 = load i8*, i8** %9, align 8
  %729 = load i16, i16* %6, align 2
  %730 = call i32 @memcpy(i8* %727, i8* %728, i16 zeroext %729)
  %731 = load i16, i16* %6, align 2
  %732 = zext i16 %731 to i32
  %733 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %734 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %733, i32 0, i32 1
  %735 = load i16, i16* %734, align 8
  %736 = zext i16 %735 to i32
  %737 = add nsw i32 %736, %732
  %738 = trunc i32 %737 to i16
  store i16 %738, i16* %734, align 8
  %739 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %740 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %739, i32 0, i32 0
  %741 = load i8*, i8** %740, align 8
  store i8* %741, i8** %9, align 8
  br label %742

742:                                              ; preds = %718, %669
  br label %743

743:                                              ; preds = %742, %668
  br label %109

744:                                              ; preds = %77, %292, %337, %388, %435, %459, %550, %717, %303, %109
  ret void
}

declare dso_local i32 @NODE_DBG(i8*, ...) #1

declare dso_local i32 @os_timer_disarm(i32*) #1

declare dso_local i32 @os_timer_arm(i32*, i32, i32) #1

declare dso_local i8* @realloc(i8*, i16 zeroext) #1

declare dso_local i32 @espconn_secure_disconnect(%struct.espconn*) #1

declare dso_local i32 @espconn_disconnect(%struct.espconn*) #1

declare dso_local i32 @memcpy(i8*, i8*, i16 zeroext) #1

declare dso_local i8* @calloc(i32, i32) #1

declare dso_local i32 @os_free(i8*) #1

declare dso_local i32 @espconn_regist_sentcb(%struct.espconn*, i32) #1

declare dso_local i32 @ws_sendFrame(%struct.espconn*, i32, i8*, i16 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
