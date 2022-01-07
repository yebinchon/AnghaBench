; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/websocket/extr_websocketclient.c_ws_sendFrame.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/websocket/extr_websocketclient.c_ws_sendFrame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.espconn = type { i64 }
%struct.TYPE_2__ = type { i32, i32, i64 }

@.str = private unnamed_addr constant [20 x i8] c"ws_sendFrame %d %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"already in closing state\0A\00", align 1
@.str.2 = private unnamed_addr constant [51 x i8] c"can't send message while not in a connected state\0A\00", align 1
@.str.3 = private unnamed_addr constant [56 x i8] c"Out of memory when receiving message, disconnecting...\0A\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"b[0] = %d \0A\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"b[1] = %d \0A\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"b[2] = %d \0A\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"b[3] = %d \0A\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"b[4] = %d \0A\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"b[5] = %d \0A\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"b[6] = %d \0A\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"b[7] = %d \0A\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"b[8] = %d \0A\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"b[9] = %d \0A\00", align 1
@.str.14 = private unnamed_addr constant [17 x i8] c"sending message\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.espconn*, i32, i8*, i16)* @ws_sendFrame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ws_sendFrame(%struct.espconn* %0, i32 %1, i8* %2, i16 zeroext %3) #0 {
  %5 = alloca %struct.espconn*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i16, align 2
  %9 = alloca %struct.TYPE_2__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.espconn* %0, %struct.espconn** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i16 %3, i16* %8, align 2
  %13 = load i32, i32* %6, align 4
  %14 = load i16, i16* %8, align 2
  %15 = zext i16 %14 to i32
  %16 = call i32 (i8*, ...) @NODE_DBG(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %13, i32 %15)
  %17 = load %struct.espconn*, %struct.espconn** %5, align 8
  %18 = getelementptr inbounds %struct.espconn, %struct.espconn* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %20, %struct.TYPE_2__** %9, align 8
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp eq i32 %23, 4
  br i1 %24, label %25, label %27

25:                                               ; preds = %4
  %26 = call i32 (i8*, ...) @NODE_DBG(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %273

27:                                               ; preds = %4
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 3
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = call i32 (i8*, ...) @NODE_DBG(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0))
  br label %273

34:                                               ; preds = %27
  br label %35

35:                                               ; preds = %34
  %36 = load i16, i16* %8, align 2
  %37 = zext i16 %36 to i32
  %38 = add nsw i32 10, %37
  %39 = call i8* @calloc(i32 1, i32 %38)
  store i8* %39, i8** %10, align 8
  %40 = load i8*, i8** %10, align 8
  %41 = icmp eq i8* %40, null
  br i1 %41, label %42, label %57

42:                                               ; preds = %35
  %43 = call i32 (i8*, ...) @NODE_DBG(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.3, i64 0, i64 0))
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  store i32 -16, i32* %45, align 4
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %42
  %51 = load %struct.espconn*, %struct.espconn** %5, align 8
  %52 = call i32 @espconn_secure_disconnect(%struct.espconn* %51)
  br label %56

53:                                               ; preds = %42
  %54 = load %struct.espconn*, %struct.espconn** %5, align 8
  %55 = call i32 @espconn_disconnect(%struct.espconn* %54)
  br label %56

56:                                               ; preds = %53, %50
  br label %273

57:                                               ; preds = %35
  %58 = load i8*, i8** %10, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 0
  store i8 -128, i8* %59, align 1
  %60 = load i32, i32* %6, align 4
  %61 = load i8*, i8** %10, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 0
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  %65 = add nsw i32 %64, %60
  %66 = trunc i32 %65 to i8
  store i8 %66, i8* %62, align 1
  %67 = load i8*, i8** %10, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 1
  store i8 -128, i8* %68, align 1
  %69 = load i16, i16* %8, align 2
  %70 = zext i16 %69 to i32
  %71 = icmp slt i32 %70, 126
  br i1 %71, label %72, label %81

72:                                               ; preds = %57
  %73 = load i16, i16* %8, align 2
  %74 = zext i16 %73 to i32
  %75 = load i8*, i8** %10, align 8
  %76 = getelementptr inbounds i8, i8* %75, i64 1
  %77 = load i8, i8* %76, align 1
  %78 = sext i8 %77 to i32
  %79 = add nsw i32 %78, %74
  %80 = trunc i32 %79 to i8
  store i8 %80, i8* %76, align 1
  store i32 2, i32* %11, align 4
  br label %132

81:                                               ; preds = %57
  %82 = load i16, i16* %8, align 2
  %83 = zext i16 %82 to i32
  %84 = icmp slt i32 %83, 65536
  br i1 %84, label %85, label %102

85:                                               ; preds = %81
  %86 = load i8*, i8** %10, align 8
  %87 = getelementptr inbounds i8, i8* %86, i64 1
  %88 = load i8, i8* %87, align 1
  %89 = sext i8 %88 to i32
  %90 = add nsw i32 %89, 126
  %91 = trunc i32 %90 to i8
  store i8 %91, i8* %87, align 1
  %92 = load i16, i16* %8, align 2
  %93 = zext i16 %92 to i32
  %94 = ashr i32 %93, 8
  %95 = trunc i32 %94 to i8
  %96 = load i8*, i8** %10, align 8
  %97 = getelementptr inbounds i8, i8* %96, i64 2
  store i8 %95, i8* %97, align 1
  %98 = load i16, i16* %8, align 2
  %99 = trunc i16 %98 to i8
  %100 = load i8*, i8** %10, align 8
  %101 = getelementptr inbounds i8, i8* %100, i64 3
  store i8 %99, i8* %101, align 1
  store i32 4, i32* %11, align 4
  br label %131

102:                                              ; preds = %81
  %103 = load i8*, i8** %10, align 8
  %104 = getelementptr inbounds i8, i8* %103, i64 1
  %105 = load i8, i8* %104, align 1
  %106 = sext i8 %105 to i32
  %107 = add nsw i32 %106, 127
  %108 = trunc i32 %107 to i8
  store i8 %108, i8* %104, align 1
  %109 = load i16, i16* %8, align 2
  %110 = zext i16 %109 to i32
  %111 = ashr i32 %110, 24
  %112 = trunc i32 %111 to i8
  %113 = load i8*, i8** %10, align 8
  %114 = getelementptr inbounds i8, i8* %113, i64 2
  store i8 %112, i8* %114, align 1
  %115 = load i16, i16* %8, align 2
  %116 = zext i16 %115 to i32
  %117 = ashr i32 %116, 16
  %118 = trunc i32 %117 to i8
  %119 = load i8*, i8** %10, align 8
  %120 = getelementptr inbounds i8, i8* %119, i64 3
  store i8 %118, i8* %120, align 1
  %121 = load i16, i16* %8, align 2
  %122 = zext i16 %121 to i32
  %123 = ashr i32 %122, 8
  %124 = trunc i32 %123 to i8
  %125 = load i8*, i8** %10, align 8
  %126 = getelementptr inbounds i8, i8* %125, i64 4
  store i8 %124, i8* %126, align 1
  %127 = load i16, i16* %8, align 2
  %128 = trunc i16 %127 to i8
  %129 = load i8*, i8** %10, align 8
  %130 = getelementptr inbounds i8, i8* %129, i64 5
  store i8 %128, i8* %130, align 1
  store i32 6, i32* %11, align 4
  br label %131

131:                                              ; preds = %102, %85
  br label %132

132:                                              ; preds = %131, %72
  %133 = call i64 (...) @os_random()
  %134 = trunc i64 %133 to i8
  %135 = load i8*, i8** %10, align 8
  %136 = load i32, i32* %11, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i8, i8* %135, i64 %137
  store i8 %134, i8* %138, align 1
  %139 = call i64 (...) @os_random()
  %140 = trunc i64 %139 to i8
  %141 = load i8*, i8** %10, align 8
  %142 = load i32, i32* %11, align 4
  %143 = add nsw i32 %142, 1
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i8, i8* %141, i64 %144
  store i8 %140, i8* %145, align 1
  %146 = call i64 (...) @os_random()
  %147 = trunc i64 %146 to i8
  %148 = load i8*, i8** %10, align 8
  %149 = load i32, i32* %11, align 4
  %150 = add nsw i32 %149, 2
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i8, i8* %148, i64 %151
  store i8 %147, i8* %152, align 1
  %153 = call i64 (...) @os_random()
  %154 = trunc i64 %153 to i8
  %155 = load i8*, i8** %10, align 8
  %156 = load i32, i32* %11, align 4
  %157 = add nsw i32 %156, 3
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i8, i8* %155, i64 %158
  store i8 %154, i8* %159, align 1
  %160 = load i32, i32* %11, align 4
  %161 = add nsw i32 %160, 4
  store i32 %161, i32* %11, align 4
  %162 = load i8*, i8** %10, align 8
  %163 = load i32, i32* %11, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i8, i8* %162, i64 %164
  %166 = load i8*, i8** %7, align 8
  %167 = load i16, i16* %8, align 2
  %168 = call i32 @memcpy(i8* %165, i8* %166, i16 zeroext %167)
  store i32 0, i32* %12, align 4
  br label %169

169:                                              ; preds = %195, %132
  %170 = load i32, i32* %12, align 4
  %171 = load i16, i16* %8, align 2
  %172 = zext i16 %171 to i32
  %173 = icmp slt i32 %170, %172
  br i1 %173, label %174, label %198

174:                                              ; preds = %169
  %175 = load i8*, i8** %10, align 8
  %176 = load i32, i32* %11, align 4
  %177 = sub nsw i32 %176, 4
  %178 = load i32, i32* %12, align 4
  %179 = srem i32 %178, 4
  %180 = add nsw i32 %177, %179
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds i8, i8* %175, i64 %181
  %183 = load i8, i8* %182, align 1
  %184 = sext i8 %183 to i32
  %185 = load i8*, i8** %10, align 8
  %186 = load i32, i32* %11, align 4
  %187 = load i32, i32* %12, align 4
  %188 = add nsw i32 %186, %187
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds i8, i8* %185, i64 %189
  %191 = load i8, i8* %190, align 1
  %192 = sext i8 %191 to i32
  %193 = xor i32 %192, %184
  %194 = trunc i32 %193 to i8
  store i8 %194, i8* %190, align 1
  br label %195

195:                                              ; preds = %174
  %196 = load i32, i32* %12, align 4
  %197 = add nsw i32 %196, 1
  store i32 %197, i32* %12, align 4
  br label %169

198:                                              ; preds = %169
  %199 = load i16, i16* %8, align 2
  %200 = zext i16 %199 to i32
  %201 = load i32, i32* %11, align 4
  %202 = add nsw i32 %201, %200
  store i32 %202, i32* %11, align 4
  %203 = load i8*, i8** %10, align 8
  %204 = getelementptr inbounds i8, i8* %203, i64 0
  %205 = load i8, i8* %204, align 1
  %206 = sext i8 %205 to i32
  %207 = call i32 (i8*, ...) @NODE_DBG(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 %206)
  %208 = load i8*, i8** %10, align 8
  %209 = getelementptr inbounds i8, i8* %208, i64 1
  %210 = load i8, i8* %209, align 1
  %211 = sext i8 %210 to i32
  %212 = call i32 (i8*, ...) @NODE_DBG(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i32 %211)
  %213 = load i8*, i8** %10, align 8
  %214 = getelementptr inbounds i8, i8* %213, i64 2
  %215 = load i8, i8* %214, align 1
  %216 = sext i8 %215 to i32
  %217 = call i32 (i8*, ...) @NODE_DBG(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i32 %216)
  %218 = load i8*, i8** %10, align 8
  %219 = getelementptr inbounds i8, i8* %218, i64 3
  %220 = load i8, i8* %219, align 1
  %221 = sext i8 %220 to i32
  %222 = call i32 (i8*, ...) @NODE_DBG(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i32 %221)
  %223 = load i8*, i8** %10, align 8
  %224 = getelementptr inbounds i8, i8* %223, i64 4
  %225 = load i8, i8* %224, align 1
  %226 = sext i8 %225 to i32
  %227 = call i32 (i8*, ...) @NODE_DBG(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), i32 %226)
  %228 = load i8*, i8** %10, align 8
  %229 = getelementptr inbounds i8, i8* %228, i64 5
  %230 = load i8, i8* %229, align 1
  %231 = sext i8 %230 to i32
  %232 = call i32 (i8*, ...) @NODE_DBG(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0), i32 %231)
  %233 = load i8*, i8** %10, align 8
  %234 = getelementptr inbounds i8, i8* %233, i64 6
  %235 = load i8, i8* %234, align 1
  %236 = sext i8 %235 to i32
  %237 = call i32 (i8*, ...) @NODE_DBG(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0), i32 %236)
  %238 = load i8*, i8** %10, align 8
  %239 = getelementptr inbounds i8, i8* %238, i64 7
  %240 = load i8, i8* %239, align 1
  %241 = sext i8 %240 to i32
  %242 = call i32 (i8*, ...) @NODE_DBG(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0), i32 %241)
  %243 = load i8*, i8** %10, align 8
  %244 = getelementptr inbounds i8, i8* %243, i64 8
  %245 = load i8, i8* %244, align 1
  %246 = sext i8 %245 to i32
  %247 = call i32 (i8*, ...) @NODE_DBG(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0), i32 %246)
  %248 = load i8*, i8** %10, align 8
  %249 = getelementptr inbounds i8, i8* %248, i64 9
  %250 = load i8, i8* %249, align 1
  %251 = sext i8 %250 to i32
  %252 = call i32 (i8*, ...) @NODE_DBG(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i64 0, i64 0), i32 %251)
  %253 = call i32 (i8*, ...) @NODE_DBG(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i64 0, i64 0))
  %254 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %255 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %254, i32 0, i32 2
  %256 = load i64, i64* %255, align 8
  %257 = icmp ne i64 %256, 0
  br i1 %257, label %258, label %264

258:                                              ; preds = %198
  %259 = load %struct.espconn*, %struct.espconn** %5, align 8
  %260 = load i8*, i8** %10, align 8
  %261 = bitcast i8* %260 to i32*
  %262 = load i32, i32* %11, align 4
  %263 = call i32 @espconn_secure_send(%struct.espconn* %259, i32* %261, i32 %262)
  br label %270

264:                                              ; preds = %198
  %265 = load %struct.espconn*, %struct.espconn** %5, align 8
  %266 = load i8*, i8** %10, align 8
  %267 = bitcast i8* %266 to i32*
  %268 = load i32, i32* %11, align 4
  %269 = call i32 @espconn_send(%struct.espconn* %265, i32* %267, i32 %268)
  br label %270

270:                                              ; preds = %264, %258
  %271 = load i8*, i8** %10, align 8
  %272 = call i32 @os_free(i8* %271)
  br label %273

273:                                              ; preds = %270, %56, %32, %25
  ret void
}

declare dso_local i32 @NODE_DBG(i8*, ...) #1

declare dso_local i8* @calloc(i32, i32) #1

declare dso_local i32 @espconn_secure_disconnect(%struct.espconn*) #1

declare dso_local i32 @espconn_disconnect(%struct.espconn*) #1

declare dso_local i64 @os_random(...) #1

declare dso_local i32 @memcpy(i8*, i8*, i16 zeroext) #1

declare dso_local i32 @espconn_secure_send(%struct.espconn*, i32*, i32) #1

declare dso_local i32 @espconn_send(%struct.espconn*, i32*, i32) #1

declare dso_local i32 @os_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
