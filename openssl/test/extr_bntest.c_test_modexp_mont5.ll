; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_bntest.c_test_modexp_mont5.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_bntest.c_test_modexp_mont5.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ctx = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [257 x i8] c"7878787878787878787878787878787878787878787878787878787878787878787878787878787878787878787878787878787878787878787878787878787878787878787878787878787878787878787878787878787878787878787878787878787878787878787878787878787878787878787878787878787878787878\00", align 1
@.str.1 = private unnamed_addr constant [257 x i8] c"095D72C08C097BA488C5E439C655A192EAFB6380073D8C2664668EDDB4060744E16E57FB4EDB9AE10A0CEFCDC28A894F689A128379DB279D48A2E20849D685939B7803BCF46CEBF5C533FB0DD35B080593DE5472E3FE5DB951B8BFF9B4CB8F039CC638A5EE8CDD703719F8000E6A9F63BEED5F2FCD52FF293EA05A251BB4AB81\00", align 1
@.str.2 = private unnamed_addr constant [257 x i8] c"D78AF684E71DB0C39CFF4E64FB9DB567132CB9C50CC98009FEB820B26F2DED9B91B9B5E2B83AE0AE4EB4E0523CA726BFBE969B89FD754F674CE99118C3F2D1C5D81FDC7C54E02B60262B241D53C040E99E45826ECA37A804668E690E1AFC1CA42C9A15D84D4954425F0B7642FC0BD9D7B24E2618D2DCC9B729D944BADACFDDAF\00", align 1
@bn1strings = common dso_local global i8** null, align 8
@bn2strings = common dso_local global i8** null, align 8
@test_modexp_mont5.ahex = internal global [13 x i8*] [i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.12, i32 0, i32 0), i8* null], align 16
@.str.3 = private unnamed_addr constant [55 x i8] c"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF\00", align 1
@.str.4 = private unnamed_addr constant [65 x i8] c"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF\00", align 1
@.str.5 = private unnamed_addr constant [65 x i8] c"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8FFEADBCFC4DAE7FFF908E92820306B\00", align 1
@.str.6 = private unnamed_addr constant [65 x i8] c"9544D954000000006C0000000000000000000000000000000000000000000000\00", align 1
@.str.7 = private unnamed_addr constant [65 x i8] c"00000000000000000000FF030202FFFFF8FFEBDBCFC4DAE7FFF908E92820306B\00", align 1
@.str.8 = private unnamed_addr constant [65 x i8] c"9544D954000000006C000000FF0302030000000000FFFFFFFFFFFFFFFFFFFFFF\00", align 1
@.str.9 = private unnamed_addr constant [65 x i8] c"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF01FC00FF02FFFFFFFF\00", align 1
@.str.10 = private unnamed_addr constant [65 x i8] c"00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FCFD\00", align 1
@.str.11 = private unnamed_addr constant [65 x i8] c"FCFFFFFFFFFF000000000000000000FF0302030000000000FFFFFFFFFFFFFFFF\00", align 1
@.str.12 = private unnamed_addr constant [65 x i8] c"FF00FCFDFDFF030202FF00000000FFFFFFFFFFFFFFFFFF00FCFDFCFFFFFFFFFF\00", align 1
@test_modexp_mont5.nhex = internal global [13 x i8*] [i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.19, i32 0, i32 0), i8* null], align 16
@.str.13 = private unnamed_addr constant [65 x i8] c"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F8F8F8000000\00", align 1
@.str.14 = private unnamed_addr constant [65 x i8] c"00000010000000006C0000000000000000000000000000000000000000000000\00", align 1
@.str.15 = private unnamed_addr constant [65 x i8] c"00000000000000000000000000000000000000FFFFFFFFFFFFF8F8F8F8000000\00", align 1
@.str.16 = private unnamed_addr constant [65 x i8] c"00000010000000006C000000000000000000000000FFFFFFFFFFFFFFFFFFFFFF\00", align 1
@.str.17 = private unnamed_addr constant [65 x i8] c"00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF\00", align 1
@.str.18 = private unnamed_addr constant [65 x i8] c"FFFFFFFFFFFF000000000000000000000000000000000000FFFFFFFFFFFFFFFF\00", align 1
@.str.19 = private unnamed_addr constant [65 x i8] c"FFFFFFFFFFFFFFFFFFFF00000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF\00", align 1
@.str.20 = private unnamed_addr constant [193 x i8] c"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF\00", align 1
@.str.21 = private unnamed_addr constant [129 x i8] c"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF\00", align 1
@.str.22 = private unnamed_addr constant [257 x i8] c"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2020202020DF\00", align 1
@.str.23 = private unnamed_addr constant [257 x i8] c"2020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020FF2020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020\00", align 1
@.str.24 = private unnamed_addr constant [257 x i8] c"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2020202020FF\00", align 1
@.str.25 = private unnamed_addr constant [257 x i8] c"1FA53F26F8811C58BE0357897AA5E165693230BC9DF5F01DFA6A2D59229EC69D9DE6A89C36E3B6957B22D6FAAD5A3C73AE587B710DBE92E83D3A9A3339A085CBB58F508CA4F837924BB52CC1698B7FDC2FD74362456A595A5B58E38E38E38E38E38E38E38E38E38E38E38E38E38E38E38E38E38E38E38E38E38E38E38E38E38E\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @test_modexp_mont5 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_modexp_mont5() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store i32* null, i32** %1, align 8
  store i32* null, i32** %2, align 8
  store i32* null, i32** %3, align 8
  store i32* null, i32** %4, align 8
  store i32* null, i32** %5, align 8
  store i32* null, i32** %6, align 8
  store i32* null, i32** %7, align 8
  store i32* null, i32** %8, align 8
  store i32* null, i32** %9, align 8
  store i32 0, i32* %10, align 4
  %11 = call i32* (...) @BN_new()
  store i32* %11, i32** %1, align 8
  %12 = call i64 @TEST_ptr(i32* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %46

14:                                               ; preds = %0
  %15 = call i32* (...) @BN_new()
  store i32* %15, i32** %2, align 8
  %16 = call i64 @TEST_ptr(i32* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %46

18:                                               ; preds = %14
  %19 = call i32* (...) @BN_new()
  store i32* %19, i32** %3, align 8
  %20 = call i64 @TEST_ptr(i32* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %46

22:                                               ; preds = %18
  %23 = call i32* (...) @BN_new()
  store i32* %23, i32** %4, align 8
  %24 = call i64 @TEST_ptr(i32* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %46

26:                                               ; preds = %22
  %27 = call i32* (...) @BN_new()
  store i32* %27, i32** %5, align 8
  %28 = call i64 @TEST_ptr(i32* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %46

30:                                               ; preds = %26
  %31 = call i32* (...) @BN_new()
  store i32* %31, i32** %6, align 8
  %32 = call i64 @TEST_ptr(i32* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %46

34:                                               ; preds = %30
  %35 = call i32* (...) @BN_new()
  store i32* %35, i32** %7, align 8
  %36 = call i64 @TEST_ptr(i32* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %34
  %39 = call i32* (...) @BN_new()
  store i32* %39, i32** %8, align 8
  %40 = call i64 @TEST_ptr(i32* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %38
  %43 = call i32* (...) @BN_MONT_CTX_new()
  store i32* %43, i32** %9, align 8
  %44 = call i64 @TEST_ptr(i32* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %42, %38, %34, %30, %26, %22, %18, %14, %0
  br label %421

47:                                               ; preds = %42
  %48 = load i32*, i32** %3, align 8
  %49 = call i32 @BN_bntest_rand(i32* %48, i32 1024, i32 0, i32 1)
  %50 = call i64 @TEST_true(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %47
  %53 = load i32*, i32** %1, align 8
  %54 = call i32 @BN_bntest_rand(i32* %53, i32 1024, i32 0, i32 0)
  %55 = call i64 @TEST_true(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %52, %47
  br label %421

58:                                               ; preds = %52
  %59 = load i32*, i32** %2, align 8
  %60 = call i32 @BN_zero(i32* %59)
  %61 = load i32*, i32** %4, align 8
  %62 = load i32*, i32** %1, align 8
  %63 = load i32*, i32** %2, align 8
  %64 = load i32*, i32** %3, align 8
  %65 = load i32, i32* @ctx, align 4
  %66 = call i32 @BN_mod_exp_mont_consttime(i32* %61, i32* %62, i32* %63, i32* %64, i32 %65, i32* null)
  %67 = call i64 @TEST_true(i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %70, label %69

69:                                               ; preds = %58
  br label %421

70:                                               ; preds = %58
  %71 = load i32*, i32** %4, align 8
  %72 = call i32 @TEST_BN_eq_one(i32* %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %75, label %74

74:                                               ; preds = %70
  br label %421

75:                                               ; preds = %70
  %76 = call i32 @BN_hex2bn(i32** %1, i8* getelementptr inbounds ([257 x i8], [257 x i8]* @.str, i64 0, i64 0))
  %77 = call i64 @TEST_true(i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %87

79:                                               ; preds = %75
  %80 = call i32 @BN_hex2bn(i32** %6, i8* getelementptr inbounds ([257 x i8], [257 x i8]* @.str.1, i64 0, i64 0))
  %81 = call i64 @TEST_true(i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %79
  %84 = call i32 @BN_hex2bn(i32** %7, i8* getelementptr inbounds ([257 x i8], [257 x i8]* @.str.2, i64 0, i64 0))
  %85 = call i64 @TEST_true(i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %88, label %87

87:                                               ; preds = %83, %79, %75
  br label %421

88:                                               ; preds = %83
  %89 = load i32*, i32** %9, align 8
  %90 = load i32*, i32** %7, align 8
  %91 = load i32, i32* @ctx, align 4
  %92 = call i32 @BN_MONT_CTX_set(i32* %89, i32* %90, i32 %91)
  %93 = call i64 @TEST_true(i32 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %118

95:                                               ; preds = %88
  %96 = load i32*, i32** %8, align 8
  %97 = load i32*, i32** %1, align 8
  %98 = load i32*, i32** %6, align 8
  %99 = load i32*, i32** %9, align 8
  %100 = load i32, i32* @ctx, align 4
  %101 = call i32 @BN_mod_mul_montgomery(i32* %96, i32* %97, i32* %98, i32* %99, i32 %100)
  %102 = call i64 @TEST_true(i32 %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %118

104:                                              ; preds = %95
  %105 = load i32*, i32** %4, align 8
  %106 = load i32*, i32** %6, align 8
  %107 = load i32*, i32** %1, align 8
  %108 = load i32*, i32** %9, align 8
  %109 = load i32, i32* @ctx, align 4
  %110 = call i32 @BN_mod_mul_montgomery(i32* %105, i32* %106, i32* %107, i32* %108, i32 %109)
  %111 = call i64 @TEST_true(i32 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %118

113:                                              ; preds = %104
  %114 = load i32*, i32** %8, align 8
  %115 = load i32*, i32** %4, align 8
  %116 = call i64 @TEST_BN_eq(i32* %114, i32* %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %119, label %118

118:                                              ; preds = %113, %104, %95, %88
  br label %421

119:                                              ; preds = %113
  %120 = load i8**, i8*** @bn1strings, align 8
  %121 = call i32 @parse_bigBN(i32** %7, i8** %120)
  %122 = call i64 @TEST_true(i32 %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %129

124:                                              ; preds = %119
  %125 = load i8**, i8*** @bn2strings, align 8
  %126 = call i32 @parse_bigBN(i32** %1, i8** %125)
  %127 = call i64 @TEST_true(i32 %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %130, label %129

129:                                              ; preds = %124, %119
  br label %421

130:                                              ; preds = %124
  %131 = load i32*, i32** %6, align 8
  %132 = call i32 @BN_free(i32* %131)
  %133 = load i32*, i32** %1, align 8
  %134 = call i32* @BN_dup(i32* %133)
  store i32* %134, i32** %6, align 8
  %135 = call i64 @TEST_ptr(i32* %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %167

137:                                              ; preds = %130
  %138 = load i32*, i32** %9, align 8
  %139 = load i32*, i32** %7, align 8
  %140 = load i32, i32* @ctx, align 4
  %141 = call i32 @BN_MONT_CTX_set(i32* %138, i32* %139, i32 %140)
  %142 = call i64 @TEST_true(i32 %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %167

144:                                              ; preds = %137
  %145 = load i32*, i32** %8, align 8
  %146 = load i32*, i32** %1, align 8
  %147 = load i32*, i32** %1, align 8
  %148 = load i32*, i32** %9, align 8
  %149 = load i32, i32* @ctx, align 4
  %150 = call i32 @BN_mod_mul_montgomery(i32* %145, i32* %146, i32* %147, i32* %148, i32 %149)
  %151 = call i64 @TEST_true(i32 %150)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %167

153:                                              ; preds = %144
  %154 = load i32*, i32** %4, align 8
  %155 = load i32*, i32** %1, align 8
  %156 = load i32*, i32** %6, align 8
  %157 = load i32*, i32** %9, align 8
  %158 = load i32, i32* @ctx, align 4
  %159 = call i32 @BN_mod_mul_montgomery(i32* %154, i32* %155, i32* %156, i32* %157, i32 %158)
  %160 = call i64 @TEST_true(i32 %159)
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %167

162:                                              ; preds = %153
  %163 = load i32*, i32** %8, align 8
  %164 = load i32*, i32** %4, align 8
  %165 = call i64 @TEST_BN_eq(i32* %163, i32* %164)
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %168, label %167

167:                                              ; preds = %162, %153, %144, %137, %130
  br label %421

168:                                              ; preds = %162
  %169 = call i32 @parse_bigBN(i32** %1, i8** getelementptr inbounds ([13 x i8*], [13 x i8*]* @test_modexp_mont5.ahex, i64 0, i64 0))
  %170 = call i64 @TEST_true(i32 %169)
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %176

172:                                              ; preds = %168
  %173 = call i32 @parse_bigBN(i32** %7, i8** getelementptr inbounds ([13 x i8*], [13 x i8*]* @test_modexp_mont5.nhex, i64 0, i64 0))
  %174 = call i64 @TEST_true(i32 %173)
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %177, label %176

176:                                              ; preds = %172, %168
  br label %421

177:                                              ; preds = %172
  %178 = load i32*, i32** %6, align 8
  %179 = call i32 @BN_free(i32* %178)
  %180 = load i32*, i32** %1, align 8
  %181 = call i32* @BN_dup(i32* %180)
  store i32* %181, i32** %6, align 8
  %182 = call i64 @TEST_ptr(i32* %181)
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %191

184:                                              ; preds = %177
  %185 = load i32*, i32** %9, align 8
  %186 = load i32*, i32** %7, align 8
  %187 = load i32, i32* @ctx, align 4
  %188 = call i32 @BN_MONT_CTX_set(i32* %185, i32* %186, i32 %187)
  %189 = call i64 @TEST_true(i32 %188)
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %192, label %191

191:                                              ; preds = %184, %177
  br label %421

192:                                              ; preds = %184
  %193 = load i32*, i32** %8, align 8
  %194 = load i32*, i32** %1, align 8
  %195 = load i32*, i32** %1, align 8
  %196 = load i32*, i32** %9, align 8
  %197 = load i32, i32* @ctx, align 4
  %198 = call i32 @BN_mod_mul_montgomery(i32* %193, i32* %194, i32* %195, i32* %196, i32 %197)
  %199 = call i64 @TEST_true(i32 %198)
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %201, label %215

201:                                              ; preds = %192
  %202 = load i32*, i32** %4, align 8
  %203 = load i32*, i32** %1, align 8
  %204 = load i32*, i32** %6, align 8
  %205 = load i32*, i32** %9, align 8
  %206 = load i32, i32* @ctx, align 4
  %207 = call i32 @BN_mod_mul_montgomery(i32* %202, i32* %203, i32* %204, i32* %205, i32 %206)
  %208 = call i64 @TEST_true(i32 %207)
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %210, label %215

210:                                              ; preds = %201
  %211 = load i32*, i32** %8, align 8
  %212 = load i32*, i32** %4, align 8
  %213 = call i64 @TEST_BN_eq(i32* %211, i32* %212)
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %216, label %215

215:                                              ; preds = %210, %201, %192
  br label %421

216:                                              ; preds = %210
  %217 = call i32 @BN_hex2bn(i32** %1, i8* getelementptr inbounds ([193 x i8], [193 x i8]* @.str.20, i64 0, i64 0))
  %218 = call i64 @TEST_true(i32 %217)
  %219 = icmp ne i64 %218, 0
  br i1 %219, label %220, label %240

220:                                              ; preds = %216
  %221 = call i32 @BN_hex2bn(i32** %7, i8* getelementptr inbounds ([129 x i8], [129 x i8]* @.str.21, i64 0, i64 0))
  %222 = call i64 @TEST_true(i32 %221)
  %223 = icmp ne i64 %222, 0
  br i1 %223, label %224, label %240

224:                                              ; preds = %220
  %225 = load i32*, i32** %9, align 8
  %226 = load i32*, i32** %7, align 8
  %227 = load i32, i32* @ctx, align 4
  %228 = call i32 @BN_MONT_CTX_set(i32* %225, i32* %226, i32 %227)
  %229 = call i64 @TEST_true(i32 %228)
  %230 = icmp ne i64 %229, 0
  br i1 %230, label %231, label %240

231:                                              ; preds = %224
  %232 = load i32*, i32** %4, align 8
  %233 = load i32*, i32** %1, align 8
  %234 = load i32*, i32** %1, align 8
  %235 = load i32*, i32** %9, align 8
  %236 = load i32, i32* @ctx, align 4
  %237 = call i32 @BN_mod_mul_montgomery(i32* %232, i32* %233, i32* %234, i32* %235, i32 %236)
  %238 = call i64 @TEST_false(i32 %237)
  %239 = icmp ne i64 %238, 0
  br i1 %239, label %241, label %240

240:                                              ; preds = %231, %224, %220, %216
  br label %421

241:                                              ; preds = %231
  %242 = call i32 @BN_hex2bn(i32** %1, i8* getelementptr inbounds ([257 x i8], [257 x i8]* @.str.22, i64 0, i64 0))
  %243 = call i64 @TEST_true(i32 %242)
  %244 = icmp ne i64 %243, 0
  br i1 %244, label %245, label %285

245:                                              ; preds = %241
  %246 = call i32 @BN_hex2bn(i32** %6, i8* getelementptr inbounds ([257 x i8], [257 x i8]* @.str.23, i64 0, i64 0))
  %247 = call i64 @TEST_true(i32 %246)
  %248 = icmp ne i64 %247, 0
  br i1 %248, label %249, label %285

249:                                              ; preds = %245
  %250 = call i32 @BN_hex2bn(i32** %7, i8* getelementptr inbounds ([257 x i8], [257 x i8]* @.str.24, i64 0, i64 0))
  %251 = call i64 @TEST_true(i32 %250)
  %252 = icmp ne i64 %251, 0
  br i1 %252, label %253, label %285

253:                                              ; preds = %249
  %254 = load i32*, i32** %9, align 8
  %255 = load i32*, i32** %7, align 8
  %256 = load i32, i32* @ctx, align 4
  %257 = call i32 @BN_MONT_CTX_set(i32* %254, i32* %255, i32 %256)
  %258 = call i64 @TEST_true(i32 %257)
  %259 = icmp ne i64 %258, 0
  br i1 %259, label %260, label %285

260:                                              ; preds = %253
  %261 = load i32*, i32** %8, align 8
  %262 = load i32*, i32** %1, align 8
  %263 = load i32*, i32** %6, align 8
  %264 = load i32*, i32** %7, align 8
  %265 = load i32, i32* @ctx, align 4
  %266 = load i32*, i32** %9, align 8
  %267 = call i32 @BN_mod_exp_mont_consttime(i32* %261, i32* %262, i32* %263, i32* %264, i32 %265, i32* %266)
  %268 = call i64 @TEST_true(i32 %267)
  %269 = icmp ne i64 %268, 0
  br i1 %269, label %270, label %285

270:                                              ; preds = %260
  %271 = load i32*, i32** %4, align 8
  %272 = load i32*, i32** %1, align 8
  %273 = load i32*, i32** %6, align 8
  %274 = load i32*, i32** %7, align 8
  %275 = load i32, i32* @ctx, align 4
  %276 = load i32*, i32** %9, align 8
  %277 = call i32 @BN_mod_exp_mont(i32* %271, i32* %272, i32* %273, i32* %274, i32 %275, i32* %276)
  %278 = call i64 @TEST_true(i32 %277)
  %279 = icmp ne i64 %278, 0
  br i1 %279, label %280, label %285

280:                                              ; preds = %270
  %281 = load i32*, i32** %8, align 8
  %282 = load i32*, i32** %4, align 8
  %283 = call i64 @TEST_BN_eq(i32* %281, i32* %282)
  %284 = icmp ne i64 %283, 0
  br i1 %284, label %286, label %285

285:                                              ; preds = %280, %270, %260, %253, %249, %245, %241
  br label %421

286:                                              ; preds = %280
  %287 = call i32 @BN_hex2bn(i32** %1, i8* getelementptr inbounds ([257 x i8], [257 x i8]* @.str.22, i64 0, i64 0))
  %288 = call i64 @TEST_true(i32 %287)
  %289 = icmp ne i64 %288, 0
  br i1 %289, label %290, label %315

290:                                              ; preds = %286
  %291 = call i32 @BN_hex2bn(i32** %6, i8* getelementptr inbounds ([257 x i8], [257 x i8]* @.str.25, i64 0, i64 0))
  %292 = call i64 @TEST_true(i32 %291)
  %293 = icmp ne i64 %292, 0
  br i1 %293, label %294, label %315

294:                                              ; preds = %290
  %295 = call i32 @BN_hex2bn(i32** %7, i8* getelementptr inbounds ([257 x i8], [257 x i8]* @.str.22, i64 0, i64 0))
  %296 = call i64 @TEST_true(i32 %295)
  %297 = icmp ne i64 %296, 0
  br i1 %297, label %298, label %315

298:                                              ; preds = %294
  %299 = load i32*, i32** %9, align 8
  %300 = load i32*, i32** %7, align 8
  %301 = load i32, i32* @ctx, align 4
  %302 = call i32 @BN_MONT_CTX_set(i32* %299, i32* %300, i32 %301)
  %303 = call i64 @TEST_true(i32 %302)
  %304 = icmp ne i64 %303, 0
  br i1 %304, label %305, label %315

305:                                              ; preds = %298
  %306 = load i32*, i32** %8, align 8
  %307 = load i32*, i32** %1, align 8
  %308 = load i32*, i32** %6, align 8
  %309 = load i32*, i32** %7, align 8
  %310 = load i32, i32* @ctx, align 4
  %311 = load i32*, i32** %9, align 8
  %312 = call i32 @BN_mod_exp_mont_consttime(i32* %306, i32* %307, i32* %308, i32* %309, i32 %310, i32* %311)
  %313 = call i64 @TEST_true(i32 %312)
  %314 = icmp ne i64 %313, 0
  br i1 %314, label %316, label %315

315:                                              ; preds = %305, %298, %294, %290, %286
  br label %421

316:                                              ; preds = %305
  %317 = load i32*, i32** %4, align 8
  %318 = call i32 @BN_zero(i32* %317)
  %319 = load i32*, i32** %8, align 8
  %320 = load i32*, i32** %4, align 8
  %321 = call i64 @TEST_BN_eq(i32* %319, i32* %320)
  %322 = icmp ne i64 %321, 0
  br i1 %322, label %324, label %323

323:                                              ; preds = %316
  br label %421

324:                                              ; preds = %316
  %325 = load i32*, i32** %2, align 8
  %326 = call i32 @BN_bntest_rand(i32* %325, i32 1024, i32 0, i32 0)
  %327 = call i64 @TEST_true(i32 %326)
  %328 = icmp ne i64 %327, 0
  br i1 %328, label %330, label %329

329:                                              ; preds = %324
  br label %421

330:                                              ; preds = %324
  %331 = load i32*, i32** %1, align 8
  %332 = call i32 @BN_zero(i32* %331)
  %333 = load i32*, i32** %4, align 8
  %334 = load i32*, i32** %1, align 8
  %335 = load i32*, i32** %2, align 8
  %336 = load i32*, i32** %3, align 8
  %337 = load i32, i32* @ctx, align 4
  %338 = call i32 @BN_mod_exp_mont_consttime(i32* %333, i32* %334, i32* %335, i32* %336, i32 %337, i32* null)
  %339 = call i64 @TEST_true(i32 %338)
  %340 = icmp ne i64 %339, 0
  br i1 %340, label %341, label %345

341:                                              ; preds = %330
  %342 = load i32*, i32** %4, align 8
  %343 = call i32 @TEST_BN_eq_zero(i32* %342)
  %344 = icmp ne i32 %343, 0
  br i1 %344, label %346, label %345

345:                                              ; preds = %341, %330
  br label %421

346:                                              ; preds = %341
  %347 = load i32*, i32** %1, align 8
  %348 = call i32 @BN_one(i32* %347)
  %349 = call i64 @TEST_true(i32 %348)
  %350 = icmp ne i64 %349, 0
  br i1 %350, label %351, label %358

351:                                              ; preds = %346
  %352 = load i32*, i32** %9, align 8
  %353 = load i32*, i32** %3, align 8
  %354 = load i32, i32* @ctx, align 4
  %355 = call i32 @BN_MONT_CTX_set(i32* %352, i32* %353, i32 %354)
  %356 = call i64 @TEST_true(i32 %355)
  %357 = icmp ne i64 %356, 0
  br i1 %357, label %359, label %358

358:                                              ; preds = %351, %346
  br label %421

359:                                              ; preds = %351
  %360 = load i32*, i32** %5, align 8
  %361 = load i32*, i32** %1, align 8
  %362 = load i32*, i32** %9, align 8
  %363 = load i32, i32* @ctx, align 4
  %364 = call i32 @BN_from_montgomery(i32* %360, i32* %361, i32* %362, i32 %363)
  %365 = call i64 @TEST_true(i32 %364)
  %366 = icmp ne i64 %365, 0
  br i1 %366, label %367, label %390

367:                                              ; preds = %359
  %368 = load i32*, i32** %4, align 8
  %369 = load i32*, i32** %5, align 8
  %370 = load i32*, i32** %2, align 8
  %371 = load i32*, i32** %3, align 8
  %372 = load i32, i32* @ctx, align 4
  %373 = call i32 @BN_mod_exp_mont_consttime(i32* %368, i32* %369, i32* %370, i32* %371, i32 %372, i32* null)
  %374 = call i64 @TEST_true(i32 %373)
  %375 = icmp ne i64 %374, 0
  br i1 %375, label %376, label %390

376:                                              ; preds = %367
  %377 = load i32*, i32** %1, align 8
  %378 = load i32*, i32** %5, align 8
  %379 = load i32*, i32** %2, align 8
  %380 = load i32*, i32** %3, align 8
  %381 = load i32, i32* @ctx, align 4
  %382 = call i32 @BN_mod_exp_simple(i32* %377, i32* %378, i32* %379, i32* %380, i32 %381)
  %383 = call i64 @TEST_true(i32 %382)
  %384 = icmp ne i64 %383, 0
  br i1 %384, label %385, label %390

385:                                              ; preds = %376
  %386 = load i32*, i32** %1, align 8
  %387 = load i32*, i32** %4, align 8
  %388 = call i64 @TEST_BN_eq(i32* %386, i32* %387)
  %389 = icmp ne i64 %388, 0
  br i1 %389, label %391, label %390

390:                                              ; preds = %385, %376, %367, %359
  br label %421

391:                                              ; preds = %385
  %392 = load i32*, i32** %5, align 8
  %393 = call i32 @BN_bntest_rand(i32* %392, i32 1024, i32 0, i32 0)
  %394 = call i64 @TEST_true(i32 %393)
  %395 = icmp ne i64 %394, 0
  br i1 %395, label %396, label %419

396:                                              ; preds = %391
  %397 = load i32*, i32** %4, align 8
  %398 = load i32*, i32** %5, align 8
  %399 = load i32*, i32** %2, align 8
  %400 = load i32*, i32** %3, align 8
  %401 = load i32, i32* @ctx, align 4
  %402 = call i32 @BN_mod_exp_mont_consttime(i32* %397, i32* %398, i32* %399, i32* %400, i32 %401, i32* null)
  %403 = call i64 @TEST_true(i32 %402)
  %404 = icmp ne i64 %403, 0
  br i1 %404, label %405, label %419

405:                                              ; preds = %396
  %406 = load i32*, i32** %1, align 8
  %407 = load i32*, i32** %5, align 8
  %408 = load i32*, i32** %2, align 8
  %409 = load i32*, i32** %3, align 8
  %410 = load i32, i32* @ctx, align 4
  %411 = call i32 @BN_mod_exp_simple(i32* %406, i32* %407, i32* %408, i32* %409, i32 %410)
  %412 = call i64 @TEST_true(i32 %411)
  %413 = icmp ne i64 %412, 0
  br i1 %413, label %414, label %419

414:                                              ; preds = %405
  %415 = load i32*, i32** %1, align 8
  %416 = load i32*, i32** %4, align 8
  %417 = call i64 @TEST_BN_eq(i32* %415, i32* %416)
  %418 = icmp ne i64 %417, 0
  br i1 %418, label %420, label %419

419:                                              ; preds = %414, %405, %396, %391
  br label %421

420:                                              ; preds = %414
  store i32 1, i32* %10, align 4
  br label %421

421:                                              ; preds = %420, %419, %390, %358, %345, %329, %323, %315, %285, %240, %215, %191, %176, %167, %129, %118, %87, %74, %69, %57, %46
  %422 = load i32*, i32** %9, align 8
  %423 = call i32 @BN_MONT_CTX_free(i32* %422)
  %424 = load i32*, i32** %1, align 8
  %425 = call i32 @BN_free(i32* %424)
  %426 = load i32*, i32** %2, align 8
  %427 = call i32 @BN_free(i32* %426)
  %428 = load i32*, i32** %3, align 8
  %429 = call i32 @BN_free(i32* %428)
  %430 = load i32*, i32** %4, align 8
  %431 = call i32 @BN_free(i32* %430)
  %432 = load i32*, i32** %5, align 8
  %433 = call i32 @BN_free(i32* %432)
  %434 = load i32*, i32** %6, align 8
  %435 = call i32 @BN_free(i32* %434)
  %436 = load i32*, i32** %7, align 8
  %437 = call i32 @BN_free(i32* %436)
  %438 = load i32*, i32** %8, align 8
  %439 = call i32 @BN_free(i32* %438)
  %440 = load i32, i32* %10, align 4
  ret i32 %440
}

declare dso_local i64 @TEST_ptr(i32*) #1

declare dso_local i32* @BN_new(...) #1

declare dso_local i32* @BN_MONT_CTX_new(...) #1

declare dso_local i64 @TEST_true(i32) #1

declare dso_local i32 @BN_bntest_rand(i32*, i32, i32, i32) #1

declare dso_local i32 @BN_zero(i32*) #1

declare dso_local i32 @BN_mod_exp_mont_consttime(i32*, i32*, i32*, i32*, i32, i32*) #1

declare dso_local i32 @TEST_BN_eq_one(i32*) #1

declare dso_local i32 @BN_hex2bn(i32**, i8*) #1

declare dso_local i32 @BN_MONT_CTX_set(i32*, i32*, i32) #1

declare dso_local i32 @BN_mod_mul_montgomery(i32*, i32*, i32*, i32*, i32) #1

declare dso_local i64 @TEST_BN_eq(i32*, i32*) #1

declare dso_local i32 @parse_bigBN(i32**, i8**) #1

declare dso_local i32 @BN_free(i32*) #1

declare dso_local i32* @BN_dup(i32*) #1

declare dso_local i64 @TEST_false(i32) #1

declare dso_local i32 @BN_mod_exp_mont(i32*, i32*, i32*, i32*, i32, i32*) #1

declare dso_local i32 @TEST_BN_eq_zero(i32*) #1

declare dso_local i32 @BN_one(i32*) #1

declare dso_local i32 @BN_from_montgomery(i32*, i32*, i32*, i32) #1

declare dso_local i32 @BN_mod_exp_simple(i32*, i32*, i32*, i32*, i32) #1

declare dso_local i32 @BN_MONT_CTX_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
