; ModuleID = '/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_z_lapack.c_zgelqf_.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_z_lapack.c_zgelqf_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }

@zgelqf_.i__ = internal global i32 0, align 4
@zgelqf_.k = internal global i32 0, align 4
@zgelqf_.ib = internal global i32 0, align 4
@zgelqf_.nb = internal global i32 0, align 4
@zgelqf_.nx = internal global i32 0, align 4
@zgelqf_.iws = internal global i32 0, align 4
@zgelqf_.nbmin = internal global i32 0, align 4
@zgelqf_.iinfo = internal global i32 0, align 4
@zgelqf_.ldwork = internal global i32 0, align 4
@zgelqf_.lwkopt = internal global i32 0, align 4
@zgelqf_.lquery = internal global i32 0, align 4
@c__1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"ZGELQF\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c" \00", align 1
@c_n1 = common dso_local global i32 0, align 4
@c__3 = common dso_local global i32 0, align 4
@c__2 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"Forward\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"Rowwise\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"Right\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"No transpose\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zgelqf_(i32* %0, i32* %1, %struct.TYPE_5__* %2, i32* %3, %struct.TYPE_5__* %4, %struct.TYPE_5__* %5, i32* %6, i32* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_5__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_5__*, align 8
  %15 = alloca %struct.TYPE_5__*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store i32* %0, i32** %10, align 8
  store i32* %1, i32** %11, align 8
  store %struct.TYPE_5__* %2, %struct.TYPE_5__** %12, align 8
  store i32* %3, i32** %13, align 8
  store %struct.TYPE_5__* %4, %struct.TYPE_5__** %14, align 8
  store %struct.TYPE_5__* %5, %struct.TYPE_5__** %15, align 8
  store i32* %6, i32** %16, align 8
  store i32* %7, i32** %17, align 8
  %24 = load i32*, i32** %13, align 8
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %18, align 4
  %26 = load i32, i32* %18, align 4
  %27 = add nsw i32 1, %26
  store i32 %27, i32* %19, align 4
  %28 = load i32, i32* %19, align 4
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %30 = sext i32 %28 to i64
  %31 = sub i64 0, %30
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i64 %31
  store %struct.TYPE_5__* %32, %struct.TYPE_5__** %12, align 8
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 -1
  store %struct.TYPE_5__* %34, %struct.TYPE_5__** %14, align 8
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 -1
  store %struct.TYPE_5__* %36, %struct.TYPE_5__** %15, align 8
  %37 = load i32*, i32** %17, align 8
  store i32 0, i32* %37, align 4
  %38 = load i32*, i32** %10, align 8
  %39 = load i32*, i32** %11, align 8
  %40 = call i32 @ilaenv_(i32* @c__1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32* %38, i32* %39, i32* @c_n1, i32* @c_n1, i32 6, i32 1)
  store i32 %40, i32* @zgelqf_.nb, align 4
  %41 = load i32*, i32** %10, align 8
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @zgelqf_.nb, align 4
  %44 = mul nsw i32 %42, %43
  store i32 %44, i32* @zgelqf_.lwkopt, align 4
  %45 = load i32, i32* @zgelqf_.lwkopt, align 4
  %46 = sext i32 %45 to i64
  %47 = inttoptr i64 %46 to i8*
  %48 = ptrtoint i8* %47 to i32
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i64 1
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  store i32 %48, i32* %51, align 4
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i64 1
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 1
  store i32 0, i32* %54, align 4
  %55 = load i32*, i32** %16, align 8
  %56 = load i32, i32* %55, align 4
  %57 = icmp eq i32 %56, -1
  %58 = zext i1 %57 to i32
  store i32 %58, i32* @zgelqf_.lquery, align 4
  %59 = load i32*, i32** %10, align 8
  %60 = load i32, i32* %59, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %8
  %63 = load i32*, i32** %17, align 8
  store i32 -1, i32* %63, align 4
  br label %94

64:                                               ; preds = %8
  %65 = load i32*, i32** %11, align 8
  %66 = load i32, i32* %65, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %64
  %69 = load i32*, i32** %17, align 8
  store i32 -2, i32* %69, align 4
  br label %93

70:                                               ; preds = %64
  %71 = load i32*, i32** %13, align 8
  %72 = load i32, i32* %71, align 4
  %73 = load i32*, i32** %10, align 8
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @max(i32 1, i32 %74)
  %76 = icmp slt i32 %72, %75
  br i1 %76, label %77, label %79

77:                                               ; preds = %70
  %78 = load i32*, i32** %17, align 8
  store i32 -4, i32* %78, align 4
  br label %92

79:                                               ; preds = %70
  %80 = load i32*, i32** %16, align 8
  %81 = load i32, i32* %80, align 4
  %82 = load i32*, i32** %10, align 8
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @max(i32 1, i32 %83)
  %85 = icmp slt i32 %81, %84
  br i1 %85, label %86, label %91

86:                                               ; preds = %79
  %87 = load i32, i32* @zgelqf_.lquery, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %91, label %89

89:                                               ; preds = %86
  %90 = load i32*, i32** %17, align 8
  store i32 -7, i32* %90, align 4
  br label %91

91:                                               ; preds = %89, %86, %79
  br label %92

92:                                               ; preds = %91, %77
  br label %93

93:                                               ; preds = %92, %68
  br label %94

94:                                               ; preds = %93, %62
  %95 = load i32*, i32** %17, align 8
  %96 = load i32, i32* %95, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %103

98:                                               ; preds = %94
  %99 = load i32*, i32** %17, align 8
  %100 = load i32, i32* %99, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %20, align 4
  %102 = call i32 @xerbla_(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32* %20)
  store i32 0, i32* %9, align 4
  br label %344

103:                                              ; preds = %94
  %104 = load i32, i32* @zgelqf_.lquery, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %103
  store i32 0, i32* %9, align 4
  br label %344

107:                                              ; preds = %103
  br label %108

108:                                              ; preds = %107
  %109 = load i32*, i32** %10, align 8
  %110 = load i32, i32* %109, align 4
  %111 = load i32*, i32** %11, align 8
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @min(i32 %110, i32 %112)
  store i32 %113, i32* @zgelqf_.k, align 4
  %114 = load i32, i32* @zgelqf_.k, align 4
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %123

116:                                              ; preds = %108
  %117 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i64 1
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 0
  store i32 1, i32* %119, align 4
  %120 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i64 1
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 1
  store i32 0, i32* %122, align 4
  store i32 0, i32* %9, align 4
  br label %344

123:                                              ; preds = %108
  store i32 2, i32* @zgelqf_.nbmin, align 4
  store i32 0, i32* @zgelqf_.nx, align 4
  %124 = load i32*, i32** %10, align 8
  %125 = load i32, i32* %124, align 4
  store i32 %125, i32* @zgelqf_.iws, align 4
  %126 = load i32, i32* @zgelqf_.nb, align 4
  %127 = icmp sgt i32 %126, 1
  br i1 %127, label %128, label %165

128:                                              ; preds = %123
  %129 = load i32, i32* @zgelqf_.nb, align 4
  %130 = load i32, i32* @zgelqf_.k, align 4
  %131 = icmp slt i32 %129, %130
  br i1 %131, label %132, label %165

132:                                              ; preds = %128
  store i32 0, i32* %20, align 4
  %133 = load i32*, i32** %10, align 8
  %134 = load i32*, i32** %11, align 8
  %135 = call i32 @ilaenv_(i32* @c__3, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32* %133, i32* %134, i32* @c_n1, i32* @c_n1, i32 6, i32 1)
  store i32 %135, i32* %21, align 4
  %136 = load i32, i32* %20, align 4
  %137 = load i32, i32* %21, align 4
  %138 = call i32 @max(i32 %136, i32 %137)
  store i32 %138, i32* @zgelqf_.nx, align 4
  %139 = load i32, i32* @zgelqf_.nx, align 4
  %140 = load i32, i32* @zgelqf_.k, align 4
  %141 = icmp slt i32 %139, %140
  br i1 %141, label %142, label %164

142:                                              ; preds = %132
  %143 = load i32*, i32** %10, align 8
  %144 = load i32, i32* %143, align 4
  store i32 %144, i32* @zgelqf_.ldwork, align 4
  %145 = load i32, i32* @zgelqf_.ldwork, align 4
  %146 = load i32, i32* @zgelqf_.nb, align 4
  %147 = mul nsw i32 %145, %146
  store i32 %147, i32* @zgelqf_.iws, align 4
  %148 = load i32*, i32** %16, align 8
  %149 = load i32, i32* %148, align 4
  %150 = load i32, i32* @zgelqf_.iws, align 4
  %151 = icmp slt i32 %149, %150
  br i1 %151, label %152, label %163

152:                                              ; preds = %142
  %153 = load i32*, i32** %16, align 8
  %154 = load i32, i32* %153, align 4
  %155 = load i32, i32* @zgelqf_.ldwork, align 4
  %156 = sdiv i32 %154, %155
  store i32 %156, i32* @zgelqf_.nb, align 4
  store i32 2, i32* %20, align 4
  %157 = load i32*, i32** %10, align 8
  %158 = load i32*, i32** %11, align 8
  %159 = call i32 @ilaenv_(i32* @c__2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32* %157, i32* %158, i32* @c_n1, i32* @c_n1, i32 6, i32 1)
  store i32 %159, i32* %21, align 4
  %160 = load i32, i32* %20, align 4
  %161 = load i32, i32* %21, align 4
  %162 = call i32 @max(i32 %160, i32 %161)
  store i32 %162, i32* @zgelqf_.nbmin, align 4
  br label %163

163:                                              ; preds = %152, %142
  br label %164

164:                                              ; preds = %163, %132
  br label %165

165:                                              ; preds = %164, %128, %123
  %166 = load i32, i32* @zgelqf_.nb, align 4
  %167 = load i32, i32* @zgelqf_.nbmin, align 4
  %168 = icmp sge i32 %166, %167
  br i1 %168, label %169, label %301

169:                                              ; preds = %165
  %170 = load i32, i32* @zgelqf_.nb, align 4
  %171 = load i32, i32* @zgelqf_.k, align 4
  %172 = icmp slt i32 %170, %171
  br i1 %172, label %173, label %301

173:                                              ; preds = %169
  %174 = load i32, i32* @zgelqf_.nx, align 4
  %175 = load i32, i32* @zgelqf_.k, align 4
  %176 = icmp slt i32 %174, %175
  br i1 %176, label %177, label %301

177:                                              ; preds = %173
  %178 = load i32, i32* @zgelqf_.k, align 4
  %179 = load i32, i32* @zgelqf_.nx, align 4
  %180 = sub nsw i32 %178, %179
  store i32 %180, i32* %20, align 4
  %181 = load i32, i32* @zgelqf_.nb, align 4
  store i32 %181, i32* %21, align 4
  store i32 1, i32* @zgelqf_.i__, align 4
  br label %182

182:                                              ; preds = %296, %177
  %183 = load i32, i32* %21, align 4
  %184 = icmp slt i32 %183, 0
  br i1 %184, label %185, label %190

185:                                              ; preds = %182
  %186 = load i32, i32* @zgelqf_.i__, align 4
  %187 = load i32, i32* %20, align 4
  %188 = icmp sge i32 %186, %187
  %189 = zext i1 %188 to i32
  br label %195

190:                                              ; preds = %182
  %191 = load i32, i32* @zgelqf_.i__, align 4
  %192 = load i32, i32* %20, align 4
  %193 = icmp sle i32 %191, %192
  %194 = zext i1 %193 to i32
  br label %195

195:                                              ; preds = %190, %185
  %196 = phi i32 [ %189, %185 ], [ %194, %190 ]
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %300

198:                                              ; preds = %195
  %199 = load i32, i32* @zgelqf_.k, align 4
  %200 = load i32, i32* @zgelqf_.i__, align 4
  %201 = sub nsw i32 %199, %200
  %202 = add nsw i32 %201, 1
  store i32 %202, i32* %22, align 4
  %203 = load i32, i32* %22, align 4
  %204 = load i32, i32* @zgelqf_.nb, align 4
  %205 = call i32 @min(i32 %203, i32 %204)
  store i32 %205, i32* @zgelqf_.ib, align 4
  %206 = load i32*, i32** %11, align 8
  %207 = load i32, i32* %206, align 4
  %208 = load i32, i32* @zgelqf_.i__, align 4
  %209 = sub nsw i32 %207, %208
  %210 = add nsw i32 %209, 1
  store i32 %210, i32* %22, align 4
  %211 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %212 = load i32, i32* @zgelqf_.i__, align 4
  %213 = load i32, i32* @zgelqf_.i__, align 4
  %214 = load i32, i32* %18, align 4
  %215 = mul nsw i32 %213, %214
  %216 = add nsw i32 %212, %215
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %211, i64 %217
  %219 = load i32*, i32** %13, align 8
  %220 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %221 = load i32, i32* @zgelqf_.i__, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %220, i64 %222
  %224 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %225 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %224, i64 1
  %226 = call i32 @zgelq2_(i32* @zgelqf_.ib, i32* %22, %struct.TYPE_5__* %218, i32* %219, %struct.TYPE_5__* %223, %struct.TYPE_5__* %225, i32* @zgelqf_.iinfo)
  %227 = load i32, i32* @zgelqf_.i__, align 4
  %228 = load i32, i32* @zgelqf_.ib, align 4
  %229 = add nsw i32 %227, %228
  %230 = load i32*, i32** %10, align 8
  %231 = load i32, i32* %230, align 4
  %232 = icmp sle i32 %229, %231
  br i1 %232, label %233, label %295

233:                                              ; preds = %198
  %234 = load i32*, i32** %11, align 8
  %235 = load i32, i32* %234, align 4
  %236 = load i32, i32* @zgelqf_.i__, align 4
  %237 = sub nsw i32 %235, %236
  %238 = add nsw i32 %237, 1
  store i32 %238, i32* %22, align 4
  %239 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %240 = load i32, i32* @zgelqf_.i__, align 4
  %241 = load i32, i32* @zgelqf_.i__, align 4
  %242 = load i32, i32* %18, align 4
  %243 = mul nsw i32 %241, %242
  %244 = add nsw i32 %240, %243
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %239, i64 %245
  %247 = load i32*, i32** %13, align 8
  %248 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %249 = load i32, i32* @zgelqf_.i__, align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %248, i64 %250
  %252 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %253 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %252, i64 1
  %254 = call i32 @zlarft_(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32* %22, i32* @zgelqf_.ib, %struct.TYPE_5__* %246, i32* %247, %struct.TYPE_5__* %251, %struct.TYPE_5__* %253, i32* @zgelqf_.ldwork)
  %255 = load i32*, i32** %10, align 8
  %256 = load i32, i32* %255, align 4
  %257 = load i32, i32* @zgelqf_.i__, align 4
  %258 = sub nsw i32 %256, %257
  %259 = load i32, i32* @zgelqf_.ib, align 4
  %260 = sub nsw i32 %258, %259
  %261 = add nsw i32 %260, 1
  store i32 %261, i32* %22, align 4
  %262 = load i32*, i32** %11, align 8
  %263 = load i32, i32* %262, align 4
  %264 = load i32, i32* @zgelqf_.i__, align 4
  %265 = sub nsw i32 %263, %264
  %266 = add nsw i32 %265, 1
  store i32 %266, i32* %23, align 4
  %267 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %268 = load i32, i32* @zgelqf_.i__, align 4
  %269 = load i32, i32* @zgelqf_.i__, align 4
  %270 = load i32, i32* %18, align 4
  %271 = mul nsw i32 %269, %270
  %272 = add nsw i32 %268, %271
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %267, i64 %273
  %275 = load i32*, i32** %13, align 8
  %276 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %277 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %276, i64 1
  %278 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %279 = load i32, i32* @zgelqf_.i__, align 4
  %280 = load i32, i32* @zgelqf_.ib, align 4
  %281 = add nsw i32 %279, %280
  %282 = load i32, i32* @zgelqf_.i__, align 4
  %283 = load i32, i32* %18, align 4
  %284 = mul nsw i32 %282, %283
  %285 = add nsw i32 %281, %284
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %278, i64 %286
  %288 = load i32*, i32** %13, align 8
  %289 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %290 = load i32, i32* @zgelqf_.ib, align 4
  %291 = add nsw i32 %290, 1
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %289, i64 %292
  %294 = call i32 @zlarfb_(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32* %22, i32* %23, i32* @zgelqf_.ib, %struct.TYPE_5__* %274, i32* %275, %struct.TYPE_5__* %277, i32* @zgelqf_.ldwork, %struct.TYPE_5__* %287, i32* %288, %struct.TYPE_5__* %293, i32* @zgelqf_.ldwork)
  br label %295

295:                                              ; preds = %233, %198
  br label %296

296:                                              ; preds = %295
  %297 = load i32, i32* %21, align 4
  %298 = load i32, i32* @zgelqf_.i__, align 4
  %299 = add nsw i32 %298, %297
  store i32 %299, i32* @zgelqf_.i__, align 4
  br label %182

300:                                              ; preds = %195
  br label %302

301:                                              ; preds = %173, %169, %165
  store i32 1, i32* @zgelqf_.i__, align 4
  br label %302

302:                                              ; preds = %301, %300
  %303 = load i32, i32* @zgelqf_.i__, align 4
  %304 = load i32, i32* @zgelqf_.k, align 4
  %305 = icmp sle i32 %303, %304
  br i1 %305, label %306, label %333

306:                                              ; preds = %302
  %307 = load i32*, i32** %10, align 8
  %308 = load i32, i32* %307, align 4
  %309 = load i32, i32* @zgelqf_.i__, align 4
  %310 = sub nsw i32 %308, %309
  %311 = add nsw i32 %310, 1
  store i32 %311, i32* %21, align 4
  %312 = load i32*, i32** %11, align 8
  %313 = load i32, i32* %312, align 4
  %314 = load i32, i32* @zgelqf_.i__, align 4
  %315 = sub nsw i32 %313, %314
  %316 = add nsw i32 %315, 1
  store i32 %316, i32* %20, align 4
  %317 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %318 = load i32, i32* @zgelqf_.i__, align 4
  %319 = load i32, i32* @zgelqf_.i__, align 4
  %320 = load i32, i32* %18, align 4
  %321 = mul nsw i32 %319, %320
  %322 = add nsw i32 %318, %321
  %323 = sext i32 %322 to i64
  %324 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %317, i64 %323
  %325 = load i32*, i32** %13, align 8
  %326 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %327 = load i32, i32* @zgelqf_.i__, align 4
  %328 = sext i32 %327 to i64
  %329 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %326, i64 %328
  %330 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %331 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %330, i64 1
  %332 = call i32 @zgelq2_(i32* %21, i32* %20, %struct.TYPE_5__* %324, i32* %325, %struct.TYPE_5__* %329, %struct.TYPE_5__* %331, i32* @zgelqf_.iinfo)
  br label %333

333:                                              ; preds = %306, %302
  %334 = load i32, i32* @zgelqf_.iws, align 4
  %335 = sext i32 %334 to i64
  %336 = inttoptr i64 %335 to i8*
  %337 = ptrtoint i8* %336 to i32
  %338 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %339 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %338, i64 1
  %340 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %339, i32 0, i32 0
  store i32 %337, i32* %340, align 4
  %341 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %342 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %341, i64 1
  %343 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %342, i32 0, i32 1
  store i32 0, i32* %343, align 4
  store i32 0, i32* %9, align 4
  br label %344

344:                                              ; preds = %333, %116, %106, %98
  %345 = load i32, i32* %9, align 4
  ret i32 %345
}

declare dso_local i32 @ilaenv_(i32*, i8*, i8*, i32*, i32*, i32*, i32*, i32, i32) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @xerbla_(i8*, i32*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @zgelq2_(i32*, i32*, %struct.TYPE_5__*, i32*, %struct.TYPE_5__*, %struct.TYPE_5__*, i32*) #1

declare dso_local i32 @zlarft_(i8*, i8*, i32*, i32*, %struct.TYPE_5__*, i32*, %struct.TYPE_5__*, %struct.TYPE_5__*, i32*) #1

declare dso_local i32 @zlarfb_(i8*, i8*, i8*, i8*, i32*, i32*, i32*, %struct.TYPE_5__*, i32*, %struct.TYPE_5__*, i32*, %struct.TYPE_5__*, i32*, %struct.TYPE_5__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
