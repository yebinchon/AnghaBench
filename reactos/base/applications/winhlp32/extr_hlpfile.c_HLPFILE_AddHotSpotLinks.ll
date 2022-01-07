; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/winhlp32/extr_hlpfile.c_HLPFILE_AddHotSpotLinks.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/winhlp32/extr_hlpfile.c_HLPFILE_AddHotSpotLinks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.RtfData = type { i32 }
%struct.TYPE_7__ = type { i8*, %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i8*, i8*, i8*, i8* }

@.str = private unnamed_addr constant [23 x i8] c"%02x-%02x%02x {%s,%s}\0A\00", align 1
@hlp_link_macro = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@hlp_link_link = common dso_local global i32 0, align 4
@hlp_link_popup = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Couldn't find window info for %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"unknown hotsport target 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.RtfData*, %struct.TYPE_7__*, i32*, i64, i64)* @HLPFILE_AddHotSpotLinks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @HLPFILE_AddHotSpotLinks(%struct.RtfData* %0, %struct.TYPE_7__* %1, i32* %2, i64 %3, i64 %4) #0 {
  %6 = alloca %struct.RtfData*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.TYPE_6__*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  store %struct.RtfData* %0, %struct.RtfData** %6, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %7, align 8
  store i32* %2, i32** %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  %19 = load i64, i64* %9, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %5
  %22 = load i64, i64* %10, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %21, %5
  br label %292

25:                                               ; preds = %21
  %26 = load i64, i64* %10, align 8
  %27 = load i32*, i32** %8, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 %26
  store i32* %28, i32** %8, align 8
  %29 = load i32*, i32** %8, align 8
  %30 = call i8* @GET_USHORT(i32* %29, i32 1)
  %31 = ptrtoint i8* %30 to i32
  store i32 %31, i32* %12, align 4
  %32 = load i32*, i32** %8, align 8
  %33 = call i64 @GET_UINT(i32* %32, i32 3)
  store i64 %33, i64* %13, align 8
  %34 = load i32*, i32** %8, align 8
  %35 = bitcast i32* %34 to i8*
  %36 = getelementptr inbounds i8, i8* %35, i64 7
  %37 = load i32, i32* %12, align 4
  %38 = mul i32 15, %37
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds i8, i8* %36, i64 %39
  %41 = load i64, i64* %13, align 8
  %42 = getelementptr inbounds i8, i8* %40, i64 %41
  store i8* %42, i8** %14, align 8
  store i32 0, i32* %11, align 4
  br label %43

43:                                               ; preds = %289, %25
  %44 = load i32, i32* %11, align 4
  %45 = load i32, i32* %12, align 4
  %46 = icmp ult i32 %44, %45
  br i1 %46, label %47, label %292

47:                                               ; preds = %43
  %48 = load i32*, i32** %8, align 8
  %49 = load i32, i32* %11, align 4
  %50 = mul i32 15, %49
  %51 = add i32 7, %50
  %52 = add i32 %51, 0
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %48, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = load i32*, i32** %8, align 8
  %57 = load i32, i32* %11, align 4
  %58 = mul i32 15, %57
  %59 = add i32 7, %58
  %60 = add i32 %59, 1
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %56, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = load i32*, i32** %8, align 8
  %65 = load i32, i32* %11, align 4
  %66 = mul i32 15, %65
  %67 = add i32 7, %66
  %68 = add i32 %67, 2
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %64, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = load i8*, i8** %14, align 8
  %73 = call i32 @debugstr_a(i8* %72)
  %74 = load i8*, i8** %14, align 8
  %75 = load i8*, i8** %14, align 8
  %76 = call i32 @strlen(i8* %75)
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i8, i8* %74, i64 %77
  %79 = getelementptr inbounds i8, i8* %78, i64 1
  %80 = call i32 @debugstr_a(i8* %79)
  %81 = call i32 @WINE_TRACE(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %55, i32 %63, i32 %71, i32 %73, i32 %80)
  %82 = load i8*, i8** %14, align 8
  %83 = call i32 @strlen(i8* %82)
  %84 = add nsw i32 %83, 1
  %85 = load i8*, i8** %14, align 8
  %86 = sext i32 %84 to i64
  %87 = getelementptr inbounds i8, i8* %85, i64 %86
  store i8* %87, i8** %14, align 8
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %15, align 8
  %88 = load i32*, i32** %8, align 8
  %89 = load i32, i32* %11, align 4
  %90 = mul i32 15, %89
  %91 = add i32 7, %90
  %92 = add i32 %91, 0
  %93 = zext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %88, i64 %93
  %95 = load i32, i32* %94, align 4
  switch i32 %95, label %236 [
    i32 200, label %96
    i32 230, label %104
    i32 231, label %104
    i32 238, label %131
    i32 239, label %131
  ]

96:                                               ; preds = %47
  %97 = load %struct.RtfData*, %struct.RtfData** %6, align 8
  %98 = load i32, i32* @hlp_link_macro, align 4
  %99 = load i8*, i8** %14, align 8
  %100 = load i32, i32* @FALSE, align 4
  %101 = load i32, i32* @TRUE, align 4
  %102 = call i64 @HLPFILE_AllocLink(%struct.RtfData* %97, i32 %98, i8* %99, i32 -1, i32 0, i32 %100, i32 %101, i32 -1)
  %103 = inttoptr i64 %102 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %103, %struct.TYPE_6__** %15, align 8
  br label %246

104:                                              ; preds = %47, %47
  %105 = load %struct.RtfData*, %struct.RtfData** %6, align 8
  %106 = load i32*, i32** %8, align 8
  %107 = load i32, i32* %11, align 4
  %108 = mul i32 15, %107
  %109 = add i32 7, %108
  %110 = add i32 %109, 0
  %111 = zext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %106, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = and i32 %113, 1
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %104
  %117 = load i32, i32* @hlp_link_link, align 4
  br label %120

118:                                              ; preds = %104
  %119 = load i32, i32* @hlp_link_popup, align 4
  br label %120

120:                                              ; preds = %118, %116
  %121 = phi i32 [ %117, %116 ], [ %119, %118 ]
  %122 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i32 0, i32 0
  %124 = load i8*, i8** %123, align 8
  %125 = load i8*, i8** %14, align 8
  %126 = call i32 @HLPFILE_Hash(i8* %125)
  %127 = load i32, i32* @FALSE, align 4
  %128 = load i32, i32* @TRUE, align 4
  %129 = call i64 @HLPFILE_AllocLink(%struct.RtfData* %105, i32 %121, i8* %124, i32 -1, i32 %126, i32 %127, i32 %128, i32 -1)
  %130 = inttoptr i64 %129 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %130, %struct.TYPE_6__** %15, align 8
  br label %246

131:                                              ; preds = %47, %47
  %132 = load i8*, i8** %14, align 8
  %133 = call i8* @strchr(i8* %132, i8 signext 62)
  store i8* %133, i8** %16, align 8
  store i32 -1, i32* %17, align 4
  store i8* null, i8** %18, align 8
  %134 = load i8*, i8** %16, align 8
  %135 = icmp ne i8* %134, null
  br i1 %135, label %136, label %198

136:                                              ; preds = %131
  %137 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 8
  %140 = sub nsw i32 %139, 1
  store i32 %140, i32* %17, align 4
  br label %141

141:                                              ; preds = %159, %136
  %142 = load i32, i32* %17, align 4
  %143 = icmp sge i32 %142, 0
  br i1 %143, label %144, label %162

144:                                              ; preds = %141
  %145 = load i8*, i8** %16, align 8
  %146 = getelementptr inbounds i8, i8* %145, i64 1
  %147 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %148 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %147, i32 0, i32 1
  %149 = load %struct.TYPE_5__*, %struct.TYPE_5__** %148, align 8
  %150 = load i32, i32* %17, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %149, i64 %151
  %153 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = call i32 @strcmp(i8* %146, i32 %154)
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %158, label %157

157:                                              ; preds = %144
  br label %162

158:                                              ; preds = %144
  br label %159

159:                                              ; preds = %158
  %160 = load i32, i32* %17, align 4
  %161 = add nsw i32 %160, -1
  store i32 %161, i32* %17, align 4
  br label %141

162:                                              ; preds = %157, %141
  %163 = load i32, i32* %17, align 4
  %164 = icmp eq i32 %163, -1
  br i1 %164, label %165, label %169

165:                                              ; preds = %162
  %166 = load i8*, i8** %16, align 8
  %167 = call i32 @debugstr_a(i8* %166)
  %168 = call i32 @WINE_WARN(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %167)
  br label %169

169:                                              ; preds = %165, %162
  %170 = call i32 (...) @GetProcessHeap()
  %171 = load i8*, i8** %16, align 8
  %172 = load i8*, i8** %14, align 8
  %173 = ptrtoint i8* %171 to i64
  %174 = ptrtoint i8* %172 to i64
  %175 = sub i64 %173, %174
  %176 = add nsw i64 %175, 1
  %177 = trunc i64 %176 to i32
  %178 = call i8* @HeapAlloc(i32 %170, i32 0, i32 %177)
  store i8* %178, i8** %18, align 8
  %179 = icmp ne i8* %178, null
  br i1 %179, label %180, label %197

180:                                              ; preds = %169
  %181 = load i8*, i8** %18, align 8
  %182 = load i8*, i8** %14, align 8
  %183 = load i8*, i8** %16, align 8
  %184 = load i8*, i8** %14, align 8
  %185 = ptrtoint i8* %183 to i64
  %186 = ptrtoint i8* %184 to i64
  %187 = sub i64 %185, %186
  %188 = trunc i64 %187 to i32
  %189 = call i32 @memcpy(i8* %181, i8* %182, i32 %188)
  %190 = load i8*, i8** %18, align 8
  %191 = load i8*, i8** %16, align 8
  %192 = load i8*, i8** %14, align 8
  %193 = ptrtoint i8* %191 to i64
  %194 = ptrtoint i8* %192 to i64
  %195 = sub i64 %193, %194
  %196 = getelementptr inbounds i8, i8* %190, i64 %195
  store i8 0, i8* %196, align 1
  br label %197

197:                                              ; preds = %180, %169
  br label %198

198:                                              ; preds = %197, %131
  %199 = load %struct.RtfData*, %struct.RtfData** %6, align 8
  %200 = load i32*, i32** %8, align 8
  %201 = load i32, i32* %11, align 4
  %202 = mul i32 15, %201
  %203 = add i32 7, %202
  %204 = add i32 %203, 0
  %205 = zext i32 %204 to i64
  %206 = getelementptr inbounds i32, i32* %200, i64 %205
  %207 = load i32, i32* %206, align 4
  %208 = and i32 %207, 1
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %212

210:                                              ; preds = %198
  %211 = load i32, i32* @hlp_link_link, align 4
  br label %214

212:                                              ; preds = %198
  %213 = load i32, i32* @hlp_link_popup, align 4
  br label %214

214:                                              ; preds = %212, %210
  %215 = phi i32 [ %211, %210 ], [ %213, %212 ]
  %216 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %217 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %216, i32 0, i32 0
  %218 = load i8*, i8** %217, align 8
  %219 = load i8*, i8** %18, align 8
  %220 = icmp ne i8* %219, null
  br i1 %220, label %221, label %223

221:                                              ; preds = %214
  %222 = load i8*, i8** %18, align 8
  br label %225

223:                                              ; preds = %214
  %224 = load i8*, i8** %14, align 8
  br label %225

225:                                              ; preds = %223, %221
  %226 = phi i8* [ %222, %221 ], [ %224, %223 ]
  %227 = call i32 @HLPFILE_Hash(i8* %226)
  %228 = load i32, i32* @FALSE, align 4
  %229 = load i32, i32* @TRUE, align 4
  %230 = load i32, i32* %17, align 4
  %231 = call i64 @HLPFILE_AllocLink(%struct.RtfData* %199, i32 %215, i8* %218, i32 -1, i32 %227, i32 %228, i32 %229, i32 %230)
  %232 = inttoptr i64 %231 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %232, %struct.TYPE_6__** %15, align 8
  %233 = call i32 (...) @GetProcessHeap()
  %234 = load i8*, i8** %18, align 8
  %235 = call i32 @HeapFree(i32 %233, i32 0, i8* %234)
  br label %246

236:                                              ; preds = %47
  %237 = load i32*, i32** %8, align 8
  %238 = load i32, i32* %11, align 4
  %239 = mul i32 15, %238
  %240 = add i32 7, %239
  %241 = add i32 %240, 0
  %242 = zext i32 %241 to i64
  %243 = getelementptr inbounds i32, i32* %237, i64 %242
  %244 = load i32, i32* %243, align 4
  %245 = call i32 @WINE_FIXME(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %244)
  br label %246

246:                                              ; preds = %236, %225, %120, %96
  %247 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %248 = icmp ne %struct.TYPE_6__* %247, null
  br i1 %248, label %249, label %282

249:                                              ; preds = %246
  %250 = load i32*, i32** %8, align 8
  %251 = load i32, i32* %11, align 4
  %252 = mul i32 15, %251
  %253 = add i32 7, %252
  %254 = add i32 %253, 3
  %255 = call i8* @GET_USHORT(i32* %250, i32 %254)
  %256 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %257 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %256, i32 0, i32 3
  store i8* %255, i8** %257, align 8
  %258 = load i32*, i32** %8, align 8
  %259 = load i32, i32* %11, align 4
  %260 = mul i32 15, %259
  %261 = add i32 7, %260
  %262 = add i32 %261, 5
  %263 = call i8* @GET_USHORT(i32* %258, i32 %262)
  %264 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %265 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %264, i32 0, i32 2
  store i8* %263, i8** %265, align 8
  %266 = load i32*, i32** %8, align 8
  %267 = load i32, i32* %11, align 4
  %268 = mul i32 15, %267
  %269 = add i32 7, %268
  %270 = add i32 %269, 7
  %271 = call i8* @GET_USHORT(i32* %266, i32 %270)
  %272 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %273 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %272, i32 0, i32 1
  store i8* %271, i8** %273, align 8
  %274 = load i32*, i32** %8, align 8
  %275 = load i32, i32* %11, align 4
  %276 = mul i32 15, %275
  %277 = add i32 7, %276
  %278 = add i32 %277, 9
  %279 = call i8* @GET_USHORT(i32* %274, i32 %278)
  %280 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %281 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %280, i32 0, i32 0
  store i8* %279, i8** %281, align 8
  br label %282

282:                                              ; preds = %249, %246
  %283 = load i8*, i8** %14, align 8
  %284 = call i32 @strlen(i8* %283)
  %285 = add nsw i32 %284, 1
  %286 = load i8*, i8** %14, align 8
  %287 = sext i32 %285 to i64
  %288 = getelementptr inbounds i8, i8* %286, i64 %287
  store i8* %288, i8** %14, align 8
  br label %289

289:                                              ; preds = %282
  %290 = load i32, i32* %11, align 4
  %291 = add i32 %290, 1
  store i32 %291, i32* %11, align 4
  br label %43

292:                                              ; preds = %24, %43
  ret void
}

declare dso_local i8* @GET_USHORT(i32*, i32) #1

declare dso_local i64 @GET_UINT(i32*, i32) #1

declare dso_local i32 @WINE_TRACE(i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @debugstr_a(i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @HLPFILE_AllocLink(%struct.RtfData*, i32, i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @HLPFILE_Hash(i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @strcmp(i8*, i32) #1

declare dso_local i32 @WINE_WARN(i8*, i32) #1

declare dso_local i8* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @HeapFree(i32, i32, i8*) #1

declare dso_local i32 @WINE_FIXME(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
