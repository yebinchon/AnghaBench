; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_ecdsatest.c_x9_62_tests.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_ecdsatest.c_x9_62_tests.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i8*, i8*, i8*, i8*, i32, i32 }

@EVP_MAX_MD_SIZE = common dso_local global i32 0, align 4
@ecdsa_cavs_kats = common dso_local global %struct.TYPE_2__* null, align 8
@numbers = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [24 x i8] c"ECDSA KATs for curve %s\00", align 1
@use_fake = common dso_local global i32 0, align 4
@POINT_CONVERSION_UNCOMPRESSED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @x9_62_tests to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @x9_62_tests(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i8*, align 8
  %26 = alloca i8*, align 8
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %5, align 4
  store i8* null, i8** %6, align 8
  store i8* null, i8** %7, align 8
  store i8* null, i8** %8, align 8
  store i8* null, i8** %9, align 8
  store i8* null, i8** %10, align 8
  store i8* null, i8** %11, align 8
  %27 = load i32, i32* @EVP_MAX_MD_SIZE, align 4
  %28 = zext i32 %27 to i64
  %29 = call i8* @llvm.stacksave()
  store i8* %29, i8** %12, align 8
  %30 = alloca i8, i64 %28, align 16
  store i64 %28, i64* %13, align 8
  store i32 0, i32* %14, align 4
  store i64 0, i64* %16, align 8
  store i8* null, i8** %18, align 8
  store i8* null, i8** %19, align 8
  store i8* null, i8** %20, align 8
  store i8* null, i8** %21, align 8
  store i8* null, i8** %22, align 8
  store i8* null, i8** %23, align 8
  store i8* null, i8** %24, align 8
  store i8* null, i8** %25, align 8
  store i8* null, i8** %26, align 8
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ecdsa_cavs_kats, align 8
  %32 = load i32, i32* %2, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  store i32 %36, i32* %3, align 4
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ecdsa_cavs_kats, align 8
  %38 = load i32, i32* %2, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %4, align 4
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ecdsa_cavs_kats, align 8
  %44 = load i32, i32* %2, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 2
  %48 = load i8*, i8** %47, align 8
  store i8* %48, i8** %6, align 8
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ecdsa_cavs_kats, align 8
  %50 = load i32, i32* %2, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 3
  %54 = load i8*, i8** %53, align 8
  store i8* %54, i8** %7, align 8
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ecdsa_cavs_kats, align 8
  %56 = load i32, i32* %2, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 4
  %60 = load i8*, i8** %59, align 8
  store i8* %60, i8** %8, align 8
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ecdsa_cavs_kats, align 8
  %62 = load i32, i32* %2, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 7
  %66 = load i32, i32* %65, align 4
  %67 = load i32*, i32** @numbers, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 0
  store i32 %66, i32* %68, align 4
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ecdsa_cavs_kats, align 8
  %70 = load i32, i32* %2, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 6
  %74 = load i32, i32* %73, align 8
  %75 = load i32*, i32** @numbers, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 1
  store i32 %74, i32* %76, align 4
  %77 = load i32, i32* %3, align 4
  %78 = call i32 @OBJ_nid2sn(i32 %77)
  %79 = call i32 @TEST_info(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %78)
  %80 = call i8* (...) @EVP_MD_CTX_new()
  store i8* %80, i8** %18, align 8
  %81 = call i32 @TEST_ptr(i8* %80)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %134

83:                                               ; preds = %1
  %84 = load i8*, i8** %8, align 8
  %85 = call i8* @OPENSSL_hexstr2buf(i8* %84, i64* %16)
  store i8* %85, i8** %11, align 8
  %86 = call i32 @TEST_ptr(i8* %85)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %134

88:                                               ; preds = %83
  %89 = load i8*, i8** %18, align 8
  %90 = load i32, i32* %4, align 4
  %91 = call i32 @EVP_get_digestbynid(i32 %90)
  %92 = call i64 @EVP_DigestInit_ex(i8* %89, i32 %91, i32* null)
  %93 = call i32 @TEST_true(i64 %92)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %134

95:                                               ; preds = %88
  %96 = load i8*, i8** %18, align 8
  %97 = load i8*, i8** %11, align 8
  %98 = load i64, i64* %16, align 8
  %99 = call i64 @EVP_DigestUpdate(i8* %96, i8* %97, i64 %98)
  %100 = call i32 @TEST_true(i64 %99)
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %134

102:                                              ; preds = %95
  %103 = load i8*, i8** %18, align 8
  %104 = call i64 @EVP_DigestFinal_ex(i8* %103, i8* %30, i32* %14)
  %105 = call i32 @TEST_true(i64 %104)
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %134

107:                                              ; preds = %102
  %108 = load i32, i32* %3, align 4
  %109 = call i8* @EC_KEY_new_by_curve_name(i32 %108)
  store i8* %109, i8** %19, align 8
  %110 = call i32 @TEST_ptr(i8* %109)
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %134

112:                                              ; preds = %107
  %113 = call i8* (...) @BN_new()
  store i8* %113, i8** %21, align 8
  %114 = call i32 @TEST_ptr(i8* %113)
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %134

116:                                              ; preds = %112
  %117 = call i8* (...) @BN_new()
  store i8* %117, i8** %22, align 8
  %118 = call i32 @TEST_ptr(i8* %117)
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %134

120:                                              ; preds = %116
  %121 = load i8*, i8** %6, align 8
  %122 = call i64 @BN_hex2bn(i8** %21, i8* %121)
  %123 = call i32 @TEST_true(i64 %122)
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %134

125:                                              ; preds = %120
  %126 = load i8*, i8** %7, align 8
  %127 = call i64 @BN_hex2bn(i8** %22, i8* %126)
  %128 = call i32 @TEST_true(i64 %127)
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %134

130:                                              ; preds = %125
  %131 = call i64 (...) @change_rand()
  %132 = call i32 @TEST_true(i64 %131)
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %135, label %134

134:                                              ; preds = %130, %125, %120, %116, %112, %107, %102, %95, %88, %83, %1
  br label %205

135:                                              ; preds = %130
  store i32 1, i32* @use_fake, align 4
  %136 = load i8*, i8** %19, align 8
  %137 = call i64 @EC_KEY_generate_key(i8* %136)
  %138 = call i32 @TEST_true(i64 %137)
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %169

140:                                              ; preds = %135
  %141 = load i8*, i8** %19, align 8
  %142 = load i32, i32* @POINT_CONVERSION_UNCOMPRESSED, align 4
  %143 = call i64 @EC_KEY_key2buf(i8* %141, i32 %142, i8** %9, i32* null)
  store i64 %143, i64* %17, align 8
  %144 = call i32 @TEST_true(i64 %143)
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %169

146:                                              ; preds = %140
  %147 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ecdsa_cavs_kats, align 8
  %148 = load i32, i32* %2, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %147, i64 %149
  %151 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %150, i32 0, i32 5
  %152 = load i8*, i8** %151, align 8
  %153 = call i8* @OPENSSL_hexstr2buf(i8* %152, i64* %15)
  store i8* %153, i8** %10, align 8
  %154 = call i32 @TEST_ptr(i8* %153)
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %169

156:                                              ; preds = %146
  %157 = load i64, i64* %15, align 8
  %158 = load i64, i64* %17, align 8
  %159 = trunc i64 %158 to i32
  %160 = call i32 @TEST_int_eq(i64 %157, i32 %159)
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %169

162:                                              ; preds = %156
  %163 = load i8*, i8** %10, align 8
  %164 = load i64, i64* %15, align 8
  %165 = load i8*, i8** %9, align 8
  %166 = load i64, i64* %17, align 8
  %167 = call i32 @TEST_mem_eq(i8* %163, i64 %164, i8* %165, i64 %166)
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %170, label %169

169:                                              ; preds = %162, %156, %146, %140, %135
  br label %205

170:                                              ; preds = %162
  store i32 1, i32* @use_fake, align 4
  %171 = load i8*, i8** %19, align 8
  %172 = call i64 @ECDSA_sign_setup(i8* %171, i32* null, i8** %23, i8** %24)
  %173 = call i32 @TEST_true(i64 %172)
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %190

175:                                              ; preds = %170
  %176 = load i32, i32* %14, align 4
  %177 = load i8*, i8** %23, align 8
  %178 = load i8*, i8** %24, align 8
  %179 = load i8*, i8** %19, align 8
  %180 = call i8* @ECDSA_do_sign_ex(i8* %30, i32 %176, i8* %177, i8* %178, i8* %179)
  store i8* %180, i8** %20, align 8
  %181 = call i32 @TEST_ptr(i8* %180)
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %190

183:                                              ; preds = %175
  %184 = load i32, i32* %14, align 4
  %185 = load i8*, i8** %20, align 8
  %186 = load i8*, i8** %19, align 8
  %187 = call i64 @ECDSA_do_verify(i8* %30, i32 %184, i8* %185, i8* %186)
  %188 = call i32 @TEST_int_eq(i64 %187, i32 1)
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %191, label %190

190:                                              ; preds = %183, %175, %170
  br label %205

191:                                              ; preds = %183
  %192 = load i8*, i8** %20, align 8
  %193 = call i32 @ECDSA_SIG_get0(i8* %192, i8** %25, i8** %26)
  %194 = load i8*, i8** %25, align 8
  %195 = load i8*, i8** %21, align 8
  %196 = call i32 @TEST_BN_eq(i8* %194, i8* %195)
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %203

198:                                              ; preds = %191
  %199 = load i8*, i8** %26, align 8
  %200 = load i8*, i8** %22, align 8
  %201 = call i32 @TEST_BN_eq(i8* %199, i8* %200)
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %204, label %203

203:                                              ; preds = %198, %191
  br label %205

204:                                              ; preds = %198
  store i32 1, i32* %5, align 4
  br label %205

205:                                              ; preds = %204, %203, %190, %169, %134
  %206 = call i64 (...) @restore_rand()
  %207 = call i32 @TEST_true(i64 %206)
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %210, label %209

209:                                              ; preds = %205
  store i32 0, i32* %5, align 4
  br label %210

210:                                              ; preds = %209, %205
  %211 = load i8*, i8** %11, align 8
  %212 = call i32 @OPENSSL_free(i8* %211)
  %213 = load i8*, i8** %9, align 8
  %214 = call i32 @OPENSSL_free(i8* %213)
  %215 = load i8*, i8** %10, align 8
  %216 = call i32 @OPENSSL_free(i8* %215)
  %217 = load i8*, i8** %19, align 8
  %218 = call i32 @EC_KEY_free(i8* %217)
  %219 = load i8*, i8** %20, align 8
  %220 = call i32 @ECDSA_SIG_free(i8* %219)
  %221 = load i8*, i8** %21, align 8
  %222 = call i32 @BN_free(i8* %221)
  %223 = load i8*, i8** %22, align 8
  %224 = call i32 @BN_free(i8* %223)
  %225 = load i8*, i8** %18, align 8
  %226 = call i32 @EVP_MD_CTX_free(i8* %225)
  %227 = load i8*, i8** %23, align 8
  %228 = call i32 @BN_clear_free(i8* %227)
  %229 = load i8*, i8** %24, align 8
  %230 = call i32 @BN_clear_free(i8* %229)
  %231 = load i32, i32* %5, align 4
  %232 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %232)
  ret i32 %231
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @TEST_info(i8*, i32) #2

declare dso_local i32 @OBJ_nid2sn(i32) #2

declare dso_local i32 @TEST_ptr(i8*) #2

declare dso_local i8* @EVP_MD_CTX_new(...) #2

declare dso_local i8* @OPENSSL_hexstr2buf(i8*, i64*) #2

declare dso_local i32 @TEST_true(i64) #2

declare dso_local i64 @EVP_DigestInit_ex(i8*, i32, i32*) #2

declare dso_local i32 @EVP_get_digestbynid(i32) #2

declare dso_local i64 @EVP_DigestUpdate(i8*, i8*, i64) #2

declare dso_local i64 @EVP_DigestFinal_ex(i8*, i8*, i32*) #2

declare dso_local i8* @EC_KEY_new_by_curve_name(i32) #2

declare dso_local i8* @BN_new(...) #2

declare dso_local i64 @BN_hex2bn(i8**, i8*) #2

declare dso_local i64 @change_rand(...) #2

declare dso_local i64 @EC_KEY_generate_key(i8*) #2

declare dso_local i64 @EC_KEY_key2buf(i8*, i32, i8**, i32*) #2

declare dso_local i32 @TEST_int_eq(i64, i32) #2

declare dso_local i32 @TEST_mem_eq(i8*, i64, i8*, i64) #2

declare dso_local i64 @ECDSA_sign_setup(i8*, i32*, i8**, i8**) #2

declare dso_local i8* @ECDSA_do_sign_ex(i8*, i32, i8*, i8*, i8*) #2

declare dso_local i64 @ECDSA_do_verify(i8*, i32, i8*, i8*) #2

declare dso_local i32 @ECDSA_SIG_get0(i8*, i8**, i8**) #2

declare dso_local i32 @TEST_BN_eq(i8*, i8*) #2

declare dso_local i64 @restore_rand(...) #2

declare dso_local i32 @OPENSSL_free(i8*) #2

declare dso_local i32 @EC_KEY_free(i8*) #2

declare dso_local i32 @ECDSA_SIG_free(i8*) #2

declare dso_local i32 @BN_free(i8*) #2

declare dso_local i32 @EVP_MD_CTX_free(i8*) #2

declare dso_local i32 @BN_clear_free(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
