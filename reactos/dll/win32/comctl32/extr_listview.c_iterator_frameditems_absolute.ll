; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_listview.c_iterator_frameditems_absolute.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_listview.c_iterator_frameditems_absolute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { i32, i32, %struct.TYPE_23__ }
%struct.TYPE_23__ = type { i64, i64 }
%struct.TYPE_24__ = type { i64, i64, i32, i32, i32, %struct.TYPE_21__, i32, i32 }
%struct.TYPE_21__ = type { i32, i32 }
%struct.TYPE_22__ = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [12 x i8] c"(frame=%s)\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@LV_VIEW_ICON = common dso_local global i64 0, align 8
@LV_VIEW_SMALLICON = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"building icon ranges:\0A\00", align 1
@LV_VIEW_DETAILS = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [15 x i8] c"    report=%s\0A\00", align 1
@.str.3 = private unnamed_addr constant [76 x i8] c"nPerCol=%d, nFirstRow=%d, nLastRow=%d, nFirstCol=%d, nLastCol=%d, lower=%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"building list ranges:\0A\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"   list=%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_25__*, %struct.TYPE_24__*, %struct.TYPE_22__*)* @iterator_frameditems_absolute to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iterator_frameditems_absolute(%struct.TYPE_25__* %0, %struct.TYPE_24__* %1, %struct.TYPE_22__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_25__*, align 8
  %6 = alloca %struct.TYPE_24__*, align 8
  %7 = alloca %struct.TYPE_22__*, align 8
  %8 = alloca %struct.TYPE_22__, align 4
  %9 = alloca %struct.TYPE_22__, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_23__, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca %struct.TYPE_23__, align 8
  %20 = alloca i64, align 8
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %5, align 8
  store %struct.TYPE_24__* %1, %struct.TYPE_24__** %6, align 8
  store %struct.TYPE_22__* %2, %struct.TYPE_22__** %7, align 8
  %21 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %22 = call i32 @wine_dbgstr_rect(%struct.TYPE_22__* %21)
  %23 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %25 = call i32 @iterator_empty(%struct.TYPE_25__* %24)
  %26 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %3
  %31 = load i32, i32* @TRUE, align 4
  store i32 %31, i32* %4, align 4
  br label %385

32:                                               ; preds = %3
  %33 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @LV_VIEW_ICON, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %44, label %38

38:                                               ; preds = %32
  %39 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @LV_VIEW_SMALLICON, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %133

44:                                               ; preds = %38, %32
  %45 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @LV_VIEW_ICON, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %71

50:                                               ; preds = %44
  %51 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = icmp ne i32 %53, -1
  br i1 %54, label %55, label %71

55:                                               ; preds = %50
  %56 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %57 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @LISTVIEW_GetItemBox(%struct.TYPE_24__* %56, i32 %59, %struct.TYPE_22__* %8)
  %61 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %62 = call i64 @IntersectRect(%struct.TYPE_22__* %9, %struct.TYPE_22__* %8, %struct.TYPE_22__* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %55
  %65 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 8
  br label %70

70:                                               ; preds = %64, %55
  br label %71

71:                                               ; preds = %70, %50, %44
  %72 = call i32 @ranges_create(i64 50)
  store i32 %72, i32* %10, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %76, label %74

74:                                               ; preds = %71
  %75 = load i32, i32* @FALSE, align 4
  store i32 %75, i32* %4, align 4
  br label %385

76:                                               ; preds = %71
  %77 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %78 = load i32, i32* %10, align 4
  %79 = call i32 @iterator_rangesitems(%struct.TYPE_25__* %77, i32 %78)
  %80 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  store i64 0, i64* %11, align 8
  br label %81

81:                                               ; preds = %128, %76
  %82 = load i64, i64* %11, align 8
  %83 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = icmp slt i64 %82, %85
  br i1 %86, label %87, label %131

87:                                               ; preds = %81
  %88 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %88, i32 0, i32 7
  %90 = load i32, i32* %89, align 8
  %91 = load i64, i64* %11, align 8
  %92 = call i64 @DPA_GetPtr(i32 %90, i64 %91)
  %93 = inttoptr i64 %92 to i8*
  %94 = ptrtoint i8* %93 to i32
  %95 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %8, i32 0, i32 0
  store i32 %94, i32* %95, align 4
  %96 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %96, i32 0, i32 6
  %98 = load i32, i32* %97, align 4
  %99 = load i64, i64* %11, align 8
  %100 = call i64 @DPA_GetPtr(i32 %98, i64 %99)
  %101 = inttoptr i64 %100 to i8*
  %102 = ptrtoint i8* %101 to i32
  %103 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %8, i32 0, i32 1
  store i32 %102, i32* %103, align 4
  %104 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %8, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %107 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %106, i32 0, i32 3
  %108 = load i32, i32* %107, align 4
  %109 = add nsw i32 %105, %108
  %110 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %8, i32 0, i32 2
  store i32 %109, i32* %110, align 4
  %111 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %8, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %114 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %113, i32 0, i32 4
  %115 = load i32, i32* %114, align 8
  %116 = add nsw i32 %112, %115
  %117 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %8, i32 0, i32 3
  store i32 %116, i32* %117, align 4
  %118 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %119 = call i64 @IntersectRect(%struct.TYPE_22__* %9, %struct.TYPE_22__* %8, %struct.TYPE_22__* %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %127

121:                                              ; preds = %87
  %122 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %123 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = load i64, i64* %11, align 8
  %126 = call i32 @ranges_additem(i32 %124, i64 %125)
  br label %127

127:                                              ; preds = %121, %87
  br label %128

128:                                              ; preds = %127
  %129 = load i64, i64* %11, align 8
  %130 = add nsw i64 %129, 1
  store i64 %130, i64* %11, align 8
  br label %81

131:                                              ; preds = %81
  %132 = load i32, i32* @TRUE, align 4
  store i32 %132, i32* %4, align 4
  br label %385

133:                                              ; preds = %38
  %134 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %135 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %134, i32 0, i32 1
  %136 = load i64, i64* %135, align 8
  %137 = load i64, i64* @LV_VIEW_DETAILS, align 8
  %138 = icmp eq i64 %136, %137
  br i1 %138, label %139, label %211

139:                                              ; preds = %133
  %140 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %141 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %144 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %143, i32 0, i32 3
  %145 = load i32, i32* %144, align 4
  %146 = icmp sge i32 %142, %145
  br i1 %146, label %147, label %149

147:                                              ; preds = %139
  %148 = load i32, i32* @TRUE, align 4
  store i32 %148, i32* %4, align 4
  br label %385

149:                                              ; preds = %139
  %150 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %151 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = sext i32 %152 to i64
  %154 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %155 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %154, i32 0, i32 4
  %156 = load i32, i32* %155, align 8
  %157 = sext i32 %156 to i64
  %158 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %159 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = mul nsw i64 %157, %160
  %162 = icmp sge i64 %153, %161
  br i1 %162, label %163, label %165

163:                                              ; preds = %149
  %164 = load i32, i32* @TRUE, align 4
  store i32 %164, i32* %4, align 4
  br label %385

165:                                              ; preds = %149
  %166 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %167 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  %169 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %170 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %169, i32 0, i32 4
  %171 = load i32, i32* %170, align 8
  %172 = sdiv i32 %168, %171
  %173 = call i8* @max(i32 %172, i32 0)
  %174 = ptrtoint i8* %173 to i64
  %175 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %12, i32 0, i32 0
  store i64 %174, i64* %175, align 8
  %176 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %177 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %176, i32 0, i32 3
  %178 = load i32, i32* %177, align 4
  %179 = sub nsw i32 %178, 1
  %180 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %181 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %180, i32 0, i32 4
  %182 = load i32, i32* %181, align 8
  %183 = sdiv i32 %179, %182
  %184 = sext i32 %183 to i64
  %185 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %186 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %185, i32 0, i32 0
  %187 = load i64, i64* %186, align 8
  %188 = sub nsw i64 %187, 1
  %189 = call i64 @min(i64 %184, i64 %188)
  %190 = add nsw i64 %189, 1
  %191 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %12, i32 0, i32 1
  store i64 %190, i64* %191, align 8
  %192 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %12, i32 0, i32 1
  %193 = load i64, i64* %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %12, i32 0, i32 0
  %195 = load i64, i64* %194, align 8
  %196 = icmp sle i64 %193, %195
  br i1 %196, label %197, label %199

197:                                              ; preds = %165
  %198 = load i32, i32* @TRUE, align 4
  store i32 %198, i32* %4, align 4
  br label %385

199:                                              ; preds = %165
  %200 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %201 = bitcast %struct.TYPE_23__* %12 to { i64, i64 }*
  %202 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %201, i32 0, i32 0
  %203 = load i64, i64* %202, align 8
  %204 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %201, i32 0, i32 1
  %205 = load i64, i64* %204, align 8
  %206 = call i32 @iterator_rangeitems(%struct.TYPE_25__* %200, i64 %203, i64 %205)
  %207 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %208 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %207, i32 0, i32 2
  %209 = call i32 @debugrange(%struct.TYPE_23__* %208)
  %210 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 %209)
  br label %382

211:                                              ; preds = %133
  %212 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %213 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %212, i32 0, i32 5
  %214 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 4
  %216 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %217 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %216, i32 0, i32 5
  %218 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %217, i32 0, i32 1
  %219 = load i32, i32* %218, align 4
  %220 = sub nsw i32 %215, %219
  %221 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %222 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %221, i32 0, i32 4
  %223 = load i32, i32* %222, align 8
  %224 = sdiv i32 %220, %223
  %225 = call i8* @max(i32 %224, i32 1)
  %226 = ptrtoint i8* %225 to i64
  store i64 %226, i64* %13, align 8
  %227 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %228 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %227, i32 0, i32 1
  %229 = load i32, i32* %228, align 4
  %230 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %231 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %230, i32 0, i32 4
  %232 = load i32, i32* %231, align 8
  %233 = sdiv i32 %229, %232
  %234 = call i8* @max(i32 %233, i32 0)
  %235 = ptrtoint i8* %234 to i64
  store i64 %235, i64* %14, align 8
  %236 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %237 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %236, i32 0, i32 3
  %238 = load i32, i32* %237, align 4
  %239 = sub nsw i32 %238, 1
  %240 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %241 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %240, i32 0, i32 4
  %242 = load i32, i32* %241, align 8
  %243 = sdiv i32 %239, %242
  %244 = sext i32 %243 to i64
  %245 = load i64, i64* %13, align 8
  %246 = sub nsw i64 %245, 1
  %247 = call i64 @min(i64 %244, i64 %246)
  store i64 %247, i64* %15, align 8
  %248 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %249 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %248, i32 0, i32 3
  %250 = load i32, i32* %249, align 4
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %252, label %280

252:                                              ; preds = %211
  %253 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %254 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %253, i32 0, i32 0
  %255 = load i32, i32* %254, align 4
  %256 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %257 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %256, i32 0, i32 3
  %258 = load i32, i32* %257, align 4
  %259 = sdiv i32 %255, %258
  %260 = call i8* @max(i32 %259, i32 0)
  %261 = ptrtoint i8* %260 to i64
  store i64 %261, i64* %16, align 8
  %262 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %263 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %262, i32 0, i32 2
  %264 = load i32, i32* %263, align 4
  %265 = sub nsw i32 %264, 1
  %266 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %267 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %266, i32 0, i32 3
  %268 = load i32, i32* %267, align 4
  %269 = sdiv i32 %265, %268
  %270 = sext i32 %269 to i64
  %271 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %272 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %271, i32 0, i32 0
  %273 = load i64, i64* %272, align 8
  %274 = load i64, i64* %13, align 8
  %275 = add nsw i64 %273, %274
  %276 = sub nsw i64 %275, 1
  %277 = load i64, i64* %13, align 8
  %278 = sdiv i64 %276, %277
  %279 = call i64 @min(i64 %270, i64 %278)
  store i64 %279, i64* %17, align 8
  br label %300

280:                                              ; preds = %211
  %281 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %282 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %281, i32 0, i32 0
  %283 = load i32, i32* %282, align 4
  %284 = call i8* @max(i32 %283, i32 0)
  %285 = ptrtoint i8* %284 to i64
  store i64 %285, i64* %16, align 8
  %286 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %287 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %286, i32 0, i32 2
  %288 = load i32, i32* %287, align 4
  %289 = sub nsw i32 %288, 1
  %290 = sext i32 %289 to i64
  %291 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %292 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %291, i32 0, i32 0
  %293 = load i64, i64* %292, align 8
  %294 = load i64, i64* %13, align 8
  %295 = add nsw i64 %293, %294
  %296 = sub nsw i64 %295, 1
  %297 = load i64, i64* %13, align 8
  %298 = sdiv i64 %296, %297
  %299 = call i64 @min(i64 %290, i64 %298)
  store i64 %299, i64* %17, align 8
  br label %300

300:                                              ; preds = %280, %252
  %301 = load i64, i64* %16, align 8
  %302 = load i64, i64* %13, align 8
  %303 = mul nsw i64 %301, %302
  %304 = load i64, i64* %14, align 8
  %305 = add nsw i64 %303, %304
  store i64 %305, i64* %18, align 8
  %306 = load i64, i64* %13, align 8
  %307 = load i64, i64* %14, align 8
  %308 = load i64, i64* %15, align 8
  %309 = load i64, i64* %16, align 8
  %310 = load i64, i64* %17, align 8
  %311 = load i64, i64* %18, align 8
  %312 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.3, i64 0, i64 0), i64 %306, i64 %307, i64 %308, i64 %309, i64 %310, i64 %311)
  %313 = load i64, i64* %17, align 8
  %314 = load i64, i64* %16, align 8
  %315 = icmp slt i64 %313, %314
  br i1 %315, label %320, label %316

316:                                              ; preds = %300
  %317 = load i64, i64* %15, align 8
  %318 = load i64, i64* %14, align 8
  %319 = icmp slt i64 %317, %318
  br i1 %319, label %320, label %322

320:                                              ; preds = %316, %300
  %321 = load i32, i32* @TRUE, align 4
  store i32 %321, i32* %4, align 4
  br label %385

322:                                              ; preds = %316
  %323 = load i64, i64* %17, align 8
  %324 = load i64, i64* %16, align 8
  %325 = sub nsw i64 %323, %324
  %326 = add nsw i64 %325, 1
  %327 = call i32 @ranges_create(i64 %326)
  store i32 %327, i32* %10, align 4
  %328 = icmp ne i32 %327, 0
  br i1 %328, label %331, label %329

329:                                              ; preds = %322
  %330 = load i32, i32* @FALSE, align 4
  store i32 %330, i32* %4, align 4
  br label %385

331:                                              ; preds = %322
  %332 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %333 = load i32, i32* %10, align 4
  %334 = call i32 @iterator_rangesitems(%struct.TYPE_25__* %332, i32 %333)
  %335 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  %336 = load i64, i64* %16, align 8
  store i64 %336, i64* %20, align 8
  br label %337

337:                                              ; preds = %378, %331
  %338 = load i64, i64* %20, align 8
  %339 = load i64, i64* %17, align 8
  %340 = icmp sle i64 %338, %339
  br i1 %340, label %341, label %381

341:                                              ; preds = %337
  %342 = load i64, i64* %20, align 8
  %343 = load i64, i64* %13, align 8
  %344 = mul nsw i64 %342, %343
  %345 = load i64, i64* %14, align 8
  %346 = add nsw i64 %344, %345
  %347 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %19, i32 0, i32 0
  store i64 %346, i64* %347, align 8
  %348 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %19, i32 0, i32 0
  %349 = load i64, i64* %348, align 8
  %350 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %351 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %350, i32 0, i32 0
  %352 = load i64, i64* %351, align 8
  %353 = icmp sge i64 %349, %352
  br i1 %353, label %354, label %355

354:                                              ; preds = %341
  br label %381

355:                                              ; preds = %341
  %356 = load i64, i64* %20, align 8
  %357 = load i64, i64* %13, align 8
  %358 = mul nsw i64 %356, %357
  %359 = load i64, i64* %15, align 8
  %360 = add nsw i64 %358, %359
  %361 = add nsw i64 %360, 1
  %362 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %363 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %362, i32 0, i32 0
  %364 = load i64, i64* %363, align 8
  %365 = call i64 @min(i64 %361, i64 %364)
  %366 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %19, i32 0, i32 1
  store i64 %365, i64* %366, align 8
  %367 = call i32 @debugrange(%struct.TYPE_23__* %19)
  %368 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i32 %367)
  %369 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %370 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %369, i32 0, i32 1
  %371 = load i32, i32* %370, align 4
  %372 = bitcast %struct.TYPE_23__* %19 to { i64, i64 }*
  %373 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %372, i32 0, i32 0
  %374 = load i64, i64* %373, align 8
  %375 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %372, i32 0, i32 1
  %376 = load i64, i64* %375, align 8
  %377 = call i32 @ranges_add(i32 %371, i64 %374, i64 %376)
  br label %378

378:                                              ; preds = %355
  %379 = load i64, i64* %20, align 8
  %380 = add nsw i64 %379, 1
  store i64 %380, i64* %20, align 8
  br label %337

381:                                              ; preds = %354, %337
  br label %382

382:                                              ; preds = %381, %199
  br label %383

383:                                              ; preds = %382
  %384 = load i32, i32* @TRUE, align 4
  store i32 %384, i32* %4, align 4
  br label %385

385:                                              ; preds = %383, %329, %320, %197, %163, %147, %131, %74, %30
  %386 = load i32, i32* %4, align 4
  ret i32 %386
}

declare dso_local i32 @TRACE(i8*, ...) #1

declare dso_local i32 @wine_dbgstr_rect(%struct.TYPE_22__*) #1

declare dso_local i32 @iterator_empty(%struct.TYPE_25__*) #1

declare dso_local i32 @LISTVIEW_GetItemBox(%struct.TYPE_24__*, i32, %struct.TYPE_22__*) #1

declare dso_local i64 @IntersectRect(%struct.TYPE_22__*, %struct.TYPE_22__*, %struct.TYPE_22__*) #1

declare dso_local i32 @ranges_create(i64) #1

declare dso_local i32 @iterator_rangesitems(%struct.TYPE_25__*, i32) #1

declare dso_local i64 @DPA_GetPtr(i32, i64) #1

declare dso_local i32 @ranges_additem(i32, i64) #1

declare dso_local i8* @max(i32, i32) #1

declare dso_local i64 @min(i64, i64) #1

declare dso_local i32 @iterator_rangeitems(%struct.TYPE_25__*, i64, i64) #1

declare dso_local i32 @debugrange(%struct.TYPE_23__*) #1

declare dso_local i32 @ranges_add(i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
