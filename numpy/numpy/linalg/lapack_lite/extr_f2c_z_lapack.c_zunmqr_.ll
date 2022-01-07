; ModuleID = '/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_z_lapack.c_zunmqr_.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_z_lapack.c_zunmqr_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }

@zunmqr_.i__ = internal global i32 0, align 4
@zunmqr_.t = internal global [4160 x %struct.TYPE_6__] zeroinitializer, align 16
@zunmqr_.i1 = internal global i32 0, align 4
@zunmqr_.i2 = internal global i32 0, align 4
@zunmqr_.i3 = internal global i32 0, align 4
@zunmqr_.ib = internal global i32 0, align 4
@zunmqr_.ic = internal global i32 0, align 4
@zunmqr_.jc = internal global i32 0, align 4
@zunmqr_.nb = internal global i32 0, align 4
@zunmqr_.mi = internal global i32 0, align 4
@zunmqr_.ni = internal global i32 0, align 4
@zunmqr_.nq = internal global i32 0, align 4
@zunmqr_.nw = internal global i32 0, align 4
@zunmqr_.iws = internal global i32 0, align 4
@zunmqr_.left = internal global i32 0, align 4
@zunmqr_.nbmin = internal global i32 0, align 4
@zunmqr_.iinfo = internal global i32 0, align 4
@zunmqr_.notran = internal global i32 0, align 4
@zunmqr_.ldwork = internal global i32 0, align 4
@zunmqr_.lwkopt = internal global i32 0, align 4
@zunmqr_.lquery = internal global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"L\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"N\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"R\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@c__2 = common dso_local global i32 0, align 4
@c__1 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"ZUNMQR\00", align 1
@c_n1 = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [8 x i8] c"Forward\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"Columnwise\00", align 1
@c__65 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zunmqr_(i8* %0, i8* %1, i32* %2, i32* %3, i32* %4, %struct.TYPE_6__* %5, i32* %6, %struct.TYPE_6__* %7, %struct.TYPE_6__* %8, i32* %9, %struct.TYPE_6__* %10, i32* %11, i32* %12) #0 {
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca %struct.TYPE_6__*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca %struct.TYPE_6__*, align 8
  %23 = alloca %struct.TYPE_6__*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca %struct.TYPE_6__*, align 8
  %26 = alloca i32*, align 8
  %27 = alloca i32*, align 8
  %28 = alloca [2 x i8*], align 16
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca [2 x i32], align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca [2 x i8], align 1
  store i8* %0, i8** %15, align 8
  store i8* %1, i8** %16, align 8
  store i32* %2, i32** %17, align 8
  store i32* %3, i32** %18, align 8
  store i32* %4, i32** %19, align 8
  store %struct.TYPE_6__* %5, %struct.TYPE_6__** %20, align 8
  store i32* %6, i32** %21, align 8
  store %struct.TYPE_6__* %7, %struct.TYPE_6__** %22, align 8
  store %struct.TYPE_6__* %8, %struct.TYPE_6__** %23, align 8
  store i32* %9, i32** %24, align 8
  store %struct.TYPE_6__* %10, %struct.TYPE_6__** %25, align 8
  store i32* %11, i32** %26, align 8
  store i32* %12, i32** %27, align 8
  %39 = load i32*, i32** %21, align 8
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %29, align 4
  %41 = load i32, i32* %29, align 4
  %42 = add nsw i32 1, %41
  store i32 %42, i32* %30, align 4
  %43 = load i32, i32* %30, align 4
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %45 = sext i32 %43 to i64
  %46 = sub i64 0, %45
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i64 %46
  store %struct.TYPE_6__* %47, %struct.TYPE_6__** %20, align 8
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 -1
  store %struct.TYPE_6__* %49, %struct.TYPE_6__** %22, align 8
  %50 = load i32*, i32** %24, align 8
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %31, align 4
  %52 = load i32, i32* %31, align 4
  %53 = add nsw i32 1, %52
  store i32 %53, i32* %32, align 4
  %54 = load i32, i32* %32, align 4
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %56 = sext i32 %54 to i64
  %57 = sub i64 0, %56
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i64 %57
  store %struct.TYPE_6__* %58, %struct.TYPE_6__** %23, align 8
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 -1
  store %struct.TYPE_6__* %60, %struct.TYPE_6__** %25, align 8
  %61 = load i32*, i32** %27, align 8
  store i32 0, i32* %61, align 4
  %62 = load i8*, i8** %15, align 8
  %63 = call i32 @lsame_(i8* %62, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32 %63, i32* @zunmqr_.left, align 4
  %64 = load i8*, i8** %16, align 8
  %65 = call i32 @lsame_(i8* %64, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32 %65, i32* @zunmqr_.notran, align 4
  %66 = load i32*, i32** %26, align 8
  %67 = load i32, i32* %66, align 4
  %68 = icmp eq i32 %67, -1
  %69 = zext i1 %68 to i32
  store i32 %69, i32* @zunmqr_.lquery, align 4
  %70 = load i32, i32* @zunmqr_.left, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %13
  %73 = load i32*, i32** %17, align 8
  %74 = load i32, i32* %73, align 4
  store i32 %74, i32* @zunmqr_.nq, align 4
  %75 = load i32*, i32** %18, align 8
  %76 = load i32, i32* %75, align 4
  store i32 %76, i32* @zunmqr_.nw, align 4
  br label %82

77:                                               ; preds = %13
  %78 = load i32*, i32** %18, align 8
  %79 = load i32, i32* %78, align 4
  store i32 %79, i32* @zunmqr_.nq, align 4
  %80 = load i32*, i32** %17, align 8
  %81 = load i32, i32* %80, align 4
  store i32 %81, i32* @zunmqr_.nw, align 4
  br label %82

82:                                               ; preds = %77, %72
  %83 = load i32, i32* @zunmqr_.left, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %91, label %85

85:                                               ; preds = %82
  %86 = load i8*, i8** %15, align 8
  %87 = call i32 @lsame_(i8* %86, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %91, label %89

89:                                               ; preds = %85
  %90 = load i32*, i32** %27, align 8
  store i32 -1, i32* %90, align 4
  br label %158

91:                                               ; preds = %85, %82
  %92 = load i32, i32* @zunmqr_.notran, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %100, label %94

94:                                               ; preds = %91
  %95 = load i8*, i8** %16, align 8
  %96 = call i32 @lsame_(i8* %95, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %100, label %98

98:                                               ; preds = %94
  %99 = load i32*, i32** %27, align 8
  store i32 -2, i32* %99, align 4
  br label %157

100:                                              ; preds = %94, %91
  %101 = load i32*, i32** %17, align 8
  %102 = load i32, i32* %101, align 4
  %103 = icmp slt i32 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %100
  %105 = load i32*, i32** %27, align 8
  store i32 -3, i32* %105, align 4
  br label %156

106:                                              ; preds = %100
  %107 = load i32*, i32** %18, align 8
  %108 = load i32, i32* %107, align 4
  %109 = icmp slt i32 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %106
  %111 = load i32*, i32** %27, align 8
  store i32 -4, i32* %111, align 4
  br label %155

112:                                              ; preds = %106
  %113 = load i32*, i32** %19, align 8
  %114 = load i32, i32* %113, align 4
  %115 = icmp slt i32 %114, 0
  br i1 %115, label %121, label %116

116:                                              ; preds = %112
  %117 = load i32*, i32** %19, align 8
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* @zunmqr_.nq, align 4
  %120 = icmp sgt i32 %118, %119
  br i1 %120, label %121, label %123

121:                                              ; preds = %116, %112
  %122 = load i32*, i32** %27, align 8
  store i32 -5, i32* %122, align 4
  br label %154

123:                                              ; preds = %116
  %124 = load i32*, i32** %21, align 8
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* @zunmqr_.nq, align 4
  %127 = call i32 @max(i32 1, i32 %126)
  %128 = icmp slt i32 %125, %127
  br i1 %128, label %129, label %131

129:                                              ; preds = %123
  %130 = load i32*, i32** %27, align 8
  store i32 -7, i32* %130, align 4
  br label %153

131:                                              ; preds = %123
  %132 = load i32*, i32** %24, align 8
  %133 = load i32, i32* %132, align 4
  %134 = load i32*, i32** %17, align 8
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @max(i32 1, i32 %135)
  %137 = icmp slt i32 %133, %136
  br i1 %137, label %138, label %140

138:                                              ; preds = %131
  %139 = load i32*, i32** %27, align 8
  store i32 -10, i32* %139, align 4
  br label %152

140:                                              ; preds = %131
  %141 = load i32*, i32** %26, align 8
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* @zunmqr_.nw, align 4
  %144 = call i32 @max(i32 1, i32 %143)
  %145 = icmp slt i32 %142, %144
  br i1 %145, label %146, label %151

146:                                              ; preds = %140
  %147 = load i32, i32* @zunmqr_.lquery, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %151, label %149

149:                                              ; preds = %146
  %150 = load i32*, i32** %27, align 8
  store i32 -12, i32* %150, align 4
  br label %151

151:                                              ; preds = %149, %146, %140
  br label %152

152:                                              ; preds = %151, %138
  br label %153

153:                                              ; preds = %152, %129
  br label %154

154:                                              ; preds = %153, %121
  br label %155

155:                                              ; preds = %154, %110
  br label %156

156:                                              ; preds = %155, %104
  br label %157

157:                                              ; preds = %156, %98
  br label %158

158:                                              ; preds = %157, %89
  %159 = load i32*, i32** %27, align 8
  %160 = load i32, i32* %159, align 4
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %162, label %195

162:                                              ; preds = %158
  %163 = getelementptr inbounds [2 x i32], [2 x i32]* %35, i64 0, i64 0
  store i32 1, i32* %163, align 4
  %164 = load i8*, i8** %15, align 8
  %165 = getelementptr inbounds [2 x i8*], [2 x i8*]* %28, i64 0, i64 0
  store i8* %164, i8** %165, align 16
  %166 = getelementptr inbounds [2 x i32], [2 x i32]* %35, i64 0, i64 1
  store i32 1, i32* %166, align 4
  %167 = load i8*, i8** %16, align 8
  %168 = getelementptr inbounds [2 x i8*], [2 x i8*]* %28, i64 0, i64 1
  store i8* %167, i8** %168, align 8
  %169 = getelementptr inbounds [2 x i8], [2 x i8]* %38, i64 0, i64 0
  %170 = getelementptr inbounds [2 x i8*], [2 x i8*]* %28, i64 0, i64 0
  %171 = getelementptr inbounds [2 x i32], [2 x i32]* %35, i64 0, i64 0
  %172 = call i32 @s_cat(i8* %169, i8** %170, i32* %171, i32* @c__2, i32 2)
  store i32 64, i32* %33, align 4
  %173 = getelementptr inbounds [2 x i8], [2 x i8]* %38, i64 0, i64 0
  %174 = load i32*, i32** %17, align 8
  %175 = load i32*, i32** %18, align 8
  %176 = load i32*, i32** %19, align 8
  %177 = call i32 @ilaenv_(i32* @c__1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8* %173, i32* %174, i32* %175, i32* %176, i32* @c_n1, i32 6, i32 2)
  store i32 %177, i32* %34, align 4
  %178 = load i32, i32* %33, align 4
  %179 = load i32, i32* %34, align 4
  %180 = call i32 @min(i32 %178, i32 %179)
  store i32 %180, i32* @zunmqr_.nb, align 4
  %181 = load i32, i32* @zunmqr_.nw, align 4
  %182 = call i32 @max(i32 1, i32 %181)
  %183 = load i32, i32* @zunmqr_.nb, align 4
  %184 = mul nsw i32 %182, %183
  store i32 %184, i32* @zunmqr_.lwkopt, align 4
  %185 = load i32, i32* @zunmqr_.lwkopt, align 4
  %186 = sext i32 %185 to i64
  %187 = inttoptr i64 %186 to i8*
  %188 = ptrtoint i8* %187 to i32
  %189 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %190 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %189, i64 1
  %191 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %190, i32 0, i32 0
  store i32 %188, i32* %191, align 4
  %192 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %193 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %192, i64 1
  %194 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %193, i32 0, i32 1
  store i32 0, i32* %194, align 4
  br label %195

195:                                              ; preds = %162, %158
  %196 = load i32*, i32** %27, align 8
  %197 = load i32, i32* %196, align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %204

199:                                              ; preds = %195
  %200 = load i32*, i32** %27, align 8
  %201 = load i32, i32* %200, align 4
  %202 = sub nsw i32 0, %201
  store i32 %202, i32* %33, align 4
  %203 = call i32 @xerbla_(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32* %33)
  store i32 0, i32* %14, align 4
  br label %441

204:                                              ; preds = %195
  %205 = load i32, i32* @zunmqr_.lquery, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %208

207:                                              ; preds = %204
  store i32 0, i32* %14, align 4
  br label %441

208:                                              ; preds = %204
  br label %209

209:                                              ; preds = %208
  %210 = load i32*, i32** %17, align 8
  %211 = load i32, i32* %210, align 4
  %212 = icmp eq i32 %211, 0
  br i1 %212, label %221, label %213

213:                                              ; preds = %209
  %214 = load i32*, i32** %18, align 8
  %215 = load i32, i32* %214, align 4
  %216 = icmp eq i32 %215, 0
  br i1 %216, label %221, label %217

217:                                              ; preds = %213
  %218 = load i32*, i32** %19, align 8
  %219 = load i32, i32* %218, align 4
  %220 = icmp eq i32 %219, 0
  br i1 %220, label %221, label %228

221:                                              ; preds = %217, %213, %209
  %222 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %223 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %222, i64 1
  %224 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %223, i32 0, i32 0
  store i32 1, i32* %224, align 4
  %225 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %226 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %225, i64 1
  %227 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %226, i32 0, i32 1
  store i32 0, i32* %227, align 4
  store i32 0, i32* %14, align 4
  br label %441

228:                                              ; preds = %217
  store i32 2, i32* @zunmqr_.nbmin, align 4
  %229 = load i32, i32* @zunmqr_.nw, align 4
  store i32 %229, i32* @zunmqr_.ldwork, align 4
  %230 = load i32, i32* @zunmqr_.nb, align 4
  %231 = icmp sgt i32 %230, 1
  br i1 %231, label %232, label %269

232:                                              ; preds = %228
  %233 = load i32, i32* @zunmqr_.nb, align 4
  %234 = load i32*, i32** %19, align 8
  %235 = load i32, i32* %234, align 4
  %236 = icmp slt i32 %233, %235
  br i1 %236, label %237, label %269

237:                                              ; preds = %232
  %238 = load i32, i32* @zunmqr_.nw, align 4
  %239 = load i32, i32* @zunmqr_.nb, align 4
  %240 = mul nsw i32 %238, %239
  store i32 %240, i32* @zunmqr_.iws, align 4
  %241 = load i32*, i32** %26, align 8
  %242 = load i32, i32* %241, align 4
  %243 = load i32, i32* @zunmqr_.iws, align 4
  %244 = icmp slt i32 %242, %243
  br i1 %244, label %245, label %268

245:                                              ; preds = %237
  %246 = load i32*, i32** %26, align 8
  %247 = load i32, i32* %246, align 4
  %248 = load i32, i32* @zunmqr_.ldwork, align 4
  %249 = sdiv i32 %247, %248
  store i32 %249, i32* @zunmqr_.nb, align 4
  %250 = getelementptr inbounds [2 x i32], [2 x i32]* %35, i64 0, i64 0
  store i32 1, i32* %250, align 4
  %251 = load i8*, i8** %15, align 8
  %252 = getelementptr inbounds [2 x i8*], [2 x i8*]* %28, i64 0, i64 0
  store i8* %251, i8** %252, align 16
  %253 = getelementptr inbounds [2 x i32], [2 x i32]* %35, i64 0, i64 1
  store i32 1, i32* %253, align 4
  %254 = load i8*, i8** %16, align 8
  %255 = getelementptr inbounds [2 x i8*], [2 x i8*]* %28, i64 0, i64 1
  store i8* %254, i8** %255, align 8
  %256 = getelementptr inbounds [2 x i8], [2 x i8]* %38, i64 0, i64 0
  %257 = getelementptr inbounds [2 x i8*], [2 x i8*]* %28, i64 0, i64 0
  %258 = getelementptr inbounds [2 x i32], [2 x i32]* %35, i64 0, i64 0
  %259 = call i32 @s_cat(i8* %256, i8** %257, i32* %258, i32* @c__2, i32 2)
  store i32 2, i32* %33, align 4
  %260 = getelementptr inbounds [2 x i8], [2 x i8]* %38, i64 0, i64 0
  %261 = load i32*, i32** %17, align 8
  %262 = load i32*, i32** %18, align 8
  %263 = load i32*, i32** %19, align 8
  %264 = call i32 @ilaenv_(i32* @c__2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8* %260, i32* %261, i32* %262, i32* %263, i32* @c_n1, i32 6, i32 2)
  store i32 %264, i32* %34, align 4
  %265 = load i32, i32* %33, align 4
  %266 = load i32, i32* %34, align 4
  %267 = call i32 @max(i32 %265, i32 %266)
  store i32 %267, i32* @zunmqr_.nbmin, align 4
  br label %268

268:                                              ; preds = %245, %237
  br label %271

269:                                              ; preds = %232, %228
  %270 = load i32, i32* @zunmqr_.nw, align 4
  store i32 %270, i32* @zunmqr_.iws, align 4
  br label %271

271:                                              ; preds = %269, %268
  %272 = load i32, i32* @zunmqr_.nb, align 4
  %273 = load i32, i32* @zunmqr_.nbmin, align 4
  %274 = icmp slt i32 %272, %273
  br i1 %274, label %280, label %275

275:                                              ; preds = %271
  %276 = load i32, i32* @zunmqr_.nb, align 4
  %277 = load i32*, i32** %19, align 8
  %278 = load i32, i32* %277, align 4
  %279 = icmp sge i32 %276, %278
  br i1 %279, label %280, label %301

280:                                              ; preds = %275, %271
  %281 = load i8*, i8** %15, align 8
  %282 = load i8*, i8** %16, align 8
  %283 = load i32*, i32** %17, align 8
  %284 = load i32*, i32** %18, align 8
  %285 = load i32*, i32** %19, align 8
  %286 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %287 = load i32, i32* %30, align 4
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %286, i64 %288
  %290 = load i32*, i32** %21, align 8
  %291 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %292 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %291, i64 1
  %293 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %294 = load i32, i32* %32, align 4
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %293, i64 %295
  %297 = load i32*, i32** %24, align 8
  %298 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %299 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %298, i64 1
  %300 = call i32 @zunm2r_(i8* %281, i8* %282, i32* %283, i32* %284, i32* %285, %struct.TYPE_6__* %289, i32* %290, %struct.TYPE_6__* %292, %struct.TYPE_6__* %296, i32* %297, %struct.TYPE_6__* %299, i32* @zunmqr_.iinfo)
  br label %430

301:                                              ; preds = %275
  %302 = load i32, i32* @zunmqr_.left, align 4
  %303 = icmp ne i32 %302, 0
  br i1 %303, label %304, label %307

304:                                              ; preds = %301
  %305 = load i32, i32* @zunmqr_.notran, align 4
  %306 = icmp ne i32 %305, 0
  br i1 %306, label %307, label %313

307:                                              ; preds = %304, %301
  %308 = load i32, i32* @zunmqr_.left, align 4
  %309 = icmp ne i32 %308, 0
  br i1 %309, label %317, label %310

310:                                              ; preds = %307
  %311 = load i32, i32* @zunmqr_.notran, align 4
  %312 = icmp ne i32 %311, 0
  br i1 %312, label %313, label %317

313:                                              ; preds = %310, %304
  store i32 1, i32* @zunmqr_.i1, align 4
  %314 = load i32*, i32** %19, align 8
  %315 = load i32, i32* %314, align 4
  store i32 %315, i32* @zunmqr_.i2, align 4
  %316 = load i32, i32* @zunmqr_.nb, align 4
  store i32 %316, i32* @zunmqr_.i3, align 4
  br label %328

317:                                              ; preds = %310, %307
  %318 = load i32*, i32** %19, align 8
  %319 = load i32, i32* %318, align 4
  %320 = sub nsw i32 %319, 1
  %321 = load i32, i32* @zunmqr_.nb, align 4
  %322 = sdiv i32 %320, %321
  %323 = load i32, i32* @zunmqr_.nb, align 4
  %324 = mul nsw i32 %322, %323
  %325 = add nsw i32 %324, 1
  store i32 %325, i32* @zunmqr_.i1, align 4
  store i32 1, i32* @zunmqr_.i2, align 4
  %326 = load i32, i32* @zunmqr_.nb, align 4
  %327 = sub nsw i32 0, %326
  store i32 %327, i32* @zunmqr_.i3, align 4
  br label %328

328:                                              ; preds = %317, %313
  %329 = load i32, i32* @zunmqr_.left, align 4
  %330 = icmp ne i32 %329, 0
  br i1 %330, label %331, label %334

331:                                              ; preds = %328
  %332 = load i32*, i32** %18, align 8
  %333 = load i32, i32* %332, align 4
  store i32 %333, i32* @zunmqr_.ni, align 4
  store i32 1, i32* @zunmqr_.jc, align 4
  br label %337

334:                                              ; preds = %328
  %335 = load i32*, i32** %17, align 8
  %336 = load i32, i32* %335, align 4
  store i32 %336, i32* @zunmqr_.mi, align 4
  store i32 1, i32* @zunmqr_.ic, align 4
  br label %337

337:                                              ; preds = %334, %331
  %338 = load i32, i32* @zunmqr_.i2, align 4
  store i32 %338, i32* %33, align 4
  %339 = load i32, i32* @zunmqr_.i3, align 4
  store i32 %339, i32* %34, align 4
  %340 = load i32, i32* @zunmqr_.i1, align 4
  store i32 %340, i32* @zunmqr_.i__, align 4
  br label %341

341:                                              ; preds = %425, %337
  %342 = load i32, i32* %34, align 4
  %343 = icmp slt i32 %342, 0
  br i1 %343, label %344, label %349

344:                                              ; preds = %341
  %345 = load i32, i32* @zunmqr_.i__, align 4
  %346 = load i32, i32* %33, align 4
  %347 = icmp sge i32 %345, %346
  %348 = zext i1 %347 to i32
  br label %354

349:                                              ; preds = %341
  %350 = load i32, i32* @zunmqr_.i__, align 4
  %351 = load i32, i32* %33, align 4
  %352 = icmp sle i32 %350, %351
  %353 = zext i1 %352 to i32
  br label %354

354:                                              ; preds = %349, %344
  %355 = phi i32 [ %348, %344 ], [ %353, %349 ]
  %356 = icmp ne i32 %355, 0
  br i1 %356, label %357, label %429

357:                                              ; preds = %354
  %358 = load i32, i32* @zunmqr_.nb, align 4
  store i32 %358, i32* %36, align 4
  %359 = load i32*, i32** %19, align 8
  %360 = load i32, i32* %359, align 4
  %361 = load i32, i32* @zunmqr_.i__, align 4
  %362 = sub nsw i32 %360, %361
  %363 = add nsw i32 %362, 1
  store i32 %363, i32* %37, align 4
  %364 = load i32, i32* %36, align 4
  %365 = load i32, i32* %37, align 4
  %366 = call i32 @min(i32 %364, i32 %365)
  store i32 %366, i32* @zunmqr_.ib, align 4
  %367 = load i32, i32* @zunmqr_.nq, align 4
  %368 = load i32, i32* @zunmqr_.i__, align 4
  %369 = sub nsw i32 %367, %368
  %370 = add nsw i32 %369, 1
  store i32 %370, i32* %36, align 4
  %371 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %372 = load i32, i32* @zunmqr_.i__, align 4
  %373 = load i32, i32* @zunmqr_.i__, align 4
  %374 = load i32, i32* %29, align 4
  %375 = mul nsw i32 %373, %374
  %376 = add nsw i32 %372, %375
  %377 = sext i32 %376 to i64
  %378 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %371, i64 %377
  %379 = load i32*, i32** %21, align 8
  %380 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %381 = load i32, i32* @zunmqr_.i__, align 4
  %382 = sext i32 %381 to i64
  %383 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %380, i64 %382
  %384 = call i32 @zlarft_(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i32* %36, i32* @zunmqr_.ib, %struct.TYPE_6__* %378, i32* %379, %struct.TYPE_6__* %383, %struct.TYPE_6__* getelementptr inbounds ([4160 x %struct.TYPE_6__], [4160 x %struct.TYPE_6__]* @zunmqr_.t, i64 0, i64 0), i32* @c__65)
  %385 = load i32, i32* @zunmqr_.left, align 4
  %386 = icmp ne i32 %385, 0
  br i1 %386, label %387, label %394

387:                                              ; preds = %357
  %388 = load i32*, i32** %17, align 8
  %389 = load i32, i32* %388, align 4
  %390 = load i32, i32* @zunmqr_.i__, align 4
  %391 = sub nsw i32 %389, %390
  %392 = add nsw i32 %391, 1
  store i32 %392, i32* @zunmqr_.mi, align 4
  %393 = load i32, i32* @zunmqr_.i__, align 4
  store i32 %393, i32* @zunmqr_.ic, align 4
  br label %401

394:                                              ; preds = %357
  %395 = load i32*, i32** %18, align 8
  %396 = load i32, i32* %395, align 4
  %397 = load i32, i32* @zunmqr_.i__, align 4
  %398 = sub nsw i32 %396, %397
  %399 = add nsw i32 %398, 1
  store i32 %399, i32* @zunmqr_.ni, align 4
  %400 = load i32, i32* @zunmqr_.i__, align 4
  store i32 %400, i32* @zunmqr_.jc, align 4
  br label %401

401:                                              ; preds = %394, %387
  %402 = load i8*, i8** %15, align 8
  %403 = load i8*, i8** %16, align 8
  %404 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %405 = load i32, i32* @zunmqr_.i__, align 4
  %406 = load i32, i32* @zunmqr_.i__, align 4
  %407 = load i32, i32* %29, align 4
  %408 = mul nsw i32 %406, %407
  %409 = add nsw i32 %405, %408
  %410 = sext i32 %409 to i64
  %411 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %404, i64 %410
  %412 = load i32*, i32** %21, align 8
  %413 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %414 = load i32, i32* @zunmqr_.ic, align 4
  %415 = load i32, i32* @zunmqr_.jc, align 4
  %416 = load i32, i32* %31, align 4
  %417 = mul nsw i32 %415, %416
  %418 = add nsw i32 %414, %417
  %419 = sext i32 %418 to i64
  %420 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %413, i64 %419
  %421 = load i32*, i32** %24, align 8
  %422 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %423 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %422, i64 1
  %424 = call i32 @zlarfb_(i8* %402, i8* %403, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i32* @zunmqr_.mi, i32* @zunmqr_.ni, i32* @zunmqr_.ib, %struct.TYPE_6__* %411, i32* %412, %struct.TYPE_6__* getelementptr inbounds ([4160 x %struct.TYPE_6__], [4160 x %struct.TYPE_6__]* @zunmqr_.t, i64 0, i64 0), i32* @c__65, %struct.TYPE_6__* %420, i32* %421, %struct.TYPE_6__* %423, i32* @zunmqr_.ldwork)
  br label %425

425:                                              ; preds = %401
  %426 = load i32, i32* %34, align 4
  %427 = load i32, i32* @zunmqr_.i__, align 4
  %428 = add nsw i32 %427, %426
  store i32 %428, i32* @zunmqr_.i__, align 4
  br label %341

429:                                              ; preds = %354
  br label %430

430:                                              ; preds = %429, %280
  %431 = load i32, i32* @zunmqr_.lwkopt, align 4
  %432 = sext i32 %431 to i64
  %433 = inttoptr i64 %432 to i8*
  %434 = ptrtoint i8* %433 to i32
  %435 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %436 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %435, i64 1
  %437 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %436, i32 0, i32 0
  store i32 %434, i32* %437, align 4
  %438 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %439 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %438, i64 1
  %440 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %439, i32 0, i32 1
  store i32 0, i32* %440, align 4
  store i32 0, i32* %14, align 4
  br label %441

441:                                              ; preds = %430, %221, %207, %199
  %442 = load i32, i32* %14, align 4
  ret i32 %442
}

declare dso_local i32 @lsame_(i8*, i8*) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @s_cat(i8*, i8**, i32*, i32*, i32) #1

declare dso_local i32 @ilaenv_(i32*, i8*, i8*, i32*, i32*, i32*, i32*, i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @xerbla_(i8*, i32*) #1

declare dso_local i32 @zunm2r_(i8*, i8*, i32*, i32*, i32*, %struct.TYPE_6__*, i32*, %struct.TYPE_6__*, %struct.TYPE_6__*, i32*, %struct.TYPE_6__*, i32*) #1

declare dso_local i32 @zlarft_(i8*, i8*, i32*, i32*, %struct.TYPE_6__*, i32*, %struct.TYPE_6__*, %struct.TYPE_6__*, i32*) #1

declare dso_local i32 @zlarfb_(i8*, i8*, i8*, i8*, i32*, i32*, i32*, %struct.TYPE_6__*, i32*, %struct.TYPE_6__*, i32*, %struct.TYPE_6__*, i32*, %struct.TYPE_6__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
