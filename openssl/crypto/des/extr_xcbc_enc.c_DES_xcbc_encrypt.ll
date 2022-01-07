; ModuleID = '/home/carl/AnghaBench/openssl/crypto/des/extr_xcbc_enc.c_DES_xcbc_encrypt.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/des/extr_xcbc_enc.c_DES_xcbc_encrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DES_ENCRYPT = common dso_local global i32 0, align 4
@DES_DECRYPT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @DES_xcbc_encrypt(i8* %0, i8* %1, i64 %2, i32* %3, i8** %4, i8** %5, i8** %6, i32 %7) #0 {
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8**, align 8
  %14 = alloca i8**, align 8
  %15 = alloca i8**, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i8*, align 8
  %28 = alloca i64, align 8
  %29 = alloca [2 x i32], align 4
  %30 = alloca i8*, align 8
  store i8* %0, i8** %9, align 8
  store i8* %1, i8** %10, align 8
  store i64 %2, i64* %11, align 8
  store i32* %3, i32** %12, align 8
  store i8** %4, i8*** %13, align 8
  store i8** %5, i8*** %14, align 8
  store i8** %6, i8*** %15, align 8
  store i32 %7, i32* %16, align 4
  %31 = load i64, i64* %11, align 8
  store i64 %31, i64* %28, align 8
  %32 = load i8**, i8*** %14, align 8
  %33 = load i8*, i8** %32, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 0
  store i8* %34, i8** %27, align 8
  %35 = load i8*, i8** %27, align 8
  %36 = load i32, i32* %23, align 4
  %37 = call i32 @c2l(i8* %35, i32 %36)
  %38 = load i8*, i8** %27, align 8
  %39 = load i32, i32* %24, align 4
  %40 = call i32 @c2l(i8* %38, i32 %39)
  %41 = load i8**, i8*** %15, align 8
  %42 = load i8*, i8** %41, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 0
  store i8* %43, i8** %27, align 8
  %44 = load i8*, i8** %27, align 8
  %45 = load i32, i32* %25, align 4
  %46 = call i32 @c2l(i8* %44, i32 %45)
  %47 = load i8*, i8** %27, align 8
  %48 = load i32, i32* %26, align 4
  %49 = call i32 @c2l(i8* %47, i32 %48)
  %50 = load i8**, i8*** %13, align 8
  %51 = load i8*, i8** %50, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 0
  store i8* %52, i8** %30, align 8
  %53 = load i32, i32* %16, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %161

55:                                               ; preds = %8
  %56 = load i8*, i8** %30, align 8
  %57 = load i32, i32* %19, align 4
  %58 = call i32 @c2l(i8* %56, i32 %57)
  %59 = load i8*, i8** %30, align 8
  %60 = load i32, i32* %20, align 4
  %61 = call i32 @c2l(i8* %59, i32 %60)
  %62 = load i64, i64* %28, align 8
  %63 = sub nsw i64 %62, 8
  store i64 %63, i64* %28, align 8
  br label %64

64:                                               ; preds = %106, %55
  %65 = load i64, i64* %28, align 8
  %66 = icmp sge i64 %65, 0
  br i1 %66, label %67, label %109

67:                                               ; preds = %64
  %68 = load i8*, i8** %9, align 8
  %69 = load i32, i32* %17, align 4
  %70 = call i32 @c2l(i8* %68, i32 %69)
  %71 = load i8*, i8** %9, align 8
  %72 = load i32, i32* %18, align 4
  %73 = call i32 @c2l(i8* %71, i32 %72)
  %74 = load i32, i32* %19, align 4
  %75 = load i32, i32* %23, align 4
  %76 = xor i32 %74, %75
  %77 = load i32, i32* %17, align 4
  %78 = xor i32 %77, %76
  store i32 %78, i32* %17, align 4
  %79 = load i32, i32* %17, align 4
  %80 = getelementptr inbounds [2 x i32], [2 x i32]* %29, i64 0, i64 0
  store i32 %79, i32* %80, align 4
  %81 = load i32, i32* %20, align 4
  %82 = load i32, i32* %24, align 4
  %83 = xor i32 %81, %82
  %84 = load i32, i32* %18, align 4
  %85 = xor i32 %84, %83
  store i32 %85, i32* %18, align 4
  %86 = load i32, i32* %18, align 4
  %87 = getelementptr inbounds [2 x i32], [2 x i32]* %29, i64 0, i64 1
  store i32 %86, i32* %87, align 4
  %88 = getelementptr inbounds [2 x i32], [2 x i32]* %29, i64 0, i64 0
  %89 = load i32*, i32** %12, align 8
  %90 = load i32, i32* @DES_ENCRYPT, align 4
  %91 = call i32 @DES_encrypt1(i32* %88, i32* %89, i32 %90)
  %92 = getelementptr inbounds [2 x i32], [2 x i32]* %29, i64 0, i64 0
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* %25, align 4
  %95 = xor i32 %93, %94
  store i32 %95, i32* %19, align 4
  %96 = load i32, i32* %19, align 4
  %97 = load i8*, i8** %10, align 8
  %98 = call i32 @l2c(i32 %96, i8* %97)
  %99 = getelementptr inbounds [2 x i32], [2 x i32]* %29, i64 0, i64 1
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* %26, align 4
  %102 = xor i32 %100, %101
  store i32 %102, i32* %20, align 4
  %103 = load i32, i32* %20, align 4
  %104 = load i8*, i8** %10, align 8
  %105 = call i32 @l2c(i32 %103, i8* %104)
  br label %106

106:                                              ; preds = %67
  %107 = load i64, i64* %28, align 8
  %108 = sub nsw i64 %107, 8
  store i64 %108, i64* %28, align 8
  br label %64

109:                                              ; preds = %64
  %110 = load i64, i64* %28, align 8
  %111 = icmp ne i64 %110, -8
  br i1 %111, label %112, label %151

112:                                              ; preds = %109
  %113 = load i8*, i8** %9, align 8
  %114 = load i32, i32* %17, align 4
  %115 = load i32, i32* %18, align 4
  %116 = load i64, i64* %28, align 8
  %117 = add nsw i64 %116, 8
  %118 = call i32 @c2ln(i8* %113, i32 %114, i32 %115, i64 %117)
  %119 = load i32, i32* %19, align 4
  %120 = load i32, i32* %23, align 4
  %121 = xor i32 %119, %120
  %122 = load i32, i32* %17, align 4
  %123 = xor i32 %122, %121
  store i32 %123, i32* %17, align 4
  %124 = load i32, i32* %17, align 4
  %125 = getelementptr inbounds [2 x i32], [2 x i32]* %29, i64 0, i64 0
  store i32 %124, i32* %125, align 4
  %126 = load i32, i32* %20, align 4
  %127 = load i32, i32* %24, align 4
  %128 = xor i32 %126, %127
  %129 = load i32, i32* %18, align 4
  %130 = xor i32 %129, %128
  store i32 %130, i32* %18, align 4
  %131 = load i32, i32* %18, align 4
  %132 = getelementptr inbounds [2 x i32], [2 x i32]* %29, i64 0, i64 1
  store i32 %131, i32* %132, align 4
  %133 = getelementptr inbounds [2 x i32], [2 x i32]* %29, i64 0, i64 0
  %134 = load i32*, i32** %12, align 8
  %135 = load i32, i32* @DES_ENCRYPT, align 4
  %136 = call i32 @DES_encrypt1(i32* %133, i32* %134, i32 %135)
  %137 = getelementptr inbounds [2 x i32], [2 x i32]* %29, i64 0, i64 0
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* %25, align 4
  %140 = xor i32 %138, %139
  store i32 %140, i32* %19, align 4
  %141 = load i32, i32* %19, align 4
  %142 = load i8*, i8** %10, align 8
  %143 = call i32 @l2c(i32 %141, i8* %142)
  %144 = getelementptr inbounds [2 x i32], [2 x i32]* %29, i64 0, i64 1
  %145 = load i32, i32* %144, align 4
  %146 = load i32, i32* %26, align 4
  %147 = xor i32 %145, %146
  store i32 %147, i32* %20, align 4
  %148 = load i32, i32* %20, align 4
  %149 = load i8*, i8** %10, align 8
  %150 = call i32 @l2c(i32 %148, i8* %149)
  br label %151

151:                                              ; preds = %112, %109
  %152 = load i8**, i8*** %13, align 8
  %153 = load i8*, i8** %152, align 8
  %154 = getelementptr inbounds i8, i8* %153, i64 0
  store i8* %154, i8** %30, align 8
  %155 = load i32, i32* %19, align 4
  %156 = load i8*, i8** %30, align 8
  %157 = call i32 @l2c(i32 %155, i8* %156)
  %158 = load i32, i32* %20, align 4
  %159 = load i8*, i8** %30, align 8
  %160 = call i32 @l2c(i32 %158, i8* %159)
  br label %267

161:                                              ; preds = %8
  %162 = load i8*, i8** %30, align 8
  %163 = load i32, i32* %21, align 4
  %164 = call i32 @c2l(i8* %162, i32 %163)
  %165 = load i8*, i8** %30, align 8
  %166 = load i32, i32* %22, align 4
  %167 = call i32 @c2l(i8* %165, i32 %166)
  %168 = load i64, i64* %28, align 8
  %169 = sub nsw i64 %168, 8
  store i64 %169, i64* %28, align 8
  br label %170

170:                                              ; preds = %212, %161
  %171 = load i64, i64* %28, align 8
  %172 = icmp sgt i64 %171, 0
  br i1 %172, label %173, label %215

173:                                              ; preds = %170
  %174 = load i8*, i8** %9, align 8
  %175 = load i32, i32* %17, align 4
  %176 = call i32 @c2l(i8* %174, i32 %175)
  %177 = load i32, i32* %17, align 4
  %178 = load i32, i32* %25, align 4
  %179 = xor i32 %177, %178
  %180 = getelementptr inbounds [2 x i32], [2 x i32]* %29, i64 0, i64 0
  store i32 %179, i32* %180, align 4
  %181 = load i8*, i8** %9, align 8
  %182 = load i32, i32* %18, align 4
  %183 = call i32 @c2l(i8* %181, i32 %182)
  %184 = load i32, i32* %18, align 4
  %185 = load i32, i32* %26, align 4
  %186 = xor i32 %184, %185
  %187 = getelementptr inbounds [2 x i32], [2 x i32]* %29, i64 0, i64 1
  store i32 %186, i32* %187, align 4
  %188 = getelementptr inbounds [2 x i32], [2 x i32]* %29, i64 0, i64 0
  %189 = load i32*, i32** %12, align 8
  %190 = load i32, i32* @DES_DECRYPT, align 4
  %191 = call i32 @DES_encrypt1(i32* %188, i32* %189, i32 %190)
  %192 = getelementptr inbounds [2 x i32], [2 x i32]* %29, i64 0, i64 0
  %193 = load i32, i32* %192, align 4
  %194 = load i32, i32* %21, align 4
  %195 = xor i32 %193, %194
  %196 = load i32, i32* %23, align 4
  %197 = xor i32 %195, %196
  store i32 %197, i32* %19, align 4
  %198 = getelementptr inbounds [2 x i32], [2 x i32]* %29, i64 0, i64 1
  %199 = load i32, i32* %198, align 4
  %200 = load i32, i32* %22, align 4
  %201 = xor i32 %199, %200
  %202 = load i32, i32* %24, align 4
  %203 = xor i32 %201, %202
  store i32 %203, i32* %20, align 4
  %204 = load i32, i32* %19, align 4
  %205 = load i8*, i8** %10, align 8
  %206 = call i32 @l2c(i32 %204, i8* %205)
  %207 = load i32, i32* %20, align 4
  %208 = load i8*, i8** %10, align 8
  %209 = call i32 @l2c(i32 %207, i8* %208)
  %210 = load i32, i32* %17, align 4
  store i32 %210, i32* %21, align 4
  %211 = load i32, i32* %18, align 4
  store i32 %211, i32* %22, align 4
  br label %212

212:                                              ; preds = %173
  %213 = load i64, i64* %28, align 8
  %214 = sub nsw i64 %213, 8
  store i64 %214, i64* %28, align 8
  br label %170

215:                                              ; preds = %170
  %216 = load i64, i64* %28, align 8
  %217 = icmp ne i64 %216, -8
  br i1 %217, label %218, label %257

218:                                              ; preds = %215
  %219 = load i8*, i8** %9, align 8
  %220 = load i32, i32* %17, align 4
  %221 = call i32 @c2l(i8* %219, i32 %220)
  %222 = load i32, i32* %17, align 4
  %223 = load i32, i32* %25, align 4
  %224 = xor i32 %222, %223
  %225 = getelementptr inbounds [2 x i32], [2 x i32]* %29, i64 0, i64 0
  store i32 %224, i32* %225, align 4
  %226 = load i8*, i8** %9, align 8
  %227 = load i32, i32* %18, align 4
  %228 = call i32 @c2l(i8* %226, i32 %227)
  %229 = load i32, i32* %18, align 4
  %230 = load i32, i32* %26, align 4
  %231 = xor i32 %229, %230
  %232 = getelementptr inbounds [2 x i32], [2 x i32]* %29, i64 0, i64 1
  store i32 %231, i32* %232, align 4
  %233 = getelementptr inbounds [2 x i32], [2 x i32]* %29, i64 0, i64 0
  %234 = load i32*, i32** %12, align 8
  %235 = load i32, i32* @DES_DECRYPT, align 4
  %236 = call i32 @DES_encrypt1(i32* %233, i32* %234, i32 %235)
  %237 = getelementptr inbounds [2 x i32], [2 x i32]* %29, i64 0, i64 0
  %238 = load i32, i32* %237, align 4
  %239 = load i32, i32* %21, align 4
  %240 = xor i32 %238, %239
  %241 = load i32, i32* %23, align 4
  %242 = xor i32 %240, %241
  store i32 %242, i32* %19, align 4
  %243 = getelementptr inbounds [2 x i32], [2 x i32]* %29, i64 0, i64 1
  %244 = load i32, i32* %243, align 4
  %245 = load i32, i32* %22, align 4
  %246 = xor i32 %244, %245
  %247 = load i32, i32* %24, align 4
  %248 = xor i32 %246, %247
  store i32 %248, i32* %20, align 4
  %249 = load i32, i32* %19, align 4
  %250 = load i32, i32* %20, align 4
  %251 = load i8*, i8** %10, align 8
  %252 = load i64, i64* %28, align 8
  %253 = add nsw i64 %252, 8
  %254 = call i32 @l2cn(i32 %249, i32 %250, i8* %251, i64 %253)
  %255 = load i32, i32* %17, align 4
  store i32 %255, i32* %21, align 4
  %256 = load i32, i32* %18, align 4
  store i32 %256, i32* %22, align 4
  br label %257

257:                                              ; preds = %218, %215
  %258 = load i8**, i8*** %13, align 8
  %259 = load i8*, i8** %258, align 8
  %260 = getelementptr inbounds i8, i8* %259, i64 0
  store i8* %260, i8** %30, align 8
  %261 = load i32, i32* %21, align 4
  %262 = load i8*, i8** %30, align 8
  %263 = call i32 @l2c(i32 %261, i8* %262)
  %264 = load i32, i32* %22, align 4
  %265 = load i8*, i8** %30, align 8
  %266 = call i32 @l2c(i32 %264, i8* %265)
  br label %267

267:                                              ; preds = %257, %151
  store i32 0, i32* %22, align 4
  store i32 0, i32* %21, align 4
  store i32 0, i32* %20, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %26, align 4
  store i32 0, i32* %25, align 4
  store i32 0, i32* %24, align 4
  store i32 0, i32* %23, align 4
  %268 = getelementptr inbounds [2 x i32], [2 x i32]* %29, i64 0, i64 1
  store i32 0, i32* %268, align 4
  %269 = getelementptr inbounds [2 x i32], [2 x i32]* %29, i64 0, i64 0
  store i32 0, i32* %269, align 4
  ret void
}

declare dso_local i32 @c2l(i8*, i32) #1

declare dso_local i32 @DES_encrypt1(i32*, i32*, i32) #1

declare dso_local i32 @l2c(i32, i8*) #1

declare dso_local i32 @c2ln(i8*, i32, i32, i64) #1

declare dso_local i32 @l2cn(i32, i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
