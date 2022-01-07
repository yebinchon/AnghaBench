; ModuleID = '/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_d_lapack.c_dorml2_.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_d_lapack.c_dorml2_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@dorml2_.i__ = internal global i32 0, align 4
@dorml2_.i1 = internal global i32 0, align 4
@dorml2_.i2 = internal global i32 0, align 4
@dorml2_.i3 = internal global i32 0, align 4
@dorml2_.ic = internal global i32 0, align 4
@dorml2_.jc = internal global i32 0, align 4
@dorml2_.mi = internal global i32 0, align 4
@dorml2_.ni = internal global i32 0, align 4
@dorml2_.nq = internal global i32 0, align 4
@dorml2_.aii = internal global i32 0, align 4
@dorml2_.left = internal global i8* null, align 8
@dorml2_.notran = internal global i8* null, align 8
@.str = private unnamed_addr constant [2 x i8] c"L\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"N\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"R\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"T\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"DORML2\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dorml2_(i8* %0, i8* %1, i32* %2, i32* %3, i32* %4, i32* %5, i32* %6, i32* %7, i32* %8, i32* %9, i32* %10, i32* %11) #0 {
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  store i8* %0, i8** %14, align 8
  store i8* %1, i8** %15, align 8
  store i32* %2, i32** %16, align 8
  store i32* %3, i32** %17, align 8
  store i32* %4, i32** %18, align 8
  store i32* %5, i32** %19, align 8
  store i32* %6, i32** %20, align 8
  store i32* %7, i32** %21, align 8
  store i32* %8, i32** %22, align 8
  store i32* %9, i32** %23, align 8
  store i32* %10, i32** %24, align 8
  store i32* %11, i32** %25, align 8
  %32 = load i32*, i32** %20, align 8
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %26, align 4
  %34 = load i32, i32* %26, align 4
  %35 = add nsw i32 1, %34
  store i32 %35, i32* %27, align 4
  %36 = load i32, i32* %27, align 4
  %37 = load i32*, i32** %19, align 8
  %38 = sext i32 %36 to i64
  %39 = sub i64 0, %38
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  store i32* %40, i32** %19, align 8
  %41 = load i32*, i32** %21, align 8
  %42 = getelementptr inbounds i32, i32* %41, i32 -1
  store i32* %42, i32** %21, align 8
  %43 = load i32*, i32** %23, align 8
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %28, align 4
  %45 = load i32, i32* %28, align 4
  %46 = add nsw i32 1, %45
  store i32 %46, i32* %29, align 4
  %47 = load i32, i32* %29, align 4
  %48 = load i32*, i32** %22, align 8
  %49 = sext i32 %47 to i64
  %50 = sub i64 0, %49
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  store i32* %51, i32** %22, align 8
  %52 = load i32*, i32** %24, align 8
  %53 = getelementptr inbounds i32, i32* %52, i32 -1
  store i32* %53, i32** %24, align 8
  %54 = load i32*, i32** %25, align 8
  store i32 0, i32* %54, align 4
  %55 = load i8*, i8** %14, align 8
  %56 = call i8* @lsame_(i8* %55, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %56, i8** @dorml2_.left, align 8
  %57 = load i8*, i8** %15, align 8
  %58 = call i8* @lsame_(i8* %57, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i8* %58, i8** @dorml2_.notran, align 8
  %59 = load i8*, i8** @dorml2_.left, align 8
  %60 = icmp ne i8* %59, null
  br i1 %60, label %61, label %64

61:                                               ; preds = %12
  %62 = load i32*, i32** %16, align 8
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* @dorml2_.nq, align 4
  br label %67

64:                                               ; preds = %12
  %65 = load i32*, i32** %17, align 8
  %66 = load i32, i32* %65, align 4
  store i32 %66, i32* @dorml2_.nq, align 4
  br label %67

67:                                               ; preds = %64, %61
  %68 = load i8*, i8** @dorml2_.left, align 8
  %69 = icmp ne i8* %68, null
  br i1 %69, label %76, label %70

70:                                               ; preds = %67
  %71 = load i8*, i8** %14, align 8
  %72 = call i8* @lsame_(i8* %71, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %73 = icmp ne i8* %72, null
  br i1 %73, label %76, label %74

74:                                               ; preds = %70
  %75 = load i32*, i32** %25, align 8
  store i32 -1, i32* %75, align 4
  br label %132

76:                                               ; preds = %70, %67
  %77 = load i8*, i8** @dorml2_.notran, align 8
  %78 = icmp ne i8* %77, null
  br i1 %78, label %85, label %79

79:                                               ; preds = %76
  %80 = load i8*, i8** %15, align 8
  %81 = call i8* @lsame_(i8* %80, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %82 = icmp ne i8* %81, null
  br i1 %82, label %85, label %83

83:                                               ; preds = %79
  %84 = load i32*, i32** %25, align 8
  store i32 -2, i32* %84, align 4
  br label %131

85:                                               ; preds = %79, %76
  %86 = load i32*, i32** %16, align 8
  %87 = load i32, i32* %86, align 4
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %85
  %90 = load i32*, i32** %25, align 8
  store i32 -3, i32* %90, align 4
  br label %130

91:                                               ; preds = %85
  %92 = load i32*, i32** %17, align 8
  %93 = load i32, i32* %92, align 4
  %94 = icmp slt i32 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %91
  %96 = load i32*, i32** %25, align 8
  store i32 -4, i32* %96, align 4
  br label %129

97:                                               ; preds = %91
  %98 = load i32*, i32** %18, align 8
  %99 = load i32, i32* %98, align 4
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %106, label %101

101:                                              ; preds = %97
  %102 = load i32*, i32** %18, align 8
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @dorml2_.nq, align 4
  %105 = icmp sgt i32 %103, %104
  br i1 %105, label %106, label %108

106:                                              ; preds = %101, %97
  %107 = load i32*, i32** %25, align 8
  store i32 -5, i32* %107, align 4
  br label %128

108:                                              ; preds = %101
  %109 = load i32*, i32** %20, align 8
  %110 = load i32, i32* %109, align 4
  %111 = load i32*, i32** %18, align 8
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @max(i32 1, i32 %112)
  %114 = icmp slt i32 %110, %113
  br i1 %114, label %115, label %117

115:                                              ; preds = %108
  %116 = load i32*, i32** %25, align 8
  store i32 -7, i32* %116, align 4
  br label %127

117:                                              ; preds = %108
  %118 = load i32*, i32** %23, align 8
  %119 = load i32, i32* %118, align 4
  %120 = load i32*, i32** %16, align 8
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @max(i32 1, i32 %121)
  %123 = icmp slt i32 %119, %122
  br i1 %123, label %124, label %126

124:                                              ; preds = %117
  %125 = load i32*, i32** %25, align 8
  store i32 -10, i32* %125, align 4
  br label %126

126:                                              ; preds = %124, %117
  br label %127

127:                                              ; preds = %126, %115
  br label %128

128:                                              ; preds = %127, %106
  br label %129

129:                                              ; preds = %128, %95
  br label %130

130:                                              ; preds = %129, %89
  br label %131

131:                                              ; preds = %130, %83
  br label %132

132:                                              ; preds = %131, %74
  %133 = load i32*, i32** %25, align 8
  %134 = load i32, i32* %133, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %141

136:                                              ; preds = %132
  %137 = load i32*, i32** %25, align 8
  %138 = load i32, i32* %137, align 4
  %139 = sub nsw i32 0, %138
  store i32 %139, i32* %30, align 4
  %140 = call i32 @xerbla_(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32* %30)
  store i32 0, i32* %13, align 4
  br label %276

141:                                              ; preds = %132
  %142 = load i32*, i32** %16, align 8
  %143 = load i32, i32* %142, align 4
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %153, label %145

145:                                              ; preds = %141
  %146 = load i32*, i32** %17, align 8
  %147 = load i32, i32* %146, align 4
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %153, label %149

149:                                              ; preds = %145
  %150 = load i32*, i32** %18, align 8
  %151 = load i32, i32* %150, align 4
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %153, label %154

153:                                              ; preds = %149, %145, %141
  store i32 0, i32* %13, align 4
  br label %276

154:                                              ; preds = %149
  %155 = load i8*, i8** @dorml2_.left, align 8
  %156 = icmp ne i8* %155, null
  br i1 %156, label %157, label %160

157:                                              ; preds = %154
  %158 = load i8*, i8** @dorml2_.notran, align 8
  %159 = icmp ne i8* %158, null
  br i1 %159, label %166, label %160

160:                                              ; preds = %157, %154
  %161 = load i8*, i8** @dorml2_.left, align 8
  %162 = icmp ne i8* %161, null
  br i1 %162, label %169, label %163

163:                                              ; preds = %160
  %164 = load i8*, i8** @dorml2_.notran, align 8
  %165 = icmp ne i8* %164, null
  br i1 %165, label %169, label %166

166:                                              ; preds = %163, %157
  store i32 1, i32* @dorml2_.i1, align 4
  %167 = load i32*, i32** %18, align 8
  %168 = load i32, i32* %167, align 4
  store i32 %168, i32* @dorml2_.i2, align 4
  store i32 1, i32* @dorml2_.i3, align 4
  br label %172

169:                                              ; preds = %163, %160
  %170 = load i32*, i32** %18, align 8
  %171 = load i32, i32* %170, align 4
  store i32 %171, i32* @dorml2_.i1, align 4
  store i32 1, i32* @dorml2_.i2, align 4
  store i32 -1, i32* @dorml2_.i3, align 4
  br label %172

172:                                              ; preds = %169, %166
  %173 = load i8*, i8** @dorml2_.left, align 8
  %174 = icmp ne i8* %173, null
  br i1 %174, label %175, label %178

175:                                              ; preds = %172
  %176 = load i32*, i32** %17, align 8
  %177 = load i32, i32* %176, align 4
  store i32 %177, i32* @dorml2_.ni, align 4
  store i32 1, i32* @dorml2_.jc, align 4
  br label %181

178:                                              ; preds = %172
  %179 = load i32*, i32** %16, align 8
  %180 = load i32, i32* %179, align 4
  store i32 %180, i32* @dorml2_.mi, align 4
  store i32 1, i32* @dorml2_.ic, align 4
  br label %181

181:                                              ; preds = %178, %175
  %182 = load i32, i32* @dorml2_.i2, align 4
  store i32 %182, i32* %30, align 4
  %183 = load i32, i32* @dorml2_.i3, align 4
  store i32 %183, i32* %31, align 4
  %184 = load i32, i32* @dorml2_.i1, align 4
  store i32 %184, i32* @dorml2_.i__, align 4
  br label %185

185:                                              ; preds = %271, %181
  %186 = load i32, i32* %31, align 4
  %187 = icmp slt i32 %186, 0
  br i1 %187, label %188, label %193

188:                                              ; preds = %185
  %189 = load i32, i32* @dorml2_.i__, align 4
  %190 = load i32, i32* %30, align 4
  %191 = icmp sge i32 %189, %190
  %192 = zext i1 %191 to i32
  br label %198

193:                                              ; preds = %185
  %194 = load i32, i32* @dorml2_.i__, align 4
  %195 = load i32, i32* %30, align 4
  %196 = icmp sle i32 %194, %195
  %197 = zext i1 %196 to i32
  br label %198

198:                                              ; preds = %193, %188
  %199 = phi i32 [ %192, %188 ], [ %197, %193 ]
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %275

201:                                              ; preds = %198
  %202 = load i8*, i8** @dorml2_.left, align 8
  %203 = icmp ne i8* %202, null
  br i1 %203, label %204, label %211

204:                                              ; preds = %201
  %205 = load i32*, i32** %16, align 8
  %206 = load i32, i32* %205, align 4
  %207 = load i32, i32* @dorml2_.i__, align 4
  %208 = sub nsw i32 %206, %207
  %209 = add nsw i32 %208, 1
  store i32 %209, i32* @dorml2_.mi, align 4
  %210 = load i32, i32* @dorml2_.i__, align 4
  store i32 %210, i32* @dorml2_.ic, align 4
  br label %218

211:                                              ; preds = %201
  %212 = load i32*, i32** %17, align 8
  %213 = load i32, i32* %212, align 4
  %214 = load i32, i32* @dorml2_.i__, align 4
  %215 = sub nsw i32 %213, %214
  %216 = add nsw i32 %215, 1
  store i32 %216, i32* @dorml2_.ni, align 4
  %217 = load i32, i32* @dorml2_.i__, align 4
  store i32 %217, i32* @dorml2_.jc, align 4
  br label %218

218:                                              ; preds = %211, %204
  %219 = load i32*, i32** %19, align 8
  %220 = load i32, i32* @dorml2_.i__, align 4
  %221 = load i32, i32* @dorml2_.i__, align 4
  %222 = load i32, i32* %26, align 4
  %223 = mul nsw i32 %221, %222
  %224 = add nsw i32 %220, %223
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds i32, i32* %219, i64 %225
  %227 = load i32, i32* %226, align 4
  store i32 %227, i32* @dorml2_.aii, align 4
  %228 = load i32*, i32** %19, align 8
  %229 = load i32, i32* @dorml2_.i__, align 4
  %230 = load i32, i32* @dorml2_.i__, align 4
  %231 = load i32, i32* %26, align 4
  %232 = mul nsw i32 %230, %231
  %233 = add nsw i32 %229, %232
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds i32, i32* %228, i64 %234
  store i32 1, i32* %235, align 4
  %236 = load i8*, i8** %14, align 8
  %237 = load i32*, i32** %19, align 8
  %238 = load i32, i32* @dorml2_.i__, align 4
  %239 = load i32, i32* @dorml2_.i__, align 4
  %240 = load i32, i32* %26, align 4
  %241 = mul nsw i32 %239, %240
  %242 = add nsw i32 %238, %241
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds i32, i32* %237, i64 %243
  %245 = load i32*, i32** %20, align 8
  %246 = load i32*, i32** %21, align 8
  %247 = load i32, i32* @dorml2_.i__, align 4
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds i32, i32* %246, i64 %248
  %250 = load i32*, i32** %22, align 8
  %251 = load i32, i32* @dorml2_.ic, align 4
  %252 = load i32, i32* @dorml2_.jc, align 4
  %253 = load i32, i32* %28, align 4
  %254 = mul nsw i32 %252, %253
  %255 = add nsw i32 %251, %254
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds i32, i32* %250, i64 %256
  %258 = load i32*, i32** %23, align 8
  %259 = load i32*, i32** %24, align 8
  %260 = getelementptr inbounds i32, i32* %259, i64 1
  %261 = call i32 @dlarf_(i8* %236, i32* @dorml2_.mi, i32* @dorml2_.ni, i32* %244, i32* %245, i32* %249, i32* %257, i32* %258, i32* %260)
  %262 = load i32, i32* @dorml2_.aii, align 4
  %263 = load i32*, i32** %19, align 8
  %264 = load i32, i32* @dorml2_.i__, align 4
  %265 = load i32, i32* @dorml2_.i__, align 4
  %266 = load i32, i32* %26, align 4
  %267 = mul nsw i32 %265, %266
  %268 = add nsw i32 %264, %267
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds i32, i32* %263, i64 %269
  store i32 %262, i32* %270, align 4
  br label %271

271:                                              ; preds = %218
  %272 = load i32, i32* %31, align 4
  %273 = load i32, i32* @dorml2_.i__, align 4
  %274 = add nsw i32 %273, %272
  store i32 %274, i32* @dorml2_.i__, align 4
  br label %185

275:                                              ; preds = %198
  store i32 0, i32* %13, align 4
  br label %276

276:                                              ; preds = %275, %153, %136
  %277 = load i32, i32* %13, align 4
  ret i32 %277
}

declare dso_local i8* @lsame_(i8*, i8*) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @xerbla_(i8*, i32*) #1

declare dso_local i32 @dlarf_(i8*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
