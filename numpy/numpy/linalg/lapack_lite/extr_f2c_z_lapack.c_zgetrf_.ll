; ModuleID = '/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_z_lapack.c_zgetrf_.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_z_lapack.c_zgetrf_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32 }

@zgetrf_.i__ = internal global i32 0, align 4
@zgetrf_.j = internal global i32 0, align 4
@zgetrf_.jb = internal global i32 0, align 4
@zgetrf_.nb = internal global i32 0, align 4
@zgetrf_.iinfo = internal global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"ZGETRF\00", align 1
@c__1 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c" \00", align 1
@c_n1 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"Left\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"Lower\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"No transpose\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"Unit\00", align 1
@c_b57 = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zgetrf_(i32* %0, i32* %1, %struct.TYPE_8__* %2, i32* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_8__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.TYPE_8__, align 4
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store %struct.TYPE_8__* %2, %struct.TYPE_8__** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %22 = load i32*, i32** %11, align 8
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %14, align 4
  %24 = load i32, i32* %14, align 4
  %25 = add nsw i32 1, %24
  store i32 %25, i32* %15, align 4
  %26 = load i32, i32* %15, align 4
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %28 = sext i32 %26 to i64
  %29 = sub i64 0, %28
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i64 %29
  store %struct.TYPE_8__* %30, %struct.TYPE_8__** %10, align 8
  %31 = load i32*, i32** %12, align 8
  %32 = getelementptr inbounds i32, i32* %31, i32 -1
  store i32* %32, i32** %12, align 8
  %33 = load i32*, i32** %13, align 8
  store i32 0, i32* %33, align 4
  %34 = load i32*, i32** %8, align 8
  %35 = load i32, i32* %34, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %6
  %38 = load i32*, i32** %13, align 8
  store i32 -1, i32* %38, align 4
  br label %56

39:                                               ; preds = %6
  %40 = load i32*, i32** %9, align 8
  %41 = load i32, i32* %40, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %39
  %44 = load i32*, i32** %13, align 8
  store i32 -2, i32* %44, align 4
  br label %55

45:                                               ; preds = %39
  %46 = load i32*, i32** %11, align 8
  %47 = load i32, i32* %46, align 4
  %48 = load i32*, i32** %8, align 8
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @max(i32 1, i32 %49)
  %51 = icmp slt i32 %47, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %45
  %53 = load i32*, i32** %13, align 8
  store i32 -4, i32* %53, align 4
  br label %54

54:                                               ; preds = %52, %45
  br label %55

55:                                               ; preds = %54, %43
  br label %56

56:                                               ; preds = %55, %37
  %57 = load i32*, i32** %13, align 8
  %58 = load i32, i32* %57, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %56
  %61 = load i32*, i32** %13, align 8
  %62 = load i32, i32* %61, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %16, align 4
  %64 = call i32 @xerbla_(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32* %16)
  store i32 0, i32* %7, align 4
  br label %338

65:                                               ; preds = %56
  %66 = load i32*, i32** %8, align 8
  %67 = load i32, i32* %66, align 4
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %73, label %69

69:                                               ; preds = %65
  %70 = load i32*, i32** %9, align 8
  %71 = load i32, i32* %70, align 4
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %69, %65
  store i32 0, i32* %7, align 4
  br label %338

74:                                               ; preds = %69
  %75 = load i32*, i32** %8, align 8
  %76 = load i32*, i32** %9, align 8
  %77 = call i32 @ilaenv_(i32* @c__1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32* %75, i32* %76, i32* @c_n1, i32* @c_n1, i32 6, i32 1)
  store i32 %77, i32* @zgetrf_.nb, align 4
  %78 = load i32, i32* @zgetrf_.nb, align 4
  %79 = icmp sle i32 %78, 1
  br i1 %79, label %88, label %80

80:                                               ; preds = %74
  %81 = load i32, i32* @zgetrf_.nb, align 4
  %82 = load i32*, i32** %8, align 8
  %83 = load i32, i32* %82, align 4
  %84 = load i32*, i32** %9, align 8
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @min(i32 %83, i32 %85)
  %87 = icmp sge i32 %81, %86
  br i1 %87, label %88, label %100

88:                                               ; preds = %80, %74
  %89 = load i32*, i32** %8, align 8
  %90 = load i32*, i32** %9, align 8
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %92 = load i32, i32* %15, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i64 %93
  %95 = load i32*, i32** %11, align 8
  %96 = load i32*, i32** %12, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 1
  %98 = load i32*, i32** %13, align 8
  %99 = call i32 @zgetf2_(i32* %89, i32* %90, %struct.TYPE_8__* %94, i32* %95, i32* %97, i32* %98)
  br label %337

100:                                              ; preds = %80
  %101 = load i32*, i32** %8, align 8
  %102 = load i32, i32* %101, align 4
  %103 = load i32*, i32** %9, align 8
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @min(i32 %102, i32 %104)
  store i32 %105, i32* %16, align 4
  %106 = load i32, i32* @zgetrf_.nb, align 4
  store i32 %106, i32* %17, align 4
  store i32 1, i32* @zgetrf_.j, align 4
  br label %107

107:                                              ; preds = %332, %100
  %108 = load i32, i32* %17, align 4
  %109 = icmp slt i32 %108, 0
  br i1 %109, label %110, label %115

110:                                              ; preds = %107
  %111 = load i32, i32* @zgetrf_.j, align 4
  %112 = load i32, i32* %16, align 4
  %113 = icmp sge i32 %111, %112
  %114 = zext i1 %113 to i32
  br label %120

115:                                              ; preds = %107
  %116 = load i32, i32* @zgetrf_.j, align 4
  %117 = load i32, i32* %16, align 4
  %118 = icmp sle i32 %116, %117
  %119 = zext i1 %118 to i32
  br label %120

120:                                              ; preds = %115, %110
  %121 = phi i32 [ %114, %110 ], [ %119, %115 ]
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %336

123:                                              ; preds = %120
  %124 = load i32*, i32** %8, align 8
  %125 = load i32, i32* %124, align 4
  %126 = load i32*, i32** %9, align 8
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @min(i32 %125, i32 %127)
  %129 = load i32, i32* @zgetrf_.j, align 4
  %130 = sub nsw i32 %128, %129
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %18, align 4
  %132 = load i32, i32* %18, align 4
  %133 = load i32, i32* @zgetrf_.nb, align 4
  %134 = call i32 @min(i32 %132, i32 %133)
  store i32 %134, i32* @zgetrf_.jb, align 4
  %135 = load i32*, i32** %8, align 8
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* @zgetrf_.j, align 4
  %138 = sub nsw i32 %136, %137
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %18, align 4
  %140 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %141 = load i32, i32* @zgetrf_.j, align 4
  %142 = load i32, i32* @zgetrf_.j, align 4
  %143 = load i32, i32* %14, align 4
  %144 = mul nsw i32 %142, %143
  %145 = add nsw i32 %141, %144
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %140, i64 %146
  %148 = load i32*, i32** %11, align 8
  %149 = load i32*, i32** %12, align 8
  %150 = load i32, i32* @zgetrf_.j, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i32, i32* %149, i64 %151
  %153 = call i32 @zgetf2_(i32* %18, i32* @zgetrf_.jb, %struct.TYPE_8__* %147, i32* %148, i32* %152, i32* @zgetrf_.iinfo)
  %154 = load i32*, i32** %13, align 8
  %155 = load i32, i32* %154, align 4
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %157, label %166

157:                                              ; preds = %123
  %158 = load i32, i32* @zgetrf_.iinfo, align 4
  %159 = icmp sgt i32 %158, 0
  br i1 %159, label %160, label %166

160:                                              ; preds = %157
  %161 = load i32, i32* @zgetrf_.iinfo, align 4
  %162 = load i32, i32* @zgetrf_.j, align 4
  %163 = add nsw i32 %161, %162
  %164 = sub nsw i32 %163, 1
  %165 = load i32*, i32** %13, align 8
  store i32 %164, i32* %165, align 4
  br label %166

166:                                              ; preds = %160, %157, %123
  %167 = load i32*, i32** %8, align 8
  %168 = load i32, i32* %167, align 4
  store i32 %168, i32* %19, align 4
  %169 = load i32, i32* @zgetrf_.j, align 4
  %170 = load i32, i32* @zgetrf_.jb, align 4
  %171 = add nsw i32 %169, %170
  %172 = sub nsw i32 %171, 1
  store i32 %172, i32* %20, align 4
  %173 = load i32, i32* %19, align 4
  %174 = load i32, i32* %20, align 4
  %175 = call i32 @min(i32 %173, i32 %174)
  store i32 %175, i32* %18, align 4
  %176 = load i32, i32* @zgetrf_.j, align 4
  store i32 %176, i32* @zgetrf_.i__, align 4
  br label %177

177:                                              ; preds = %194, %166
  %178 = load i32, i32* @zgetrf_.i__, align 4
  %179 = load i32, i32* %18, align 4
  %180 = icmp sle i32 %178, %179
  br i1 %180, label %181, label %197

181:                                              ; preds = %177
  %182 = load i32, i32* @zgetrf_.j, align 4
  %183 = sub nsw i32 %182, 1
  %184 = load i32*, i32** %12, align 8
  %185 = load i32, i32* @zgetrf_.i__, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i32, i32* %184, i64 %186
  %188 = load i32, i32* %187, align 4
  %189 = add nsw i32 %183, %188
  %190 = load i32*, i32** %12, align 8
  %191 = load i32, i32* @zgetrf_.i__, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds i32, i32* %190, i64 %192
  store i32 %189, i32* %193, align 4
  br label %194

194:                                              ; preds = %181
  %195 = load i32, i32* @zgetrf_.i__, align 4
  %196 = add nsw i32 %195, 1
  store i32 %196, i32* @zgetrf_.i__, align 4
  br label %177

197:                                              ; preds = %177
  %198 = load i32, i32* @zgetrf_.j, align 4
  %199 = sub nsw i32 %198, 1
  store i32 %199, i32* %18, align 4
  %200 = load i32, i32* @zgetrf_.j, align 4
  %201 = load i32, i32* @zgetrf_.jb, align 4
  %202 = add nsw i32 %200, %201
  %203 = sub nsw i32 %202, 1
  store i32 %203, i32* %19, align 4
  %204 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %205 = load i32, i32* %15, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %204, i64 %206
  %208 = load i32*, i32** %11, align 8
  %209 = load i32*, i32** %12, align 8
  %210 = getelementptr inbounds i32, i32* %209, i64 1
  %211 = call i32 @zlaswp_(i32* %18, %struct.TYPE_8__* %207, i32* %208, i32* @zgetrf_.j, i32* %19, i32* %210, i32* @c__1)
  %212 = load i32, i32* @zgetrf_.j, align 4
  %213 = load i32, i32* @zgetrf_.jb, align 4
  %214 = add nsw i32 %212, %213
  %215 = load i32*, i32** %9, align 8
  %216 = load i32, i32* %215, align 4
  %217 = icmp sle i32 %214, %216
  br i1 %217, label %218, label %331

218:                                              ; preds = %197
  %219 = load i32*, i32** %9, align 8
  %220 = load i32, i32* %219, align 4
  %221 = load i32, i32* @zgetrf_.j, align 4
  %222 = sub nsw i32 %220, %221
  %223 = load i32, i32* @zgetrf_.jb, align 4
  %224 = sub nsw i32 %222, %223
  %225 = add nsw i32 %224, 1
  store i32 %225, i32* %18, align 4
  %226 = load i32, i32* @zgetrf_.j, align 4
  %227 = load i32, i32* @zgetrf_.jb, align 4
  %228 = add nsw i32 %226, %227
  %229 = sub nsw i32 %228, 1
  store i32 %229, i32* %19, align 4
  %230 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %231 = load i32, i32* @zgetrf_.j, align 4
  %232 = load i32, i32* @zgetrf_.jb, align 4
  %233 = add nsw i32 %231, %232
  %234 = load i32, i32* %14, align 4
  %235 = mul nsw i32 %233, %234
  %236 = add nsw i32 %235, 1
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %230, i64 %237
  %239 = load i32*, i32** %11, align 8
  %240 = load i32*, i32** %12, align 8
  %241 = getelementptr inbounds i32, i32* %240, i64 1
  %242 = call i32 @zlaswp_(i32* %18, %struct.TYPE_8__* %238, i32* %239, i32* @zgetrf_.j, i32* %19, i32* %241, i32* @c__1)
  %243 = load i32*, i32** %9, align 8
  %244 = load i32, i32* %243, align 4
  %245 = load i32, i32* @zgetrf_.j, align 4
  %246 = sub nsw i32 %244, %245
  %247 = load i32, i32* @zgetrf_.jb, align 4
  %248 = sub nsw i32 %246, %247
  %249 = add nsw i32 %248, 1
  store i32 %249, i32* %18, align 4
  %250 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %251 = load i32, i32* @zgetrf_.j, align 4
  %252 = load i32, i32* @zgetrf_.j, align 4
  %253 = load i32, i32* %14, align 4
  %254 = mul nsw i32 %252, %253
  %255 = add nsw i32 %251, %254
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %250, i64 %256
  %258 = load i32*, i32** %11, align 8
  %259 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %260 = load i32, i32* @zgetrf_.j, align 4
  %261 = load i32, i32* @zgetrf_.j, align 4
  %262 = load i32, i32* @zgetrf_.jb, align 4
  %263 = add nsw i32 %261, %262
  %264 = load i32, i32* %14, align 4
  %265 = mul nsw i32 %263, %264
  %266 = add nsw i32 %260, %265
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %259, i64 %267
  %269 = load i32*, i32** %11, align 8
  %270 = call i32 @ztrsm_(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32* @zgetrf_.jb, i32* %18, %struct.TYPE_8__* @c_b57, %struct.TYPE_8__* %257, i32* %258, %struct.TYPE_8__* %268, i32* %269)
  %271 = load i32, i32* @zgetrf_.j, align 4
  %272 = load i32, i32* @zgetrf_.jb, align 4
  %273 = add nsw i32 %271, %272
  %274 = load i32*, i32** %8, align 8
  %275 = load i32, i32* %274, align 4
  %276 = icmp sle i32 %273, %275
  br i1 %276, label %277, label %330

277:                                              ; preds = %218
  %278 = load i32*, i32** %8, align 8
  %279 = load i32, i32* %278, align 4
  %280 = load i32, i32* @zgetrf_.j, align 4
  %281 = sub nsw i32 %279, %280
  %282 = load i32, i32* @zgetrf_.jb, align 4
  %283 = sub nsw i32 %281, %282
  %284 = add nsw i32 %283, 1
  store i32 %284, i32* %18, align 4
  %285 = load i32*, i32** %9, align 8
  %286 = load i32, i32* %285, align 4
  %287 = load i32, i32* @zgetrf_.j, align 4
  %288 = sub nsw i32 %286, %287
  %289 = load i32, i32* @zgetrf_.jb, align 4
  %290 = sub nsw i32 %288, %289
  %291 = add nsw i32 %290, 1
  store i32 %291, i32* %19, align 4
  %292 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  store i32 -1, i32* %292, align 4
  %293 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 1
  store i32 0, i32* %293, align 4
  %294 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %295 = load i32, i32* @zgetrf_.j, align 4
  %296 = load i32, i32* @zgetrf_.jb, align 4
  %297 = add nsw i32 %295, %296
  %298 = load i32, i32* @zgetrf_.j, align 4
  %299 = load i32, i32* %14, align 4
  %300 = mul nsw i32 %298, %299
  %301 = add nsw i32 %297, %300
  %302 = sext i32 %301 to i64
  %303 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %294, i64 %302
  %304 = load i32*, i32** %11, align 8
  %305 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %306 = load i32, i32* @zgetrf_.j, align 4
  %307 = load i32, i32* @zgetrf_.j, align 4
  %308 = load i32, i32* @zgetrf_.jb, align 4
  %309 = add nsw i32 %307, %308
  %310 = load i32, i32* %14, align 4
  %311 = mul nsw i32 %309, %310
  %312 = add nsw i32 %306, %311
  %313 = sext i32 %312 to i64
  %314 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %305, i64 %313
  %315 = load i32*, i32** %11, align 8
  %316 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %317 = load i32, i32* @zgetrf_.j, align 4
  %318 = load i32, i32* @zgetrf_.jb, align 4
  %319 = add nsw i32 %317, %318
  %320 = load i32, i32* @zgetrf_.j, align 4
  %321 = load i32, i32* @zgetrf_.jb, align 4
  %322 = add nsw i32 %320, %321
  %323 = load i32, i32* %14, align 4
  %324 = mul nsw i32 %322, %323
  %325 = add nsw i32 %319, %324
  %326 = sext i32 %325 to i64
  %327 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %316, i64 %326
  %328 = load i32*, i32** %11, align 8
  %329 = call i32 @zgemm_(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i32* %18, i32* %19, i32* @zgetrf_.jb, %struct.TYPE_8__* %21, %struct.TYPE_8__* %303, i32* %304, %struct.TYPE_8__* %314, i32* %315, %struct.TYPE_8__* @c_b57, %struct.TYPE_8__* %327, i32* %328)
  br label %330

330:                                              ; preds = %277, %218
  br label %331

331:                                              ; preds = %330, %197
  br label %332

332:                                              ; preds = %331
  %333 = load i32, i32* %17, align 4
  %334 = load i32, i32* @zgetrf_.j, align 4
  %335 = add nsw i32 %334, %333
  store i32 %335, i32* @zgetrf_.j, align 4
  br label %107

336:                                              ; preds = %120
  br label %337

337:                                              ; preds = %336, %88
  store i32 0, i32* %7, align 4
  br label %338

338:                                              ; preds = %337, %73, %60
  %339 = load i32, i32* %7, align 4
  ret i32 %339
}

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @xerbla_(i8*, i32*) #1

declare dso_local i32 @ilaenv_(i32*, i8*, i8*, i32*, i32*, i32*, i32*, i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @zgetf2_(i32*, i32*, %struct.TYPE_8__*, i32*, i32*, i32*) #1

declare dso_local i32 @zlaswp_(i32*, %struct.TYPE_8__*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @ztrsm_(i8*, i8*, i8*, i8*, i32*, i32*, %struct.TYPE_8__*, %struct.TYPE_8__*, i32*, %struct.TYPE_8__*, i32*) #1

declare dso_local i32 @zgemm_(i8*, i8*, i32*, i32*, i32*, %struct.TYPE_8__*, %struct.TYPE_8__*, i32*, %struct.TYPE_8__*, i32*, %struct.TYPE_8__*, %struct.TYPE_8__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
