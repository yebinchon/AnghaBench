; ModuleID = '/home/carl/AnghaBench/openssl/crypto/bn/extr_bn_prime.c_probable_prime_dh.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/bn/extr_bn_prime.c_probable_prime_dh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BN_MASK2 = common dso_local global i64 0, align 8
@primes = common dso_local global i64* null, align 8
@BN_RAND_TOP_ONE = common dso_local global i32 0, align 4
@BN_RAND_BOTTOM_ODD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32, i64*, i32*, i32*, i32*)* @probable_prime_dh to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @probable_prime_dh(i32* %0, i32 %1, i32 %2, i64* %3, i32* %4, i32* %5, i32* %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  store i32* %0, i32** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i64* %3, i64** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32* %6, i32** %14, align 8
  store i32 0, i32* %16, align 4
  %22 = load i32, i32* %9, align 4
  %23 = call i32 @calc_trial_divisions(i32 %22)
  store i32 %23, i32* %19, align 4
  %24 = load i64, i64* @BN_MASK2, align 8
  %25 = load i64*, i64** @primes, align 8
  %26 = load i32, i32* %19, align 4
  %27 = sub nsw i32 %26, 1
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i64, i64* %25, i64 %28
  %30 = load i64, i64* %29, align 8
  %31 = sub nsw i64 %24, %30
  store i64 %31, i64* %20, align 8
  %32 = load i32*, i32** %14, align 8
  %33 = call i32 @BN_CTX_start(i32* %32)
  %34 = load i32*, i32** %14, align 8
  %35 = call i32* @BN_CTX_get(i32* %34)
  store i32* %35, i32** %17, align 8
  %36 = icmp eq i32* %35, null
  br i1 %36, label %37, label %38

37:                                               ; preds = %7
  br label %223

38:                                               ; preds = %7
  %39 = load i64, i64* %20, align 8
  %40 = load i64, i64* @BN_MASK2, align 8
  %41 = load i32*, i32** %12, align 8
  %42 = call i64 @BN_get_word(i32* %41)
  %43 = sub nsw i64 %40, %42
  %44 = icmp sgt i64 %39, %43
  br i1 %44, label %45, label %50

45:                                               ; preds = %38
  %46 = load i64, i64* @BN_MASK2, align 8
  %47 = load i32*, i32** %12, align 8
  %48 = call i64 @BN_get_word(i32* %47)
  %49 = sub nsw i64 %46, %48
  store i64 %49, i64* %20, align 8
  br label %50

50:                                               ; preds = %45, %38
  br label %51

51:                                               ; preds = %210, %50
  %52 = load i32*, i32** %8, align 8
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* @BN_RAND_TOP_ONE, align 4
  %55 = load i32, i32* @BN_RAND_BOTTOM_ODD, align 4
  %56 = load i32*, i32** %14, align 8
  %57 = call i32 @BN_rand_ex(i32* %52, i32 %53, i32 %54, i32 %55, i32* %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %51
  br label %223

60:                                               ; preds = %51
  %61 = load i32*, i32** %17, align 8
  %62 = load i32*, i32** %8, align 8
  %63 = load i32*, i32** %12, align 8
  %64 = load i32*, i32** %14, align 8
  %65 = call i32 @BN_mod(i32* %61, i32* %62, i32* %63, i32* %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %60
  br label %223

68:                                               ; preds = %60
  %69 = load i32*, i32** %8, align 8
  %70 = load i32*, i32** %8, align 8
  %71 = load i32*, i32** %17, align 8
  %72 = call i32 @BN_sub(i32* %69, i32* %70, i32* %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %75, label %74

74:                                               ; preds = %68
  br label %223

75:                                               ; preds = %68
  %76 = load i32*, i32** %13, align 8
  %77 = icmp eq i32* %76, null
  br i1 %77, label %78, label %89

78:                                               ; preds = %75
  %79 = load i32*, i32** %8, align 8
  %80 = load i32, i32* %10, align 4
  %81 = icmp ne i32 %80, 0
  %82 = zext i1 %81 to i64
  %83 = select i1 %81, i32 3, i32 1
  %84 = zext i32 %83 to i64
  %85 = call i32 @BN_add_word(i32* %79, i64 %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %88, label %87

87:                                               ; preds = %78
  br label %223

88:                                               ; preds = %78
  br label %97

89:                                               ; preds = %75
  %90 = load i32*, i32** %8, align 8
  %91 = load i32*, i32** %8, align 8
  %92 = load i32*, i32** %13, align 8
  %93 = call i32 @BN_add(i32* %90, i32* %91, i32* %92)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %96, label %95

95:                                               ; preds = %89
  br label %223

96:                                               ; preds = %89
  br label %97

97:                                               ; preds = %96, %88
  %98 = load i32*, i32** %8, align 8
  %99 = call i32 @BN_num_bits(i32* %98)
  %100 = load i32, i32* %9, align 4
  %101 = icmp slt i32 %99, %100
  br i1 %101, label %111, label %102

102:                                              ; preds = %97
  %103 = load i32*, i32** %8, align 8
  %104 = call i64 @BN_get_word(i32* %103)
  %105 = load i32, i32* %10, align 4
  %106 = icmp ne i32 %105, 0
  %107 = zext i1 %106 to i64
  %108 = select i1 %106, i32 5, i32 3
  %109 = zext i32 %108 to i64
  %110 = icmp slt i64 %104, %109
  br i1 %110, label %111, label %119

111:                                              ; preds = %102, %97
  %112 = load i32*, i32** %8, align 8
  %113 = load i32*, i32** %8, align 8
  %114 = load i32*, i32** %12, align 8
  %115 = call i32 @BN_add(i32* %112, i32* %113, i32* %114)
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %118, label %117

117:                                              ; preds = %111
  br label %223

118:                                              ; preds = %111
  br label %119

119:                                              ; preds = %118, %102
  store i32 1, i32* %15, align 4
  br label %120

120:                                              ; preds = %141, %119
  %121 = load i32, i32* %15, align 4
  %122 = load i32, i32* %19, align 4
  %123 = icmp slt i32 %121, %122
  br i1 %123, label %124, label %144

124:                                              ; preds = %120
  %125 = load i32*, i32** %8, align 8
  %126 = load i64*, i64** @primes, align 8
  %127 = load i32, i32* %15, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i64, i64* %126, i64 %128
  %130 = load i64, i64* %129, align 8
  %131 = call i64 @BN_mod_word(i32* %125, i64 %130)
  store i64 %131, i64* %21, align 8
  %132 = load i64, i64* %21, align 8
  %133 = icmp eq i64 %132, -1
  br i1 %133, label %134, label %135

134:                                              ; preds = %124
  br label %223

135:                                              ; preds = %124
  %136 = load i64, i64* %21, align 8
  %137 = load i64*, i64** %11, align 8
  %138 = load i32, i32* %15, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i64, i64* %137, i64 %139
  store i64 %136, i64* %140, align 8
  br label %141

141:                                              ; preds = %135
  %142 = load i32, i32* %15, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %15, align 4
  br label %120

144:                                              ; preds = %120
  store i64 0, i64* %18, align 8
  br label %145

145:                                              ; preds = %211, %144
  store i32 1, i32* %15, align 4
  br label %146

146:                                              ; preds = %213, %145
  %147 = load i32, i32* %15, align 4
  %148 = load i32, i32* %19, align 4
  %149 = icmp slt i32 %147, %148
  br i1 %149, label %150, label %216

150:                                              ; preds = %146
  %151 = load i32, i32* %9, align 4
  %152 = icmp sle i32 %151, 31
  br i1 %152, label %153, label %169

153:                                              ; preds = %150
  %154 = load i64, i64* %18, align 8
  %155 = icmp sle i64 %154, 2147483647
  br i1 %155, label %156, label %169

156:                                              ; preds = %153
  %157 = load i64*, i64** @primes, align 8
  %158 = load i32, i32* %15, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i64, i64* %157, i64 %159
  %161 = load i64, i64* %160, align 8
  %162 = call i64 @square(i64 %161)
  %163 = load i32*, i32** %8, align 8
  %164 = call i64 @BN_get_word(i32* %163)
  %165 = load i64, i64* %18, align 8
  %166 = add nsw i64 %164, %165
  %167 = icmp sgt i64 %162, %166
  br i1 %167, label %168, label %169

168:                                              ; preds = %156
  br label %216

169:                                              ; preds = %156, %153, %150
  %170 = load i32, i32* %10, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %187

172:                                              ; preds = %169
  %173 = load i64*, i64** %11, align 8
  %174 = load i32, i32* %15, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i64, i64* %173, i64 %175
  %177 = load i64, i64* %176, align 8
  %178 = load i64, i64* %18, align 8
  %179 = add nsw i64 %177, %178
  %180 = load i64*, i64** @primes, align 8
  %181 = load i32, i32* %15, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i64, i64* %180, i64 %182
  %184 = load i64, i64* %183, align 8
  %185 = srem i64 %179, %184
  %186 = icmp sle i64 %185, 1
  br i1 %186, label %202, label %212

187:                                              ; preds = %169
  %188 = load i64*, i64** %11, align 8
  %189 = load i32, i32* %15, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds i64, i64* %188, i64 %190
  %192 = load i64, i64* %191, align 8
  %193 = load i64, i64* %18, align 8
  %194 = add nsw i64 %192, %193
  %195 = load i64*, i64** @primes, align 8
  %196 = load i32, i32* %15, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds i64, i64* %195, i64 %197
  %199 = load i64, i64* %198, align 8
  %200 = srem i64 %194, %199
  %201 = icmp eq i64 %200, 0
  br i1 %201, label %202, label %212

202:                                              ; preds = %187, %172
  %203 = load i32*, i32** %12, align 8
  %204 = call i64 @BN_get_word(i32* %203)
  %205 = load i64, i64* %18, align 8
  %206 = add nsw i64 %205, %204
  store i64 %206, i64* %18, align 8
  %207 = load i64, i64* %18, align 8
  %208 = load i64, i64* %20, align 8
  %209 = icmp sgt i64 %207, %208
  br i1 %209, label %210, label %211

210:                                              ; preds = %202
  br label %51

211:                                              ; preds = %202
  br label %145

212:                                              ; preds = %187, %172
  br label %213

213:                                              ; preds = %212
  %214 = load i32, i32* %15, align 4
  %215 = add nsw i32 %214, 1
  store i32 %215, i32* %15, align 4
  br label %146

216:                                              ; preds = %168, %146
  %217 = load i32*, i32** %8, align 8
  %218 = load i64, i64* %18, align 8
  %219 = call i32 @BN_add_word(i32* %217, i64 %218)
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %222, label %221

221:                                              ; preds = %216
  br label %223

222:                                              ; preds = %216
  store i32 1, i32* %16, align 4
  br label %223

223:                                              ; preds = %222, %221, %134, %117, %95, %87, %74, %67, %59, %37
  %224 = load i32*, i32** %14, align 8
  %225 = call i32 @BN_CTX_end(i32* %224)
  %226 = load i32*, i32** %8, align 8
  %227 = call i32 @bn_check_top(i32* %226)
  %228 = load i32, i32* %16, align 4
  ret i32 %228
}

declare dso_local i32 @calc_trial_divisions(i32) #1

declare dso_local i32 @BN_CTX_start(i32*) #1

declare dso_local i32* @BN_CTX_get(i32*) #1

declare dso_local i64 @BN_get_word(i32*) #1

declare dso_local i32 @BN_rand_ex(i32*, i32, i32, i32, i32*) #1

declare dso_local i32 @BN_mod(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @BN_sub(i32*, i32*, i32*) #1

declare dso_local i32 @BN_add_word(i32*, i64) #1

declare dso_local i32 @BN_add(i32*, i32*, i32*) #1

declare dso_local i32 @BN_num_bits(i32*) #1

declare dso_local i64 @BN_mod_word(i32*, i64) #1

declare dso_local i64 @square(i64) #1

declare dso_local i32 @BN_CTX_end(i32*) #1

declare dso_local i32 @bn_check_top(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
