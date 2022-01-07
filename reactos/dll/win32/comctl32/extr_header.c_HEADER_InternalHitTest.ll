; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_header.c_HEADER_InternalHitTest.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_header.c_HEADER_InternalHitTest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i64, %struct.TYPE_13__*, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32, i32, i64, i64 }
%struct.TYPE_15__ = type { i64, i64 }

@FALSE = common dso_local global i64 0, align 8
@HHT_NOWHERE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [9 x i8] c"NOWHERE\0A\00", align 1
@TRUE = common dso_local global i64 0, align 8
@DIVIDER_WIDTH = common dso_local global i32 0, align 4
@HHT_ONHEADER = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [14 x i8] c"ON HEADER %d\0A\00", align 1
@HHT_ONDIVOPEN = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [15 x i8] c"ON DIVOPEN %d\0A\00", align 1
@HHT_ONDIVIDER = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [15 x i8] c"ON DIVIDER %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"TO LEFT\0A\00", align 1
@HHT_TOLEFT = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [10 x i8] c"TO RIGHT\0A\00", align 1
@HHT_TORIGHT = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [7 x i8] c"ABOVE\0A\00", align 1
@HHT_ABOVE = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [7 x i8] c"BELOW\0A\00", align 1
@HHT_BELOW = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [12 x i8] c"flags=0x%X\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_16__*, %struct.TYPE_15__*, i64*, i32*)* @HEADER_InternalHitTest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @HEADER_InternalHitTest(%struct.TYPE_16__* %0, %struct.TYPE_15__* %1, i64* %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_14__, align 8
  %10 = alloca %struct.TYPE_14__, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %5, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %6, align 8
  store i64* %2, i64** %7, align 8
  store i32* %3, i32** %8, align 8
  %14 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @GetClientRect(i32 %16, %struct.TYPE_14__* %9)
  %18 = load i64*, i64** %7, align 8
  store i64 0, i64* %18, align 8
  %19 = load i64, i64* @FALSE, align 8
  store i64 %19, i64* %13, align 8
  %20 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %21 = bitcast %struct.TYPE_15__* %20 to { i64, i64 }*
  %22 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %21, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = call i64 @PtInRect(%struct.TYPE_14__* %9, i64 %23, i64 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %278

28:                                               ; preds = %4
  %29 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %28
  %34 = load i64, i64* @HHT_NOWHERE, align 8
  %35 = load i64*, i64** %7, align 8
  %36 = load i64, i64* %35, align 8
  %37 = or i64 %36, %34
  store i64 %37, i64* %35, align 8
  %38 = load i32*, i32** %8, align 8
  store i32 1, i32* %38, align 4
  %39 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  br label %340

40:                                               ; preds = %28
  store i64 0, i64* %11, align 8
  br label %41

41:                                               ; preds = %201, %40
  %42 = load i64, i64* %11, align 8
  %43 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ult i64 %42, %45
  br i1 %46, label %47, label %204

47:                                               ; preds = %41
  %48 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %48, i32 0, i32 1
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %49, align 8
  %51 = load i64, i64* %11, align 8
  %52 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i32 0, i32 0
  %54 = bitcast %struct.TYPE_14__* %9 to i8*
  %55 = bitcast %struct.TYPE_14__* %53 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %54, i8* align 8 %55, i64 24, i1 false)
  %56 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = sub nsw i32 %57, %59
  store i32 %60, i32* %12, align 4
  %61 = load i32, i32* %12, align 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %47
  %64 = load i64, i64* @TRUE, align 8
  store i64 %64, i64* %13, align 8
  br label %201

65:                                               ; preds = %47
  %66 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %67 = bitcast %struct.TYPE_15__* %66 to { i64, i64 }*
  %68 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %67, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = call i64 @PtInRect(%struct.TYPE_14__* %9, i64 %69, i64 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %200

74:                                               ; preds = %65
  %75 = load i32, i32* %12, align 4
  %76 = load i32, i32* @DIVIDER_WIDTH, align 4
  %77 = mul nsw i32 2, %76
  %78 = icmp sle i32 %75, %77
  br i1 %78, label %79, label %89

79:                                               ; preds = %74
  %80 = load i64, i64* @HHT_ONHEADER, align 8
  %81 = load i64*, i64** %7, align 8
  %82 = load i64, i64* %81, align 8
  %83 = or i64 %82, %80
  store i64 %83, i64* %81, align 8
  %84 = load i64, i64* %11, align 8
  %85 = trunc i64 %84 to i32
  %86 = load i32*, i32** %8, align 8
  store i32 %85, i32* %86, align 4
  %87 = load i64, i64* %11, align 8
  %88 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i64 %87)
  br label %340

89:                                               ; preds = %74
  %90 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %91 = load i64, i64* %11, align 8
  %92 = call i64 @HEADER_IndexToOrder(%struct.TYPE_16__* %90, i64 %91)
  %93 = icmp sgt i64 %92, 0
  br i1 %93, label %94, label %158

94:                                               ; preds = %89
  %95 = bitcast %struct.TYPE_14__* %10 to i8*
  %96 = bitcast %struct.TYPE_14__* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %95, i8* align 8 %96, i64 24, i1 false)
  %97 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %10, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @DIVIDER_WIDTH, align 4
  %100 = add nsw i32 %98, %99
  %101 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %10, i32 0, i32 0
  store i32 %100, i32* %101, align 8
  %102 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %103 = bitcast %struct.TYPE_15__* %102 to { i64, i64 }*
  %104 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %103, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = call i64 @PtInRect(%struct.TYPE_14__* %10, i64 %105, i64 %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %157

110:                                              ; preds = %94
  %111 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %112 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %113 = load i64, i64* %11, align 8
  %114 = call i64 @HEADER_PrevItem(%struct.TYPE_16__* %112, i64 %113)
  %115 = call i64 @HEADER_IsItemFixed(%struct.TYPE_16__* %111, i64 %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %128

117:                                              ; preds = %110
  %118 = load i64, i64* @HHT_ONHEADER, align 8
  %119 = load i64*, i64** %7, align 8
  %120 = load i64, i64* %119, align 8
  %121 = or i64 %120, %118
  store i64 %121, i64* %119, align 8
  %122 = load i64, i64* %11, align 8
  %123 = trunc i64 %122 to i32
  %124 = load i32*, i32** %8, align 8
  store i32 %123, i32* %124, align 4
  %125 = load i32*, i32** %8, align 8
  %126 = load i32, i32* %125, align 4
  %127 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %126)
  br label %340

128:                                              ; preds = %110
  %129 = load i64, i64* %13, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %144

131:                                              ; preds = %128
  %132 = load i64, i64* @HHT_ONDIVOPEN, align 8
  %133 = load i64*, i64** %7, align 8
  %134 = load i64, i64* %133, align 8
  %135 = or i64 %134, %132
  store i64 %135, i64* %133, align 8
  %136 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %137 = load i64, i64* %11, align 8
  %138 = call i64 @HEADER_PrevItem(%struct.TYPE_16__* %136, i64 %137)
  %139 = trunc i64 %138 to i32
  %140 = load i32*, i32** %8, align 8
  store i32 %139, i32* %140, align 4
  %141 = load i32*, i32** %8, align 8
  %142 = load i32, i32* %141, align 4
  %143 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 %142)
  br label %340

144:                                              ; preds = %128
  %145 = load i64, i64* @HHT_ONDIVIDER, align 8
  %146 = load i64*, i64** %7, align 8
  %147 = load i64, i64* %146, align 8
  %148 = or i64 %147, %145
  store i64 %148, i64* %146, align 8
  %149 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %150 = load i64, i64* %11, align 8
  %151 = call i64 @HEADER_PrevItem(%struct.TYPE_16__* %149, i64 %150)
  %152 = trunc i64 %151 to i32
  %153 = load i32*, i32** %8, align 8
  store i32 %152, i32* %153, align 4
  %154 = load i32*, i32** %8, align 8
  %155 = load i32, i32* %154, align 4
  %156 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 %155)
  br label %340

157:                                              ; preds = %94
  br label %158

158:                                              ; preds = %157, %89
  %159 = bitcast %struct.TYPE_14__* %10 to i8*
  %160 = bitcast %struct.TYPE_14__* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %159, i8* align 8 %160, i64 24, i1 false)
  %161 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %10, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = load i32, i32* @DIVIDER_WIDTH, align 4
  %164 = sub nsw i32 %162, %163
  %165 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %10, i32 0, i32 1
  store i32 %164, i32* %165, align 4
  %166 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %167 = load i64, i64* %11, align 8
  %168 = call i64 @HEADER_IsItemFixed(%struct.TYPE_16__* %166, i64 %167)
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %190, label %170

170:                                              ; preds = %158
  %171 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %172 = bitcast %struct.TYPE_15__* %171 to { i64, i64 }*
  %173 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %172, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %172, i32 0, i32 1
  %176 = load i64, i64* %175, align 8
  %177 = call i64 @PtInRect(%struct.TYPE_14__* %10, i64 %174, i64 %176)
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %190

179:                                              ; preds = %170
  %180 = load i64, i64* @HHT_ONDIVIDER, align 8
  %181 = load i64*, i64** %7, align 8
  %182 = load i64, i64* %181, align 8
  %183 = or i64 %182, %180
  store i64 %183, i64* %181, align 8
  %184 = load i64, i64* %11, align 8
  %185 = trunc i64 %184 to i32
  %186 = load i32*, i32** %8, align 8
  store i32 %185, i32* %186, align 4
  %187 = load i32*, i32** %8, align 8
  %188 = load i32, i32* %187, align 4
  %189 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 %188)
  br label %340

190:                                              ; preds = %170, %158
  %191 = load i64, i64* @HHT_ONHEADER, align 8
  %192 = load i64*, i64** %7, align 8
  %193 = load i64, i64* %192, align 8
  %194 = or i64 %193, %191
  store i64 %194, i64* %192, align 8
  %195 = load i64, i64* %11, align 8
  %196 = trunc i64 %195 to i32
  %197 = load i32*, i32** %8, align 8
  store i32 %196, i32* %197, align 4
  %198 = load i64, i64* %11, align 8
  %199 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i64 %198)
  br label %340

200:                                              ; preds = %65
  br label %201

201:                                              ; preds = %200, %63
  %202 = load i64, i64* %11, align 8
  %203 = add i64 %202, 1
  store i64 %203, i64* %11, align 8
  br label %41

204:                                              ; preds = %41
  %205 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %206 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %207 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %206, i32 0, i32 0
  %208 = load i64, i64* %207, align 8
  %209 = sub nsw i64 %208, 1
  %210 = call i64 @HEADER_IsItemFixed(%struct.TYPE_16__* %205, i64 %209)
  %211 = icmp ne i64 %210, 0
  br i1 %211, label %271, label %212

212:                                              ; preds = %204
  %213 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %214 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %213, i32 0, i32 1
  %215 = load %struct.TYPE_13__*, %struct.TYPE_13__** %214, align 8
  %216 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %217 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %216, i32 0, i32 0
  %218 = load i64, i64* %217, align 8
  %219 = sub nsw i64 %218, 1
  %220 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %215, i64 %219
  %221 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %220, i32 0, i32 0
  %222 = bitcast %struct.TYPE_14__* %9 to i8*
  %223 = bitcast %struct.TYPE_14__* %221 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %222, i8* align 8 %223, i64 24, i1 false)
  %224 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 0
  %225 = load i32, i32* %224, align 8
  %226 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 1
  store i32 %225, i32* %226, align 4
  %227 = load i32, i32* @DIVIDER_WIDTH, align 4
  %228 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 0
  %229 = load i32, i32* %228, align 8
  %230 = add nsw i32 %229, %227
  store i32 %230, i32* %228, align 8
  %231 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %232 = bitcast %struct.TYPE_15__* %231 to { i64, i64 }*
  %233 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %232, i32 0, i32 0
  %234 = load i64, i64* %233, align 8
  %235 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %232, i32 0, i32 1
  %236 = load i64, i64* %235, align 8
  %237 = call i64 @PtInRect(%struct.TYPE_14__* %9, i64 %234, i64 %236)
  %238 = icmp ne i64 %237, 0
  br i1 %238, label %239, label %270

239:                                              ; preds = %212
  %240 = load i64, i64* %13, align 8
  %241 = icmp ne i64 %240, 0
  br i1 %241, label %242, label %256

242:                                              ; preds = %239
  %243 = load i64, i64* @HHT_ONDIVOPEN, align 8
  %244 = load i64*, i64** %7, align 8
  %245 = load i64, i64* %244, align 8
  %246 = or i64 %245, %243
  store i64 %246, i64* %244, align 8
  %247 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %248 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %247, i32 0, i32 0
  %249 = load i64, i64* %248, align 8
  %250 = sub nsw i64 %249, 1
  %251 = trunc i64 %250 to i32
  %252 = load i32*, i32** %8, align 8
  store i32 %251, i32* %252, align 4
  %253 = load i32*, i32** %8, align 8
  %254 = load i32, i32* %253, align 4
  %255 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 %254)
  br label %340

256:                                              ; preds = %239
  %257 = load i64, i64* @HHT_ONDIVIDER, align 8
  %258 = load i64*, i64** %7, align 8
  %259 = load i64, i64* %258, align 8
  %260 = or i64 %259, %257
  store i64 %260, i64* %258, align 8
  %261 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %262 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %261, i32 0, i32 0
  %263 = load i64, i64* %262, align 8
  %264 = sub nsw i64 %263, 1
  %265 = trunc i64 %264 to i32
  %266 = load i32*, i32** %8, align 8
  store i32 %265, i32* %266, align 4
  %267 = load i32*, i32** %8, align 8
  %268 = load i32, i32* %267, align 4
  %269 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 %268)
  br label %340

270:                                              ; preds = %212
  br label %271

271:                                              ; preds = %270, %204
  %272 = load i64, i64* @HHT_NOWHERE, align 8
  %273 = load i64*, i64** %7, align 8
  %274 = load i64, i64* %273, align 8
  %275 = or i64 %274, %272
  store i64 %275, i64* %273, align 8
  %276 = load i32*, i32** %8, align 8
  store i32 1, i32* %276, align 4
  %277 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  br label %340

278:                                              ; preds = %4
  %279 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %280 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %279, i32 0, i32 0
  %281 = load i64, i64* %280, align 8
  %282 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 1
  %283 = load i32, i32* %282, align 4
  %284 = sext i32 %283 to i64
  %285 = icmp slt i64 %281, %284
  br i1 %285, label %286, label %292

286:                                              ; preds = %278
  %287 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %288 = load i64, i64* @HHT_TOLEFT, align 8
  %289 = load i64*, i64** %7, align 8
  %290 = load i64, i64* %289, align 8
  %291 = or i64 %290, %288
  store i64 %291, i64* %289, align 8
  br label %307

292:                                              ; preds = %278
  %293 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %294 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %293, i32 0, i32 0
  %295 = load i64, i64* %294, align 8
  %296 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 0
  %297 = load i32, i32* %296, align 8
  %298 = sext i32 %297 to i64
  %299 = icmp sgt i64 %295, %298
  br i1 %299, label %300, label %306

300:                                              ; preds = %292
  %301 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  %302 = load i64, i64* @HHT_TORIGHT, align 8
  %303 = load i64*, i64** %7, align 8
  %304 = load i64, i64* %303, align 8
  %305 = or i64 %304, %302
  store i64 %305, i64* %303, align 8
  br label %306

306:                                              ; preds = %300, %292
  br label %307

307:                                              ; preds = %306, %286
  %308 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %309 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %308, i32 0, i32 1
  %310 = load i64, i64* %309, align 8
  %311 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 2
  %312 = load i64, i64* %311, align 8
  %313 = icmp slt i64 %310, %312
  br i1 %313, label %314, label %320

314:                                              ; preds = %307
  %315 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  %316 = load i64, i64* @HHT_ABOVE, align 8
  %317 = load i64*, i64** %7, align 8
  %318 = load i64, i64* %317, align 8
  %319 = or i64 %318, %316
  store i64 %319, i64* %317, align 8
  br label %334

320:                                              ; preds = %307
  %321 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %322 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %321, i32 0, i32 1
  %323 = load i64, i64* %322, align 8
  %324 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 3
  %325 = load i64, i64* %324, align 8
  %326 = icmp sgt i64 %323, %325
  br i1 %326, label %327, label %333

327:                                              ; preds = %320
  %328 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  %329 = load i64, i64* @HHT_BELOW, align 8
  %330 = load i64*, i64** %7, align 8
  %331 = load i64, i64* %330, align 8
  %332 = or i64 %331, %329
  store i64 %332, i64* %330, align 8
  br label %333

333:                                              ; preds = %327, %320
  br label %334

334:                                              ; preds = %333, %314
  br label %335

335:                                              ; preds = %334
  %336 = load i32*, i32** %8, align 8
  store i32 1, i32* %336, align 4
  %337 = load i64*, i64** %7, align 8
  %338 = load i64, i64* %337, align 8
  %339 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), i64 %338)
  br label %340

340:                                              ; preds = %335, %271, %256, %242, %190, %179, %144, %131, %117, %79, %33
  ret void
}

declare dso_local i32 @GetClientRect(i32, %struct.TYPE_14__*) #1

declare dso_local i64 @PtInRect(%struct.TYPE_14__*, i64, i64) #1

declare dso_local i32 @TRACE(i8*, ...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @HEADER_IndexToOrder(%struct.TYPE_16__*, i64) #1

declare dso_local i64 @HEADER_IsItemFixed(%struct.TYPE_16__*, i64) #1

declare dso_local i64 @HEADER_PrevItem(%struct.TYPE_16__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
