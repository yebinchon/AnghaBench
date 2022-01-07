; ModuleID = '/home/carl/AnghaBench/openssl/crypto/bn/extr_bn_exp.c_BN_mod_exp_simple.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/bn/extr_bn_exp.c_BN_mod_exp_simple.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TABLE_SIZE = common dso_local global i32 0, align 4
@BN_FLG_CONSTTIME = common dso_local global i32 0, align 4
@BN_F_BN_MOD_EXP_SIMPLE = common dso_local global i32 0, align 4
@ERR_R_SHOULD_NOT_HAVE_BEEN_CALLED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BN_mod_exp_simple(i32* %0, i32* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i64, align 8
  %24 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32 0, i32* %15, align 4
  store i32 1, i32* %20, align 4
  %25 = load i32, i32* @TABLE_SIZE, align 4
  %26 = zext i32 %25 to i64
  %27 = call i8* @llvm.stacksave()
  store i8* %27, i8** %22, align 8
  %28 = alloca i32*, i64 %26, align 16
  store i64 %26, i64* %23, align 8
  %29 = load i32*, i32** %9, align 8
  %30 = load i32, i32* @BN_FLG_CONSTTIME, align 4
  %31 = call i64 @BN_get_flags(i32* %29, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %43, label %33

33:                                               ; preds = %5
  %34 = load i32*, i32** %8, align 8
  %35 = load i32, i32* @BN_FLG_CONSTTIME, align 4
  %36 = call i64 @BN_get_flags(i32* %34, i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %43, label %38

38:                                               ; preds = %33
  %39 = load i32*, i32** %10, align 8
  %40 = load i32, i32* @BN_FLG_CONSTTIME, align 4
  %41 = call i64 @BN_get_flags(i32* %39, i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %38, %33, %5
  %44 = load i32, i32* @BN_F_BN_MOD_EXP_SIMPLE, align 4
  %45 = load i32, i32* @ERR_R_SHOULD_NOT_HAVE_BEEN_CALLED, align 4
  %46 = call i32 @BNerr(i32 %44, i32 %45)
  store i32 0, i32* %6, align 4
  store i32 1, i32* %24, align 4
  br label %263

47:                                               ; preds = %38
  %48 = load i32*, i32** %9, align 8
  %49 = call i32 @BN_num_bits(i32* %48)
  store i32 %49, i32* %14, align 4
  %50 = load i32, i32* %14, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %64

52:                                               ; preds = %47
  %53 = load i32*, i32** %10, align 8
  %54 = call i64 @BN_abs_is_word(i32* %53, i32 1)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %52
  store i32 1, i32* %15, align 4
  %57 = load i32*, i32** %7, align 8
  %58 = call i32 @BN_zero(i32* %57)
  br label %62

59:                                               ; preds = %52
  %60 = load i32*, i32** %7, align 8
  %61 = call i32 @BN_one(i32* %60)
  store i32 %61, i32* %15, align 4
  br label %62

62:                                               ; preds = %59, %56
  %63 = load i32, i32* %15, align 4
  store i32 %63, i32* %6, align 4
  store i32 1, i32* %24, align 4
  br label %263

64:                                               ; preds = %47
  %65 = load i32*, i32** %11, align 8
  %66 = call i32 @BN_CTX_start(i32* %65)
  %67 = load i32*, i32** %11, align 8
  %68 = call i32* @BN_CTX_get(i32* %67)
  store i32* %68, i32** %21, align 8
  %69 = load i32*, i32** %11, align 8
  %70 = call i32* @BN_CTX_get(i32* %69)
  %71 = getelementptr inbounds i32*, i32** %28, i64 0
  store i32* %70, i32** %71, align 16
  %72 = getelementptr inbounds i32*, i32** %28, i64 0
  %73 = load i32*, i32** %72, align 16
  %74 = icmp eq i32* %73, null
  br i1 %74, label %75, label %76

75:                                               ; preds = %64
  br label %257

76:                                               ; preds = %64
  %77 = getelementptr inbounds i32*, i32** %28, i64 0
  %78 = load i32*, i32** %77, align 16
  %79 = load i32*, i32** %8, align 8
  %80 = load i32*, i32** %10, align 8
  %81 = load i32*, i32** %11, align 8
  %82 = call i32 @BN_nnmod(i32* %78, i32* %79, i32* %80, i32* %81)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %85, label %84

84:                                               ; preds = %76
  br label %257

85:                                               ; preds = %76
  %86 = getelementptr inbounds i32*, i32** %28, i64 0
  %87 = load i32*, i32** %86, align 16
  %88 = call i64 @BN_is_zero(i32* %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %85
  %91 = load i32*, i32** %7, align 8
  %92 = call i32 @BN_zero(i32* %91)
  store i32 1, i32* %15, align 4
  br label %257

93:                                               ; preds = %85
  %94 = load i32, i32* %14, align 4
  %95 = call i32 @BN_window_bits_for_exponent_size(i32 %94)
  store i32 %95, i32* %18, align 4
  %96 = load i32, i32* %18, align 4
  %97 = icmp sgt i32 %96, 1
  br i1 %97, label %98, label %145

98:                                               ; preds = %93
  %99 = load i32*, i32** %21, align 8
  %100 = getelementptr inbounds i32*, i32** %28, i64 0
  %101 = load i32*, i32** %100, align 16
  %102 = getelementptr inbounds i32*, i32** %28, i64 0
  %103 = load i32*, i32** %102, align 16
  %104 = load i32*, i32** %10, align 8
  %105 = load i32*, i32** %11, align 8
  %106 = call i32 @BN_mod_mul(i32* %99, i32* %101, i32* %103, i32* %104, i32* %105)
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %109, label %108

108:                                              ; preds = %98
  br label %257

109:                                              ; preds = %98
  %110 = load i32, i32* %18, align 4
  %111 = sub nsw i32 %110, 1
  %112 = shl i32 1, %111
  store i32 %112, i32* %13, align 4
  store i32 1, i32* %12, align 4
  br label %113

113:                                              ; preds = %141, %109
  %114 = load i32, i32* %12, align 4
  %115 = load i32, i32* %13, align 4
  %116 = icmp slt i32 %114, %115
  br i1 %116, label %117, label %144

117:                                              ; preds = %113
  %118 = load i32*, i32** %11, align 8
  %119 = call i32* @BN_CTX_get(i32* %118)
  %120 = load i32, i32* %12, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32*, i32** %28, i64 %121
  store i32* %119, i32** %122, align 8
  %123 = icmp eq i32* %119, null
  br i1 %123, label %139, label %124

124:                                              ; preds = %117
  %125 = load i32, i32* %12, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32*, i32** %28, i64 %126
  %128 = load i32*, i32** %127, align 8
  %129 = load i32, i32* %12, align 4
  %130 = sub nsw i32 %129, 1
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i32*, i32** %28, i64 %131
  %133 = load i32*, i32** %132, align 8
  %134 = load i32*, i32** %21, align 8
  %135 = load i32*, i32** %10, align 8
  %136 = load i32*, i32** %11, align 8
  %137 = call i32 @BN_mod_mul(i32* %128, i32* %133, i32* %134, i32* %135, i32* %136)
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %140, label %139

139:                                              ; preds = %124, %117
  br label %257

140:                                              ; preds = %124
  br label %141

141:                                              ; preds = %140
  %142 = load i32, i32* %12, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %12, align 4
  br label %113

144:                                              ; preds = %113
  br label %145

145:                                              ; preds = %144, %93
  store i32 1, i32* %20, align 4
  store i32 0, i32* %19, align 4
  %146 = load i32, i32* %14, align 4
  %147 = sub nsw i32 %146, 1
  store i32 %147, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %148 = load i32*, i32** %7, align 8
  %149 = call i32 @BN_one(i32* %148)
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %152, label %151

151:                                              ; preds = %145
  br label %257

152:                                              ; preds = %145
  br label %153

153:                                              ; preds = %255, %175, %152
  %154 = load i32*, i32** %9, align 8
  %155 = load i32, i32* %16, align 4
  %156 = call i64 @BN_is_bit_set(i32* %154, i32 %155)
  %157 = icmp eq i64 %156, 0
  br i1 %157, label %158, label %178

158:                                              ; preds = %153
  %159 = load i32, i32* %20, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %171, label %161

161:                                              ; preds = %158
  %162 = load i32*, i32** %7, align 8
  %163 = load i32*, i32** %7, align 8
  %164 = load i32*, i32** %7, align 8
  %165 = load i32*, i32** %10, align 8
  %166 = load i32*, i32** %11, align 8
  %167 = call i32 @BN_mod_mul(i32* %162, i32* %163, i32* %164, i32* %165, i32* %166)
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %170, label %169

169:                                              ; preds = %161
  br label %257

170:                                              ; preds = %161
  br label %171

171:                                              ; preds = %170, %158
  %172 = load i32, i32* %16, align 4
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %174, label %175

174:                                              ; preds = %171
  br label %256

175:                                              ; preds = %171
  %176 = load i32, i32* %16, align 4
  %177 = add nsw i32 %176, -1
  store i32 %177, i32* %16, align 4
  br label %153

178:                                              ; preds = %153
  %179 = load i32, i32* %16, align 4
  store i32 %179, i32* %13, align 4
  store i32 1, i32* %19, align 4
  store i32 0, i32* %17, align 4
  store i32 1, i32* %12, align 4
  br label %180

180:                                              ; preds = %207, %178
  %181 = load i32, i32* %12, align 4
  %182 = load i32, i32* %18, align 4
  %183 = icmp slt i32 %181, %182
  br i1 %183, label %184, label %210

184:                                              ; preds = %180
  %185 = load i32, i32* %16, align 4
  %186 = load i32, i32* %12, align 4
  %187 = sub nsw i32 %185, %186
  %188 = icmp slt i32 %187, 0
  br i1 %188, label %189, label %190

189:                                              ; preds = %184
  br label %210

190:                                              ; preds = %184
  %191 = load i32*, i32** %9, align 8
  %192 = load i32, i32* %16, align 4
  %193 = load i32, i32* %12, align 4
  %194 = sub nsw i32 %192, %193
  %195 = call i64 @BN_is_bit_set(i32* %191, i32 %194)
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %206

197:                                              ; preds = %190
  %198 = load i32, i32* %12, align 4
  %199 = load i32, i32* %17, align 4
  %200 = sub nsw i32 %198, %199
  %201 = load i32, i32* %19, align 4
  %202 = shl i32 %201, %200
  store i32 %202, i32* %19, align 4
  %203 = load i32, i32* %19, align 4
  %204 = or i32 %203, 1
  store i32 %204, i32* %19, align 4
  %205 = load i32, i32* %12, align 4
  store i32 %205, i32* %17, align 4
  br label %206

206:                                              ; preds = %197, %190
  br label %207

207:                                              ; preds = %206
  %208 = load i32, i32* %12, align 4
  %209 = add nsw i32 %208, 1
  store i32 %209, i32* %12, align 4
  br label %180

210:                                              ; preds = %189, %180
  %211 = load i32, i32* %17, align 4
  %212 = add nsw i32 %211, 1
  store i32 %212, i32* %13, align 4
  %213 = load i32, i32* %20, align 4
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %234, label %215

215:                                              ; preds = %210
  store i32 0, i32* %12, align 4
  br label %216

216:                                              ; preds = %230, %215
  %217 = load i32, i32* %12, align 4
  %218 = load i32, i32* %13, align 4
  %219 = icmp slt i32 %217, %218
  br i1 %219, label %220, label %233

220:                                              ; preds = %216
  %221 = load i32*, i32** %7, align 8
  %222 = load i32*, i32** %7, align 8
  %223 = load i32*, i32** %7, align 8
  %224 = load i32*, i32** %10, align 8
  %225 = load i32*, i32** %11, align 8
  %226 = call i32 @BN_mod_mul(i32* %221, i32* %222, i32* %223, i32* %224, i32* %225)
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %229, label %228

228:                                              ; preds = %220
  br label %257

229:                                              ; preds = %220
  br label %230

230:                                              ; preds = %229
  %231 = load i32, i32* %12, align 4
  %232 = add nsw i32 %231, 1
  store i32 %232, i32* %12, align 4
  br label %216

233:                                              ; preds = %216
  br label %234

234:                                              ; preds = %233, %210
  %235 = load i32*, i32** %7, align 8
  %236 = load i32*, i32** %7, align 8
  %237 = load i32, i32* %19, align 4
  %238 = ashr i32 %237, 1
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds i32*, i32** %28, i64 %239
  %241 = load i32*, i32** %240, align 8
  %242 = load i32*, i32** %10, align 8
  %243 = load i32*, i32** %11, align 8
  %244 = call i32 @BN_mod_mul(i32* %235, i32* %236, i32* %241, i32* %242, i32* %243)
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %247, label %246

246:                                              ; preds = %234
  br label %257

247:                                              ; preds = %234
  %248 = load i32, i32* %17, align 4
  %249 = add nsw i32 %248, 1
  %250 = load i32, i32* %16, align 4
  %251 = sub nsw i32 %250, %249
  store i32 %251, i32* %16, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  %252 = load i32, i32* %16, align 4
  %253 = icmp slt i32 %252, 0
  br i1 %253, label %254, label %255

254:                                              ; preds = %247
  br label %256

255:                                              ; preds = %247
  br label %153

256:                                              ; preds = %254, %174
  store i32 1, i32* %15, align 4
  br label %257

257:                                              ; preds = %256, %246, %228, %169, %151, %139, %108, %90, %84, %75
  %258 = load i32*, i32** %11, align 8
  %259 = call i32 @BN_CTX_end(i32* %258)
  %260 = load i32*, i32** %7, align 8
  %261 = call i32 @bn_check_top(i32* %260)
  %262 = load i32, i32* %15, align 4
  store i32 %262, i32* %6, align 4
  store i32 1, i32* %24, align 4
  br label %263

263:                                              ; preds = %257, %62, %43
  %264 = load i8*, i8** %22, align 8
  call void @llvm.stackrestore(i8* %264)
  %265 = load i32, i32* %6, align 4
  ret i32 %265
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @BN_get_flags(i32*, i32) #2

declare dso_local i32 @BNerr(i32, i32) #2

declare dso_local i32 @BN_num_bits(i32*) #2

declare dso_local i64 @BN_abs_is_word(i32*, i32) #2

declare dso_local i32 @BN_zero(i32*) #2

declare dso_local i32 @BN_one(i32*) #2

declare dso_local i32 @BN_CTX_start(i32*) #2

declare dso_local i32* @BN_CTX_get(i32*) #2

declare dso_local i32 @BN_nnmod(i32*, i32*, i32*, i32*) #2

declare dso_local i64 @BN_is_zero(i32*) #2

declare dso_local i32 @BN_window_bits_for_exponent_size(i32) #2

declare dso_local i32 @BN_mod_mul(i32*, i32*, i32*, i32*, i32*) #2

declare dso_local i64 @BN_is_bit_set(i32*, i32) #2

declare dso_local i32 @BN_CTX_end(i32*) #2

declare dso_local i32 @bn_check_top(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
