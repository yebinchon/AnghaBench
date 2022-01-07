; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/quartz/extr_regsvr.c_register_filters.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/quartz/extr_regsvr.c_register_filters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regsvr_filter = type { i32, i32, i64, %struct.TYPE_14__*, i32 }
%struct.TYPE_14__ = type { i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, i64, i64 }
%struct.TYPE_16__ = type { i32, %struct.TYPE_12__, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32, i32, %struct.TYPE_15__*, i32*, i32*, i64, i64, i32*, i32* }

@CLSID_FilterMapper2 = common dso_local global i32 0, align 4
@CLSCTX_INPROC_SERVER = common dso_local global i32 0, align 4
@IID_IFilterMapper2 = common dso_local global i32 0, align 4
@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"failed to register with hresult 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regsvr_filter*)* @register_filters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @register_filters(%struct.regsvr_filter* %0) #0 {
  %2 = alloca %struct.regsvr_filter*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_16__, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.regsvr_filter* %0, %struct.regsvr_filter** %2, align 8
  store i32* null, i32** %4, align 8
  %12 = call i32 @CoInitialize(i32* null)
  %13 = load i32, i32* @CLSCTX_INPROC_SERVER, align 4
  %14 = bitcast i32** %4 to i32*
  %15 = call i32 @CoCreateInstance(i32* @CLSID_FilterMapper2, i32* null, i32 %13, i32* @IID_IFilterMapper2, i32* %14)
  store i32 %15, i32* %3, align 4
  %16 = load i32, i32* %3, align 4
  %17 = call i64 @SUCCEEDED(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %330

19:                                               ; preds = %1
  br label %20

20:                                               ; preds = %326, %19
  %21 = load i32, i32* %3, align 4
  %22 = call i64 @SUCCEEDED(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %20
  %25 = load %struct.regsvr_filter*, %struct.regsvr_filter** %2, align 8
  %26 = getelementptr inbounds %struct.regsvr_filter, %struct.regsvr_filter* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br label %29

29:                                               ; preds = %24, %20
  %30 = phi i1 [ false, %20 ], [ %28, %24 ]
  br i1 %30, label %31, label %329

31:                                               ; preds = %29
  store i32 0, i32* %7, align 4
  br label %32

32:                                               ; preds = %43, %31
  %33 = load %struct.regsvr_filter*, %struct.regsvr_filter** %2, align 8
  %34 = getelementptr inbounds %struct.regsvr_filter, %struct.regsvr_filter* %33, i32 0, i32 3
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** %34, align 8
  %36 = load i32, i32* %7, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp ne i32 %40, -1
  br i1 %41, label %42, label %46

42:                                               ; preds = %32
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %7, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %7, align 4
  br label %32

46:                                               ; preds = %32
  %47 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %5, i32 0, i32 0
  store i32 2, i32* %47, align 8
  %48 = load %struct.regsvr_filter*, %struct.regsvr_filter** %2, align 8
  %49 = getelementptr inbounds %struct.regsvr_filter, %struct.regsvr_filter* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %5, i32 0, i32 2
  store i32 %50, i32* %51, align 8
  %52 = load i32, i32* %7, align 4
  %53 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %5, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 0
  store i32 %52, i32* %55, align 8
  %56 = load i32, i32* %7, align 4
  %57 = sext i32 %56 to i64
  %58 = mul i64 %57, 64
  %59 = trunc i64 %58 to i32
  %60 = call %struct.TYPE_15__* @CoTaskMemAlloc(i32 %59)
  store %struct.TYPE_15__* %60, %struct.TYPE_15__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %5, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 1
  store %struct.TYPE_15__* %60, %struct.TYPE_15__** %63, align 8
  %64 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %65 = icmp ne %struct.TYPE_15__* %64, null
  br i1 %65, label %68, label %66

66:                                               ; preds = %46
  %67 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %67, i32* %3, align 4
  br label %329

68:                                               ; preds = %46
  store i32 0, i32* %7, align 4
  br label %69

69:                                               ; preds = %285, %68
  %70 = load %struct.regsvr_filter*, %struct.regsvr_filter** %2, align 8
  %71 = getelementptr inbounds %struct.regsvr_filter, %struct.regsvr_filter* %70, i32 0, i32 3
  %72 = load %struct.TYPE_14__*, %struct.TYPE_14__** %71, align 8
  %73 = load i32, i32* %7, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = icmp ne i32 %77, -1
  br i1 %78, label %79, label %288

79:                                               ; preds = %69
  store i32 0, i32* %11, align 4
  br label %80

80:                                               ; preds = %96, %79
  %81 = load %struct.regsvr_filter*, %struct.regsvr_filter** %2, align 8
  %82 = getelementptr inbounds %struct.regsvr_filter, %struct.regsvr_filter* %81, i32 0, i32 3
  %83 = load %struct.TYPE_14__*, %struct.TYPE_14__** %82, align 8
  %84 = load i32, i32* %7, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %83, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %86, i32 0, i32 1
  %88 = load %struct.TYPE_13__*, %struct.TYPE_13__** %87, align 8
  %89 = load i32, i32* %11, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %88, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %99

95:                                               ; preds = %80
  br label %96

96:                                               ; preds = %95
  %97 = load i32, i32* %11, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %11, align 4
  br label %80

99:                                               ; preds = %80
  %100 = load i32, i32* %11, align 4
  %101 = sext i32 %100 to i64
  %102 = mul i64 %101, 72
  %103 = trunc i64 %102 to i32
  %104 = call %struct.TYPE_15__* @CoTaskMemAlloc(i32 %103)
  store %struct.TYPE_15__* %104, %struct.TYPE_15__** %8, align 8
  %105 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %106 = icmp ne %struct.TYPE_15__* %105, null
  br i1 %106, label %109, label %107

107:                                              ; preds = %99
  %108 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %108, i32* %3, align 4
  br label %288

109:                                              ; preds = %99
  %110 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %111 = load i32, i32* %11, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %110, i64 %112
  %114 = bitcast %struct.TYPE_15__* %113 to i32*
  store i32* %114, i32** %9, align 8
  store i32 0, i32* %10, align 4
  br label %115

115:                                              ; preds = %236, %109
  %116 = load i32, i32* %10, align 4
  %117 = load i32, i32* %11, align 4
  %118 = icmp slt i32 %116, %117
  br i1 %118, label %119, label %239

119:                                              ; preds = %115
  %120 = load i32*, i32** %9, align 8
  %121 = load i32, i32* %10, align 4
  %122 = mul nsw i32 %121, 2
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %120, i64 %123
  %125 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %126 = load i32, i32* %10, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %125, i64 %127
  %129 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %128, i32 0, i32 8
  store i32* %124, i32** %129, align 8
  %130 = load i32*, i32** %9, align 8
  %131 = load i32, i32* %10, align 4
  %132 = mul nsw i32 %131, 2
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i32, i32* %130, i64 %133
  %135 = load %struct.regsvr_filter*, %struct.regsvr_filter** %2, align 8
  %136 = getelementptr inbounds %struct.regsvr_filter, %struct.regsvr_filter* %135, i32 0, i32 3
  %137 = load %struct.TYPE_14__*, %struct.TYPE_14__** %136, align 8
  %138 = load i32, i32* %7, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %137, i64 %139
  %141 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %140, i32 0, i32 1
  %142 = load %struct.TYPE_13__*, %struct.TYPE_13__** %141, align 8
  %143 = load i32, i32* %10, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %142, i64 %144
  %146 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %145, i32 0, i32 1
  %147 = load i64, i64* %146, align 8
  %148 = call i32 @memcpy(i32* %134, i64 %147, i32 4)
  %149 = load i32*, i32** %9, align 8
  %150 = load i32, i32* %10, align 4
  %151 = mul nsw i32 %150, 2
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i32, i32* %149, i64 %152
  %154 = getelementptr inbounds i32, i32* %153, i64 1
  %155 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %156 = load i32, i32* %10, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %155, i64 %157
  %159 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %158, i32 0, i32 7
  store i32* %154, i32** %159, align 8
  %160 = load %struct.regsvr_filter*, %struct.regsvr_filter** %2, align 8
  %161 = getelementptr inbounds %struct.regsvr_filter, %struct.regsvr_filter* %160, i32 0, i32 3
  %162 = load %struct.TYPE_14__*, %struct.TYPE_14__** %161, align 8
  %163 = load i32, i32* %7, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %162, i64 %164
  %166 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %165, i32 0, i32 1
  %167 = load %struct.TYPE_13__*, %struct.TYPE_13__** %166, align 8
  %168 = load i32, i32* %10, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %167, i64 %169
  %171 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %170, i32 0, i32 2
  %172 = load i64, i64* %171, align 8
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %195

174:                                              ; preds = %119
  %175 = load i32*, i32** %9, align 8
  %176 = load i32, i32* %10, align 4
  %177 = mul nsw i32 %176, 2
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i32, i32* %175, i64 %178
  %180 = getelementptr inbounds i32, i32* %179, i64 1
  %181 = load %struct.regsvr_filter*, %struct.regsvr_filter** %2, align 8
  %182 = getelementptr inbounds %struct.regsvr_filter, %struct.regsvr_filter* %181, i32 0, i32 3
  %183 = load %struct.TYPE_14__*, %struct.TYPE_14__** %182, align 8
  %184 = load i32, i32* %7, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %183, i64 %185
  %187 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %186, i32 0, i32 1
  %188 = load %struct.TYPE_13__*, %struct.TYPE_13__** %187, align 8
  %189 = load i32, i32* %10, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %188, i64 %190
  %192 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %191, i32 0, i32 2
  %193 = load i64, i64* %192, align 8
  %194 = call i32 @memcpy(i32* %180, i64 %193, i32 4)
  br label %235

195:                                              ; preds = %119
  %196 = load i32*, i32** %9, align 8
  %197 = load i32, i32* %10, align 4
  %198 = mul nsw i32 %197, 2
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds i32, i32* %196, i64 %199
  %201 = getelementptr inbounds i32, i32* %200, i64 1
  %202 = load %struct.regsvr_filter*, %struct.regsvr_filter** %2, align 8
  %203 = getelementptr inbounds %struct.regsvr_filter, %struct.regsvr_filter* %202, i32 0, i32 3
  %204 = load %struct.TYPE_14__*, %struct.TYPE_14__** %203, align 8
  %205 = load i32, i32* %7, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %204, i64 %206
  %208 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %207, i32 0, i32 1
  %209 = load %struct.TYPE_13__*, %struct.TYPE_13__** %208, align 8
  %210 = load i32, i32* %10, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %209, i64 %211
  %213 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %212, i32 0, i32 1
  %214 = load i64, i64* %213, align 8
  %215 = call i32 @memcpy(i32* %201, i64 %214, i32 4)
  %216 = load %struct.regsvr_filter*, %struct.regsvr_filter** %2, align 8
  %217 = getelementptr inbounds %struct.regsvr_filter, %struct.regsvr_filter* %216, i32 0, i32 3
  %218 = load %struct.TYPE_14__*, %struct.TYPE_14__** %217, align 8
  %219 = load i32, i32* %7, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %218, i64 %220
  %222 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %221, i32 0, i32 1
  %223 = load %struct.TYPE_13__*, %struct.TYPE_13__** %222, align 8
  %224 = load i32, i32* %10, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %223, i64 %225
  %227 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 8
  %229 = load i32*, i32** %9, align 8
  %230 = load i32, i32* %10, align 4
  %231 = mul nsw i32 %230, 2
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds i32, i32* %229, i64 %232
  %234 = getelementptr inbounds i32, i32* %233, i64 1
  store i32 %228, i32* %234, align 4
  br label %235

235:                                              ; preds = %195, %174
  br label %236

236:                                              ; preds = %235
  %237 = load i32, i32* %10, align 4
  %238 = add nsw i32 %237, 1
  store i32 %238, i32* %10, align 4
  br label %115

239:                                              ; preds = %115
  %240 = load %struct.regsvr_filter*, %struct.regsvr_filter** %2, align 8
  %241 = getelementptr inbounds %struct.regsvr_filter, %struct.regsvr_filter* %240, i32 0, i32 3
  %242 = load %struct.TYPE_14__*, %struct.TYPE_14__** %241, align 8
  %243 = load i32, i32* %7, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %242, i64 %244
  %246 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %245, i32 0, i32 0
  %247 = load i32, i32* %246, align 8
  %248 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %249 = load i32, i32* %7, align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %248, i64 %250
  %252 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %251, i32 0, i32 0
  store i32 %247, i32* %252, align 8
  %253 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %254 = load i32, i32* %7, align 4
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %253, i64 %255
  %257 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %256, i32 0, i32 6
  store i64 0, i64* %257, align 8
  %258 = load i32, i32* %10, align 4
  %259 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %260 = load i32, i32* %7, align 4
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %259, i64 %261
  %263 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %262, i32 0, i32 1
  store i32 %258, i32* %263, align 4
  %264 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %265 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %266 = load i32, i32* %7, align 4
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %265, i64 %267
  %269 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %268, i32 0, i32 2
  store %struct.TYPE_15__* %264, %struct.TYPE_15__** %269, align 8
  %270 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %271 = load i32, i32* %7, align 4
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %270, i64 %272
  %274 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %273, i32 0, i32 5
  store i64 0, i64* %274, align 8
  %275 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %276 = load i32, i32* %7, align 4
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %275, i64 %277
  %279 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %278, i32 0, i32 4
  store i32* null, i32** %279, align 8
  %280 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %281 = load i32, i32* %7, align 4
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %280, i64 %282
  %284 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %283, i32 0, i32 3
  store i32* null, i32** %284, align 8
  br label %285

285:                                              ; preds = %239
  %286 = load i32, i32* %7, align 4
  %287 = add nsw i32 %286, 1
  store i32 %287, i32* %7, align 4
  br label %69

288:                                              ; preds = %107, %69
  %289 = load i32, i32* %3, align 4
  %290 = call i64 @FAILED(i32 %289)
  %291 = icmp ne i64 %290, 0
  br i1 %291, label %292, label %297

292:                                              ; preds = %288
  %293 = load i32, i32* %3, align 4
  %294 = call i32 @ERR(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %293)
  %295 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %296 = call i32 @CoTaskMemFree(%struct.TYPE_15__* %295)
  br label %329

297:                                              ; preds = %288
  %298 = load i32*, i32** %4, align 8
  %299 = load %struct.regsvr_filter*, %struct.regsvr_filter** %2, align 8
  %300 = getelementptr inbounds %struct.regsvr_filter, %struct.regsvr_filter* %299, i32 0, i32 2
  %301 = load i64, i64* %300, align 8
  %302 = load %struct.regsvr_filter*, %struct.regsvr_filter** %2, align 8
  %303 = getelementptr inbounds %struct.regsvr_filter, %struct.regsvr_filter* %302, i32 0, i32 1
  %304 = load i32, i32* %303, align 4
  %305 = load %struct.regsvr_filter*, %struct.regsvr_filter** %2, align 8
  %306 = getelementptr inbounds %struct.regsvr_filter, %struct.regsvr_filter* %305, i32 0, i32 0
  %307 = load i32, i32* %306, align 8
  %308 = call i32 @IFilterMapper2_RegisterFilter(i32* %298, i64 %301, i32 %304, i32* null, i32 %307, i32* null, %struct.TYPE_16__* %5)
  store i32 %308, i32* %3, align 4
  br label %309

309:                                              ; preds = %312, %297
  %310 = load i32, i32* %7, align 4
  %311 = icmp ne i32 %310, 0
  br i1 %311, label %312, label %323

312:                                              ; preds = %309
  %313 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %314 = load i32, i32* %7, align 4
  %315 = sub nsw i32 %314, 1
  %316 = sext i32 %315 to i64
  %317 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %313, i64 %316
  %318 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %317, i32 0, i32 2
  %319 = load %struct.TYPE_15__*, %struct.TYPE_15__** %318, align 8
  %320 = call i32 @CoTaskMemFree(%struct.TYPE_15__* %319)
  %321 = load i32, i32* %7, align 4
  %322 = add nsw i32 %321, -1
  store i32 %322, i32* %7, align 4
  br label %309

323:                                              ; preds = %309
  %324 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %325 = call i32 @CoTaskMemFree(%struct.TYPE_15__* %324)
  br label %326

326:                                              ; preds = %323
  %327 = load %struct.regsvr_filter*, %struct.regsvr_filter** %2, align 8
  %328 = getelementptr inbounds %struct.regsvr_filter, %struct.regsvr_filter* %327, i32 1
  store %struct.regsvr_filter* %328, %struct.regsvr_filter** %2, align 8
  br label %20

329:                                              ; preds = %292, %66, %29
  br label %330

330:                                              ; preds = %329, %1
  %331 = load i32*, i32** %4, align 8
  %332 = icmp ne i32* %331, null
  br i1 %332, label %333, label %336

333:                                              ; preds = %330
  %334 = load i32*, i32** %4, align 8
  %335 = call i32 @IFilterMapper2_Release(i32* %334)
  br label %336

336:                                              ; preds = %333, %330
  %337 = call i32 (...) @CoUninitialize()
  %338 = load i32, i32* %3, align 4
  ret i32 %338
}

declare dso_local i32 @CoInitialize(i32*) #1

declare dso_local i32 @CoCreateInstance(i32*, i32*, i32, i32*, i32*) #1

declare dso_local i64 @SUCCEEDED(i32) #1

declare dso_local %struct.TYPE_15__* @CoTaskMemAlloc(i32) #1

declare dso_local i32 @memcpy(i32*, i64, i32) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @ERR(i8*, i32) #1

declare dso_local i32 @CoTaskMemFree(%struct.TYPE_15__*) #1

declare dso_local i32 @IFilterMapper2_RegisterFilter(i32*, i64, i32, i32*, i32, i32*, %struct.TYPE_16__*) #1

declare dso_local i32 @IFilterMapper2_Release(i32*) #1

declare dso_local i32 @CoUninitialize(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
