; ModuleID = '/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_s_lapack.c_sormtr_.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_s_lapack.c_sormtr_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@sormtr_.i1 = internal global i32 0, align 4
@sormtr_.i2 = internal global i32 0, align 4
@sormtr_.nb = internal global i32 0, align 4
@sormtr_.mi = internal global i32 0, align 4
@sormtr_.ni = internal global i32 0, align 4
@sormtr_.nq = internal global i32 0, align 4
@sormtr_.nw = internal global i32 0, align 4
@sormtr_.left = internal global i32 0, align 4
@sormtr_.iinfo = internal global i32 0, align 4
@sormtr_.upper = internal global i32 0, align 4
@sormtr_.lwkopt = internal global i32 0, align 4
@sormtr_.lquery = internal global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"L\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"U\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"R\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"N\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"T\00", align 1
@c__2 = common dso_local global i32 0, align 4
@c__1 = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [7 x i8] c"SORMQL\00", align 1
@c_n1 = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [7 x i8] c"SORMQR\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"SORMTR\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sormtr_(i8* %0, i8* %1, i8* %2, i32* %3, i32* %4, i32* %5, i32* %6, i32* %7, i32* %8, i32* %9, i32* %10, i32* %11, i32* %12) #0 {
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i32*, align 8
  %27 = alloca i32*, align 8
  %28 = alloca [2 x i8*], align 16
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca [2 x i32], align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca [2 x i8], align 1
  store i8* %0, i8** %15, align 8
  store i8* %1, i8** %16, align 8
  store i8* %2, i8** %17, align 8
  store i32* %3, i32** %18, align 8
  store i32* %4, i32** %19, align 8
  store i32* %5, i32** %20, align 8
  store i32* %6, i32** %21, align 8
  store i32* %7, i32** %22, align 8
  store i32* %8, i32** %23, align 8
  store i32* %9, i32** %24, align 8
  store i32* %10, i32** %25, align 8
  store i32* %11, i32** %26, align 8
  store i32* %12, i32** %27, align 8
  %37 = load i32*, i32** %21, align 8
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %29, align 4
  %39 = load i32, i32* %29, align 4
  %40 = add nsw i32 1, %39
  store i32 %40, i32* %30, align 4
  %41 = load i32, i32* %30, align 4
  %42 = load i32*, i32** %20, align 8
  %43 = sext i32 %41 to i64
  %44 = sub i64 0, %43
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  store i32* %45, i32** %20, align 8
  %46 = load i32*, i32** %22, align 8
  %47 = getelementptr inbounds i32, i32* %46, i32 -1
  store i32* %47, i32** %22, align 8
  %48 = load i32*, i32** %24, align 8
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %31, align 4
  %50 = load i32, i32* %31, align 4
  %51 = add nsw i32 1, %50
  store i32 %51, i32* %32, align 4
  %52 = load i32, i32* %32, align 4
  %53 = load i32*, i32** %23, align 8
  %54 = sext i32 %52 to i64
  %55 = sub i64 0, %54
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  store i32* %56, i32** %23, align 8
  %57 = load i32*, i32** %25, align 8
  %58 = getelementptr inbounds i32, i32* %57, i32 -1
  store i32* %58, i32** %25, align 8
  %59 = load i32*, i32** %27, align 8
  store i32 0, i32* %59, align 4
  %60 = load i8*, i8** %15, align 8
  %61 = call i32 @lsame_(i8* %60, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32 %61, i32* @sormtr_.left, align 4
  %62 = load i8*, i8** %16, align 8
  %63 = call i32 @lsame_(i8* %62, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32 %63, i32* @sormtr_.upper, align 4
  %64 = load i32*, i32** %26, align 8
  %65 = load i32, i32* %64, align 4
  %66 = icmp eq i32 %65, -1
  %67 = zext i1 %66 to i32
  store i32 %67, i32* @sormtr_.lquery, align 4
  %68 = load i32, i32* @sormtr_.left, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %13
  %71 = load i32*, i32** %18, align 8
  %72 = load i32, i32* %71, align 4
  store i32 %72, i32* @sormtr_.nq, align 4
  %73 = load i32*, i32** %19, align 8
  %74 = load i32, i32* %73, align 4
  store i32 %74, i32* @sormtr_.nw, align 4
  br label %80

75:                                               ; preds = %13
  %76 = load i32*, i32** %19, align 8
  %77 = load i32, i32* %76, align 4
  store i32 %77, i32* @sormtr_.nq, align 4
  %78 = load i32*, i32** %18, align 8
  %79 = load i32, i32* %78, align 4
  store i32 %79, i32* @sormtr_.nw, align 4
  br label %80

80:                                               ; preds = %75, %70
  %81 = load i32, i32* @sormtr_.left, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %89, label %83

83:                                               ; preds = %80
  %84 = load i8*, i8** %15, align 8
  %85 = call i32 @lsame_(i8* %84, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %89, label %87

87:                                               ; preds = %83
  %88 = load i32*, i32** %27, align 8
  store i32 -1, i32* %88, align 4
  br label %155

89:                                               ; preds = %83, %80
  %90 = load i32, i32* @sormtr_.upper, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %98, label %92

92:                                               ; preds = %89
  %93 = load i8*, i8** %16, align 8
  %94 = call i32 @lsame_(i8* %93, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %98, label %96

96:                                               ; preds = %92
  %97 = load i32*, i32** %27, align 8
  store i32 -2, i32* %97, align 4
  br label %154

98:                                               ; preds = %92, %89
  %99 = load i8*, i8** %17, align 8
  %100 = call i32 @lsame_(i8* %99, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %108, label %102

102:                                              ; preds = %98
  %103 = load i8*, i8** %17, align 8
  %104 = call i32 @lsame_(i8* %103, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %108, label %106

106:                                              ; preds = %102
  %107 = load i32*, i32** %27, align 8
  store i32 -3, i32* %107, align 4
  br label %153

108:                                              ; preds = %102, %98
  %109 = load i32*, i32** %18, align 8
  %110 = load i32, i32* %109, align 4
  %111 = icmp slt i32 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %108
  %113 = load i32*, i32** %27, align 8
  store i32 -4, i32* %113, align 4
  br label %152

114:                                              ; preds = %108
  %115 = load i32*, i32** %19, align 8
  %116 = load i32, i32* %115, align 4
  %117 = icmp slt i32 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %114
  %119 = load i32*, i32** %27, align 8
  store i32 -5, i32* %119, align 4
  br label %151

120:                                              ; preds = %114
  %121 = load i32*, i32** %21, align 8
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* @sormtr_.nq, align 4
  %124 = call i32 @max(i32 1, i32 %123)
  %125 = icmp slt i32 %122, %124
  br i1 %125, label %126, label %128

126:                                              ; preds = %120
  %127 = load i32*, i32** %27, align 8
  store i32 -7, i32* %127, align 4
  br label %150

128:                                              ; preds = %120
  %129 = load i32*, i32** %24, align 8
  %130 = load i32, i32* %129, align 4
  %131 = load i32*, i32** %18, align 8
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @max(i32 1, i32 %132)
  %134 = icmp slt i32 %130, %133
  br i1 %134, label %135, label %137

135:                                              ; preds = %128
  %136 = load i32*, i32** %27, align 8
  store i32 -10, i32* %136, align 4
  br label %149

137:                                              ; preds = %128
  %138 = load i32*, i32** %26, align 8
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* @sormtr_.nw, align 4
  %141 = call i32 @max(i32 1, i32 %140)
  %142 = icmp slt i32 %139, %141
  br i1 %142, label %143, label %148

143:                                              ; preds = %137
  %144 = load i32, i32* @sormtr_.lquery, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %148, label %146

146:                                              ; preds = %143
  %147 = load i32*, i32** %27, align 8
  store i32 -12, i32* %147, align 4
  br label %148

148:                                              ; preds = %146, %143, %137
  br label %149

149:                                              ; preds = %148, %135
  br label %150

150:                                              ; preds = %149, %126
  br label %151

151:                                              ; preds = %150, %118
  br label %152

152:                                              ; preds = %151, %112
  br label %153

153:                                              ; preds = %152, %106
  br label %154

154:                                              ; preds = %153, %96
  br label %155

155:                                              ; preds = %154, %87
  %156 = load i32*, i32** %27, align 8
  %157 = load i32, i32* %156, align 4
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %159, label %258

159:                                              ; preds = %155
  %160 = load i32, i32* @sormtr_.upper, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %206

162:                                              ; preds = %159
  %163 = load i32, i32* @sormtr_.left, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %185

165:                                              ; preds = %162
  %166 = getelementptr inbounds [2 x i32], [2 x i32]* %33, i64 0, i64 0
  store i32 1, i32* %166, align 4
  %167 = load i8*, i8** %15, align 8
  %168 = getelementptr inbounds [2 x i8*], [2 x i8*]* %28, i64 0, i64 0
  store i8* %167, i8** %168, align 16
  %169 = getelementptr inbounds [2 x i32], [2 x i32]* %33, i64 0, i64 1
  store i32 1, i32* %169, align 4
  %170 = load i8*, i8** %17, align 8
  %171 = getelementptr inbounds [2 x i8*], [2 x i8*]* %28, i64 0, i64 1
  store i8* %170, i8** %171, align 8
  %172 = getelementptr inbounds [2 x i8], [2 x i8]* %36, i64 0, i64 0
  %173 = getelementptr inbounds [2 x i8*], [2 x i8*]* %28, i64 0, i64 0
  %174 = getelementptr inbounds [2 x i32], [2 x i32]* %33, i64 0, i64 0
  %175 = call i32 @s_cat(i8* %172, i8** %173, i32* %174, i32* @c__2, i32 2)
  %176 = load i32*, i32** %18, align 8
  %177 = load i32, i32* %176, align 4
  %178 = sub nsw i32 %177, 1
  store i32 %178, i32* %34, align 4
  %179 = load i32*, i32** %18, align 8
  %180 = load i32, i32* %179, align 4
  %181 = sub nsw i32 %180, 1
  store i32 %181, i32* %35, align 4
  %182 = getelementptr inbounds [2 x i8], [2 x i8]* %36, i64 0, i64 0
  %183 = load i32*, i32** %19, align 8
  %184 = call i32 @ilaenv_(i32* @c__1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* %182, i32* %34, i32* %183, i32* %35, i32* @c_n1, i32 6, i32 2)
  store i32 %184, i32* @sormtr_.nb, align 4
  br label %205

185:                                              ; preds = %162
  %186 = getelementptr inbounds [2 x i32], [2 x i32]* %33, i64 0, i64 0
  store i32 1, i32* %186, align 4
  %187 = load i8*, i8** %15, align 8
  %188 = getelementptr inbounds [2 x i8*], [2 x i8*]* %28, i64 0, i64 0
  store i8* %187, i8** %188, align 16
  %189 = getelementptr inbounds [2 x i32], [2 x i32]* %33, i64 0, i64 1
  store i32 1, i32* %189, align 4
  %190 = load i8*, i8** %17, align 8
  %191 = getelementptr inbounds [2 x i8*], [2 x i8*]* %28, i64 0, i64 1
  store i8* %190, i8** %191, align 8
  %192 = getelementptr inbounds [2 x i8], [2 x i8]* %36, i64 0, i64 0
  %193 = getelementptr inbounds [2 x i8*], [2 x i8*]* %28, i64 0, i64 0
  %194 = getelementptr inbounds [2 x i32], [2 x i32]* %33, i64 0, i64 0
  %195 = call i32 @s_cat(i8* %192, i8** %193, i32* %194, i32* @c__2, i32 2)
  %196 = load i32*, i32** %19, align 8
  %197 = load i32, i32* %196, align 4
  %198 = sub nsw i32 %197, 1
  store i32 %198, i32* %34, align 4
  %199 = load i32*, i32** %19, align 8
  %200 = load i32, i32* %199, align 4
  %201 = sub nsw i32 %200, 1
  store i32 %201, i32* %35, align 4
  %202 = getelementptr inbounds [2 x i8], [2 x i8]* %36, i64 0, i64 0
  %203 = load i32*, i32** %18, align 8
  %204 = call i32 @ilaenv_(i32* @c__1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* %202, i32* %203, i32* %34, i32* %35, i32* @c_n1, i32 6, i32 2)
  store i32 %204, i32* @sormtr_.nb, align 4
  br label %205

205:                                              ; preds = %185, %165
  br label %250

206:                                              ; preds = %159
  %207 = load i32, i32* @sormtr_.left, align 4
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %229

209:                                              ; preds = %206
  %210 = getelementptr inbounds [2 x i32], [2 x i32]* %33, i64 0, i64 0
  store i32 1, i32* %210, align 4
  %211 = load i8*, i8** %15, align 8
  %212 = getelementptr inbounds [2 x i8*], [2 x i8*]* %28, i64 0, i64 0
  store i8* %211, i8** %212, align 16
  %213 = getelementptr inbounds [2 x i32], [2 x i32]* %33, i64 0, i64 1
  store i32 1, i32* %213, align 4
  %214 = load i8*, i8** %17, align 8
  %215 = getelementptr inbounds [2 x i8*], [2 x i8*]* %28, i64 0, i64 1
  store i8* %214, i8** %215, align 8
  %216 = getelementptr inbounds [2 x i8], [2 x i8]* %36, i64 0, i64 0
  %217 = getelementptr inbounds [2 x i8*], [2 x i8*]* %28, i64 0, i64 0
  %218 = getelementptr inbounds [2 x i32], [2 x i32]* %33, i64 0, i64 0
  %219 = call i32 @s_cat(i8* %216, i8** %217, i32* %218, i32* @c__2, i32 2)
  %220 = load i32*, i32** %18, align 8
  %221 = load i32, i32* %220, align 4
  %222 = sub nsw i32 %221, 1
  store i32 %222, i32* %34, align 4
  %223 = load i32*, i32** %18, align 8
  %224 = load i32, i32* %223, align 4
  %225 = sub nsw i32 %224, 1
  store i32 %225, i32* %35, align 4
  %226 = getelementptr inbounds [2 x i8], [2 x i8]* %36, i64 0, i64 0
  %227 = load i32*, i32** %19, align 8
  %228 = call i32 @ilaenv_(i32* @c__1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8* %226, i32* %34, i32* %227, i32* %35, i32* @c_n1, i32 6, i32 2)
  store i32 %228, i32* @sormtr_.nb, align 4
  br label %249

229:                                              ; preds = %206
  %230 = getelementptr inbounds [2 x i32], [2 x i32]* %33, i64 0, i64 0
  store i32 1, i32* %230, align 4
  %231 = load i8*, i8** %15, align 8
  %232 = getelementptr inbounds [2 x i8*], [2 x i8*]* %28, i64 0, i64 0
  store i8* %231, i8** %232, align 16
  %233 = getelementptr inbounds [2 x i32], [2 x i32]* %33, i64 0, i64 1
  store i32 1, i32* %233, align 4
  %234 = load i8*, i8** %17, align 8
  %235 = getelementptr inbounds [2 x i8*], [2 x i8*]* %28, i64 0, i64 1
  store i8* %234, i8** %235, align 8
  %236 = getelementptr inbounds [2 x i8], [2 x i8]* %36, i64 0, i64 0
  %237 = getelementptr inbounds [2 x i8*], [2 x i8*]* %28, i64 0, i64 0
  %238 = getelementptr inbounds [2 x i32], [2 x i32]* %33, i64 0, i64 0
  %239 = call i32 @s_cat(i8* %236, i8** %237, i32* %238, i32* @c__2, i32 2)
  %240 = load i32*, i32** %19, align 8
  %241 = load i32, i32* %240, align 4
  %242 = sub nsw i32 %241, 1
  store i32 %242, i32* %34, align 4
  %243 = load i32*, i32** %19, align 8
  %244 = load i32, i32* %243, align 4
  %245 = sub nsw i32 %244, 1
  store i32 %245, i32* %35, align 4
  %246 = getelementptr inbounds [2 x i8], [2 x i8]* %36, i64 0, i64 0
  %247 = load i32*, i32** %18, align 8
  %248 = call i32 @ilaenv_(i32* @c__1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8* %246, i32* %247, i32* %34, i32* %35, i32* @c_n1, i32 6, i32 2)
  store i32 %248, i32* @sormtr_.nb, align 4
  br label %249

249:                                              ; preds = %229, %209
  br label %250

250:                                              ; preds = %249, %205
  %251 = load i32, i32* @sormtr_.nw, align 4
  %252 = call i32 @max(i32 1, i32 %251)
  %253 = load i32, i32* @sormtr_.nb, align 4
  %254 = mul nsw i32 %252, %253
  store i32 %254, i32* @sormtr_.lwkopt, align 4
  %255 = load i32, i32* @sormtr_.lwkopt, align 4
  %256 = load i32*, i32** %25, align 8
  %257 = getelementptr inbounds i32, i32* %256, i64 1
  store i32 %255, i32* %257, align 4
  br label %258

258:                                              ; preds = %250, %155
  %259 = load i32*, i32** %27, align 8
  %260 = load i32, i32* %259, align 4
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %262, label %267

262:                                              ; preds = %258
  %263 = load i32*, i32** %27, align 8
  %264 = load i32, i32* %263, align 4
  %265 = sub nsw i32 0, %264
  store i32 %265, i32* %34, align 4
  %266 = call i32 @xerbla_(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i32* %34)
  store i32 0, i32* %14, align 4
  br label %362

267:                                              ; preds = %258
  %268 = load i32, i32* @sormtr_.lquery, align 4
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %270, label %271

270:                                              ; preds = %267
  store i32 0, i32* %14, align 4
  br label %362

271:                                              ; preds = %267
  br label %272

272:                                              ; preds = %271
  %273 = load i32*, i32** %18, align 8
  %274 = load i32, i32* %273, align 4
  %275 = icmp eq i32 %274, 0
  br i1 %275, label %283, label %276

276:                                              ; preds = %272
  %277 = load i32*, i32** %19, align 8
  %278 = load i32, i32* %277, align 4
  %279 = icmp eq i32 %278, 0
  br i1 %279, label %283, label %280

280:                                              ; preds = %276
  %281 = load i32, i32* @sormtr_.nq, align 4
  %282 = icmp eq i32 %281, 1
  br i1 %282, label %283, label %286

283:                                              ; preds = %280, %276, %272
  %284 = load i32*, i32** %25, align 8
  %285 = getelementptr inbounds i32, i32* %284, i64 1
  store i32 1, i32* %285, align 4
  store i32 0, i32* %14, align 4
  br label %362

286:                                              ; preds = %280
  %287 = load i32, i32* @sormtr_.left, align 4
  %288 = icmp ne i32 %287, 0
  br i1 %288, label %289, label %295

289:                                              ; preds = %286
  %290 = load i32*, i32** %18, align 8
  %291 = load i32, i32* %290, align 4
  %292 = sub nsw i32 %291, 1
  store i32 %292, i32* @sormtr_.mi, align 4
  %293 = load i32*, i32** %19, align 8
  %294 = load i32, i32* %293, align 4
  store i32 %294, i32* @sormtr_.ni, align 4
  br label %301

295:                                              ; preds = %286
  %296 = load i32*, i32** %18, align 8
  %297 = load i32, i32* %296, align 4
  store i32 %297, i32* @sormtr_.mi, align 4
  %298 = load i32*, i32** %19, align 8
  %299 = load i32, i32* %298, align 4
  %300 = sub nsw i32 %299, 1
  store i32 %300, i32* @sormtr_.ni, align 4
  br label %301

301:                                              ; preds = %295, %289
  %302 = load i32, i32* @sormtr_.upper, align 4
  %303 = icmp ne i32 %302, 0
  br i1 %303, label %304, label %327

304:                                              ; preds = %301
  %305 = load i32, i32* @sormtr_.nq, align 4
  %306 = sub nsw i32 %305, 1
  store i32 %306, i32* %34, align 4
  %307 = load i8*, i8** %15, align 8
  %308 = load i8*, i8** %17, align 8
  %309 = load i32*, i32** %20, align 8
  %310 = load i32, i32* %29, align 4
  %311 = shl i32 %310, 1
  %312 = add nsw i32 %311, 1
  %313 = sext i32 %312 to i64
  %314 = getelementptr inbounds i32, i32* %309, i64 %313
  %315 = load i32*, i32** %21, align 8
  %316 = load i32*, i32** %22, align 8
  %317 = getelementptr inbounds i32, i32* %316, i64 1
  %318 = load i32*, i32** %23, align 8
  %319 = load i32, i32* %32, align 4
  %320 = sext i32 %319 to i64
  %321 = getelementptr inbounds i32, i32* %318, i64 %320
  %322 = load i32*, i32** %24, align 8
  %323 = load i32*, i32** %25, align 8
  %324 = getelementptr inbounds i32, i32* %323, i64 1
  %325 = load i32*, i32** %26, align 8
  %326 = call i32 @sormql_(i8* %307, i8* %308, i32* @sormtr_.mi, i32* @sormtr_.ni, i32* %34, i32* %314, i32* %315, i32* %317, i32* %321, i32* %322, i32* %324, i32* %325, i32* @sormtr_.iinfo)
  br label %358

327:                                              ; preds = %301
  %328 = load i32, i32* @sormtr_.left, align 4
  %329 = icmp ne i32 %328, 0
  br i1 %329, label %330, label %331

330:                                              ; preds = %327
  store i32 2, i32* @sormtr_.i1, align 4
  store i32 1, i32* @sormtr_.i2, align 4
  br label %332

331:                                              ; preds = %327
  store i32 1, i32* @sormtr_.i1, align 4
  store i32 2, i32* @sormtr_.i2, align 4
  br label %332

332:                                              ; preds = %331, %330
  %333 = load i32, i32* @sormtr_.nq, align 4
  %334 = sub nsw i32 %333, 1
  store i32 %334, i32* %34, align 4
  %335 = load i8*, i8** %15, align 8
  %336 = load i8*, i8** %17, align 8
  %337 = load i32*, i32** %20, align 8
  %338 = load i32, i32* %29, align 4
  %339 = add nsw i32 %338, 2
  %340 = sext i32 %339 to i64
  %341 = getelementptr inbounds i32, i32* %337, i64 %340
  %342 = load i32*, i32** %21, align 8
  %343 = load i32*, i32** %22, align 8
  %344 = getelementptr inbounds i32, i32* %343, i64 1
  %345 = load i32*, i32** %23, align 8
  %346 = load i32, i32* @sormtr_.i1, align 4
  %347 = load i32, i32* @sormtr_.i2, align 4
  %348 = load i32, i32* %31, align 4
  %349 = mul nsw i32 %347, %348
  %350 = add nsw i32 %346, %349
  %351 = sext i32 %350 to i64
  %352 = getelementptr inbounds i32, i32* %345, i64 %351
  %353 = load i32*, i32** %24, align 8
  %354 = load i32*, i32** %25, align 8
  %355 = getelementptr inbounds i32, i32* %354, i64 1
  %356 = load i32*, i32** %26, align 8
  %357 = call i32 @sormqr_(i8* %335, i8* %336, i32* @sormtr_.mi, i32* @sormtr_.ni, i32* %34, i32* %341, i32* %342, i32* %344, i32* %352, i32* %353, i32* %355, i32* %356, i32* @sormtr_.iinfo)
  br label %358

358:                                              ; preds = %332, %304
  %359 = load i32, i32* @sormtr_.lwkopt, align 4
  %360 = load i32*, i32** %25, align 8
  %361 = getelementptr inbounds i32, i32* %360, i64 1
  store i32 %359, i32* %361, align 4
  store i32 0, i32* %14, align 4
  br label %362

362:                                              ; preds = %358, %283, %270, %262
  %363 = load i32, i32* %14, align 4
  ret i32 %363
}

declare dso_local i32 @lsame_(i8*, i8*) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @s_cat(i8*, i8**, i32*, i32*, i32) #1

declare dso_local i32 @ilaenv_(i32*, i8*, i8*, i32*, i32*, i32*, i32*, i32, i32) #1

declare dso_local i32 @xerbla_(i8*, i32*) #1

declare dso_local i32 @sormql_(i8*, i8*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @sormqr_(i8*, i8*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
