; ModuleID = '/home/carl/AnghaBench/openssl/crypto/bn/extr_bn_rand.c_bnrand.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/bn/extr_bn_rand.c_bnrand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BN_RAND_TOP_ANY = common dso_local global i32 0, align 4
@BN_RAND_BOTTOM_ANY = common dso_local global i32 0, align 4
@BN_F_BNRAND = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@NORMAL = common dso_local global i64 0, align 8
@TESTING = common dso_local global i64 0, align 8
@BN_R_BITS_TOO_SMALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i32*, i32, i32, i32, i32*)* @bnrand to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnrand(i64 %0, i32* %1, i32 %2, i32 %3, i32 %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i8, align 1
  store i64 %0, i64* %8, align 8
  store i32* %1, i32** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  store i8* null, i8** %14, align 8
  store i32 0, i32* %16, align 4
  %23 = load i32*, i32** %13, align 8
  %24 = call i32* @bn_get_lib_ctx(i32* %23)
  store i32* %24, i32** %20, align 8
  %25 = load i32, i32* %10, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %39

27:                                               ; preds = %6
  %28 = load i32, i32* %11, align 4
  %29 = load i32, i32* @BN_RAND_TOP_ANY, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %35, label %31

31:                                               ; preds = %27
  %32 = load i32, i32* %12, align 4
  %33 = load i32, i32* @BN_RAND_BOTTOM_ANY, align 4
  %34 = icmp ne i32 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %31, %27
  br label %219

36:                                               ; preds = %31
  %37 = load i32*, i32** %9, align 8
  %38 = call i32 @BN_zero(i32* %37)
  store i32 1, i32* %7, align 4
  br label %223

39:                                               ; preds = %6
  %40 = load i32, i32* %10, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %48, label %42

42:                                               ; preds = %39
  %43 = load i32, i32* %10, align 4
  %44 = icmp eq i32 %43, 1
  br i1 %44, label %45, label %49

45:                                               ; preds = %42
  %46 = load i32, i32* %11, align 4
  %47 = icmp sgt i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %45, %39
  br label %219

49:                                               ; preds = %45, %42
  %50 = load i32, i32* %10, align 4
  %51 = add nsw i32 %50, 7
  %52 = sdiv i32 %51, 8
  store i32 %52, i32* %18, align 4
  %53 = load i32, i32* %10, align 4
  %54 = sub nsw i32 %53, 1
  %55 = srem i32 %54, 8
  store i32 %55, i32* %17, align 4
  %56 = load i32, i32* %17, align 4
  %57 = add nsw i32 %56, 1
  %58 = shl i32 255, %57
  store i32 %58, i32* %19, align 4
  %59 = load i32, i32* %18, align 4
  %60 = call i8* @OPENSSL_malloc(i32 %59)
  store i8* %60, i8** %14, align 8
  %61 = load i8*, i8** %14, align 8
  %62 = icmp eq i8* %61, null
  br i1 %62, label %63, label %67

63:                                               ; preds = %49
  %64 = load i32, i32* @BN_F_BNRAND, align 4
  %65 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %66 = call i32 @BNerr(i32 %64, i32 %65)
  br label %212

67:                                               ; preds = %49
  %68 = load i64, i64* %8, align 8
  %69 = load i64, i64* @NORMAL, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %76

71:                                               ; preds = %67
  %72 = load i32*, i32** %20, align 8
  %73 = load i8*, i8** %14, align 8
  %74 = load i32, i32* %18, align 4
  %75 = call i64 @rand_bytes_ex(i32* %72, i8* %73, i32 %74)
  br label %81

76:                                               ; preds = %67
  %77 = load i32*, i32** %20, align 8
  %78 = load i8*, i8** %14, align 8
  %79 = load i32, i32* %18, align 4
  %80 = call i64 @rand_priv_bytes_ex(i32* %77, i8* %78, i32 %79)
  br label %81

81:                                               ; preds = %76, %71
  %82 = phi i64 [ %75, %71 ], [ %80, %76 ]
  %83 = trunc i64 %82 to i32
  store i32 %83, i32* %15, align 4
  %84 = load i32, i32* %15, align 4
  %85 = icmp sle i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %81
  br label %212

87:                                               ; preds = %81
  %88 = load i64, i64* %8, align 8
  %89 = load i64, i64* @TESTING, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %144

91:                                               ; preds = %87
  store i32 0, i32* %21, align 4
  br label %92

92:                                               ; preds = %140, %91
  %93 = load i32, i32* %21, align 4
  %94 = load i32, i32* %18, align 4
  %95 = icmp slt i32 %93, %94
  br i1 %95, label %96, label %143

96:                                               ; preds = %92
  %97 = load i32*, i32** %20, align 8
  %98 = call i64 @rand_bytes_ex(i32* %97, i8* %22, i32 1)
  %99 = icmp sle i64 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %96
  br label %212

101:                                              ; preds = %96
  %102 = load i8, i8* %22, align 1
  %103 = zext i8 %102 to i32
  %104 = icmp sge i32 %103, 128
  br i1 %104, label %105, label %119

105:                                              ; preds = %101
  %106 = load i32, i32* %21, align 4
  %107 = icmp sgt i32 %106, 0
  br i1 %107, label %108, label %119

108:                                              ; preds = %105
  %109 = load i8*, i8** %14, align 8
  %110 = load i32, i32* %21, align 4
  %111 = sub nsw i32 %110, 1
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i8, i8* %109, i64 %112
  %114 = load i8, i8* %113, align 1
  %115 = load i8*, i8** %14, align 8
  %116 = load i32, i32* %21, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i8, i8* %115, i64 %117
  store i8 %114, i8* %118, align 1
  br label %139

119:                                              ; preds = %105, %101
  %120 = load i8, i8* %22, align 1
  %121 = zext i8 %120 to i32
  %122 = icmp slt i32 %121, 42
  br i1 %122, label %123, label %128

123:                                              ; preds = %119
  %124 = load i8*, i8** %14, align 8
  %125 = load i32, i32* %21, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i8, i8* %124, i64 %126
  store i8 0, i8* %127, align 1
  br label %138

128:                                              ; preds = %119
  %129 = load i8, i8* %22, align 1
  %130 = zext i8 %129 to i32
  %131 = icmp slt i32 %130, 84
  br i1 %131, label %132, label %137

132:                                              ; preds = %128
  %133 = load i8*, i8** %14, align 8
  %134 = load i32, i32* %21, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i8, i8* %133, i64 %135
  store i8 -1, i8* %136, align 1
  br label %137

137:                                              ; preds = %132, %128
  br label %138

138:                                              ; preds = %137, %123
  br label %139

139:                                              ; preds = %138, %108
  br label %140

140:                                              ; preds = %139
  %141 = load i32, i32* %21, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %21, align 4
  br label %92

143:                                              ; preds = %92
  br label %144

144:                                              ; preds = %143, %87
  %145 = load i32, i32* %11, align 4
  %146 = icmp sge i32 %145, 0
  br i1 %146, label %147, label %183

147:                                              ; preds = %144
  %148 = load i32, i32* %11, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %173

150:                                              ; preds = %147
  %151 = load i32, i32* %17, align 4
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %153, label %162

153:                                              ; preds = %150
  %154 = load i8*, i8** %14, align 8
  %155 = getelementptr inbounds i8, i8* %154, i64 0
  store i8 1, i8* %155, align 1
  %156 = load i8*, i8** %14, align 8
  %157 = getelementptr inbounds i8, i8* %156, i64 1
  %158 = load i8, i8* %157, align 1
  %159 = zext i8 %158 to i32
  %160 = or i32 %159, 128
  %161 = trunc i32 %160 to i8
  store i8 %161, i8* %157, align 1
  br label %172

162:                                              ; preds = %150
  %163 = load i32, i32* %17, align 4
  %164 = sub nsw i32 %163, 1
  %165 = shl i32 3, %164
  %166 = load i8*, i8** %14, align 8
  %167 = getelementptr inbounds i8, i8* %166, i64 0
  %168 = load i8, i8* %167, align 1
  %169 = zext i8 %168 to i32
  %170 = or i32 %169, %165
  %171 = trunc i32 %170 to i8
  store i8 %171, i8* %167, align 1
  br label %172

172:                                              ; preds = %162, %153
  br label %182

173:                                              ; preds = %147
  %174 = load i32, i32* %17, align 4
  %175 = shl i32 1, %174
  %176 = load i8*, i8** %14, align 8
  %177 = getelementptr inbounds i8, i8* %176, i64 0
  %178 = load i8, i8* %177, align 1
  %179 = zext i8 %178 to i32
  %180 = or i32 %179, %175
  %181 = trunc i32 %180 to i8
  store i8 %181, i8* %177, align 1
  br label %182

182:                                              ; preds = %173, %172
  br label %183

183:                                              ; preds = %182, %144
  %184 = load i32, i32* %19, align 4
  %185 = xor i32 %184, -1
  %186 = load i8*, i8** %14, align 8
  %187 = getelementptr inbounds i8, i8* %186, i64 0
  %188 = load i8, i8* %187, align 1
  %189 = zext i8 %188 to i32
  %190 = and i32 %189, %185
  %191 = trunc i32 %190 to i8
  store i8 %191, i8* %187, align 1
  %192 = load i32, i32* %12, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %204

194:                                              ; preds = %183
  %195 = load i8*, i8** %14, align 8
  %196 = load i32, i32* %18, align 4
  %197 = sub nsw i32 %196, 1
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds i8, i8* %195, i64 %198
  %200 = load i8, i8* %199, align 1
  %201 = zext i8 %200 to i32
  %202 = or i32 %201, 1
  %203 = trunc i32 %202 to i8
  store i8 %203, i8* %199, align 1
  br label %204

204:                                              ; preds = %194, %183
  %205 = load i8*, i8** %14, align 8
  %206 = load i32, i32* %18, align 4
  %207 = load i32*, i32** %9, align 8
  %208 = call i32 @BN_bin2bn(i8* %205, i32 %206, i32* %207)
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %211, label %210

210:                                              ; preds = %204
  br label %212

211:                                              ; preds = %204
  store i32 1, i32* %16, align 4
  br label %212

212:                                              ; preds = %211, %210, %100, %86, %63
  %213 = load i8*, i8** %14, align 8
  %214 = load i32, i32* %18, align 4
  %215 = call i32 @OPENSSL_clear_free(i8* %213, i32 %214)
  %216 = load i32*, i32** %9, align 8
  %217 = call i32 @bn_check_top(i32* %216)
  %218 = load i32, i32* %16, align 4
  store i32 %218, i32* %7, align 4
  br label %223

219:                                              ; preds = %48, %35
  %220 = load i32, i32* @BN_F_BNRAND, align 4
  %221 = load i32, i32* @BN_R_BITS_TOO_SMALL, align 4
  %222 = call i32 @BNerr(i32 %220, i32 %221)
  store i32 0, i32* %7, align 4
  br label %223

223:                                              ; preds = %219, %212, %36
  %224 = load i32, i32* %7, align 4
  ret i32 %224
}

declare dso_local i32* @bn_get_lib_ctx(i32*) #1

declare dso_local i32 @BN_zero(i32*) #1

declare dso_local i8* @OPENSSL_malloc(i32) #1

declare dso_local i32 @BNerr(i32, i32) #1

declare dso_local i64 @rand_bytes_ex(i32*, i8*, i32) #1

declare dso_local i64 @rand_priv_bytes_ex(i32*, i8*, i32) #1

declare dso_local i32 @BN_bin2bn(i8*, i32, i32*) #1

declare dso_local i32 @OPENSSL_clear_free(i8*, i32) #1

declare dso_local i32 @bn_check_top(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
