; ModuleID = '/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/ntldr/extr_wlregistry.c_WinLdrAddDriverToList.c'
source_filename = "/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/ntldr/extr_wlregistry.c_WinLdrAddDriverToList.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_6__, %struct.TYPE_6__, i32* }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__*, i64 }

@TAG_WLDR_BDE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@TAG_WLDR_NAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i32] [i32 115, i32 121, i32 115, i32 116, i32 101, i32 109, i32 51, i32 50, i32 92, i32 100, i32 114, i32 105, i32 118, i32 101, i32 114, i32 115, i32 92, i32 0], align 4
@.str.1 = private unnamed_addr constant [5 x i32] [i32 46, i32 115, i32 121, i32 115, i32 0], align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @WinLdrAddDriverToList(i32* %0, i64* %1, i64* %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %struct.TYPE_5__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i64* %1, i64** %7, align 8
  store i64* %2, i64** %8, align 8
  store i64* %3, i64** %9, align 8
  %13 = load i32, i32* @TAG_WLDR_BDE, align 4
  %14 = call i8* @FrLdrHeapAlloc(i32 4, i32 %13)
  %15 = bitcast i8* %14 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %15, %struct.TYPE_5__** %10, align 8
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %17 = icmp ne %struct.TYPE_5__* %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %4
  %19 = load i32, i32* @FALSE, align 4
  store i32 %19, i32* %5, align 4
  br label %259

20:                                               ; preds = %4
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 2
  store i32* null, i32** %22, align 8
  %23 = load i64*, i64** %8, align 8
  %24 = icmp ne i64* %23, null
  br i1 %24, label %25, label %82

25:                                               ; preds = %20
  %26 = load i64*, i64** %8, align 8
  %27 = getelementptr inbounds i64, i64* %26, i64 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %82

30:                                               ; preds = %25
  %31 = load i64*, i64** %8, align 8
  %32 = call i64 @wcslen(i64* %31)
  %33 = trunc i64 %32 to i32
  %34 = sext i32 %33 to i64
  %35 = mul i64 %34, 4
  %36 = add i64 %35, 4
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %12, align 4
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 2
  store i64 0, i64* %40, align 8
  %41 = load i32, i32* %12, align 4
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  store i32 %41, i32* %44, align 8
  %45 = load i32, i32* %12, align 4
  %46 = load i32, i32* @TAG_WLDR_NAME, align 4
  %47 = call i8* @FrLdrHeapAlloc(i32 %45, i32 %46)
  %48 = bitcast i8* %47 to %struct.TYPE_5__*
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 1
  store %struct.TYPE_5__* %48, %struct.TYPE_5__** %51, align 8
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 1
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %54, align 8
  %56 = icmp ne %struct.TYPE_5__* %55, null
  br i1 %56, label %62, label %57

57:                                               ; preds = %30
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %59 = load i32, i32* @TAG_WLDR_BDE, align 4
  %60 = call i32 @FrLdrHeapFree(%struct.TYPE_5__* %58, i32 %59)
  %61 = load i32, i32* @FALSE, align 4
  store i32 %61, i32* %5, align 4
  br label %259

62:                                               ; preds = %30
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 1
  %65 = load i64*, i64** %8, align 8
  %66 = call i32 (%struct.TYPE_6__*, ...) @RtlAppendUnicodeToString(%struct.TYPE_6__* %64, i64* %65)
  store i32 %66, i32* %11, align 4
  %67 = load i32, i32* %11, align 4
  %68 = call i32 @NT_SUCCESS(i32 %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %81, label %70

70:                                               ; preds = %62
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 1
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %73, align 8
  %75 = load i32, i32* @TAG_WLDR_NAME, align 4
  %76 = call i32 @FrLdrHeapFree(%struct.TYPE_5__* %74, i32 %75)
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %78 = load i32, i32* @TAG_WLDR_BDE, align 4
  %79 = call i32 @FrLdrHeapFree(%struct.TYPE_5__* %77, i32 %78)
  %80 = load i32, i32* @FALSE, align 4
  store i32 %80, i32* %5, align 4
  br label %259

81:                                               ; preds = %62
  br label %170

82:                                               ; preds = %25, %20
  %83 = load i64*, i64** %9, align 8
  %84 = call i64 @wcslen(i64* %83)
  %85 = trunc i64 %84 to i32
  %86 = sext i32 %85 to i64
  %87 = mul i64 %86, 4
  %88 = add i64 %87, 88
  %89 = trunc i64 %88 to i32
  store i32 %89, i32* %12, align 4
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 2
  store i64 0, i64* %92, align 8
  %93 = load i32, i32* %12, align 4
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 0
  store i32 %93, i32* %96, align 8
  %97 = load i32, i32* %12, align 4
  %98 = load i32, i32* @TAG_WLDR_NAME, align 4
  %99 = call i8* @FrLdrHeapAlloc(i32 %97, i32 %98)
  %100 = bitcast i8* %99 to %struct.TYPE_5__*
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 1
  store %struct.TYPE_5__* %100, %struct.TYPE_5__** %103, align 8
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 1
  %107 = load %struct.TYPE_5__*, %struct.TYPE_5__** %106, align 8
  %108 = icmp ne %struct.TYPE_5__* %107, null
  br i1 %108, label %114, label %109

109:                                              ; preds = %82
  %110 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %111 = load i32, i32* @TAG_WLDR_NAME, align 4
  %112 = call i32 @FrLdrHeapFree(%struct.TYPE_5__* %110, i32 %111)
  %113 = load i32, i32* @FALSE, align 4
  store i32 %113, i32* %5, align 4
  br label %259

114:                                              ; preds = %82
  %115 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 1
  %117 = call i32 (%struct.TYPE_6__*, ...) @RtlAppendUnicodeToString(%struct.TYPE_6__* %116, i32* getelementptr inbounds ([18 x i32], [18 x i32]* @.str, i64 0, i64 0))
  store i32 %117, i32* %11, align 4
  %118 = load i32, i32* %11, align 4
  %119 = call i32 @NT_SUCCESS(i32 %118)
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %132, label %121

121:                                              ; preds = %114
  %122 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 1
  %125 = load %struct.TYPE_5__*, %struct.TYPE_5__** %124, align 8
  %126 = load i32, i32* @TAG_WLDR_NAME, align 4
  %127 = call i32 @FrLdrHeapFree(%struct.TYPE_5__* %125, i32 %126)
  %128 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %129 = load i32, i32* @TAG_WLDR_NAME, align 4
  %130 = call i32 @FrLdrHeapFree(%struct.TYPE_5__* %128, i32 %129)
  %131 = load i32, i32* @FALSE, align 4
  store i32 %131, i32* %5, align 4
  br label %259

132:                                              ; preds = %114
  %133 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i32 0, i32 1
  %135 = load i64*, i64** %9, align 8
  %136 = call i32 (%struct.TYPE_6__*, ...) @RtlAppendUnicodeToString(%struct.TYPE_6__* %134, i64* %135)
  store i32 %136, i32* %11, align 4
  %137 = load i32, i32* %11, align 4
  %138 = call i32 @NT_SUCCESS(i32 %137)
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %151, label %140

140:                                              ; preds = %132
  %141 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %142 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %141, i32 0, i32 1
  %143 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %142, i32 0, i32 1
  %144 = load %struct.TYPE_5__*, %struct.TYPE_5__** %143, align 8
  %145 = load i32, i32* @TAG_WLDR_NAME, align 4
  %146 = call i32 @FrLdrHeapFree(%struct.TYPE_5__* %144, i32 %145)
  %147 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %148 = load i32, i32* @TAG_WLDR_NAME, align 4
  %149 = call i32 @FrLdrHeapFree(%struct.TYPE_5__* %147, i32 %148)
  %150 = load i32, i32* @FALSE, align 4
  store i32 %150, i32* %5, align 4
  br label %259

151:                                              ; preds = %132
  %152 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %153 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %152, i32 0, i32 1
  %154 = call i32 (%struct.TYPE_6__*, ...) @RtlAppendUnicodeToString(%struct.TYPE_6__* %153, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.1, i64 0, i64 0))
  store i32 %154, i32* %11, align 4
  %155 = load i32, i32* %11, align 4
  %156 = call i32 @NT_SUCCESS(i32 %155)
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %169, label %158

158:                                              ; preds = %151
  %159 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %160 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %159, i32 0, i32 1
  %161 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %160, i32 0, i32 1
  %162 = load %struct.TYPE_5__*, %struct.TYPE_5__** %161, align 8
  %163 = load i32, i32* @TAG_WLDR_NAME, align 4
  %164 = call i32 @FrLdrHeapFree(%struct.TYPE_5__* %162, i32 %163)
  %165 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %166 = load i32, i32* @TAG_WLDR_NAME, align 4
  %167 = call i32 @FrLdrHeapFree(%struct.TYPE_5__* %165, i32 %166)
  %168 = load i32, i32* @FALSE, align 4
  store i32 %168, i32* %5, align 4
  br label %259

169:                                              ; preds = %151
  br label %170

170:                                              ; preds = %169, %81
  %171 = load i64*, i64** %7, align 8
  %172 = call i64 @wcslen(i64* %171)
  %173 = load i64*, i64** %9, align 8
  %174 = call i64 @wcslen(i64* %173)
  %175 = add nsw i64 %172, %174
  %176 = trunc i64 %175 to i32
  %177 = sext i32 %176 to i64
  %178 = mul i64 %177, 4
  %179 = add i64 %178, 4
  %180 = trunc i64 %179 to i32
  store i32 %180, i32* %12, align 4
  %181 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %182 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %182, i32 0, i32 2
  store i64 0, i64* %183, align 8
  %184 = load i32, i32* %12, align 4
  %185 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %186 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %186, i32 0, i32 0
  store i32 %184, i32* %187, align 8
  %188 = load i32, i32* %12, align 4
  %189 = load i32, i32* @TAG_WLDR_NAME, align 4
  %190 = call i8* @FrLdrHeapAlloc(i32 %188, i32 %189)
  %191 = bitcast i8* %190 to %struct.TYPE_5__*
  %192 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %193 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %192, i32 0, i32 0
  %194 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %193, i32 0, i32 1
  store %struct.TYPE_5__* %191, %struct.TYPE_5__** %194, align 8
  %195 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %196 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %195, i32 0, i32 0
  %197 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %196, i32 0, i32 1
  %198 = load %struct.TYPE_5__*, %struct.TYPE_5__** %197, align 8
  %199 = icmp ne %struct.TYPE_5__* %198, null
  br i1 %199, label %202, label %200

200:                                              ; preds = %170
  %201 = load i32, i32* @FALSE, align 4
  store i32 %201, i32* %5, align 4
  br label %259

202:                                              ; preds = %170
  %203 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %204 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %203, i32 0, i32 0
  %205 = load i64*, i64** %7, align 8
  %206 = call i32 (%struct.TYPE_6__*, ...) @RtlAppendUnicodeToString(%struct.TYPE_6__* %204, i64* %205)
  store i32 %206, i32* %11, align 4
  %207 = load i32, i32* %11, align 4
  %208 = call i32 @NT_SUCCESS(i32 %207)
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %212, label %210

210:                                              ; preds = %202
  %211 = load i32, i32* @FALSE, align 4
  store i32 %211, i32* %5, align 4
  br label %259

212:                                              ; preds = %202
  %213 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %214 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %213, i32 0, i32 0
  %215 = load i64*, i64** %9, align 8
  %216 = call i32 (%struct.TYPE_6__*, ...) @RtlAppendUnicodeToString(%struct.TYPE_6__* %214, i64* %215)
  store i32 %216, i32* %11, align 4
  %217 = load i32, i32* %11, align 4
  %218 = call i32 @NT_SUCCESS(i32 %217)
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %222, label %220

220:                                              ; preds = %212
  %221 = load i32, i32* @FALSE, align 4
  store i32 %221, i32* %5, align 4
  br label %259

222:                                              ; preds = %212
  %223 = load i32*, i32** %6, align 8
  %224 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %225 = call i32 @InsertInBootDriverList(i32* %223, %struct.TYPE_5__* %224)
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %257, label %227

227:                                              ; preds = %222
  %228 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %229 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %228, i32 0, i32 1
  %230 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %229, i32 0, i32 1
  %231 = load %struct.TYPE_5__*, %struct.TYPE_5__** %230, align 8
  %232 = icmp ne %struct.TYPE_5__* %231, null
  br i1 %232, label %233, label %240

233:                                              ; preds = %227
  %234 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %235 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %234, i32 0, i32 1
  %236 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %235, i32 0, i32 1
  %237 = load %struct.TYPE_5__*, %struct.TYPE_5__** %236, align 8
  %238 = load i32, i32* @TAG_WLDR_NAME, align 4
  %239 = call i32 @FrLdrHeapFree(%struct.TYPE_5__* %237, i32 %238)
  br label %240

240:                                              ; preds = %233, %227
  %241 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %242 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %241, i32 0, i32 0
  %243 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %242, i32 0, i32 1
  %244 = load %struct.TYPE_5__*, %struct.TYPE_5__** %243, align 8
  %245 = icmp ne %struct.TYPE_5__* %244, null
  br i1 %245, label %246, label %253

246:                                              ; preds = %240
  %247 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %248 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %247, i32 0, i32 0
  %249 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %248, i32 0, i32 1
  %250 = load %struct.TYPE_5__*, %struct.TYPE_5__** %249, align 8
  %251 = load i32, i32* @TAG_WLDR_NAME, align 4
  %252 = call i32 @FrLdrHeapFree(%struct.TYPE_5__* %250, i32 %251)
  br label %253

253:                                              ; preds = %246, %240
  %254 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %255 = load i32, i32* @TAG_WLDR_BDE, align 4
  %256 = call i32 @FrLdrHeapFree(%struct.TYPE_5__* %254, i32 %255)
  br label %257

257:                                              ; preds = %253, %222
  %258 = load i32, i32* @TRUE, align 4
  store i32 %258, i32* %5, align 4
  br label %259

259:                                              ; preds = %257, %220, %210, %200, %158, %140, %121, %109, %70, %57, %18
  %260 = load i32, i32* %5, align 4
  ret i32 %260
}

declare dso_local i8* @FrLdrHeapAlloc(i32, i32) #1

declare dso_local i64 @wcslen(i64*) #1

declare dso_local i32 @FrLdrHeapFree(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @RtlAppendUnicodeToString(%struct.TYPE_6__*, ...) #1

declare dso_local i32 @NT_SUCCESS(i32) #1

declare dso_local i32 @InsertInBootDriverList(i32*, %struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
