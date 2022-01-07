; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/taskmgr/extr_graphctl.c_GraphCtrl_DrawPoint.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/taskmgr/extr_graphctl.c_GraphCtrl_DrawPoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32*, i32, i32, i32, i32*, i32, i32*, %struct.TYPE_8__, %struct.TYPE_6__, i64*, i32, i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i64 }
%struct.TYPE_6__ = type { i32, i32 }

@SRCCOPY = common dso_local global i32 0, align 4
@MAX_PLOTS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @GraphCtrl_DrawPoint(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_8__, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_8__, align 8
  %11 = alloca %struct.TYPE_8__, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 8
  %14 = load i32*, i32** %13, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %263

16:                                               ; preds = %1
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 8
  %19 = load i32*, i32** %18, align 8
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 9
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 9
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = add nsw i32 %27, 1
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 13
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 12
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 8
  %37 = load i32*, i32** %36, align 8
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 9
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = add nsw i32 %41, %44
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 9
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = add nsw i32 %49, 1
  %51 = load i32, i32* @SRCCOPY, align 4
  %52 = call i32 @BitBlt(i32* %19, i32 %23, i32 %28, i32 %31, i32 %34, i32* %37, i32 %45, i32 %50, i32 %51)
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 9
  %55 = bitcast %struct.TYPE_8__* %8 to i8*
  %56 = bitcast %struct.TYPE_8__* %54 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %55, i8* align 8 %56, i64 24, i1 false)
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = sub nsw i32 %58, %61
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  store i32 %62, i32* %63, align 8
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 8
  %66 = load i32*, i32** %65, align 8
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 7
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @FillRect(i32* %66, %struct.TYPE_8__* %8, i32 %69)
  store i32 0, i32* %9, align 4
  br label %71

71:                                               ; preds = %259, %16
  %72 = load i32, i32* %9, align 4
  %73 = load i32, i32* @MAX_PLOTS, align 4
  %74 = icmp slt i32 %72, %73
  br i1 %74, label %75, label %262

75:                                               ; preds = %71
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 8
  %78 = load i32*, i32** %77, align 8
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 11
  %81 = load i64*, i64** %80, align 8
  %82 = load i32, i32* %9, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i64, i64* %81, i64 %83
  %85 = load i64, i64* %84, align 8
  %86 = call i64 @SelectObject(i32* %78, i64 %85)
  store i64 %86, i64* %7, align 8
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 9
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = sub nsw i32 %90, %93
  store i32 %94, i32* %4, align 4
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 9
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 3
  %98 = load i64, i64* %97, align 8
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 2
  %101 = load i32*, i32** %100, align 8
  %102 = load i32, i32* %9, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %101, i64 %103
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 3
  %108 = load i32, i32* %107, align 8
  %109 = sub nsw i32 %105, %108
  %110 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 4
  %112 = load i32, i32* %111, align 4
  %113 = mul nsw i32 %109, %112
  %114 = sext i32 %113 to i64
  %115 = sub nsw i64 %98, %114
  %116 = trunc i64 %115 to i32
  store i32 %116, i32* %6, align 4
  %117 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 8
  %119 = load i32*, i32** %118, align 8
  %120 = load i32, i32* %4, align 4
  %121 = load i32, i32* %6, align 4
  %122 = call i32 @MoveToEx(i32* %119, i32 %120, i32 %121, i32* null)
  %123 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i32 0, i32 9
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 8
  %127 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i32 0, i32 5
  %129 = load i32, i32* %128, align 8
  %130 = sub nsw i32 %126, %129
  store i32 %130, i32* %3, align 4
  %131 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %132 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %131, i32 0, i32 9
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %132, i32 0, i32 3
  %134 = load i64, i64* %133, align 8
  %135 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %135, i32 0, i32 6
  %137 = load i32*, i32** %136, align 8
  %138 = load i32, i32* %9, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i32, i32* %137, i64 %139
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %143 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %142, i32 0, i32 3
  %144 = load i32, i32* %143, align 8
  %145 = sub nsw i32 %141, %144
  %146 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %147 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %146, i32 0, i32 4
  %148 = load i32, i32* %147, align 4
  %149 = mul nsw i32 %145, %148
  %150 = sext i32 %149 to i64
  %151 = sub nsw i64 %134, %150
  %152 = trunc i64 %151 to i32
  store i32 %152, i32* %5, align 4
  %153 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %154 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %153, i32 0, i32 8
  %155 = load i32*, i32** %154, align 8
  %156 = load i32, i32* %3, align 4
  %157 = load i32, i32* %5, align 4
  %158 = call i32 @LineTo(i32* %155, i32 %156, i32 %157)
  %159 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %160 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %159, i32 0, i32 8
  %161 = load i32*, i32** %160, align 8
  %162 = load i64, i64* %7, align 8
  %163 = call i64 @SelectObject(i32* %161, i64 %162)
  %164 = load i32, i32* %6, align 4
  %165 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %166 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %165, i32 0, i32 9
  %167 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  %169 = icmp sle i32 %164, %168
  br i1 %169, label %177, label %170

170:                                              ; preds = %75
  %171 = load i32, i32* %5, align 4
  %172 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %173 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %172, i32 0, i32 9
  %174 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = icmp sle i32 %171, %175
  br i1 %176, label %177, label %202

177:                                              ; preds = %170, %75
  %178 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %179 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %178, i32 0, i32 9
  %180 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 4
  %182 = add nsw i32 %181, 1
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 3
  store i64 %183, i64* %184, align 8
  %185 = load i32, i32* %4, align 4
  %186 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  store i32 %185, i32* %186, align 8
  %187 = load i32, i32* %3, align 4
  %188 = add nsw i32 %187, 1
  %189 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 2
  store i32 %188, i32* %189, align 8
  %190 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %191 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %190, i32 0, i32 10
  %192 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 1
  store i32 %193, i32* %194, align 4
  %195 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %196 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %195, i32 0, i32 8
  %197 = load i32*, i32** %196, align 8
  %198 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %199 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %198, i32 0, i32 7
  %200 = load i32, i32* %199, align 8
  %201 = call i32 @FillRect(i32* %197, %struct.TYPE_8__* %10, i32 %200)
  br label %202

202:                                              ; preds = %177, %170
  %203 = load i32, i32* %6, align 4
  %204 = sext i32 %203 to i64
  %205 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %206 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %205, i32 0, i32 9
  %207 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %206, i32 0, i32 3
  %208 = load i64, i64* %207, align 8
  %209 = icmp sge i64 %204, %208
  br i1 %209, label %218, label %210

210:                                              ; preds = %202
  %211 = load i32, i32* %5, align 4
  %212 = sext i32 %211 to i64
  %213 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %214 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %213, i32 0, i32 9
  %215 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %214, i32 0, i32 3
  %216 = load i64, i64* %215, align 8
  %217 = icmp sge i64 %212, %216
  br i1 %217, label %218, label %245

218:                                              ; preds = %210, %202
  %219 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %220 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %219, i32 0, i32 10
  %221 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %220, i32 0, i32 1
  %222 = load i32, i32* %221, align 4
  %223 = add nsw i32 %222, 1
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 3
  store i64 %224, i64* %225, align 8
  %226 = load i32, i32* %4, align 4
  %227 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  store i32 %226, i32* %227, align 8
  %228 = load i32, i32* %3, align 4
  %229 = add nsw i32 %228, 1
  %230 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 2
  store i32 %229, i32* %230, align 8
  %231 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %232 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %231, i32 0, i32 9
  %233 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %232, i32 0, i32 3
  %234 = load i64, i64* %233, align 8
  %235 = add nsw i64 %234, 1
  %236 = trunc i64 %235 to i32
  %237 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 1
  store i32 %236, i32* %237, align 4
  %238 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %239 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %238, i32 0, i32 8
  %240 = load i32*, i32** %239, align 8
  %241 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %242 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %241, i32 0, i32 7
  %243 = load i32, i32* %242, align 8
  %244 = call i32 @FillRect(i32* %240, %struct.TYPE_8__* %11, i32 %243)
  br label %245

245:                                              ; preds = %218, %210
  %246 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %247 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %246, i32 0, i32 6
  %248 = load i32*, i32** %247, align 8
  %249 = load i32, i32* %9, align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds i32, i32* %248, i64 %250
  %252 = load i32, i32* %251, align 4
  %253 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %254 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %253, i32 0, i32 2
  %255 = load i32*, i32** %254, align 8
  %256 = load i32, i32* %9, align 4
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds i32, i32* %255, i64 %257
  store i32 %252, i32* %258, align 4
  br label %259

259:                                              ; preds = %245
  %260 = load i32, i32* %9, align 4
  %261 = add nsw i32 %260, 1
  store i32 %261, i32* %9, align 4
  br label %71

262:                                              ; preds = %71
  br label %263

263:                                              ; preds = %262, %1
  ret void
}

declare dso_local i32 @BitBlt(i32*, i32, i32, i32, i32, i32*, i32, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @FillRect(i32*, %struct.TYPE_8__*, i32) #1

declare dso_local i64 @SelectObject(i32*, i64) #1

declare dso_local i32 @MoveToEx(i32*, i32, i32, i32*) #1

declare dso_local i32 @LineTo(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
