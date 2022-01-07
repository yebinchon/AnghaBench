; ModuleID = '/home/carl/AnghaBench/reactos/dll/cpl/desk/extr_draw.c_MyIntDrawRectEdge.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/cpl/desk/extr_draw.c_MyIntDrawRectEdge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i64, i64, i64 }
%struct.TYPE_11__ = type { i32* }
%struct.TYPE_10__ = type { i64, i64 }

@NULL_PEN = common dso_local global i32 0, align 4
@LTInnerNormal = common dso_local global i8* null, align 8
@BDR_INNER = common dso_local global i64 0, align 8
@BDR_OUTER = common dso_local global i64 0, align 8
@LTOuterNormal = common dso_local global i8* null, align 8
@RBInnerNormal = common dso_local global i8* null, align 8
@RBOuterNormal = common dso_local global i8* null, align 8
@BF_BOTTOMLEFT = common dso_local global i64 0, align 8
@BF_TOPRIGHT = common dso_local global i64 0, align 8
@BF_BOTTOMRIGHT = common dso_local global i64 0, align 8
@BF_TOPLEFT = common dso_local global i64 0, align 8
@MY_BF_ACTIVEBORDER = common dso_local global i64 0, align 8
@COLOR_ACTIVEBORDER = common dso_local global i64 0, align 8
@COLOR_BTNFACE = common dso_local global i64 0, align 8
@DC_PEN = common dso_local global i32 0, align 4
@BF_TOP = common dso_local global i64 0, align 8
@BF_LEFT = common dso_local global i64 0, align 8
@BF_BOTTOM = common dso_local global i64 0, align 8
@BF_RIGHT = common dso_local global i64 0, align 8
@BF_ADJUST = common dso_local global i64 0, align 8
@LTRBInnerMono = common dso_local global i32* null, align 8
@LTRBOuterMono = common dso_local global i32* null, align 8
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_9__*, i64, i64, %struct.TYPE_11__*)* @MyIntDrawRectEdge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @MyIntDrawRectEdge(i32 %0, %struct.TYPE_9__* %1, i64 %2, i64 %3, %struct.TYPE_11__* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_11__*, align 8
  %11 = alloca i8, align 1
  %12 = alloca i8, align 1
  %13 = alloca i8, align 1
  %14 = alloca i8, align 1
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca %struct.TYPE_9__, align 8
  %20 = alloca %struct.TYPE_10__, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store %struct.TYPE_11__* %4, %struct.TYPE_11__** %10, align 8
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %29 = bitcast %struct.TYPE_9__* %19 to i8*
  %30 = bitcast %struct.TYPE_9__* %28 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %29, i8* align 8 %30, i64 32, i1 false)
  store i32 0, i32* %22, align 4
  store i32 0, i32* %23, align 4
  store i32 0, i32* %24, align 4
  store i32 0, i32* %25, align 4
  %31 = load i32, i32* @NULL_PEN, align 4
  %32 = call i64 @GetStockObject(i32 %31)
  store i64 %32, i64* %18, align 8
  store i64 %32, i64* %17, align 8
  store i64 %32, i64* %16, align 8
  store i64 %32, i64* %15, align 8
  %33 = load i32, i32* %6, align 4
  %34 = load i64, i64* %15, align 8
  %35 = call i64 @SelectObject(i32 %33, i64 %34)
  store i64 %35, i64* %21, align 8
  %36 = load i8*, i8** @LTInnerNormal, align 8
  %37 = load i64, i64* %8, align 8
  %38 = load i64, i64* @BDR_INNER, align 8
  %39 = load i64, i64* @BDR_OUTER, align 8
  %40 = or i64 %38, %39
  %41 = and i64 %37, %40
  %42 = getelementptr inbounds i8, i8* %36, i64 %41
  %43 = load i8, i8* %42, align 1
  store i8 %43, i8* %11, align 1
  %44 = load i8*, i8** @LTOuterNormal, align 8
  %45 = load i64, i64* %8, align 8
  %46 = load i64, i64* @BDR_INNER, align 8
  %47 = load i64, i64* @BDR_OUTER, align 8
  %48 = or i64 %46, %47
  %49 = and i64 %45, %48
  %50 = getelementptr inbounds i8, i8* %44, i64 %49
  %51 = load i8, i8* %50, align 1
  store i8 %51, i8* %12, align 1
  %52 = load i8*, i8** @RBInnerNormal, align 8
  %53 = load i64, i64* %8, align 8
  %54 = load i64, i64* @BDR_INNER, align 8
  %55 = load i64, i64* @BDR_OUTER, align 8
  %56 = or i64 %54, %55
  %57 = and i64 %53, %56
  %58 = getelementptr inbounds i8, i8* %52, i64 %57
  %59 = load i8, i8* %58, align 1
  store i8 %59, i8* %13, align 1
  %60 = load i8*, i8** @RBOuterNormal, align 8
  %61 = load i64, i64* %8, align 8
  %62 = load i64, i64* @BDR_INNER, align 8
  %63 = load i64, i64* @BDR_OUTER, align 8
  %64 = or i64 %62, %63
  %65 = and i64 %61, %64
  %66 = getelementptr inbounds i8, i8* %60, i64 %65
  %67 = load i8, i8* %66, align 1
  store i8 %67, i8* %14, align 1
  %68 = load i64, i64* %9, align 8
  %69 = load i64, i64* @BF_BOTTOMLEFT, align 8
  %70 = and i64 %68, %69
  %71 = load i64, i64* @BF_BOTTOMLEFT, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %5
  store i32 1, i32* %22, align 4
  br label %74

74:                                               ; preds = %73, %5
  %75 = load i64, i64* %9, align 8
  %76 = load i64, i64* @BF_TOPRIGHT, align 8
  %77 = and i64 %75, %76
  %78 = load i64, i64* @BF_TOPRIGHT, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %74
  store i32 1, i32* %24, align 4
  br label %81

81:                                               ; preds = %80, %74
  %82 = load i64, i64* %9, align 8
  %83 = load i64, i64* @BF_BOTTOMRIGHT, align 8
  %84 = and i64 %82, %83
  %85 = load i64, i64* @BF_BOTTOMRIGHT, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %88

87:                                               ; preds = %81
  store i32 1, i32* %25, align 4
  br label %88

88:                                               ; preds = %87, %81
  %89 = load i64, i64* %9, align 8
  %90 = load i64, i64* @BF_TOPLEFT, align 8
  %91 = and i64 %89, %90
  %92 = load i64, i64* @BF_TOPLEFT, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %95

94:                                               ; preds = %88
  store i32 1, i32* %23, align 4
  br label %95

95:                                               ; preds = %94, %88
  %96 = load i64, i64* %9, align 8
  %97 = load i64, i64* @MY_BF_ACTIVEBORDER, align 8
  %98 = and i64 %96, %97
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %108

100:                                              ; preds = %95
  %101 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %101, i32 0, i32 0
  %103 = load i32*, i32** %102, align 8
  %104 = load i64, i64* @COLOR_ACTIVEBORDER, align 8
  %105 = getelementptr inbounds i32, i32* %103, i64 %104
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @CreateSolidBrush(i32 %106)
  store i32 %107, i32* %26, align 4
  br label %116

108:                                              ; preds = %95
  %109 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %110 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %109, i32 0, i32 0
  %111 = load i32*, i32** %110, align 8
  %112 = load i64, i64* @COLOR_BTNFACE, align 8
  %113 = getelementptr inbounds i32, i32* %111, i64 %112
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @CreateSolidBrush(i32 %114)
  store i32 %115, i32* %26, align 4
  br label %116

116:                                              ; preds = %108, %100
  %117 = load i32, i32* %6, align 4
  %118 = load i32, i32* %26, align 4
  %119 = call i32 @FillRect(i32 %117, %struct.TYPE_9__* %19, i32 %118)
  %120 = load i32, i32* %26, align 4
  %121 = call i32 @DeleteObject(i32 %120)
  %122 = load i32, i32* %6, align 4
  %123 = call i32 @MoveToEx(i32 %122, i64 0, i64 0, %struct.TYPE_10__* %20)
  %124 = load i8, i8* %12, align 1
  %125 = sext i8 %124 to i32
  %126 = icmp ne i32 %125, -1
  br i1 %126, label %127, label %178

127:                                              ; preds = %116
  %128 = load i32, i32* @DC_PEN, align 4
  %129 = call i64 @GetStockObject(i32 %128)
  store i64 %129, i64* %16, align 8
  %130 = load i32, i32* %6, align 4
  %131 = load i64, i64* %16, align 8
  %132 = call i64 @SelectObject(i32 %130, i64 %131)
  %133 = load i32, i32* %6, align 4
  %134 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %135 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %134, i32 0, i32 0
  %136 = load i32*, i32** %135, align 8
  %137 = load i8, i8* %12, align 1
  %138 = sext i8 %137 to i64
  %139 = getelementptr inbounds i32, i32* %136, i64 %138
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @SetDCPenColor(i32 %133, i32 %140)
  %142 = load i64, i64* %9, align 8
  %143 = load i64, i64* @BF_TOP, align 8
  %144 = and i64 %142, %143
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %159

146:                                              ; preds = %127
  %147 = load i32, i32* %6, align 4
  %148 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 3
  %149 = load i64, i64* %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 1
  %151 = load i64, i64* %150, align 8
  %152 = call i32 @MoveToEx(i32 %147, i64 %149, i64 %151, %struct.TYPE_10__* null)
  %153 = load i32, i32* %6, align 4
  %154 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 2
  %155 = load i64, i64* %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 1
  %157 = load i64, i64* %156, align 8
  %158 = call i32 @LineTo(i32 %153, i64 %155, i64 %157)
  br label %159

159:                                              ; preds = %146, %127
  %160 = load i64, i64* %9, align 8
  %161 = load i64, i64* @BF_LEFT, align 8
  %162 = and i64 %160, %161
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %177

164:                                              ; preds = %159
  %165 = load i32, i32* %6, align 4
  %166 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 3
  %167 = load i64, i64* %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 1
  %169 = load i64, i64* %168, align 8
  %170 = call i32 @MoveToEx(i32 %165, i64 %167, i64 %169, %struct.TYPE_10__* null)
  %171 = load i32, i32* %6, align 4
  %172 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 3
  %173 = load i64, i64* %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  %175 = load i64, i64* %174, align 8
  %176 = call i32 @LineTo(i32 %171, i64 %173, i64 %175)
  br label %177

177:                                              ; preds = %164, %159
  br label %178

178:                                              ; preds = %177, %116
  %179 = load i8, i8* %14, align 1
  %180 = sext i8 %179 to i32
  %181 = icmp ne i32 %180, -1
  br i1 %181, label %182, label %237

182:                                              ; preds = %178
  %183 = load i32, i32* @DC_PEN, align 4
  %184 = call i64 @GetStockObject(i32 %183)
  store i64 %184, i64* %18, align 8
  %185 = load i32, i32* %6, align 4
  %186 = load i64, i64* %18, align 8
  %187 = call i64 @SelectObject(i32 %185, i64 %186)
  %188 = load i32, i32* %6, align 4
  %189 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %190 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %189, i32 0, i32 0
  %191 = load i32*, i32** %190, align 8
  %192 = load i8, i8* %14, align 1
  %193 = sext i8 %192 to i64
  %194 = getelementptr inbounds i32, i32* %191, i64 %193
  %195 = load i32, i32* %194, align 4
  %196 = call i32 @SetDCPenColor(i32 %188, i32 %195)
  %197 = load i64, i64* %9, align 8
  %198 = load i64, i64* @BF_BOTTOM, align 8
  %199 = and i64 %197, %198
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %201, label %216

201:                                              ; preds = %182
  %202 = load i32, i32* %6, align 4
  %203 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 3
  %204 = load i64, i64* %203, align 8
  %205 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  %206 = load i64, i64* %205, align 8
  %207 = sub nsw i64 %206, 1
  %208 = call i32 @MoveToEx(i32 %202, i64 %204, i64 %207, %struct.TYPE_10__* null)
  %209 = load i32, i32* %6, align 4
  %210 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 2
  %211 = load i64, i64* %210, align 8
  %212 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  %213 = load i64, i64* %212, align 8
  %214 = sub nsw i64 %213, 1
  %215 = call i32 @LineTo(i32 %209, i64 %211, i64 %214)
  br label %216

216:                                              ; preds = %201, %182
  %217 = load i64, i64* %9, align 8
  %218 = load i64, i64* @BF_RIGHT, align 8
  %219 = and i64 %217, %218
  %220 = icmp ne i64 %219, 0
  br i1 %220, label %221, label %236

221:                                              ; preds = %216
  %222 = load i32, i32* %6, align 4
  %223 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 2
  %224 = load i64, i64* %223, align 8
  %225 = sub nsw i64 %224, 1
  %226 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 1
  %227 = load i64, i64* %226, align 8
  %228 = call i32 @MoveToEx(i32 %222, i64 %225, i64 %227, %struct.TYPE_10__* null)
  %229 = load i32, i32* %6, align 4
  %230 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 2
  %231 = load i64, i64* %230, align 8
  %232 = sub nsw i64 %231, 1
  %233 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  %234 = load i64, i64* %233, align 8
  %235 = call i32 @LineTo(i32 %229, i64 %232, i64 %234)
  br label %236

236:                                              ; preds = %221, %216
  br label %237

237:                                              ; preds = %236, %178
  %238 = load i8, i8* %11, align 1
  %239 = sext i8 %238 to i32
  %240 = icmp ne i32 %239, -1
  br i1 %240, label %241, label %308

241:                                              ; preds = %237
  %242 = load i32, i32* @DC_PEN, align 4
  %243 = call i64 @GetStockObject(i32 %242)
  store i64 %243, i64* %15, align 8
  %244 = load i32, i32* %6, align 4
  %245 = load i64, i64* %15, align 8
  %246 = call i64 @SelectObject(i32 %244, i64 %245)
  %247 = load i32, i32* %6, align 4
  %248 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %249 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %248, i32 0, i32 0
  %250 = load i32*, i32** %249, align 8
  %251 = load i8, i8* %11, align 1
  %252 = sext i8 %251 to i64
  %253 = getelementptr inbounds i32, i32* %250, i64 %252
  %254 = load i32, i32* %253, align 4
  %255 = call i32 @SetDCPenColor(i32 %247, i32 %254)
  %256 = load i64, i64* %9, align 8
  %257 = load i64, i64* @BF_TOP, align 8
  %258 = and i64 %256, %257
  %259 = icmp ne i64 %258, 0
  br i1 %259, label %260, label %281

260:                                              ; preds = %241
  %261 = load i32, i32* %6, align 4
  %262 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 3
  %263 = load i64, i64* %262, align 8
  %264 = load i32, i32* %23, align 4
  %265 = sext i32 %264 to i64
  %266 = add nsw i64 %263, %265
  %267 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 1
  %268 = load i64, i64* %267, align 8
  %269 = add nsw i64 %268, 1
  %270 = call i32 @MoveToEx(i32 %261, i64 %266, i64 %269, %struct.TYPE_10__* null)
  %271 = load i32, i32* %6, align 4
  %272 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 2
  %273 = load i64, i64* %272, align 8
  %274 = load i32, i32* %24, align 4
  %275 = sext i32 %274 to i64
  %276 = sub nsw i64 %273, %275
  %277 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 1
  %278 = load i64, i64* %277, align 8
  %279 = add nsw i64 %278, 1
  %280 = call i32 @LineTo(i32 %271, i64 %276, i64 %279)
  br label %281

281:                                              ; preds = %260, %241
  %282 = load i64, i64* %9, align 8
  %283 = load i64, i64* @BF_LEFT, align 8
  %284 = and i64 %282, %283
  %285 = icmp ne i64 %284, 0
  br i1 %285, label %286, label %307

286:                                              ; preds = %281
  %287 = load i32, i32* %6, align 4
  %288 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 3
  %289 = load i64, i64* %288, align 8
  %290 = add nsw i64 %289, 1
  %291 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 1
  %292 = load i64, i64* %291, align 8
  %293 = load i32, i32* %23, align 4
  %294 = sext i32 %293 to i64
  %295 = add nsw i64 %292, %294
  %296 = call i32 @MoveToEx(i32 %287, i64 %290, i64 %295, %struct.TYPE_10__* null)
  %297 = load i32, i32* %6, align 4
  %298 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 3
  %299 = load i64, i64* %298, align 8
  %300 = add nsw i64 %299, 1
  %301 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  %302 = load i64, i64* %301, align 8
  %303 = load i32, i32* %22, align 4
  %304 = sext i32 %303 to i64
  %305 = sub nsw i64 %302, %304
  %306 = call i32 @LineTo(i32 %297, i64 %300, i64 %305)
  br label %307

307:                                              ; preds = %286, %281
  br label %308

308:                                              ; preds = %307, %237
  %309 = load i8, i8* %13, align 1
  %310 = sext i8 %309 to i32
  %311 = icmp ne i32 %310, -1
  br i1 %311, label %312, label %379

312:                                              ; preds = %308
  %313 = load i32, i32* @DC_PEN, align 4
  %314 = call i64 @GetStockObject(i32 %313)
  store i64 %314, i64* %17, align 8
  %315 = load i32, i32* %6, align 4
  %316 = load i64, i64* %17, align 8
  %317 = call i64 @SelectObject(i32 %315, i64 %316)
  %318 = load i32, i32* %6, align 4
  %319 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %320 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %319, i32 0, i32 0
  %321 = load i32*, i32** %320, align 8
  %322 = load i8, i8* %13, align 1
  %323 = sext i8 %322 to i64
  %324 = getelementptr inbounds i32, i32* %321, i64 %323
  %325 = load i32, i32* %324, align 4
  %326 = call i32 @SetDCPenColor(i32 %318, i32 %325)
  %327 = load i64, i64* %9, align 8
  %328 = load i64, i64* @BF_BOTTOM, align 8
  %329 = and i64 %327, %328
  %330 = icmp ne i64 %329, 0
  br i1 %330, label %331, label %352

331:                                              ; preds = %312
  %332 = load i32, i32* %6, align 4
  %333 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 3
  %334 = load i64, i64* %333, align 8
  %335 = load i32, i32* %22, align 4
  %336 = sext i32 %335 to i64
  %337 = add nsw i64 %334, %336
  %338 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  %339 = load i64, i64* %338, align 8
  %340 = sub nsw i64 %339, 2
  %341 = call i32 @MoveToEx(i32 %332, i64 %337, i64 %340, %struct.TYPE_10__* null)
  %342 = load i32, i32* %6, align 4
  %343 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 2
  %344 = load i64, i64* %343, align 8
  %345 = load i32, i32* %25, align 4
  %346 = sext i32 %345 to i64
  %347 = sub nsw i64 %344, %346
  %348 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  %349 = load i64, i64* %348, align 8
  %350 = sub nsw i64 %349, 2
  %351 = call i32 @LineTo(i32 %342, i64 %347, i64 %350)
  br label %352

352:                                              ; preds = %331, %312
  %353 = load i64, i64* %9, align 8
  %354 = load i64, i64* @BF_RIGHT, align 8
  %355 = and i64 %353, %354
  %356 = icmp ne i64 %355, 0
  br i1 %356, label %357, label %378

357:                                              ; preds = %352
  %358 = load i32, i32* %6, align 4
  %359 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 2
  %360 = load i64, i64* %359, align 8
  %361 = sub nsw i64 %360, 2
  %362 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 1
  %363 = load i64, i64* %362, align 8
  %364 = load i32, i32* %24, align 4
  %365 = sext i32 %364 to i64
  %366 = add nsw i64 %363, %365
  %367 = call i32 @MoveToEx(i32 %358, i64 %361, i64 %366, %struct.TYPE_10__* null)
  %368 = load i32, i32* %6, align 4
  %369 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 2
  %370 = load i64, i64* %369, align 8
  %371 = sub nsw i64 %370, 2
  %372 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  %373 = load i64, i64* %372, align 8
  %374 = load i32, i32* %25, align 4
  %375 = sext i32 %374 to i64
  %376 = sub nsw i64 %373, %375
  %377 = call i32 @LineTo(i32 %368, i64 %371, i64 %376)
  br label %378

378:                                              ; preds = %357, %352
  br label %379

379:                                              ; preds = %378, %308
  %380 = load i64, i64* %9, align 8
  %381 = load i64, i64* @BF_ADJUST, align 8
  %382 = and i64 %380, %381
  %383 = icmp ne i64 %382, 0
  br i1 %383, label %384, label %461

384:                                              ; preds = %379
  %385 = load i32*, i32** @LTRBInnerMono, align 8
  %386 = load i64, i64* %8, align 8
  %387 = load i64, i64* @BDR_INNER, align 8
  %388 = load i64, i64* @BDR_OUTER, align 8
  %389 = or i64 %387, %388
  %390 = and i64 %386, %389
  %391 = getelementptr inbounds i32, i32* %385, i64 %390
  %392 = load i32, i32* %391, align 4
  %393 = icmp ne i32 %392, -1
  %394 = zext i1 %393 to i64
  %395 = select i1 %393, i32 1, i32 0
  %396 = load i32*, i32** @LTRBOuterMono, align 8
  %397 = load i64, i64* %8, align 8
  %398 = load i64, i64* @BDR_INNER, align 8
  %399 = load i64, i64* @BDR_OUTER, align 8
  %400 = or i64 %398, %399
  %401 = and i64 %397, %400
  %402 = getelementptr inbounds i32, i32* %396, i64 %401
  %403 = load i32, i32* %402, align 4
  %404 = icmp ne i32 %403, -1
  %405 = zext i1 %404 to i64
  %406 = select i1 %404, i32 1, i32 0
  %407 = add nsw i32 %395, %406
  store i32 %407, i32* %27, align 4
  %408 = load i64, i64* %9, align 8
  %409 = load i64, i64* @BF_LEFT, align 8
  %410 = and i64 %408, %409
  %411 = icmp ne i64 %410, 0
  br i1 %411, label %412, label %418

412:                                              ; preds = %384
  %413 = load i32, i32* %27, align 4
  %414 = sext i32 %413 to i64
  %415 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 3
  %416 = load i64, i64* %415, align 8
  %417 = add nsw i64 %416, %414
  store i64 %417, i64* %415, align 8
  br label %418

418:                                              ; preds = %412, %384
  %419 = load i64, i64* %9, align 8
  %420 = load i64, i64* @BF_RIGHT, align 8
  %421 = and i64 %419, %420
  %422 = icmp ne i64 %421, 0
  br i1 %422, label %423, label %429

423:                                              ; preds = %418
  %424 = load i32, i32* %27, align 4
  %425 = sext i32 %424 to i64
  %426 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 2
  %427 = load i64, i64* %426, align 8
  %428 = sub nsw i64 %427, %425
  store i64 %428, i64* %426, align 8
  br label %429

429:                                              ; preds = %423, %418
  %430 = load i64, i64* %9, align 8
  %431 = load i64, i64* @BF_TOP, align 8
  %432 = and i64 %430, %431
  %433 = icmp ne i64 %432, 0
  br i1 %433, label %434, label %440

434:                                              ; preds = %429
  %435 = load i32, i32* %27, align 4
  %436 = sext i32 %435 to i64
  %437 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 1
  %438 = load i64, i64* %437, align 8
  %439 = add nsw i64 %438, %436
  store i64 %439, i64* %437, align 8
  br label %440

440:                                              ; preds = %434, %429
  %441 = load i64, i64* %9, align 8
  %442 = load i64, i64* @BF_BOTTOM, align 8
  %443 = and i64 %441, %442
  %444 = icmp ne i64 %443, 0
  br i1 %444, label %445, label %451

445:                                              ; preds = %440
  %446 = load i32, i32* %27, align 4
  %447 = sext i32 %446 to i64
  %448 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  %449 = load i64, i64* %448, align 8
  %450 = sub nsw i64 %449, %447
  store i64 %450, i64* %448, align 8
  br label %451

451:                                              ; preds = %445, %440
  %452 = load i64, i64* %9, align 8
  %453 = load i64, i64* @BF_ADJUST, align 8
  %454 = and i64 %452, %453
  %455 = icmp ne i64 %454, 0
  br i1 %455, label %456, label %460

456:                                              ; preds = %451
  %457 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %458 = bitcast %struct.TYPE_9__* %457 to i8*
  %459 = bitcast %struct.TYPE_9__* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %458, i8* align 8 %459, i64 32, i1 false)
  br label %460

460:                                              ; preds = %456, %451
  br label %461

461:                                              ; preds = %460, %379
  %462 = load i32, i32* %6, align 4
  %463 = load i64, i64* %21, align 8
  %464 = call i64 @SelectObject(i32 %462, i64 %463)
  %465 = load i32, i32* %6, align 4
  %466 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 1
  %467 = load i64, i64* %466, align 8
  %468 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 0
  %469 = load i64, i64* %468, align 8
  %470 = call i32 @MoveToEx(i32 %465, i64 %467, i64 %469, %struct.TYPE_10__* null)
  %471 = load i32, i32* @TRUE, align 4
  ret i32 %471
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @GetStockObject(i32) #2

declare dso_local i64 @SelectObject(i32, i64) #2

declare dso_local i32 @CreateSolidBrush(i32) #2

declare dso_local i32 @FillRect(i32, %struct.TYPE_9__*, i32) #2

declare dso_local i32 @DeleteObject(i32) #2

declare dso_local i32 @MoveToEx(i32, i64, i64, %struct.TYPE_10__*) #2

declare dso_local i32 @SetDCPenColor(i32, i32) #2

declare dso_local i32 @LineTo(i32, i64, i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
