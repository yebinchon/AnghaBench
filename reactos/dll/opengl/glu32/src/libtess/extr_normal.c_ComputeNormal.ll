; ModuleID = '/home/carl/AnghaBench/reactos/dll/opengl/glu32/src/libtess/extr_normal.c_ComputeNormal.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/opengl/glu32/src/libtess/extr_normal.c_ComputeNormal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64*, %struct.TYPE_6__* }

@GLU_TESS_MAX_COORD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, i64*)* @ComputeNormal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ComputeNormal(%struct.TYPE_7__* %0, i64* %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca [3 x i64], align 16
  %12 = alloca [3 x i64], align 16
  %13 = alloca [3 x i64], align 16
  %14 = alloca [3 x i64], align 16
  %15 = alloca [3 x i64], align 16
  %16 = alloca [3 x %struct.TYPE_6__*], align 16
  %17 = alloca [3 x %struct.TYPE_6__*], align 16
  %18 = alloca %struct.TYPE_6__*, align 8
  %19 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store i64* %1, i64** %4, align 8
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  store %struct.TYPE_6__* %23, %struct.TYPE_6__** %18, align 8
  %24 = load i32, i32* @GLU_TESS_MAX_COORD, align 4
  %25 = mul nsw i32 -2, %24
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [3 x i64], [3 x i64]* %11, i64 0, i64 2
  store i64 %26, i64* %27, align 16
  %28 = getelementptr inbounds [3 x i64], [3 x i64]* %11, i64 0, i64 1
  store i64 %26, i64* %28, align 8
  %29 = getelementptr inbounds [3 x i64], [3 x i64]* %11, i64 0, i64 0
  store i64 %26, i64* %29, align 16
  %30 = load i32, i32* @GLU_TESS_MAX_COORD, align 4
  %31 = mul nsw i32 2, %30
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [3 x i64], [3 x i64]* %12, i64 0, i64 2
  store i64 %32, i64* %33, align 16
  %34 = getelementptr inbounds [3 x i64], [3 x i64]* %12, i64 0, i64 1
  store i64 %32, i64* %34, align 8
  %35 = getelementptr inbounds [3 x i64], [3 x i64]* %12, i64 0, i64 0
  store i64 %32, i64* %35, align 16
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 1
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %37, align 8
  store %struct.TYPE_6__* %38, %struct.TYPE_6__** %5, align 8
  br label %39

39:                                               ; preds = %91, %2
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %42 = icmp ne %struct.TYPE_6__* %40, %41
  br i1 %42, label %43, label %95

43:                                               ; preds = %39
  store i32 0, i32* %19, align 4
  br label %44

44:                                               ; preds = %87, %43
  %45 = load i32, i32* %19, align 4
  %46 = icmp slt i32 %45, 3
  br i1 %46, label %47, label %90

47:                                               ; preds = %44
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load i64*, i64** %49, align 8
  %51 = load i32, i32* %19, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i64, i64* %50, i64 %52
  %54 = load i64, i64* %53, align 8
  store i64 %54, i64* %8, align 8
  %55 = load i64, i64* %8, align 8
  %56 = load i32, i32* %19, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds [3 x i64], [3 x i64]* %12, i64 0, i64 %57
  %59 = load i64, i64* %58, align 8
  %60 = icmp slt i64 %55, %59
  br i1 %60, label %61, label %70

61:                                               ; preds = %47
  %62 = load i64, i64* %8, align 8
  %63 = load i32, i32* %19, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds [3 x i64], [3 x i64]* %12, i64 0, i64 %64
  store i64 %62, i64* %65, align 8
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %67 = load i32, i32* %19, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds [3 x %struct.TYPE_6__*], [3 x %struct.TYPE_6__*]* %17, i64 0, i64 %68
  store %struct.TYPE_6__* %66, %struct.TYPE_6__** %69, align 8
  br label %70

70:                                               ; preds = %61, %47
  %71 = load i64, i64* %8, align 8
  %72 = load i32, i32* %19, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds [3 x i64], [3 x i64]* %11, i64 0, i64 %73
  %75 = load i64, i64* %74, align 8
  %76 = icmp sgt i64 %71, %75
  br i1 %76, label %77, label %86

77:                                               ; preds = %70
  %78 = load i64, i64* %8, align 8
  %79 = load i32, i32* %19, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds [3 x i64], [3 x i64]* %11, i64 0, i64 %80
  store i64 %78, i64* %81, align 8
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %83 = load i32, i32* %19, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds [3 x %struct.TYPE_6__*], [3 x %struct.TYPE_6__*]* %16, i64 0, i64 %84
  store %struct.TYPE_6__* %82, %struct.TYPE_6__** %85, align 8
  br label %86

86:                                               ; preds = %77, %70
  br label %87

87:                                               ; preds = %86
  %88 = load i32, i32* %19, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %19, align 4
  br label %44

90:                                               ; preds = %44
  br label %91

91:                                               ; preds = %90
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 1
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %93, align 8
  store %struct.TYPE_6__* %94, %struct.TYPE_6__** %5, align 8
  br label %39

95:                                               ; preds = %39
  store i32 0, i32* %19, align 4
  %96 = getelementptr inbounds [3 x i64], [3 x i64]* %11, i64 0, i64 1
  %97 = load i64, i64* %96, align 8
  %98 = getelementptr inbounds [3 x i64], [3 x i64]* %12, i64 0, i64 1
  %99 = load i64, i64* %98, align 8
  %100 = sub nsw i64 %97, %99
  %101 = getelementptr inbounds [3 x i64], [3 x i64]* %11, i64 0, i64 0
  %102 = load i64, i64* %101, align 16
  %103 = getelementptr inbounds [3 x i64], [3 x i64]* %12, i64 0, i64 0
  %104 = load i64, i64* %103, align 16
  %105 = sub nsw i64 %102, %104
  %106 = icmp sgt i64 %100, %105
  br i1 %106, label %107, label %108

107:                                              ; preds = %95
  store i32 1, i32* %19, align 4
  br label %108

108:                                              ; preds = %107, %95
  %109 = getelementptr inbounds [3 x i64], [3 x i64]* %11, i64 0, i64 2
  %110 = load i64, i64* %109, align 16
  %111 = getelementptr inbounds [3 x i64], [3 x i64]* %12, i64 0, i64 2
  %112 = load i64, i64* %111, align 16
  %113 = sub nsw i64 %110, %112
  %114 = load i32, i32* %19, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds [3 x i64], [3 x i64]* %11, i64 0, i64 %115
  %117 = load i64, i64* %116, align 8
  %118 = load i32, i32* %19, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds [3 x i64], [3 x i64]* %12, i64 0, i64 %119
  %121 = load i64, i64* %120, align 8
  %122 = sub nsw i64 %117, %121
  %123 = icmp sgt i64 %113, %122
  br i1 %123, label %124, label %125

124:                                              ; preds = %108
  store i32 2, i32* %19, align 4
  br label %125

125:                                              ; preds = %124, %108
  %126 = load i32, i32* %19, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds [3 x i64], [3 x i64]* %12, i64 0, i64 %127
  %129 = load i64, i64* %128, align 8
  %130 = load i32, i32* %19, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds [3 x i64], [3 x i64]* %11, i64 0, i64 %131
  %133 = load i64, i64* %132, align 8
  %134 = icmp sge i64 %129, %133
  br i1 %134, label %135, label %142

135:                                              ; preds = %125
  %136 = load i64*, i64** %4, align 8
  %137 = getelementptr inbounds i64, i64* %136, i64 0
  store i64 0, i64* %137, align 8
  %138 = load i64*, i64** %4, align 8
  %139 = getelementptr inbounds i64, i64* %138, i64 1
  store i64 0, i64* %139, align 8
  %140 = load i64*, i64** %4, align 8
  %141 = getelementptr inbounds i64, i64* %140, i64 2
  store i64 1, i64* %141, align 8
  br label %320

142:                                              ; preds = %125
  store i64 0, i64* %10, align 8
  %143 = load i32, i32* %19, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds [3 x %struct.TYPE_6__*], [3 x %struct.TYPE_6__*]* %17, i64 0, i64 %144
  %146 = load %struct.TYPE_6__*, %struct.TYPE_6__** %145, align 8
  store %struct.TYPE_6__* %146, %struct.TYPE_6__** %6, align 8
  %147 = load i32, i32* %19, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds [3 x %struct.TYPE_6__*], [3 x %struct.TYPE_6__*]* %16, i64 0, i64 %148
  %150 = load %struct.TYPE_6__*, %struct.TYPE_6__** %149, align 8
  store %struct.TYPE_6__* %150, %struct.TYPE_6__** %7, align 8
  %151 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i32 0, i32 0
  %153 = load i64*, i64** %152, align 8
  %154 = getelementptr inbounds i64, i64* %153, i64 0
  %155 = load i64, i64* %154, align 8
  %156 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %157 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %156, i32 0, i32 0
  %158 = load i64*, i64** %157, align 8
  %159 = getelementptr inbounds i64, i64* %158, i64 0
  %160 = load i64, i64* %159, align 8
  %161 = sub nsw i64 %155, %160
  %162 = getelementptr inbounds [3 x i64], [3 x i64]* %13, i64 0, i64 0
  store i64 %161, i64* %162, align 16
  %163 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %164 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %163, i32 0, i32 0
  %165 = load i64*, i64** %164, align 8
  %166 = getelementptr inbounds i64, i64* %165, i64 1
  %167 = load i64, i64* %166, align 8
  %168 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %169 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %168, i32 0, i32 0
  %170 = load i64*, i64** %169, align 8
  %171 = getelementptr inbounds i64, i64* %170, i64 1
  %172 = load i64, i64* %171, align 8
  %173 = sub nsw i64 %167, %172
  %174 = getelementptr inbounds [3 x i64], [3 x i64]* %13, i64 0, i64 1
  store i64 %173, i64* %174, align 8
  %175 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %176 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %175, i32 0, i32 0
  %177 = load i64*, i64** %176, align 8
  %178 = getelementptr inbounds i64, i64* %177, i64 2
  %179 = load i64, i64* %178, align 8
  %180 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %181 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %180, i32 0, i32 0
  %182 = load i64*, i64** %181, align 8
  %183 = getelementptr inbounds i64, i64* %182, i64 2
  %184 = load i64, i64* %183, align 8
  %185 = sub nsw i64 %179, %184
  %186 = getelementptr inbounds [3 x i64], [3 x i64]* %13, i64 0, i64 2
  store i64 %185, i64* %186, align 16
  %187 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %188 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %187, i32 0, i32 1
  %189 = load %struct.TYPE_6__*, %struct.TYPE_6__** %188, align 8
  store %struct.TYPE_6__* %189, %struct.TYPE_6__** %5, align 8
  br label %190

190:                                              ; preds = %302, %142
  %191 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %192 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %193 = icmp ne %struct.TYPE_6__* %191, %192
  br i1 %193, label %194, label %306

194:                                              ; preds = %190
  %195 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %196 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %195, i32 0, i32 0
  %197 = load i64*, i64** %196, align 8
  %198 = getelementptr inbounds i64, i64* %197, i64 0
  %199 = load i64, i64* %198, align 8
  %200 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %201 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %200, i32 0, i32 0
  %202 = load i64*, i64** %201, align 8
  %203 = getelementptr inbounds i64, i64* %202, i64 0
  %204 = load i64, i64* %203, align 8
  %205 = sub nsw i64 %199, %204
  %206 = getelementptr inbounds [3 x i64], [3 x i64]* %14, i64 0, i64 0
  store i64 %205, i64* %206, align 16
  %207 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %208 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %207, i32 0, i32 0
  %209 = load i64*, i64** %208, align 8
  %210 = getelementptr inbounds i64, i64* %209, i64 1
  %211 = load i64, i64* %210, align 8
  %212 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %213 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %212, i32 0, i32 0
  %214 = load i64*, i64** %213, align 8
  %215 = getelementptr inbounds i64, i64* %214, i64 1
  %216 = load i64, i64* %215, align 8
  %217 = sub nsw i64 %211, %216
  %218 = getelementptr inbounds [3 x i64], [3 x i64]* %14, i64 0, i64 1
  store i64 %217, i64* %218, align 8
  %219 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %220 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %219, i32 0, i32 0
  %221 = load i64*, i64** %220, align 8
  %222 = getelementptr inbounds i64, i64* %221, i64 2
  %223 = load i64, i64* %222, align 8
  %224 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %225 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %224, i32 0, i32 0
  %226 = load i64*, i64** %225, align 8
  %227 = getelementptr inbounds i64, i64* %226, i64 2
  %228 = load i64, i64* %227, align 8
  %229 = sub nsw i64 %223, %228
  %230 = getelementptr inbounds [3 x i64], [3 x i64]* %14, i64 0, i64 2
  store i64 %229, i64* %230, align 16
  %231 = getelementptr inbounds [3 x i64], [3 x i64]* %13, i64 0, i64 1
  %232 = load i64, i64* %231, align 8
  %233 = getelementptr inbounds [3 x i64], [3 x i64]* %14, i64 0, i64 2
  %234 = load i64, i64* %233, align 16
  %235 = mul nsw i64 %232, %234
  %236 = getelementptr inbounds [3 x i64], [3 x i64]* %13, i64 0, i64 2
  %237 = load i64, i64* %236, align 16
  %238 = getelementptr inbounds [3 x i64], [3 x i64]* %14, i64 0, i64 1
  %239 = load i64, i64* %238, align 8
  %240 = mul nsw i64 %237, %239
  %241 = sub nsw i64 %235, %240
  %242 = getelementptr inbounds [3 x i64], [3 x i64]* %15, i64 0, i64 0
  store i64 %241, i64* %242, align 16
  %243 = getelementptr inbounds [3 x i64], [3 x i64]* %13, i64 0, i64 2
  %244 = load i64, i64* %243, align 16
  %245 = getelementptr inbounds [3 x i64], [3 x i64]* %14, i64 0, i64 0
  %246 = load i64, i64* %245, align 16
  %247 = mul nsw i64 %244, %246
  %248 = getelementptr inbounds [3 x i64], [3 x i64]* %13, i64 0, i64 0
  %249 = load i64, i64* %248, align 16
  %250 = getelementptr inbounds [3 x i64], [3 x i64]* %14, i64 0, i64 2
  %251 = load i64, i64* %250, align 16
  %252 = mul nsw i64 %249, %251
  %253 = sub nsw i64 %247, %252
  %254 = getelementptr inbounds [3 x i64], [3 x i64]* %15, i64 0, i64 1
  store i64 %253, i64* %254, align 8
  %255 = getelementptr inbounds [3 x i64], [3 x i64]* %13, i64 0, i64 0
  %256 = load i64, i64* %255, align 16
  %257 = getelementptr inbounds [3 x i64], [3 x i64]* %14, i64 0, i64 1
  %258 = load i64, i64* %257, align 8
  %259 = mul nsw i64 %256, %258
  %260 = getelementptr inbounds [3 x i64], [3 x i64]* %13, i64 0, i64 1
  %261 = load i64, i64* %260, align 8
  %262 = getelementptr inbounds [3 x i64], [3 x i64]* %14, i64 0, i64 0
  %263 = load i64, i64* %262, align 16
  %264 = mul nsw i64 %261, %263
  %265 = sub nsw i64 %259, %264
  %266 = getelementptr inbounds [3 x i64], [3 x i64]* %15, i64 0, i64 2
  store i64 %265, i64* %266, align 16
  %267 = getelementptr inbounds [3 x i64], [3 x i64]* %15, i64 0, i64 0
  %268 = load i64, i64* %267, align 16
  %269 = getelementptr inbounds [3 x i64], [3 x i64]* %15, i64 0, i64 0
  %270 = load i64, i64* %269, align 16
  %271 = mul nsw i64 %268, %270
  %272 = getelementptr inbounds [3 x i64], [3 x i64]* %15, i64 0, i64 1
  %273 = load i64, i64* %272, align 8
  %274 = getelementptr inbounds [3 x i64], [3 x i64]* %15, i64 0, i64 1
  %275 = load i64, i64* %274, align 8
  %276 = mul nsw i64 %273, %275
  %277 = add nsw i64 %271, %276
  %278 = getelementptr inbounds [3 x i64], [3 x i64]* %15, i64 0, i64 2
  %279 = load i64, i64* %278, align 16
  %280 = getelementptr inbounds [3 x i64], [3 x i64]* %15, i64 0, i64 2
  %281 = load i64, i64* %280, align 16
  %282 = mul nsw i64 %279, %281
  %283 = add nsw i64 %277, %282
  store i64 %283, i64* %9, align 8
  %284 = load i64, i64* %9, align 8
  %285 = load i64, i64* %10, align 8
  %286 = icmp sgt i64 %284, %285
  br i1 %286, label %287, label %301

287:                                              ; preds = %194
  %288 = load i64, i64* %9, align 8
  store i64 %288, i64* %10, align 8
  %289 = getelementptr inbounds [3 x i64], [3 x i64]* %15, i64 0, i64 0
  %290 = load i64, i64* %289, align 16
  %291 = load i64*, i64** %4, align 8
  %292 = getelementptr inbounds i64, i64* %291, i64 0
  store i64 %290, i64* %292, align 8
  %293 = getelementptr inbounds [3 x i64], [3 x i64]* %15, i64 0, i64 1
  %294 = load i64, i64* %293, align 8
  %295 = load i64*, i64** %4, align 8
  %296 = getelementptr inbounds i64, i64* %295, i64 1
  store i64 %294, i64* %296, align 8
  %297 = getelementptr inbounds [3 x i64], [3 x i64]* %15, i64 0, i64 2
  %298 = load i64, i64* %297, align 16
  %299 = load i64*, i64** %4, align 8
  %300 = getelementptr inbounds i64, i64* %299, i64 2
  store i64 %298, i64* %300, align 8
  br label %301

301:                                              ; preds = %287, %194
  br label %302

302:                                              ; preds = %301
  %303 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %304 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %303, i32 0, i32 1
  %305 = load %struct.TYPE_6__*, %struct.TYPE_6__** %304, align 8
  store %struct.TYPE_6__* %305, %struct.TYPE_6__** %5, align 8
  br label %190

306:                                              ; preds = %190
  %307 = load i64, i64* %10, align 8
  %308 = icmp sle i64 %307, 0
  br i1 %308, label %309, label %320

309:                                              ; preds = %306
  %310 = load i64*, i64** %4, align 8
  %311 = getelementptr inbounds i64, i64* %310, i64 2
  store i64 0, i64* %311, align 8
  %312 = load i64*, i64** %4, align 8
  %313 = getelementptr inbounds i64, i64* %312, i64 1
  store i64 0, i64* %313, align 8
  %314 = load i64*, i64** %4, align 8
  %315 = getelementptr inbounds i64, i64* %314, i64 0
  store i64 0, i64* %315, align 8
  %316 = load i64*, i64** %4, align 8
  %317 = getelementptr inbounds [3 x i64], [3 x i64]* %13, i64 0, i64 0
  %318 = call i64 @LongAxis(i64* %317)
  %319 = getelementptr inbounds i64, i64* %316, i64 %318
  store i64 1, i64* %319, align 8
  br label %320

320:                                              ; preds = %135, %309, %306
  ret void
}

declare dso_local i64 @LongAxis(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
