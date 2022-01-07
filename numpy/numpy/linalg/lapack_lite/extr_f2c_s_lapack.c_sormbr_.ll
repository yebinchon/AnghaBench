; ModuleID = '/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_s_lapack.c_sormbr_.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_s_lapack.c_sormbr_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@sormbr_.i1 = internal global i32 0, align 4
@sormbr_.i2 = internal global i32 0, align 4
@sormbr_.nb = internal global i32 0, align 4
@sormbr_.mi = internal global i32 0, align 4
@sormbr_.ni = internal global i32 0, align 4
@sormbr_.nq = internal global i32 0, align 4
@sormbr_.nw = internal global i32 0, align 4
@sormbr_.left = internal global i32 0, align 4
@sormbr_.iinfo = internal global i32 0, align 4
@sormbr_.notran = internal global i32 0, align 4
@sormbr_.applyq = internal global i32 0, align 4
@sormbr_.transt = internal global [1 x i8] zeroinitializer, align 1
@sormbr_.lwkopt = internal global i32 0, align 4
@sormbr_.lquery = internal global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"Q\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"L\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"N\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"P\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"R\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"T\00", align 1
@c__2 = common dso_local global i32 0, align 4
@c__1 = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [7 x i8] c"SORMQR\00", align 1
@c_n1 = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [7 x i8] c"SORMLQ\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"SORMBR\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sormbr_(i8* %0, i8* %1, i8* %2, i32* %3, i32* %4, i32* %5, i32* %6, i32* %7, i32* %8, i32* %9, i32* %10, i32* %11, i32* %12, i32* %13) #0 {
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i32*, align 8
  %27 = alloca i32*, align 8
  %28 = alloca i32*, align 8
  %29 = alloca i32*, align 8
  %30 = alloca [2 x i8*], align 16
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca [2 x i32], align 4
  %38 = alloca [2 x i8], align 1
  store i8* %0, i8** %16, align 8
  store i8* %1, i8** %17, align 8
  store i8* %2, i8** %18, align 8
  store i32* %3, i32** %19, align 8
  store i32* %4, i32** %20, align 8
  store i32* %5, i32** %21, align 8
  store i32* %6, i32** %22, align 8
  store i32* %7, i32** %23, align 8
  store i32* %8, i32** %24, align 8
  store i32* %9, i32** %25, align 8
  store i32* %10, i32** %26, align 8
  store i32* %11, i32** %27, align 8
  store i32* %12, i32** %28, align 8
  store i32* %13, i32** %29, align 8
  %39 = load i32*, i32** %23, align 8
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %31, align 4
  %41 = load i32, i32* %31, align 4
  %42 = add nsw i32 1, %41
  store i32 %42, i32* %32, align 4
  %43 = load i32, i32* %32, align 4
  %44 = load i32*, i32** %22, align 8
  %45 = sext i32 %43 to i64
  %46 = sub i64 0, %45
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  store i32* %47, i32** %22, align 8
  %48 = load i32*, i32** %24, align 8
  %49 = getelementptr inbounds i32, i32* %48, i32 -1
  store i32* %49, i32** %24, align 8
  %50 = load i32*, i32** %26, align 8
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %33, align 4
  %52 = load i32, i32* %33, align 4
  %53 = add nsw i32 1, %52
  store i32 %53, i32* %34, align 4
  %54 = load i32, i32* %34, align 4
  %55 = load i32*, i32** %25, align 8
  %56 = sext i32 %54 to i64
  %57 = sub i64 0, %56
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  store i32* %58, i32** %25, align 8
  %59 = load i32*, i32** %27, align 8
  %60 = getelementptr inbounds i32, i32* %59, i32 -1
  store i32* %60, i32** %27, align 8
  %61 = load i32*, i32** %29, align 8
  store i32 0, i32* %61, align 4
  %62 = load i8*, i8** %16, align 8
  %63 = call i32 @lsame_(i8* %62, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32 %63, i32* @sormbr_.applyq, align 4
  %64 = load i8*, i8** %17, align 8
  %65 = call i32 @lsame_(i8* %64, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32 %65, i32* @sormbr_.left, align 4
  %66 = load i8*, i8** %18, align 8
  %67 = call i32 @lsame_(i8* %66, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i32 %67, i32* @sormbr_.notran, align 4
  %68 = load i32*, i32** %28, align 8
  %69 = load i32, i32* %68, align 4
  %70 = icmp eq i32 %69, -1
  %71 = zext i1 %70 to i32
  store i32 %71, i32* @sormbr_.lquery, align 4
  %72 = load i32, i32* @sormbr_.left, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %14
  %75 = load i32*, i32** %19, align 8
  %76 = load i32, i32* %75, align 4
  store i32 %76, i32* @sormbr_.nq, align 4
  %77 = load i32*, i32** %20, align 8
  %78 = load i32, i32* %77, align 4
  store i32 %78, i32* @sormbr_.nw, align 4
  br label %84

79:                                               ; preds = %14
  %80 = load i32*, i32** %20, align 8
  %81 = load i32, i32* %80, align 4
  store i32 %81, i32* @sormbr_.nq, align 4
  %82 = load i32*, i32** %19, align 8
  %83 = load i32, i32* %82, align 4
  store i32 %83, i32* @sormbr_.nw, align 4
  br label %84

84:                                               ; preds = %79, %74
  %85 = load i32, i32* @sormbr_.applyq, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %93, label %87

87:                                               ; preds = %84
  %88 = load i8*, i8** %16, align 8
  %89 = call i32 @lsame_(i8* %88, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %93, label %91

91:                                               ; preds = %87
  %92 = load i32*, i32** %29, align 8
  store i32 -1, i32* %92, align 4
  br label %182

93:                                               ; preds = %87, %84
  %94 = load i32, i32* @sormbr_.left, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %102, label %96

96:                                               ; preds = %93
  %97 = load i8*, i8** %17, align 8
  %98 = call i32 @lsame_(i8* %97, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %102, label %100

100:                                              ; preds = %96
  %101 = load i32*, i32** %29, align 8
  store i32 -2, i32* %101, align 4
  br label %181

102:                                              ; preds = %96, %93
  %103 = load i32, i32* @sormbr_.notran, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %111, label %105

105:                                              ; preds = %102
  %106 = load i8*, i8** %18, align 8
  %107 = call i32 @lsame_(i8* %106, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %111, label %109

109:                                              ; preds = %105
  %110 = load i32*, i32** %29, align 8
  store i32 -3, i32* %110, align 4
  br label %180

111:                                              ; preds = %105, %102
  %112 = load i32*, i32** %19, align 8
  %113 = load i32, i32* %112, align 4
  %114 = icmp slt i32 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %111
  %116 = load i32*, i32** %29, align 8
  store i32 -4, i32* %116, align 4
  br label %179

117:                                              ; preds = %111
  %118 = load i32*, i32** %20, align 8
  %119 = load i32, i32* %118, align 4
  %120 = icmp slt i32 %119, 0
  br i1 %120, label %121, label %123

121:                                              ; preds = %117
  %122 = load i32*, i32** %29, align 8
  store i32 -5, i32* %122, align 4
  br label %178

123:                                              ; preds = %117
  %124 = load i32*, i32** %21, align 8
  %125 = load i32, i32* %124, align 4
  %126 = icmp slt i32 %125, 0
  br i1 %126, label %127, label %129

127:                                              ; preds = %123
  %128 = load i32*, i32** %29, align 8
  store i32 -6, i32* %128, align 4
  br label %177

129:                                              ; preds = %123
  store i32 1, i32* %35, align 4
  %130 = load i32, i32* @sormbr_.nq, align 4
  %131 = load i32*, i32** %21, align 8
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @min(i32 %130, i32 %132)
  store i32 %133, i32* %36, align 4
  %134 = load i32, i32* @sormbr_.applyq, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %142

136:                                              ; preds = %129
  %137 = load i32*, i32** %23, align 8
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* @sormbr_.nq, align 4
  %140 = call i32 @max(i32 1, i32 %139)
  %141 = icmp slt i32 %138, %140
  br i1 %141, label %152, label %142

142:                                              ; preds = %136, %129
  %143 = load i32, i32* @sormbr_.applyq, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %154, label %145

145:                                              ; preds = %142
  %146 = load i32*, i32** %23, align 8
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* %35, align 4
  %149 = load i32, i32* %36, align 4
  %150 = call i32 @max(i32 %148, i32 %149)
  %151 = icmp slt i32 %147, %150
  br i1 %151, label %152, label %154

152:                                              ; preds = %145, %136
  %153 = load i32*, i32** %29, align 8
  store i32 -8, i32* %153, align 4
  br label %176

154:                                              ; preds = %145, %142
  %155 = load i32*, i32** %26, align 8
  %156 = load i32, i32* %155, align 4
  %157 = load i32*, i32** %19, align 8
  %158 = load i32, i32* %157, align 4
  %159 = call i32 @max(i32 1, i32 %158)
  %160 = icmp slt i32 %156, %159
  br i1 %160, label %161, label %163

161:                                              ; preds = %154
  %162 = load i32*, i32** %29, align 8
  store i32 -11, i32* %162, align 4
  br label %175

163:                                              ; preds = %154
  %164 = load i32*, i32** %28, align 8
  %165 = load i32, i32* %164, align 4
  %166 = load i32, i32* @sormbr_.nw, align 4
  %167 = call i32 @max(i32 1, i32 %166)
  %168 = icmp slt i32 %165, %167
  br i1 %168, label %169, label %174

169:                                              ; preds = %163
  %170 = load i32, i32* @sormbr_.lquery, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %174, label %172

172:                                              ; preds = %169
  %173 = load i32*, i32** %29, align 8
  store i32 -13, i32* %173, align 4
  br label %174

174:                                              ; preds = %172, %169, %163
  br label %175

175:                                              ; preds = %174, %161
  br label %176

176:                                              ; preds = %175, %152
  br label %177

177:                                              ; preds = %176, %127
  br label %178

178:                                              ; preds = %177, %121
  br label %179

179:                                              ; preds = %178, %115
  br label %180

180:                                              ; preds = %179, %109
  br label %181

181:                                              ; preds = %180, %100
  br label %182

182:                                              ; preds = %181, %91
  %183 = load i32*, i32** %29, align 8
  %184 = load i32, i32* %183, align 4
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %186, label %285

186:                                              ; preds = %182
  %187 = load i32, i32* @sormbr_.applyq, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %233

189:                                              ; preds = %186
  %190 = load i32, i32* @sormbr_.left, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %212

192:                                              ; preds = %189
  %193 = getelementptr inbounds [2 x i32], [2 x i32]* %37, i64 0, i64 0
  store i32 1, i32* %193, align 4
  %194 = load i8*, i8** %17, align 8
  %195 = getelementptr inbounds [2 x i8*], [2 x i8*]* %30, i64 0, i64 0
  store i8* %194, i8** %195, align 16
  %196 = getelementptr inbounds [2 x i32], [2 x i32]* %37, i64 0, i64 1
  store i32 1, i32* %196, align 4
  %197 = load i8*, i8** %18, align 8
  %198 = getelementptr inbounds [2 x i8*], [2 x i8*]* %30, i64 0, i64 1
  store i8* %197, i8** %198, align 8
  %199 = getelementptr inbounds [2 x i8], [2 x i8]* %38, i64 0, i64 0
  %200 = getelementptr inbounds [2 x i8*], [2 x i8*]* %30, i64 0, i64 0
  %201 = getelementptr inbounds [2 x i32], [2 x i32]* %37, i64 0, i64 0
  %202 = call i32 @s_cat(i8* %199, i8** %200, i32* %201, i32* @c__2, i32 2)
  %203 = load i32*, i32** %19, align 8
  %204 = load i32, i32* %203, align 4
  %205 = sub nsw i32 %204, 1
  store i32 %205, i32* %35, align 4
  %206 = load i32*, i32** %19, align 8
  %207 = load i32, i32* %206, align 4
  %208 = sub nsw i32 %207, 1
  store i32 %208, i32* %36, align 4
  %209 = getelementptr inbounds [2 x i8], [2 x i8]* %38, i64 0, i64 0
  %210 = load i32*, i32** %20, align 8
  %211 = call i32 @ilaenv_(i32* @c__1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8* %209, i32* %35, i32* %210, i32* %36, i32* @c_n1, i32 6, i32 2)
  store i32 %211, i32* @sormbr_.nb, align 4
  br label %232

212:                                              ; preds = %189
  %213 = getelementptr inbounds [2 x i32], [2 x i32]* %37, i64 0, i64 0
  store i32 1, i32* %213, align 4
  %214 = load i8*, i8** %17, align 8
  %215 = getelementptr inbounds [2 x i8*], [2 x i8*]* %30, i64 0, i64 0
  store i8* %214, i8** %215, align 16
  %216 = getelementptr inbounds [2 x i32], [2 x i32]* %37, i64 0, i64 1
  store i32 1, i32* %216, align 4
  %217 = load i8*, i8** %18, align 8
  %218 = getelementptr inbounds [2 x i8*], [2 x i8*]* %30, i64 0, i64 1
  store i8* %217, i8** %218, align 8
  %219 = getelementptr inbounds [2 x i8], [2 x i8]* %38, i64 0, i64 0
  %220 = getelementptr inbounds [2 x i8*], [2 x i8*]* %30, i64 0, i64 0
  %221 = getelementptr inbounds [2 x i32], [2 x i32]* %37, i64 0, i64 0
  %222 = call i32 @s_cat(i8* %219, i8** %220, i32* %221, i32* @c__2, i32 2)
  %223 = load i32*, i32** %20, align 8
  %224 = load i32, i32* %223, align 4
  %225 = sub nsw i32 %224, 1
  store i32 %225, i32* %35, align 4
  %226 = load i32*, i32** %20, align 8
  %227 = load i32, i32* %226, align 4
  %228 = sub nsw i32 %227, 1
  store i32 %228, i32* %36, align 4
  %229 = getelementptr inbounds [2 x i8], [2 x i8]* %38, i64 0, i64 0
  %230 = load i32*, i32** %19, align 8
  %231 = call i32 @ilaenv_(i32* @c__1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8* %229, i32* %230, i32* %35, i32* %36, i32* @c_n1, i32 6, i32 2)
  store i32 %231, i32* @sormbr_.nb, align 4
  br label %232

232:                                              ; preds = %212, %192
  br label %277

233:                                              ; preds = %186
  %234 = load i32, i32* @sormbr_.left, align 4
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %236, label %256

236:                                              ; preds = %233
  %237 = getelementptr inbounds [2 x i32], [2 x i32]* %37, i64 0, i64 0
  store i32 1, i32* %237, align 4
  %238 = load i8*, i8** %17, align 8
  %239 = getelementptr inbounds [2 x i8*], [2 x i8*]* %30, i64 0, i64 0
  store i8* %238, i8** %239, align 16
  %240 = getelementptr inbounds [2 x i32], [2 x i32]* %37, i64 0, i64 1
  store i32 1, i32* %240, align 4
  %241 = load i8*, i8** %18, align 8
  %242 = getelementptr inbounds [2 x i8*], [2 x i8*]* %30, i64 0, i64 1
  store i8* %241, i8** %242, align 8
  %243 = getelementptr inbounds [2 x i8], [2 x i8]* %38, i64 0, i64 0
  %244 = getelementptr inbounds [2 x i8*], [2 x i8*]* %30, i64 0, i64 0
  %245 = getelementptr inbounds [2 x i32], [2 x i32]* %37, i64 0, i64 0
  %246 = call i32 @s_cat(i8* %243, i8** %244, i32* %245, i32* @c__2, i32 2)
  %247 = load i32*, i32** %19, align 8
  %248 = load i32, i32* %247, align 4
  %249 = sub nsw i32 %248, 1
  store i32 %249, i32* %35, align 4
  %250 = load i32*, i32** %19, align 8
  %251 = load i32, i32* %250, align 4
  %252 = sub nsw i32 %251, 1
  store i32 %252, i32* %36, align 4
  %253 = getelementptr inbounds [2 x i8], [2 x i8]* %38, i64 0, i64 0
  %254 = load i32*, i32** %20, align 8
  %255 = call i32 @ilaenv_(i32* @c__1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i8* %253, i32* %35, i32* %254, i32* %36, i32* @c_n1, i32 6, i32 2)
  store i32 %255, i32* @sormbr_.nb, align 4
  br label %276

256:                                              ; preds = %233
  %257 = getelementptr inbounds [2 x i32], [2 x i32]* %37, i64 0, i64 0
  store i32 1, i32* %257, align 4
  %258 = load i8*, i8** %17, align 8
  %259 = getelementptr inbounds [2 x i8*], [2 x i8*]* %30, i64 0, i64 0
  store i8* %258, i8** %259, align 16
  %260 = getelementptr inbounds [2 x i32], [2 x i32]* %37, i64 0, i64 1
  store i32 1, i32* %260, align 4
  %261 = load i8*, i8** %18, align 8
  %262 = getelementptr inbounds [2 x i8*], [2 x i8*]* %30, i64 0, i64 1
  store i8* %261, i8** %262, align 8
  %263 = getelementptr inbounds [2 x i8], [2 x i8]* %38, i64 0, i64 0
  %264 = getelementptr inbounds [2 x i8*], [2 x i8*]* %30, i64 0, i64 0
  %265 = getelementptr inbounds [2 x i32], [2 x i32]* %37, i64 0, i64 0
  %266 = call i32 @s_cat(i8* %263, i8** %264, i32* %265, i32* @c__2, i32 2)
  %267 = load i32*, i32** %20, align 8
  %268 = load i32, i32* %267, align 4
  %269 = sub nsw i32 %268, 1
  store i32 %269, i32* %35, align 4
  %270 = load i32*, i32** %20, align 8
  %271 = load i32, i32* %270, align 4
  %272 = sub nsw i32 %271, 1
  store i32 %272, i32* %36, align 4
  %273 = getelementptr inbounds [2 x i8], [2 x i8]* %38, i64 0, i64 0
  %274 = load i32*, i32** %19, align 8
  %275 = call i32 @ilaenv_(i32* @c__1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i8* %273, i32* %274, i32* %35, i32* %36, i32* @c_n1, i32 6, i32 2)
  store i32 %275, i32* @sormbr_.nb, align 4
  br label %276

276:                                              ; preds = %256, %236
  br label %277

277:                                              ; preds = %276, %232
  %278 = load i32, i32* @sormbr_.nw, align 4
  %279 = call i32 @max(i32 1, i32 %278)
  %280 = load i32, i32* @sormbr_.nb, align 4
  %281 = mul nsw i32 %279, %280
  store i32 %281, i32* @sormbr_.lwkopt, align 4
  %282 = load i32, i32* @sormbr_.lwkopt, align 4
  %283 = load i32*, i32** %27, align 8
  %284 = getelementptr inbounds i32, i32* %283, i64 1
  store i32 %282, i32* %284, align 4
  br label %285

285:                                              ; preds = %277, %182
  %286 = load i32*, i32** %29, align 8
  %287 = load i32, i32* %286, align 4
  %288 = icmp ne i32 %287, 0
  br i1 %288, label %289, label %294

289:                                              ; preds = %285
  %290 = load i32*, i32** %29, align 8
  %291 = load i32, i32* %290, align 4
  %292 = sub nsw i32 0, %291
  store i32 %292, i32* %35, align 4
  %293 = call i32 @xerbla_(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i32* %35)
  store i32 0, i32* %15, align 4
  br label %467

294:                                              ; preds = %285
  %295 = load i32, i32* @sormbr_.lquery, align 4
  %296 = icmp ne i32 %295, 0
  br i1 %296, label %297, label %298

297:                                              ; preds = %294
  store i32 0, i32* %15, align 4
  br label %467

298:                                              ; preds = %294
  br label %299

299:                                              ; preds = %298
  %300 = load i32*, i32** %27, align 8
  %301 = getelementptr inbounds i32, i32* %300, i64 1
  store i32 1, i32* %301, align 4
  %302 = load i32*, i32** %19, align 8
  %303 = load i32, i32* %302, align 4
  %304 = icmp eq i32 %303, 0
  br i1 %304, label %309, label %305

305:                                              ; preds = %299
  %306 = load i32*, i32** %20, align 8
  %307 = load i32, i32* %306, align 4
  %308 = icmp eq i32 %307, 0
  br i1 %308, label %309, label %310

309:                                              ; preds = %305, %299
  store i32 0, i32* %15, align 4
  br label %467

310:                                              ; preds = %305
  %311 = load i32, i32* @sormbr_.applyq, align 4
  %312 = icmp ne i32 %311, 0
  br i1 %312, label %313, label %386

313:                                              ; preds = %310
  %314 = load i32, i32* @sormbr_.nq, align 4
  %315 = load i32*, i32** %21, align 8
  %316 = load i32, i32* %315, align 4
  %317 = icmp sge i32 %314, %316
  br i1 %317, label %318, label %340

318:                                              ; preds = %313
  %319 = load i8*, i8** %17, align 8
  %320 = load i8*, i8** %18, align 8
  %321 = load i32*, i32** %19, align 8
  %322 = load i32*, i32** %20, align 8
  %323 = load i32*, i32** %21, align 8
  %324 = load i32*, i32** %22, align 8
  %325 = load i32, i32* %32, align 4
  %326 = sext i32 %325 to i64
  %327 = getelementptr inbounds i32, i32* %324, i64 %326
  %328 = load i32*, i32** %23, align 8
  %329 = load i32*, i32** %24, align 8
  %330 = getelementptr inbounds i32, i32* %329, i64 1
  %331 = load i32*, i32** %25, align 8
  %332 = load i32, i32* %34, align 4
  %333 = sext i32 %332 to i64
  %334 = getelementptr inbounds i32, i32* %331, i64 %333
  %335 = load i32*, i32** %26, align 8
  %336 = load i32*, i32** %27, align 8
  %337 = getelementptr inbounds i32, i32* %336, i64 1
  %338 = load i32*, i32** %28, align 8
  %339 = call i32 @sormqr_(i8* %319, i8* %320, i32* %321, i32* %322, i32* %323, i32* %327, i32* %328, i32* %330, i32* %334, i32* %335, i32* %337, i32* %338, i32* @sormbr_.iinfo)
  br label %385

340:                                              ; preds = %313
  %341 = load i32, i32* @sormbr_.nq, align 4
  %342 = icmp sgt i32 %341, 1
  br i1 %342, label %343, label %384

343:                                              ; preds = %340
  %344 = load i32, i32* @sormbr_.left, align 4
  %345 = icmp ne i32 %344, 0
  br i1 %345, label %346, label %352

346:                                              ; preds = %343
  %347 = load i32*, i32** %19, align 8
  %348 = load i32, i32* %347, align 4
  %349 = sub nsw i32 %348, 1
  store i32 %349, i32* @sormbr_.mi, align 4
  %350 = load i32*, i32** %20, align 8
  %351 = load i32, i32* %350, align 4
  store i32 %351, i32* @sormbr_.ni, align 4
  store i32 2, i32* @sormbr_.i1, align 4
  store i32 1, i32* @sormbr_.i2, align 4
  br label %358

352:                                              ; preds = %343
  %353 = load i32*, i32** %19, align 8
  %354 = load i32, i32* %353, align 4
  store i32 %354, i32* @sormbr_.mi, align 4
  %355 = load i32*, i32** %20, align 8
  %356 = load i32, i32* %355, align 4
  %357 = sub nsw i32 %356, 1
  store i32 %357, i32* @sormbr_.ni, align 4
  store i32 1, i32* @sormbr_.i1, align 4
  store i32 2, i32* @sormbr_.i2, align 4
  br label %358

358:                                              ; preds = %352, %346
  %359 = load i32, i32* @sormbr_.nq, align 4
  %360 = sub nsw i32 %359, 1
  store i32 %360, i32* %35, align 4
  %361 = load i8*, i8** %17, align 8
  %362 = load i8*, i8** %18, align 8
  %363 = load i32*, i32** %22, align 8
  %364 = load i32, i32* %31, align 4
  %365 = add nsw i32 %364, 2
  %366 = sext i32 %365 to i64
  %367 = getelementptr inbounds i32, i32* %363, i64 %366
  %368 = load i32*, i32** %23, align 8
  %369 = load i32*, i32** %24, align 8
  %370 = getelementptr inbounds i32, i32* %369, i64 1
  %371 = load i32*, i32** %25, align 8
  %372 = load i32, i32* @sormbr_.i1, align 4
  %373 = load i32, i32* @sormbr_.i2, align 4
  %374 = load i32, i32* %33, align 4
  %375 = mul nsw i32 %373, %374
  %376 = add nsw i32 %372, %375
  %377 = sext i32 %376 to i64
  %378 = getelementptr inbounds i32, i32* %371, i64 %377
  %379 = load i32*, i32** %26, align 8
  %380 = load i32*, i32** %27, align 8
  %381 = getelementptr inbounds i32, i32* %380, i64 1
  %382 = load i32*, i32** %28, align 8
  %383 = call i32 @sormqr_(i8* %361, i8* %362, i32* @sormbr_.mi, i32* @sormbr_.ni, i32* %35, i32* %367, i32* %368, i32* %370, i32* %378, i32* %379, i32* %381, i32* %382, i32* @sormbr_.iinfo)
  br label %384

384:                                              ; preds = %358, %340
  br label %385

385:                                              ; preds = %384, %318
  br label %463

386:                                              ; preds = %310
  %387 = load i32, i32* @sormbr_.notran, align 4
  %388 = icmp ne i32 %387, 0
  br i1 %388, label %389, label %390

389:                                              ; preds = %386
  store i8 84, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @sormbr_.transt, i64 0, i64 0), align 1
  br label %391

390:                                              ; preds = %386
  store i8 78, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @sormbr_.transt, i64 0, i64 0), align 1
  br label %391

391:                                              ; preds = %390, %389
  %392 = load i32, i32* @sormbr_.nq, align 4
  %393 = load i32*, i32** %21, align 8
  %394 = load i32, i32* %393, align 4
  %395 = icmp sgt i32 %392, %394
  br i1 %395, label %396, label %417

396:                                              ; preds = %391
  %397 = load i8*, i8** %17, align 8
  %398 = load i32*, i32** %19, align 8
  %399 = load i32*, i32** %20, align 8
  %400 = load i32*, i32** %21, align 8
  %401 = load i32*, i32** %22, align 8
  %402 = load i32, i32* %32, align 4
  %403 = sext i32 %402 to i64
  %404 = getelementptr inbounds i32, i32* %401, i64 %403
  %405 = load i32*, i32** %23, align 8
  %406 = load i32*, i32** %24, align 8
  %407 = getelementptr inbounds i32, i32* %406, i64 1
  %408 = load i32*, i32** %25, align 8
  %409 = load i32, i32* %34, align 4
  %410 = sext i32 %409 to i64
  %411 = getelementptr inbounds i32, i32* %408, i64 %410
  %412 = load i32*, i32** %26, align 8
  %413 = load i32*, i32** %27, align 8
  %414 = getelementptr inbounds i32, i32* %413, i64 1
  %415 = load i32*, i32** %28, align 8
  %416 = call i32 @sormlq_(i8* %397, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @sormbr_.transt, i64 0, i64 0), i32* %398, i32* %399, i32* %400, i32* %404, i32* %405, i32* %407, i32* %411, i32* %412, i32* %414, i32* %415, i32* @sormbr_.iinfo)
  br label %462

417:                                              ; preds = %391
  %418 = load i32, i32* @sormbr_.nq, align 4
  %419 = icmp sgt i32 %418, 1
  br i1 %419, label %420, label %461

420:                                              ; preds = %417
  %421 = load i32, i32* @sormbr_.left, align 4
  %422 = icmp ne i32 %421, 0
  br i1 %422, label %423, label %429

423:                                              ; preds = %420
  %424 = load i32*, i32** %19, align 8
  %425 = load i32, i32* %424, align 4
  %426 = sub nsw i32 %425, 1
  store i32 %426, i32* @sormbr_.mi, align 4
  %427 = load i32*, i32** %20, align 8
  %428 = load i32, i32* %427, align 4
  store i32 %428, i32* @sormbr_.ni, align 4
  store i32 2, i32* @sormbr_.i1, align 4
  store i32 1, i32* @sormbr_.i2, align 4
  br label %435

429:                                              ; preds = %420
  %430 = load i32*, i32** %19, align 8
  %431 = load i32, i32* %430, align 4
  store i32 %431, i32* @sormbr_.mi, align 4
  %432 = load i32*, i32** %20, align 8
  %433 = load i32, i32* %432, align 4
  %434 = sub nsw i32 %433, 1
  store i32 %434, i32* @sormbr_.ni, align 4
  store i32 1, i32* @sormbr_.i1, align 4
  store i32 2, i32* @sormbr_.i2, align 4
  br label %435

435:                                              ; preds = %429, %423
  %436 = load i32, i32* @sormbr_.nq, align 4
  %437 = sub nsw i32 %436, 1
  store i32 %437, i32* %35, align 4
  %438 = load i8*, i8** %17, align 8
  %439 = load i32*, i32** %22, align 8
  %440 = load i32, i32* %31, align 4
  %441 = shl i32 %440, 1
  %442 = add nsw i32 %441, 1
  %443 = sext i32 %442 to i64
  %444 = getelementptr inbounds i32, i32* %439, i64 %443
  %445 = load i32*, i32** %23, align 8
  %446 = load i32*, i32** %24, align 8
  %447 = getelementptr inbounds i32, i32* %446, i64 1
  %448 = load i32*, i32** %25, align 8
  %449 = load i32, i32* @sormbr_.i1, align 4
  %450 = load i32, i32* @sormbr_.i2, align 4
  %451 = load i32, i32* %33, align 4
  %452 = mul nsw i32 %450, %451
  %453 = add nsw i32 %449, %452
  %454 = sext i32 %453 to i64
  %455 = getelementptr inbounds i32, i32* %448, i64 %454
  %456 = load i32*, i32** %26, align 8
  %457 = load i32*, i32** %27, align 8
  %458 = getelementptr inbounds i32, i32* %457, i64 1
  %459 = load i32*, i32** %28, align 8
  %460 = call i32 @sormlq_(i8* %438, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @sormbr_.transt, i64 0, i64 0), i32* @sormbr_.mi, i32* @sormbr_.ni, i32* %35, i32* %444, i32* %445, i32* %447, i32* %455, i32* %456, i32* %458, i32* %459, i32* @sormbr_.iinfo)
  br label %461

461:                                              ; preds = %435, %417
  br label %462

462:                                              ; preds = %461, %396
  br label %463

463:                                              ; preds = %462, %385
  %464 = load i32, i32* @sormbr_.lwkopt, align 4
  %465 = load i32*, i32** %27, align 8
  %466 = getelementptr inbounds i32, i32* %465, i64 1
  store i32 %464, i32* %466, align 4
  store i32 0, i32* %15, align 4
  br label %467

467:                                              ; preds = %463, %309, %297, %289
  %468 = load i32, i32* %15, align 4
  ret i32 %468
}

declare dso_local i32 @lsame_(i8*, i8*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @s_cat(i8*, i8**, i32*, i32*, i32) #1

declare dso_local i32 @ilaenv_(i32*, i8*, i8*, i32*, i32*, i32*, i32*, i32, i32) #1

declare dso_local i32 @xerbla_(i8*, i32*) #1

declare dso_local i32 @sormqr_(i8*, i8*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @sormlq_(i8*, i8*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
