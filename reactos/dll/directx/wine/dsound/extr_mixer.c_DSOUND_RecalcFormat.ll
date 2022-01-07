; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/dsound/extr_mixer.c_DSOUND_RecalcFormat.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/dsound/extr_mixer.c_DSOUND_RecalcFormat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, %struct.TYPE_14__*, i32*, %struct.TYPE_12__*, i8* }
%struct.TYPE_14__ = type { i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, i32, i32, i64 }
%struct.TYPE_12__ = type { i32, i32, i64 }
%struct.TYPE_15__ = type { i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64 }

@TRUE = common dso_local global i8* null, align 8
@FALSE = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [6 x i8] c"(%p)\0A\00", align 1
@WAVE_FORMAT_IEEE_FLOAT = common dso_local global i64 0, align 8
@WAVE_FORMAT_EXTENSIBLE = common dso_local global i64 0, align 8
@KSDATAFORMAT_SUBTYPE_IEEE_FLOAT = common dso_local global i32 0, align 4
@convertbpp = common dso_local global i8*** null, align 8
@ds_snd_shadow_maxsize = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @DSOUND_RecalcFormat(%struct.TYPE_16__* %0) #0 {
  %2 = alloca %struct.TYPE_16__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %2, align 8
  %9 = load i8*, i8** @TRUE, align 8
  %10 = ptrtoint i8* %9 to i32
  store i32 %10, i32* %3, align 4
  %11 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 11
  %16 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %13, %20
  %22 = zext i1 %21 to i32
  store i32 %22, i32* %4, align 4
  %23 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %23, i32 0, i32 13
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %5, align 4
  %28 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %28, i32 0, i32 11
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i32 0, i32 1
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %6, align 4
  %35 = load i8*, i8** @FALSE, align 8
  %36 = ptrtoint i8* %35 to i32
  store i32 %36, i32* %8, align 4
  %37 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %38 = call i32 @TRACE(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), %struct.TYPE_16__* %37)
  %39 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %39, i32 0, i32 13
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %40, align 8
  %42 = bitcast %struct.TYPE_12__* %41 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %42, %struct.TYPE_15__** %7, align 8
  %43 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @WAVE_FORMAT_IEEE_FLOAT, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %61, label %49

49:                                               ; preds = %1
  %50 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @WAVE_FORMAT_EXTENSIBLE, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %64

56:                                               ; preds = %49
  %57 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %57, i32 0, i32 0
  %59 = call i64 @IsEqualGUID(i32* %58, i32* @KSDATAFORMAT_SUBTYPE_IEEE_FLOAT)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %56, %1
  %62 = load i8*, i8** @TRUE, align 8
  %63 = ptrtoint i8* %62 to i32
  store i32 %63, i32* %8, align 4
  br label %64

64:                                               ; preds = %61, %56, %49
  %65 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %66 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = sdiv i32 %67, 100
  %69 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %70 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %69, i32 0, i32 13
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = mul nsw i32 %68, %73
  %75 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %76 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %75, i32 0, i32 1
  store i32 %74, i32* %76, align 4
  %77 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %78 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %77, i32 0, i32 13
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %83 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %82, i32 0, i32 11
  %84 = load %struct.TYPE_14__*, %struct.TYPE_14__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %84, i32 0, i32 1
  %86 = load %struct.TYPE_13__*, %struct.TYPE_13__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = icmp eq i32 %81, %88
  br i1 %89, label %90, label %113

90:                                               ; preds = %64
  %91 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %92 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %91, i32 0, i32 13
  %93 = load %struct.TYPE_12__*, %struct.TYPE_12__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %93, i32 0, i32 2
  %95 = load i64, i64* %94, align 8
  %96 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %97 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %96, i32 0, i32 11
  %98 = load %struct.TYPE_14__*, %struct.TYPE_14__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %98, i32 0, i32 1
  %100 = load %struct.TYPE_13__*, %struct.TYPE_13__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %100, i32 0, i32 3
  %102 = load i64, i64* %101, align 8
  %103 = icmp eq i64 %95, %102
  br i1 %103, label %104, label %113

104:                                              ; preds = %90
  %105 = load i32, i32* %4, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %113, label %107

107:                                              ; preds = %104
  %108 = load i32, i32* %8, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %113, label %110

110:                                              ; preds = %107
  %111 = load i8*, i8** @FALSE, align 8
  %112 = ptrtoint i8* %111 to i32
  store i32 %112, i32* %3, align 4
  br label %113

113:                                              ; preds = %110, %107, %104, %90, %64
  %114 = call i32 (...) @GetProcessHeap()
  %115 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %116 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %115, i32 0, i32 12
  %117 = load i32*, i32** %116, align 8
  %118 = call i32 @HeapFree(i32 %114, i32 0, i32* %117)
  %119 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %120 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %119, i32 0, i32 12
  store i32* null, i32** %120, align 8
  %121 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %122 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %121, i32 0, i32 4
  store i32 0, i32* %122, align 8
  %123 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %124 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %123, i32 0, i32 3
  store i32 0, i32* %124, align 4
  %125 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %126 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %125, i32 0, i32 2
  store i32 0, i32* %126, align 8
  %127 = load i32, i32* %4, align 4
  %128 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %129 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %128, i32 0, i32 5
  store i32 %127, i32* %129, align 4
  %130 = load i32, i32* %8, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %150

132:                                              ; preds = %113
  %133 = load i8***, i8**** @convertbpp, align 8
  %134 = getelementptr inbounds i8**, i8*** %133, i64 4
  %135 = load i8**, i8*** %134, align 8
  %136 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %137 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %136, i32 0, i32 11
  %138 = load %struct.TYPE_14__*, %struct.TYPE_14__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %138, i32 0, i32 1
  %140 = load %struct.TYPE_13__*, %struct.TYPE_13__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 8
  %143 = sdiv i32 %142, 8
  %144 = sub nsw i32 %143, 1
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i8*, i8** %135, i64 %145
  %147 = load i8*, i8** %146, align 8
  %148 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %149 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %148, i32 0, i32 14
  store i8* %147, i8** %149, align 8
  br label %176

150:                                              ; preds = %113
  %151 = load i8***, i8**** @convertbpp, align 8
  %152 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %153 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %152, i32 0, i32 13
  %154 = load %struct.TYPE_12__*, %struct.TYPE_12__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = sdiv i32 %156, 8
  %158 = sub nsw i32 %157, 1
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i8**, i8*** %151, i64 %159
  %161 = load i8**, i8*** %160, align 8
  %162 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %163 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %162, i32 0, i32 11
  %164 = load %struct.TYPE_14__*, %struct.TYPE_14__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %164, i32 0, i32 1
  %166 = load %struct.TYPE_13__*, %struct.TYPE_13__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %166, i32 0, i32 2
  %168 = load i32, i32* %167, align 8
  %169 = sdiv i32 %168, 8
  %170 = sub nsw i32 %169, 1
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i8*, i8** %161, i64 %171
  %173 = load i8*, i8** %172, align 8
  %174 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %175 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %174, i32 0, i32 14
  store i8* %173, i8** %175, align 8
  br label %176

176:                                              ; preds = %150, %132
  %177 = load i8*, i8** @FALSE, align 8
  %178 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %179 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %178, i32 0, i32 10
  store i8* %177, i8** %179, align 8
  %180 = load i32, i32* %3, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %260

182:                                              ; preds = %176
  %183 = load i32, i32* %4, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %188

185:                                              ; preds = %182
  %186 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %187 = call i32 @DSOUND_RecalcFreqAcc(%struct.TYPE_16__* %186)
  br label %198

188:                                              ; preds = %182
  %189 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %190 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %189, i32 0, i32 7
  %191 = load i32, i32* %190, align 4
  %192 = load i32, i32* %5, align 4
  %193 = sdiv i32 %191, %192
  %194 = load i32, i32* %6, align 4
  %195 = mul nsw i32 %193, %194
  %196 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %197 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %196, i32 0, i32 6
  store i32 %195, i32* %197, align 8
  br label %198

198:                                              ; preds = %188, %185
  %199 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %200 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %199, i32 0, i32 6
  %201 = load i32, i32* %200, align 8
  %202 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %203 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %202, i32 0, i32 2
  store i32 %201, i32* %203, align 8
  %204 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %205 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %204, i32 0, i32 2
  %206 = load i32, i32* %205, align 8
  %207 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %208 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %207, i32 0, i32 11
  %209 = load %struct.TYPE_14__*, %struct.TYPE_14__** %208, align 8
  %210 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 8
  %212 = icmp sle i32 %206, %211
  br i1 %212, label %221, label %213

213:                                              ; preds = %198
  %214 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %215 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %214, i32 0, i32 2
  %216 = load i32, i32* %215, align 8
  %217 = load i32, i32* @ds_snd_shadow_maxsize, align 4
  %218 = mul nsw i32 %217, 1024
  %219 = mul nsw i32 %218, 1024
  %220 = icmp slt i32 %216, %219
  br i1 %220, label %221, label %232

221:                                              ; preds = %213, %198
  %222 = load i32, i32* @ds_snd_shadow_maxsize, align 4
  %223 = icmp sge i32 %222, 0
  br i1 %223, label %224, label %232

224:                                              ; preds = %221
  %225 = call i32 (...) @GetProcessHeap()
  %226 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %227 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %226, i32 0, i32 2
  %228 = load i32, i32* %227, align 8
  %229 = call i32* @HeapAlloc(i32 %225, i32 0, i32 %228)
  %230 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %231 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %230, i32 0, i32 12
  store i32* %229, i32** %231, align 8
  br label %232

232:                                              ; preds = %224, %221, %213
  %233 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %234 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %233, i32 0, i32 12
  %235 = load i32*, i32** %234, align 8
  %236 = icmp ne i32* %235, null
  br i1 %236, label %237, label %255

237:                                              ; preds = %232
  %238 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %239 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %238, i32 0, i32 12
  %240 = load i32*, i32** %239, align 8
  %241 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %242 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %241, i32 0, i32 6
  %243 = load i32, i32* %242, align 8
  %244 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %245 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %244, i32 0, i32 11
  %246 = load %struct.TYPE_14__*, %struct.TYPE_14__** %245, align 8
  %247 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %246, i32 0, i32 1
  %248 = load %struct.TYPE_13__*, %struct.TYPE_13__** %247, align 8
  %249 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %248, i32 0, i32 2
  %250 = load i32, i32* %249, align 8
  %251 = icmp eq i32 %250, 8
  %252 = zext i1 %251 to i64
  %253 = select i1 %251, i32 128, i32 0
  %254 = call i32 @FillMemory(i32* %240, i32 %243, i32 %253)
  br label %259

255:                                              ; preds = %232
  %256 = load i8*, i8** @TRUE, align 8
  %257 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %258 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %257, i32 0, i32 10
  store i8* %256, i8** %258, align 8
  br label %259

259:                                              ; preds = %255, %237
  br label %268

260:                                              ; preds = %176
  %261 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %262 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %261, i32 0, i32 7
  %263 = load i32, i32* %262, align 4
  %264 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %265 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %264, i32 0, i32 6
  store i32 %263, i32* %265, align 8
  %266 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %267 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %266, i32 0, i32 2
  store i32 %263, i32* %267, align 8
  br label %268

268:                                              ; preds = %260, %259
  %269 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %270 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %271 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %270, i32 0, i32 8
  %272 = load i32, i32* %271, align 8
  %273 = call i32 @DSOUND_secpos_to_bufpos(%struct.TYPE_16__* %269, i32 %272, i32 0, i32* null)
  %274 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %275 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %274, i32 0, i32 9
  store i32 %273, i32* %275, align 4
  ret void
}

declare dso_local i32 @TRACE(i8*, %struct.TYPE_16__*) #1

declare dso_local i64 @IsEqualGUID(i32*, i32*) #1

declare dso_local i32 @HeapFree(i32, i32, i32*) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @DSOUND_RecalcFreqAcc(%struct.TYPE_16__*) #1

declare dso_local i32* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @FillMemory(i32*, i32, i32) #1

declare dso_local i32 @DSOUND_secpos_to_bufpos(%struct.TYPE_16__*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
