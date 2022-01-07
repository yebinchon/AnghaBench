; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/quartz/extr_avisplit.c_AVISplitter_InputPin_PreConnect.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/quartz/extr_avisplit.c_AVISplitter_InputPin_PreConnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_30__ = type { i32, i32, i32, i64 }
%struct.TYPE_28__ = type { i64, i32, i8*, %struct.TYPE_25__ }
%struct.TYPE_25__ = type { %struct.TYPE_24__ }
%struct.TYPE_24__ = type { i64 }
%struct.TYPE_26__ = type { i64, i64, i32 }
%struct.TYPE_27__ = type { i32, i32 }
%struct.TYPE_29__ = type { i64, %struct.TYPE_21__, %struct.TYPE_23__, i32*, %struct.TYPE_22__*, i32, i8* }
%struct.TYPE_21__ = type { i32, i32 }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_22__ = type { i64 }

@FOURCC_RIFF = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"Input stream not a RIFF file\0A\00", align 1
@E_FAIL = common dso_local global i64 0, align 8
@formtypeAVI = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [35 x i8] c"Input stream not an AVI RIFF file\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"Expected LIST chunk, but got %.04s\0A\00", align 1
@listtypeAVIHEADER = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [34 x i8] c"Header list expected. Got: %.04s\0A\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"unrecognised header list type: %.04s\0A\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"Avi Header wrong size!\0A\00", align 1
@S_OK = common dso_local global i64 0, align 8
@listtypeAVIMOVIE = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [41 x i8] c"Failed to find LIST chunk from AVI file\0A\00", align 1
@.str.7 = private unnamed_addr constant [39 x i8] c"File smaller (%s) then EndOfFile (%s)\0A\00", align 1
@ckidAVIOLDINDEX = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [39 x i8] c"%d indexes expected, but only have %d\0A\00", align 1
@AVIF_MUSTUSEINDEX = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [28 x i8] c"No usable index was found!\0A\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"AVI File ok\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i32*, %struct.TYPE_30__*)* @AVISplitter_InputPin_PreConnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @AVISplitter_InputPin_PreConnect(i32* %0, i32* %1, %struct.TYPE_30__* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_30__*, align 8
  %8 = alloca %struct.TYPE_28__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_26__, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_27__*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_29__*, align 8
  %19 = alloca %struct.TYPE_26__*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.TYPE_30__* %2, %struct.TYPE_30__** %7, align 8
  %20 = load i32*, i32** %5, align 8
  %21 = call %struct.TYPE_28__* @impl_PullPin_from_IPin(i32* %20)
  store %struct.TYPE_28__* %21, %struct.TYPE_28__** %8, align 8
  store i64 0, i64* %11, align 8
  %22 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %22, i32 0, i32 3
  %24 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = inttoptr i64 %26 to %struct.TYPE_29__*
  store %struct.TYPE_29__* %27, %struct.TYPE_29__** %18, align 8
  %28 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load i64, i64* %11, align 8
  %32 = bitcast %struct.TYPE_26__* %10 to i32*
  %33 = call i64 @IAsyncReader_SyncRead(i32 %30, i64 %31, i32 24, i32* %32)
  store i64 %33, i64* %9, align 8
  %34 = load i64, i64* %11, align 8
  %35 = add i64 %34, 24
  store i64 %35, i64* %11, align 8
  %36 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %10, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @FOURCC_RIFF, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %3
  %41 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %42 = load i64, i64* @E_FAIL, align 8
  store i64 %42, i64* %4, align 8
  br label %444

43:                                               ; preds = %3
  %44 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %10, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @formtypeAVI, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %43
  %49 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %50 = load i64, i64* @E_FAIL, align 8
  store i64 %50, i64* %4, align 8
  br label %444

51:                                               ; preds = %43
  %52 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = load i64, i64* %11, align 8
  %56 = bitcast %struct.TYPE_26__* %10 to i32*
  %57 = call i64 @IAsyncReader_SyncRead(i32 %54, i64 %55, i32 24, i32* %56)
  store i64 %57, i64* %9, align 8
  %58 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %10, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 132
  br i1 %60, label %61, label %66

61:                                               ; preds = %51
  %62 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %10, i32 0, i32 0
  %63 = ptrtoint i64* %62 to i32
  %64 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %63)
  %65 = load i64, i64* @E_FAIL, align 8
  store i64 %65, i64* %4, align 8
  br label %444

66:                                               ; preds = %51
  %67 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %10, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @listtypeAVIHEADER, align 8
  %70 = icmp ne i64 %68, %69
  br i1 %70, label %71, label %76

71:                                               ; preds = %66
  %72 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %10, i32 0, i32 1
  %73 = ptrtoint i64* %72 to i32
  %74 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %73)
  %75 = load i64, i64* @E_FAIL, align 8
  store i64 %75, i64* %4, align 8
  br label %444

76:                                               ; preds = %66
  %77 = call i32 (...) @GetProcessHeap()
  %78 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %10, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = sext i32 %79 to i64
  %81 = sub i64 %80, 24
  %82 = add i64 %81, 8
  %83 = trunc i64 %82 to i32
  %84 = call i32* @HeapAlloc(i32 %77, i32 0, i32 %83)
  store i32* %84, i32** %12, align 8
  %85 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %86 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = load i64, i64* %11, align 8
  %89 = add i64 %88, 24
  %90 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %10, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = sext i32 %91 to i64
  %93 = sub i64 %92, 24
  %94 = add i64 %93, 8
  %95 = trunc i64 %94 to i32
  %96 = load i32*, i32** %12, align 8
  %97 = call i64 @IAsyncReader_SyncRead(i32 %87, i64 %89, i32 %95, i32* %96)
  store i64 %97, i64* %9, align 8
  %98 = load %struct.TYPE_29__*, %struct.TYPE_29__** %18, align 8
  %99 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %99, i32 0, i32 0
  store i32 0, i32* %100, align 8
  %101 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %102 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %101, i32 0, i32 0
  store i32 131072, i32* %102, align 8
  %103 = load i32*, i32** %12, align 8
  %104 = bitcast i32* %103 to %struct.TYPE_27__*
  store %struct.TYPE_27__* %104, %struct.TYPE_27__** %13, align 8
  br label %105

105:                                              ; preds = %165, %76
  %106 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %107 = bitcast %struct.TYPE_27__* %106 to i32*
  %108 = getelementptr inbounds i32, i32* %107, i64 8
  %109 = load i32*, i32** %12, align 8
  %110 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %10, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %109, i64 %112
  %114 = icmp ult i32* %108, %113
  br i1 %114, label %115, label %175

115:                                              ; preds = %105
  %116 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %117 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  switch i32 %118, label %159 [
    i32 130, label %119
    i32 132, label %124
    i32 131, label %158
  ]

119:                                              ; preds = %115
  %120 = load %struct.TYPE_29__*, %struct.TYPE_29__** %18, align 8
  %121 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %120, i32 0, i32 1
  %122 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %123 = call i32 @memcpy(%struct.TYPE_21__* %121, %struct.TYPE_27__* %122, i32 8)
  br label %164

124:                                              ; preds = %115
  %125 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %126 = bitcast %struct.TYPE_27__* %125 to %struct.TYPE_26__*
  store %struct.TYPE_26__* %126, %struct.TYPE_26__** %19, align 8
  %127 = load %struct.TYPE_26__*, %struct.TYPE_26__** %19, align 8
  %128 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %127, i32 0, i32 1
  %129 = load i64, i64* %128, align 8
  switch i64 %129, label %157 [
    i64 128, label %130
    i64 129, label %144
  ]

130:                                              ; preds = %124
  %131 = load %struct.TYPE_29__*, %struct.TYPE_29__** %18, align 8
  %132 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %133 = bitcast %struct.TYPE_27__* %132 to i32*
  %134 = getelementptr inbounds i32, i32* %133, i64 24
  %135 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %136 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = sext i32 %137 to i64
  %139 = add i64 %138, 8
  %140 = sub i64 %139, 24
  %141 = trunc i64 %140 to i32
  %142 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %143 = call i64 @AVISplitter_ProcessStreamList(%struct.TYPE_29__* %131, i32* %134, i32 %141, %struct.TYPE_30__* %142)
  store i64 %143, i64* %9, align 8
  br label %157

144:                                              ; preds = %124
  %145 = load %struct.TYPE_29__*, %struct.TYPE_29__** %18, align 8
  %146 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %147 = bitcast %struct.TYPE_27__* %146 to i32*
  %148 = getelementptr inbounds i32, i32* %147, i64 24
  %149 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %150 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = sext i32 %151 to i64
  %153 = add i64 %152, 8
  %154 = sub i64 %153, 24
  %155 = trunc i64 %154 to i32
  %156 = call i64 @AVISplitter_ProcessODML(%struct.TYPE_29__* %145, i32* %148, i32 %155)
  store i64 %156, i64* %9, align 8
  br label %157

157:                                              ; preds = %124, %144, %130
  br label %164

158:                                              ; preds = %115
  br label %164

159:                                              ; preds = %115
  %160 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %161 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %160, i32 0, i32 1
  %162 = ptrtoint i32* %161 to i32
  %163 = call i32 (i8*, ...) @FIXME(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), i32 %162)
  br label %164

164:                                              ; preds = %159, %158, %157, %119
  br label %165

165:                                              ; preds = %164
  %166 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %167 = bitcast %struct.TYPE_27__* %166 to i32*
  %168 = getelementptr inbounds i32, i32* %167, i64 8
  %169 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %170 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i32, i32* %168, i64 %172
  %174 = bitcast i32* %173 to %struct.TYPE_27__*
  store %struct.TYPE_27__* %174, %struct.TYPE_27__** %13, align 8
  br label %105

175:                                              ; preds = %105
  %176 = call i32 (...) @GetProcessHeap()
  %177 = load i32*, i32** %12, align 8
  %178 = call i32 @HeapFree(i32 %176, i32 0, i32* %177)
  %179 = load %struct.TYPE_29__*, %struct.TYPE_29__** %18, align 8
  %180 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %179, i32 0, i32 1
  %181 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = sext i32 %182 to i64
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %188

185:                                              ; preds = %175
  %186 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0))
  %187 = load i64, i64* @E_FAIL, align 8
  store i64 %187, i64* %4, align 8
  br label %444

188:                                              ; preds = %175
  br label %189

189:                                              ; preds = %217, %188
  %190 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %10, i32 0, i32 2
  %191 = load i32, i32* %190, align 8
  %192 = sext i32 %191 to i64
  %193 = add i64 8, %192
  %194 = load i64, i64* %11, align 8
  %195 = add i64 %194, %193
  store i64 %195, i64* %11, align 8
  %196 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %197 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 8
  %199 = load i64, i64* %11, align 8
  %200 = bitcast %struct.TYPE_26__* %10 to i32*
  %201 = call i64 @IAsyncReader_SyncRead(i32 %198, i64 %199, i32 24, i32* %200)
  store i64 %201, i64* %9, align 8
  br label %202

202:                                              ; preds = %189
  %203 = load i64, i64* %9, align 8
  %204 = load i64, i64* @S_OK, align 8
  %205 = icmp eq i64 %203, %204
  br i1 %205, label %206, label %217

206:                                              ; preds = %202
  %207 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %10, i32 0, i32 0
  %208 = load i64, i64* %207, align 8
  %209 = icmp ne i64 %208, 132
  br i1 %209, label %215, label %210

210:                                              ; preds = %206
  %211 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %10, i32 0, i32 1
  %212 = load i64, i64* %211, align 8
  %213 = load i64, i64* @listtypeAVIMOVIE, align 8
  %214 = icmp ne i64 %212, %213
  br label %215

215:                                              ; preds = %210, %206
  %216 = phi i1 [ true, %206 ], [ %214, %210 ]
  br label %217

217:                                              ; preds = %215, %202
  %218 = phi i1 [ false, %202 ], [ %216, %215 ]
  br i1 %218, label %189, label %219

219:                                              ; preds = %217
  %220 = load i64, i64* %9, align 8
  %221 = load i64, i64* @S_OK, align 8
  %222 = icmp ne i64 %220, %221
  br i1 %222, label %223, label %226

223:                                              ; preds = %219
  %224 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0))
  %225 = load i64, i64* @E_FAIL, align 8
  store i64 %225, i64* %4, align 8
  br label %444

226:                                              ; preds = %219
  %227 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %228 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %227, i32 0, i32 1
  %229 = load i32, i32* %228, align 8
  %230 = call i32 @IAsyncReader_Length(i32 %229, i64* %14, i64* %15)
  %231 = load i64, i64* %11, align 8
  %232 = add i64 %231, 24
  %233 = call i8* @MEDIATIME_FROM_BYTES(i64 %232)
  %234 = load %struct.TYPE_29__*, %struct.TYPE_29__** %18, align 8
  %235 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %234, i32 0, i32 6
  store i8* %233, i8** %235, align 8
  %236 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %237 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %236, i32 0, i32 2
  store i8* %233, i8** %237, align 8
  %238 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %10, i32 0, i32 2
  %239 = load i32, i32* %238, align 8
  %240 = sext i32 %239 to i64
  %241 = add i64 %240, 8
  %242 = load i64, i64* %11, align 8
  %243 = add i64 %242, %241
  store i64 %243, i64* %11, align 8
  %244 = load i64, i64* %11, align 8
  %245 = call i8* @MEDIATIME_FROM_BYTES(i64 %244)
  %246 = ptrtoint i8* %245 to i64
  %247 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %248 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %247, i32 0, i32 0
  store i64 %246, i64* %248, align 8
  %249 = load %struct.TYPE_29__*, %struct.TYPE_29__** %18, align 8
  %250 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %249, i32 0, i32 0
  store i64 %246, i64* %250, align 8
  %251 = load i64, i64* %11, align 8
  %252 = load i64, i64* %14, align 8
  %253 = icmp sgt i64 %251, %252
  br i1 %253, label %254, label %263

254:                                              ; preds = %226
  %255 = load i64, i64* %14, align 8
  %256 = call i32 @wine_dbgstr_longlong(i64 %255)
  %257 = load %struct.TYPE_29__*, %struct.TYPE_29__** %18, align 8
  %258 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %257, i32 0, i32 0
  %259 = load i64, i64* %258, align 8
  %260 = call i32 @wine_dbgstr_longlong(i64 %259)
  %261 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.7, i64 0, i64 0), i32 %256, i32 %260)
  %262 = load i64, i64* @E_FAIL, align 8
  store i64 %262, i64* %4, align 8
  br label %444

263:                                              ; preds = %226
  %264 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %265 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %264, i32 0, i32 1
  %266 = load i32, i32* %265, align 8
  %267 = load %struct.TYPE_29__*, %struct.TYPE_29__** %18, align 8
  %268 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %267, i32 0, i32 6
  %269 = load i8*, i8** %268, align 8
  %270 = call i64 @BYTES_FROM_MEDIATIME(i8* %269)
  %271 = load %struct.TYPE_29__*, %struct.TYPE_29__** %18, align 8
  %272 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %271, i32 0, i32 5
  %273 = call i64 @IAsyncReader_SyncRead(i32 %266, i64 %270, i32 4, i32* %272)
  store i64 %273, i64* %9, align 8
  %274 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %275 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %274, i32 0, i32 1
  store i32 1, i32* %275, align 4
  %276 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %277 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %276, i32 0, i32 3
  store i64 0, i64* %277, align 8
  %278 = load %struct.TYPE_29__*, %struct.TYPE_29__** %18, align 8
  %279 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %278, i32 0, i32 2
  %280 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %279, i32 0, i32 0
  %281 = load i32, i32* %280, align 8
  %282 = mul nsw i32 2, %281
  %283 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %284 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %283, i32 0, i32 2
  store i32 %282, i32* %284, align 8
  %285 = load i64, i64* %9, align 8
  %286 = load i64, i64* @S_OK, align 8
  %287 = icmp eq i64 %285, %286
  br i1 %287, label %288, label %352

288:                                              ; preds = %263
  %289 = load i64, i64* %14, align 8
  %290 = load i64, i64* %11, align 8
  %291 = sub nsw i64 %289, %290
  %292 = icmp ugt i64 %291, 8
  br i1 %292, label %293, label %352

293:                                              ; preds = %288
  %294 = call i32 @memset(%struct.TYPE_26__* %10, i32 0, i32 24)
  %295 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %296 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %295, i32 0, i32 1
  %297 = load i32, i32* %296, align 8
  %298 = load i64, i64* %11, align 8
  %299 = bitcast %struct.TYPE_26__* %10 to i32*
  %300 = call i64 @IAsyncReader_SyncRead(i32 %297, i64 %298, i32 24, i32* %299)
  store i64 %300, i64* %9, align 8
  %301 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %10, i32 0, i32 0
  %302 = load i64, i64* %301, align 8
  %303 = load i64, i64* @ckidAVIOLDINDEX, align 8
  %304 = icmp eq i64 %302, %303
  br i1 %304, label %305, label %351

305:                                              ; preds = %293
  %306 = load %struct.TYPE_29__*, %struct.TYPE_29__** %18, align 8
  %307 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %306, i32 0, i32 3
  %308 = load i32*, i32** %307, align 8
  %309 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %10, i32 0, i32 2
  %310 = load i32, i32* %309, align 8
  %311 = sext i32 %310 to i64
  %312 = add i64 %311, 8
  %313 = trunc i64 %312 to i32
  %314 = call i32* @CoTaskMemRealloc(i32* %308, i32 %313)
  %315 = load %struct.TYPE_29__*, %struct.TYPE_29__** %18, align 8
  %316 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %315, i32 0, i32 3
  store i32* %314, i32** %316, align 8
  %317 = load %struct.TYPE_29__*, %struct.TYPE_29__** %18, align 8
  %318 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %317, i32 0, i32 3
  %319 = load i32*, i32** %318, align 8
  %320 = icmp ne i32* %319, null
  br i1 %320, label %321, label %350

321:                                              ; preds = %305
  %322 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %323 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %322, i32 0, i32 1
  %324 = load i32, i32* %323, align 8
  %325 = load i64, i64* %11, align 8
  %326 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %10, i32 0, i32 2
  %327 = load i32, i32* %326, align 8
  %328 = sext i32 %327 to i64
  %329 = add i64 8, %328
  %330 = trunc i64 %329 to i32
  %331 = load %struct.TYPE_29__*, %struct.TYPE_29__** %18, align 8
  %332 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %331, i32 0, i32 3
  %333 = load i32*, i32** %332, align 8
  %334 = call i64 @IAsyncReader_SyncRead(i32 %324, i64 %325, i32 %330, i32* %333)
  store i64 %334, i64* %9, align 8
  %335 = load i64, i64* %9, align 8
  %336 = load i64, i64* @S_OK, align 8
  %337 = icmp eq i64 %335, %336
  br i1 %337, label %338, label %341

338:                                              ; preds = %321
  %339 = load %struct.TYPE_29__*, %struct.TYPE_29__** %18, align 8
  %340 = call i64 @AVISplitter_ProcessOldIndex(%struct.TYPE_29__* %339)
  store i64 %340, i64* %9, align 8
  br label %349

341:                                              ; preds = %321
  %342 = load %struct.TYPE_29__*, %struct.TYPE_29__** %18, align 8
  %343 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %342, i32 0, i32 3
  %344 = load i32*, i32** %343, align 8
  %345 = call i32 @CoTaskMemFree(i32* %344)
  %346 = load %struct.TYPE_29__*, %struct.TYPE_29__** %18, align 8
  %347 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %346, i32 0, i32 3
  store i32* null, i32** %347, align 8
  %348 = load i64, i64* @S_OK, align 8
  store i64 %348, i64* %9, align 8
  br label %349

349:                                              ; preds = %341, %338
  br label %350

350:                                              ; preds = %349, %305
  br label %351

351:                                              ; preds = %350, %293
  br label %352

352:                                              ; preds = %351, %288, %263
  store i32 0, i32* %17, align 4
  store i64 0, i64* %16, align 8
  br label %353

353:                                              ; preds = %374, %352
  %354 = load i64, i64* %16, align 8
  %355 = load %struct.TYPE_29__*, %struct.TYPE_29__** %18, align 8
  %356 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %355, i32 0, i32 2
  %357 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %356, i32 0, i32 0
  %358 = load i32, i32* %357, align 8
  %359 = sext i32 %358 to i64
  %360 = icmp ult i64 %354, %359
  br i1 %360, label %361, label %377

361:                                              ; preds = %353
  %362 = load %struct.TYPE_29__*, %struct.TYPE_29__** %18, align 8
  %363 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %362, i32 0, i32 4
  %364 = load %struct.TYPE_22__*, %struct.TYPE_22__** %363, align 8
  %365 = load i64, i64* %16, align 8
  %366 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %364, i64 %365
  %367 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %366, i32 0, i32 0
  %368 = load i64, i64* %367, align 8
  %369 = icmp ne i64 %368, 0
  br i1 %369, label %370, label %373

370:                                              ; preds = %361
  %371 = load i32, i32* %17, align 4
  %372 = add nsw i32 %371, 1
  store i32 %372, i32* %17, align 4
  br label %373

373:                                              ; preds = %370, %361
  br label %374

374:                                              ; preds = %373
  %375 = load i64, i64* %16, align 8
  %376 = add i64 %375, 1
  store i64 %376, i64* %16, align 8
  br label %353

377:                                              ; preds = %353
  %378 = load i32, i32* %17, align 4
  %379 = icmp ne i32 %378, 0
  br i1 %379, label %380, label %401

380:                                              ; preds = %377
  %381 = load %struct.TYPE_29__*, %struct.TYPE_29__** %18, align 8
  %382 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %381, i32 0, i32 3
  %383 = load i32*, i32** %382, align 8
  %384 = call i32 @CoTaskMemFree(i32* %383)
  %385 = load %struct.TYPE_29__*, %struct.TYPE_29__** %18, align 8
  %386 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %385, i32 0, i32 3
  store i32* null, i32** %386, align 8
  %387 = load i32, i32* %17, align 4
  %388 = load %struct.TYPE_29__*, %struct.TYPE_29__** %18, align 8
  %389 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %388, i32 0, i32 2
  %390 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %389, i32 0, i32 0
  %391 = load i32, i32* %390, align 8
  %392 = icmp slt i32 %387, %391
  br i1 %392, label %393, label %400

393:                                              ; preds = %380
  %394 = load i32, i32* %17, align 4
  %395 = load %struct.TYPE_29__*, %struct.TYPE_29__** %18, align 8
  %396 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %395, i32 0, i32 2
  %397 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %396, i32 0, i32 0
  %398 = load i32, i32* %397, align 8
  %399 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.8, i64 0, i64 0), i32 %394, i32 %398)
  store i32 0, i32* %17, align 4
  br label %400

400:                                              ; preds = %393, %380
  br label %412

401:                                              ; preds = %377
  %402 = load %struct.TYPE_29__*, %struct.TYPE_29__** %18, align 8
  %403 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %402, i32 0, i32 3
  %404 = load i32*, i32** %403, align 8
  %405 = icmp ne i32* %404, null
  br i1 %405, label %406, label %411

406:                                              ; preds = %401
  %407 = load %struct.TYPE_29__*, %struct.TYPE_29__** %18, align 8
  %408 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %407, i32 0, i32 2
  %409 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %408, i32 0, i32 0
  %410 = load i32, i32* %409, align 8
  store i32 %410, i32* %17, align 4
  br label %411

411:                                              ; preds = %406, %401
  br label %412

412:                                              ; preds = %411, %400
  %413 = load i32, i32* %17, align 4
  %414 = icmp ne i32 %413, 0
  br i1 %414, label %426, label %415

415:                                              ; preds = %412
  %416 = load %struct.TYPE_29__*, %struct.TYPE_29__** %18, align 8
  %417 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %416, i32 0, i32 1
  %418 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %417, i32 0, i32 1
  %419 = load i32, i32* %418, align 4
  %420 = load i32, i32* @AVIF_MUSTUSEINDEX, align 4
  %421 = and i32 %419, %420
  %422 = icmp ne i32 %421, 0
  br i1 %422, label %423, label %426

423:                                              ; preds = %415
  %424 = call i32 (i8*, ...) @FIXME(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i64 0, i64 0))
  %425 = load i64, i64* @E_FAIL, align 8
  store i64 %425, i64* %9, align 8
  br label %426

426:                                              ; preds = %423, %415, %412
  %427 = load i64, i64* %9, align 8
  %428 = load i64, i64* @S_OK, align 8
  %429 = icmp eq i64 %427, %428
  br i1 %429, label %430, label %433

430:                                              ; preds = %426
  %431 = load %struct.TYPE_29__*, %struct.TYPE_29__** %18, align 8
  %432 = call i64 @AVISplitter_InitializeStreams(%struct.TYPE_29__* %431)
  store i64 %432, i64* %9, align 8
  br label %433

433:                                              ; preds = %430, %426
  %434 = load i64, i64* %9, align 8
  %435 = load i64, i64* @S_OK, align 8
  %436 = icmp ne i64 %434, %435
  br i1 %436, label %437, label %441

437:                                              ; preds = %433
  %438 = load %struct.TYPE_29__*, %struct.TYPE_29__** %18, align 8
  %439 = call i32 @AVISplitter_Disconnect(%struct.TYPE_29__* %438)
  %440 = load i64, i64* @E_FAIL, align 8
  store i64 %440, i64* %4, align 8
  br label %444

441:                                              ; preds = %433
  %442 = call i32 @TRACE(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i64 0, i64 0))
  %443 = load i64, i64* %9, align 8
  store i64 %443, i64* %4, align 8
  br label %444

444:                                              ; preds = %441, %437, %254, %223, %185, %71, %61, %48, %40
  %445 = load i64, i64* %4, align 8
  ret i64 %445
}

declare dso_local %struct.TYPE_28__* @impl_PullPin_from_IPin(i32*) #1

declare dso_local i64 @IAsyncReader_SyncRead(i32, i64, i32, i32*) #1

declare dso_local i32 @ERR(i8*, ...) #1

declare dso_local i32* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @memcpy(%struct.TYPE_21__*, %struct.TYPE_27__*, i32) #1

declare dso_local i64 @AVISplitter_ProcessStreamList(%struct.TYPE_29__*, i32*, i32, %struct.TYPE_30__*) #1

declare dso_local i64 @AVISplitter_ProcessODML(%struct.TYPE_29__*, i32*, i32) #1

declare dso_local i32 @FIXME(i8*, ...) #1

declare dso_local i32 @HeapFree(i32, i32, i32*) #1

declare dso_local i32 @IAsyncReader_Length(i32, i64*, i64*) #1

declare dso_local i8* @MEDIATIME_FROM_BYTES(i64) #1

declare dso_local i32 @wine_dbgstr_longlong(i64) #1

declare dso_local i64 @BYTES_FROM_MEDIATIME(i8*) #1

declare dso_local i32 @memset(%struct.TYPE_26__*, i32, i32) #1

declare dso_local i32* @CoTaskMemRealloc(i32*, i32) #1

declare dso_local i64 @AVISplitter_ProcessOldIndex(%struct.TYPE_29__*) #1

declare dso_local i32 @CoTaskMemFree(i32*) #1

declare dso_local i64 @AVISplitter_InitializeStreams(%struct.TYPE_29__*) #1

declare dso_local i32 @AVISplitter_Disconnect(%struct.TYPE_29__*) #1

declare dso_local i32 @TRACE(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
