; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_monthcal.c_MONTHCAL_PaintCalendar.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_monthcal.c_MONTHCAL_PaintCalendar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i64, i32*, i32*, i64, %struct.TYPE_20__*, i32, i64, i32*, i32*, %struct.TYPE_16__ }
%struct.TYPE_20__ = type { %struct.TYPE_22__, %struct.TYPE_19__, %struct.TYPE_18__, %struct.TYPE_17__, %struct.TYPE_21__ }
%struct.TYPE_22__ = type { i64, i64, i64 }
%struct.TYPE_19__ = type { i64 }
%struct.TYPE_18__ = type { i64, i64, i64 }
%struct.TYPE_17__ = type { i64 }
%struct.TYPE_21__ = type { i32, i32, i32 }
%struct.TYPE_16__ = type { i64, i64 }

@BrushMonth = common dso_local global i64 0, align 8
@PenText = common dso_local global i64 0, align 8
@MCSC_MONTHBK = common dso_local global i64 0, align 8
@MCSC_TITLEBK = common dso_local global i64 0, align 8
@DT_CENTER = common dso_local global i32 0, align 4
@DT_VCENTER = common dso_local global i32 0, align 4
@DT_SINGLELINE = common dso_local global i32 0, align 4
@MCSC_TEXT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_23__*, i32, i32*, i64)* @MONTHCAL_PaintCalendar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @MONTHCAL_PaintCalendar(%struct.TYPE_23__* %0, i32 %1, i32* %2, i64 %3) #0 {
  %5 = alloca %struct.TYPE_23__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_21__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_22__, align 8
  %14 = alloca %struct.TYPE_22__, align 8
  %15 = alloca %struct.TYPE_21__, align 4
  %16 = alloca [80 x i32], align 16
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i64 %3, i64* %8, align 8
  %19 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %19, i32 0, i32 4
  %21 = load %struct.TYPE_20__*, %struct.TYPE_20__** %20, align 8
  %22 = load i64, i64* %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %21, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %23, i32 0, i32 4
  store %struct.TYPE_21__* %24, %struct.TYPE_21__** %9, align 8
  %25 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %25, i32 0, i32 4
  %27 = load %struct.TYPE_20__*, %struct.TYPE_20__** %26, align 8
  %28 = load i64, i64* %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %27, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %29, i32 0, i32 0
  %31 = bitcast %struct.TYPE_22__* %14 to i8*
  %32 = bitcast %struct.TYPE_22__* %30 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %31, i8* align 8 %32, i64 24, i1 false)
  %33 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %33, i32 0, i32 4
  %35 = load %struct.TYPE_20__*, %struct.TYPE_20__** %34, align 8
  %36 = load i64, i64* %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %35, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %41, i32 0, i32 9
  %43 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %45, i32 0, i32 9
  %47 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = sub nsw i64 %44, %48
  %50 = add nsw i64 %40, %49
  %51 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %14, i32 0, i32 2
  store i64 %50, i64* %51, align 8
  %52 = load i32, i32* %6, align 4
  %53 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %53, i32 0, i32 8
  %55 = load i32*, i32** %54, align 8
  %56 = load i64, i64* @BrushMonth, align 8
  %57 = getelementptr inbounds i32, i32* %55, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @FillRect(i32 %52, %struct.TYPE_22__* %14, i32 %58)
  %60 = load i32, i32* %6, align 4
  %61 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %61, i32 0, i32 7
  %63 = load i32*, i32** %62, align 8
  %64 = load i64, i64* @PenText, align 8
  %65 = getelementptr inbounds i32, i32* %63, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @SelectObject(i32 %60, i32 %66)
  store i32 %67, i32* %17, align 4
  %68 = load i32, i32* %6, align 4
  %69 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %69, i32 0, i32 4
  %71 = load %struct.TYPE_20__*, %struct.TYPE_20__** %70, align 8
  %72 = load i64, i64* %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %71, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = add nsw i64 %76, 3
  %78 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %78, i32 0, i32 4
  %80 = load %struct.TYPE_20__*, %struct.TYPE_20__** %79, align 8
  %81 = load i64, i64* %8, align 8
  %82 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %80, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %82, i32 0, i32 3
  %84 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %86, i32 0, i32 6
  %88 = load i64, i64* %87, align 8
  %89 = add nsw i64 %85, %88
  %90 = add nsw i64 %89, 1
  %91 = call i32 @MoveToEx(i32 %68, i64 %77, i64 %90, i32* null)
  %92 = load i32, i32* %6, align 4
  %93 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %93, i32 0, i32 4
  %95 = load %struct.TYPE_20__*, %struct.TYPE_20__** %94, align 8
  %96 = load i64, i64* %8, align 8
  %97 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %95, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %97, i32 0, i32 2
  %99 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = sub nsw i64 %100, 3
  %102 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %102, i32 0, i32 4
  %104 = load %struct.TYPE_20__*, %struct.TYPE_20__** %103, align 8
  %105 = load i64, i64* %8, align 8
  %106 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %104, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %106, i32 0, i32 3
  %108 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %111 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %110, i32 0, i32 6
  %112 = load i64, i64* %111, align 8
  %113 = add nsw i64 %109, %112
  %114 = add nsw i64 %113, 1
  %115 = call i32 @LineTo(i32 %92, i64 %101, i64 %114)
  %116 = load i32, i32* %6, align 4
  %117 = load i32, i32* %17, align 4
  %118 = call i32 @SelectObject(i32 %116, i32 %117)
  %119 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %119, i32 0, i32 4
  %121 = load %struct.TYPE_20__*, %struct.TYPE_20__** %120, align 8
  %122 = load i64, i64* %8, align 8
  %123 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %121, i64 %122
  %124 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %128 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %127, i32 0, i32 4
  %129 = load %struct.TYPE_20__*, %struct.TYPE_20__** %128, align 8
  %130 = load i64, i64* %8, align 8
  %131 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %129, i64 %130
  %132 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %131, i32 0, i32 2
  %133 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %132, i32 0, i32 0
  store i64 %126, i64* %133, align 8
  %134 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %135 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %134, i32 0, i32 4
  %136 = load %struct.TYPE_20__*, %struct.TYPE_20__** %135, align 8
  %137 = load i64, i64* %8, align 8
  %138 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %136, i64 %137
  %139 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %139, i32 0, i32 0
  store i64 %126, i64* %140, align 8
  %141 = load i32, i32* %6, align 4
  %142 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %143 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %142, i32 0, i32 5
  %144 = load i32, i32* %143, align 8
  %145 = call i32 @SelectObject(i32 %141, i32 %144)
  %146 = load i32, i32* %6, align 4
  %147 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %148 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %147, i32 0, i32 2
  %149 = load i32*, i32** %148, align 8
  %150 = load i64, i64* @MCSC_MONTHBK, align 8
  %151 = getelementptr inbounds i32, i32* %149, i64 %150
  %152 = load i32, i32* %151, align 4
  %153 = call i32 @SetBkColor(i32 %146, i32 %152)
  %154 = load i32, i32* %6, align 4
  %155 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %156 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %155, i32 0, i32 2
  %157 = load i32*, i32** %156, align 8
  %158 = load i64, i64* @MCSC_TITLEBK, align 8
  %159 = getelementptr inbounds i32, i32* %157, i64 %158
  %160 = load i32, i32* %159, align 4
  %161 = call i32 @SetTextColor(i32 %154, i32 %160)
  %162 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %163 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %162, i32 0, i32 4
  %164 = load %struct.TYPE_20__*, %struct.TYPE_20__** %163, align 8
  %165 = load i64, i64* %8, align 8
  %166 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %164, i64 %165
  %167 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %166, i32 0, i32 0
  %168 = bitcast %struct.TYPE_22__* %13 to i8*
  %169 = bitcast %struct.TYPE_22__* %167 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %168, i8* align 8 %169, i64 24, i1 false)
  %170 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %13, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %173 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %172, i32 0, i32 3
  %174 = load i64, i64* %173, align 8
  %175 = add nsw i64 %171, %174
  %176 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %13, i32 0, i32 1
  store i64 %175, i64* %176, align 8
  %177 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %178 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %177, i32 0, i32 0
  %179 = load i64, i64* %178, align 8
  store i64 %179, i64* %10, align 8
  store i64 0, i64* %11, align 8
  br label %180

180:                                              ; preds = %208, %4
  %181 = load i64, i64* %11, align 8
  %182 = icmp ult i64 %181, 7
  br i1 %182, label %183, label %211

183:                                              ; preds = %180
  %184 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %185 = load i64, i64* %10, align 8
  %186 = load i64, i64* %11, align 8
  %187 = add i64 %185, %186
  %188 = add i64 %187, 6
  %189 = urem i64 %188, 7
  %190 = getelementptr inbounds [80 x i32], [80 x i32]* %16, i64 0, i64 0
  %191 = getelementptr inbounds [80 x i32], [80 x i32]* %16, i64 0, i64 0
  %192 = call i32 @ARRAY_SIZE(i32* %191)
  %193 = call i32 @get_localized_dayname(%struct.TYPE_23__* %184, i64 %189, i32* %190, i32 %192)
  %194 = load i32, i32* %6, align 4
  %195 = getelementptr inbounds [80 x i32], [80 x i32]* %16, i64 0, i64 0
  %196 = getelementptr inbounds [80 x i32], [80 x i32]* %16, i64 0, i64 0
  %197 = call i32 @strlenW(i32* %196)
  %198 = load i32, i32* @DT_CENTER, align 4
  %199 = load i32, i32* @DT_VCENTER, align 4
  %200 = or i32 %198, %199
  %201 = load i32, i32* @DT_SINGLELINE, align 4
  %202 = or i32 %200, %201
  %203 = call i32 @DrawTextW(i32 %194, i32* %195, i32 %197, %struct.TYPE_22__* %13, i32 %202)
  %204 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %205 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %204, i32 0, i32 3
  %206 = load i64, i64* %205, align 8
  %207 = call i32 @OffsetRect(%struct.TYPE_22__* %13, i64 %206, i32 0)
  br label %208

208:                                              ; preds = %183
  %209 = load i64, i64* %11, align 8
  %210 = add i64 %209, 1
  store i64 %210, i64* %11, align 8
  br label %180

211:                                              ; preds = %180
  %212 = load i32, i32* %6, align 4
  %213 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %214 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %213, i32 0, i32 2
  %215 = load i32*, i32** %214, align 8
  %216 = load i64, i64* @MCSC_TEXT, align 8
  %217 = getelementptr inbounds i32, i32* %215, i64 %216
  %218 = load i32, i32* %217, align 4
  %219 = call i32 @SetTextColor(i32 %212, i32 %218)
  %220 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %221 = bitcast %struct.TYPE_21__* %15 to i8*
  %222 = bitcast %struct.TYPE_21__* %220 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %221, i8* align 4 %222, i64 12, i1 false)
  %223 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %15, i32 0, i32 0
  store i32 1, i32* %223, align 4
  store i32 1, i32* %18, align 4
  %224 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %225 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %224, i32 0, i32 2
  %226 = load i32, i32* %225, align 4
  %227 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %228 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %227, i32 0, i32 1
  %229 = load i32, i32* %228, align 4
  %230 = call i32 @MONTHCAL_MonthLength(i32 %226, i32 %229)
  store i32 %230, i32* %12, align 4
  br label %231

231:                                              ; preds = %236, %211
  %232 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %15, i32 0, i32 0
  %233 = load i32, i32* %232, align 4
  %234 = load i32, i32* %12, align 4
  %235 = icmp sle i32 %233, %234
  br i1 %235, label %236, label %255

236:                                              ; preds = %231
  %237 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %238 = load i32, i32* %6, align 4
  %239 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %240 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %239, i32 0, i32 1
  %241 = load i32*, i32** %240, align 8
  %242 = load i64, i64* %8, align 8
  %243 = add i64 %242, 1
  %244 = getelementptr inbounds i32, i32* %241, i64 %243
  %245 = load i32, i32* %244, align 4
  %246 = load i32, i32* %18, align 4
  %247 = and i32 %245, %246
  %248 = load i32*, i32** %7, align 8
  %249 = call i32 @MONTHCAL_DrawDay(%struct.TYPE_23__* %237, i32 %238, %struct.TYPE_21__* %15, i32 %247, i32* %248)
  %250 = load i32, i32* %18, align 4
  %251 = shl i32 %250, 1
  store i32 %251, i32* %18, align 4
  %252 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %15, i32 0, i32 0
  %253 = load i32, i32* %252, align 4
  %254 = add nsw i32 %253, 1
  store i32 %254, i32* %252, align 4
  br label %231

255:                                              ; preds = %231
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @FillRect(i32, %struct.TYPE_22__*, i32) #2

declare dso_local i32 @SelectObject(i32, i32) #2

declare dso_local i32 @MoveToEx(i32, i64, i64, i32*) #2

declare dso_local i32 @LineTo(i32, i64, i64) #2

declare dso_local i32 @SetBkColor(i32, i32) #2

declare dso_local i32 @SetTextColor(i32, i32) #2

declare dso_local i32 @get_localized_dayname(%struct.TYPE_23__*, i64, i32*, i32) #2

declare dso_local i32 @ARRAY_SIZE(i32*) #2

declare dso_local i32 @DrawTextW(i32, i32*, i32, %struct.TYPE_22__*, i32) #2

declare dso_local i32 @strlenW(i32*) #2

declare dso_local i32 @OffsetRect(%struct.TYPE_22__*, i64, i32) #2

declare dso_local i32 @MONTHCAL_MonthLength(i32, i32) #2

declare dso_local i32 @MONTHCAL_DrawDay(%struct.TYPE_23__*, i32, %struct.TYPE_21__*, i32, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
