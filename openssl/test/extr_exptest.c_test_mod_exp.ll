; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_exptest.c_test_mod_exp.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_exptest.c_test_mod_exp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BN_BITS = common dso_local global i8 0, align 1
@BN_BITS2 = common dso_local global i8 0, align 1
@NUM_BITS = common dso_local global i64 0, align 8
@BN_RAND_TOP_ONE = common dso_local global i32 0, align 4
@BN_RAND_BOTTOM_ANY = common dso_local global i32 0, align 4
@BN_RAND_BOTTOM_ODD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"simple and mont results differ\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"simple and mont const time results differ\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"simple and recp results differ\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @test_mod_exp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_mod_exp(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %5, align 4
  store i32* null, i32** %6, align 8
  store i32* null, i32** %7, align 8
  store i32* null, i32** %8, align 8
  store i32* null, i32** %9, align 8
  store i32* null, i32** %10, align 8
  store i32* null, i32** %11, align 8
  store i32* null, i32** %12, align 8
  %13 = call i32* (...) @BN_CTX_new()
  store i32* %13, i32** %3, align 8
  %14 = call i32 @TEST_ptr(i32* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  br label %205

17:                                               ; preds = %1
  %18 = call i32* (...) @BN_new()
  store i32* %18, i32** %6, align 8
  %19 = call i32 @TEST_ptr(i32* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %45

21:                                               ; preds = %17
  %22 = call i32* (...) @BN_new()
  store i32* %22, i32** %7, align 8
  %23 = call i32 @TEST_ptr(i32* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %45

25:                                               ; preds = %21
  %26 = call i32* (...) @BN_new()
  store i32* %26, i32** %8, align 8
  %27 = call i32 @TEST_ptr(i32* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %45

29:                                               ; preds = %25
  %30 = call i32* (...) @BN_new()
  store i32* %30, i32** %9, align 8
  %31 = call i32 @TEST_ptr(i32* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %45

33:                                               ; preds = %29
  %34 = call i32* (...) @BN_new()
  store i32* %34, i32** %10, align 8
  %35 = call i32 @TEST_ptr(i32* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %33
  %38 = call i32* (...) @BN_new()
  store i32* %38, i32** %11, align 8
  %39 = call i32 @TEST_ptr(i32* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %37
  %42 = call i32* (...) @BN_new()
  store i32* %42, i32** %12, align 8
  %43 = call i32 @TEST_ptr(i32* %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %41, %37, %33, %29, %25, %21, %17
  br label %205

46:                                               ; preds = %41
  %47 = call i32 @RAND_bytes(i8* %4, i32 1)
  %48 = load i8, i8* %4, align 1
  %49 = zext i8 %48 to i32
  %50 = load i8, i8* @BN_BITS, align 1
  %51 = zext i8 %50 to i32
  %52 = srem i32 %49, %51
  %53 = load i8, i8* @BN_BITS2, align 1
  %54 = zext i8 %53 to i32
  %55 = sub nsw i32 %52, %54
  %56 = trunc i32 %55 to i8
  store i8 %56, i8* %4, align 1
  %57 = load i32*, i32** %10, align 8
  %58 = load i64, i64* @NUM_BITS, align 8
  %59 = load i8, i8* %4, align 1
  %60 = zext i8 %59 to i64
  %61 = add nsw i64 %58, %60
  %62 = load i32, i32* @BN_RAND_TOP_ONE, align 4
  %63 = load i32, i32* @BN_RAND_BOTTOM_ANY, align 4
  %64 = call i32 @BN_rand(i32* %57, i64 %61, i32 %62, i32 %63)
  %65 = call i32 @RAND_bytes(i8* %4, i32 1)
  %66 = load i8, i8* %4, align 1
  %67 = zext i8 %66 to i32
  %68 = load i8, i8* @BN_BITS, align 1
  %69 = zext i8 %68 to i32
  %70 = srem i32 %67, %69
  %71 = load i8, i8* @BN_BITS2, align 1
  %72 = zext i8 %71 to i32
  %73 = sub nsw i32 %70, %72
  %74 = trunc i32 %73 to i8
  store i8 %74, i8* %4, align 1
  %75 = load i32*, i32** %11, align 8
  %76 = load i64, i64* @NUM_BITS, align 8
  %77 = load i8, i8* %4, align 1
  %78 = zext i8 %77 to i64
  %79 = add nsw i64 %76, %78
  %80 = load i32, i32* @BN_RAND_TOP_ONE, align 4
  %81 = load i32, i32* @BN_RAND_BOTTOM_ANY, align 4
  %82 = call i32 @BN_rand(i32* %75, i64 %79, i32 %80, i32 %81)
  %83 = call i32 @RAND_bytes(i8* %4, i32 1)
  %84 = load i8, i8* %4, align 1
  %85 = zext i8 %84 to i32
  %86 = load i8, i8* @BN_BITS, align 1
  %87 = zext i8 %86 to i32
  %88 = srem i32 %85, %87
  %89 = load i8, i8* @BN_BITS2, align 1
  %90 = zext i8 %89 to i32
  %91 = sub nsw i32 %88, %90
  %92 = trunc i32 %91 to i8
  store i8 %92, i8* %4, align 1
  %93 = load i32*, i32** %12, align 8
  %94 = load i64, i64* @NUM_BITS, align 8
  %95 = load i8, i8* %4, align 1
  %96 = zext i8 %95 to i64
  %97 = add nsw i64 %94, %96
  %98 = load i32, i32* @BN_RAND_TOP_ONE, align 4
  %99 = load i32, i32* @BN_RAND_BOTTOM_ODD, align 4
  %100 = call i32 @BN_rand(i32* %93, i64 %97, i32 %98, i32 %99)
  %101 = load i32*, i32** %10, align 8
  %102 = load i32*, i32** %10, align 8
  %103 = load i32*, i32** %12, align 8
  %104 = load i32*, i32** %3, align 8
  %105 = call i32 @BN_mod(i32* %101, i32* %102, i32* %103, i32* %104)
  %106 = call i32 @TEST_true(i32 %105)
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %152

108:                                              ; preds = %46
  %109 = load i32*, i32** %11, align 8
  %110 = load i32*, i32** %11, align 8
  %111 = load i32*, i32** %12, align 8
  %112 = load i32*, i32** %3, align 8
  %113 = call i32 @BN_mod(i32* %109, i32* %110, i32* %111, i32* %112)
  %114 = call i32 @TEST_true(i32 %113)
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %152

116:                                              ; preds = %108
  %117 = load i32*, i32** %6, align 8
  %118 = load i32*, i32** %10, align 8
  %119 = load i32*, i32** %11, align 8
  %120 = load i32*, i32** %12, align 8
  %121 = load i32*, i32** %3, align 8
  %122 = call i32 @BN_mod_exp_mont(i32* %117, i32* %118, i32* %119, i32* %120, i32* %121, i32* null)
  %123 = call i32 @TEST_true(i32 %122)
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %152

125:                                              ; preds = %116
  %126 = load i32*, i32** %8, align 8
  %127 = load i32*, i32** %10, align 8
  %128 = load i32*, i32** %11, align 8
  %129 = load i32*, i32** %12, align 8
  %130 = load i32*, i32** %3, align 8
  %131 = call i32 @BN_mod_exp_recp(i32* %126, i32* %127, i32* %128, i32* %129, i32* %130)
  %132 = call i32 @TEST_true(i32 %131)
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %152

134:                                              ; preds = %125
  %135 = load i32*, i32** %9, align 8
  %136 = load i32*, i32** %10, align 8
  %137 = load i32*, i32** %11, align 8
  %138 = load i32*, i32** %12, align 8
  %139 = load i32*, i32** %3, align 8
  %140 = call i32 @BN_mod_exp_simple(i32* %135, i32* %136, i32* %137, i32* %138, i32* %139)
  %141 = call i32 @TEST_true(i32 %140)
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %152

143:                                              ; preds = %134
  %144 = load i32*, i32** %7, align 8
  %145 = load i32*, i32** %10, align 8
  %146 = load i32*, i32** %11, align 8
  %147 = load i32*, i32** %12, align 8
  %148 = load i32*, i32** %3, align 8
  %149 = call i32 @BN_mod_exp_mont_consttime(i32* %144, i32* %145, i32* %146, i32* %147, i32* %148, i32* null)
  %150 = call i32 @TEST_true(i32 %149)
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %153, label %152

152:                                              ; preds = %143, %134, %125, %116, %108, %46
  br label %205

153:                                              ; preds = %143
  %154 = load i32*, i32** %9, align 8
  %155 = load i32*, i32** %6, align 8
  %156 = call i32 @TEST_BN_eq(i32* %154, i32* %155)
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %168

158:                                              ; preds = %153
  %159 = load i32*, i32** %9, align 8
  %160 = load i32*, i32** %8, align 8
  %161 = call i32 @TEST_BN_eq(i32* %159, i32* %160)
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %168

163:                                              ; preds = %158
  %164 = load i32*, i32** %9, align 8
  %165 = load i32*, i32** %7, align 8
  %166 = call i32 @TEST_BN_eq(i32* %164, i32* %165)
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %204, label %168

168:                                              ; preds = %163, %158, %153
  %169 = load i32*, i32** %9, align 8
  %170 = load i32*, i32** %6, align 8
  %171 = call i64 @BN_cmp(i32* %169, i32* %170)
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %175

173:                                              ; preds = %168
  %174 = call i32 @TEST_info(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %175

175:                                              ; preds = %173, %168
  %176 = load i32*, i32** %9, align 8
  %177 = load i32*, i32** %7, align 8
  %178 = call i64 @BN_cmp(i32* %176, i32* %177)
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %182

180:                                              ; preds = %175
  %181 = call i32 @TEST_info(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  br label %182

182:                                              ; preds = %180, %175
  %183 = load i32*, i32** %9, align 8
  %184 = load i32*, i32** %8, align 8
  %185 = call i64 @BN_cmp(i32* %183, i32* %184)
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %189

187:                                              ; preds = %182
  %188 = call i32 @TEST_info(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  br label %189

189:                                              ; preds = %187, %182
  %190 = load i32*, i32** %10, align 8
  %191 = call i32 @BN_print_var(i32* %190)
  %192 = load i32*, i32** %11, align 8
  %193 = call i32 @BN_print_var(i32* %192)
  %194 = load i32*, i32** %12, align 8
  %195 = call i32 @BN_print_var(i32* %194)
  %196 = load i32*, i32** %9, align 8
  %197 = call i32 @BN_print_var(i32* %196)
  %198 = load i32*, i32** %8, align 8
  %199 = call i32 @BN_print_var(i32* %198)
  %200 = load i32*, i32** %6, align 8
  %201 = call i32 @BN_print_var(i32* %200)
  %202 = load i32*, i32** %7, align 8
  %203 = call i32 @BN_print_var(i32* %202)
  br label %205

204:                                              ; preds = %163
  store i32 1, i32* %5, align 4
  br label %205

205:                                              ; preds = %204, %189, %152, %45, %16
  %206 = load i32*, i32** %6, align 8
  %207 = call i32 @BN_free(i32* %206)
  %208 = load i32*, i32** %7, align 8
  %209 = call i32 @BN_free(i32* %208)
  %210 = load i32*, i32** %8, align 8
  %211 = call i32 @BN_free(i32* %210)
  %212 = load i32*, i32** %9, align 8
  %213 = call i32 @BN_free(i32* %212)
  %214 = load i32*, i32** %10, align 8
  %215 = call i32 @BN_free(i32* %214)
  %216 = load i32*, i32** %11, align 8
  %217 = call i32 @BN_free(i32* %216)
  %218 = load i32*, i32** %12, align 8
  %219 = call i32 @BN_free(i32* %218)
  %220 = load i32*, i32** %3, align 8
  %221 = call i32 @BN_CTX_free(i32* %220)
  %222 = load i32, i32* %5, align 4
  ret i32 %222
}

declare dso_local i32 @TEST_ptr(i32*) #1

declare dso_local i32* @BN_CTX_new(...) #1

declare dso_local i32* @BN_new(...) #1

declare dso_local i32 @RAND_bytes(i8*, i32) #1

declare dso_local i32 @BN_rand(i32*, i64, i32, i32) #1

declare dso_local i32 @TEST_true(i32) #1

declare dso_local i32 @BN_mod(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @BN_mod_exp_mont(i32*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @BN_mod_exp_recp(i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @BN_mod_exp_simple(i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @BN_mod_exp_mont_consttime(i32*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @TEST_BN_eq(i32*, i32*) #1

declare dso_local i64 @BN_cmp(i32*, i32*) #1

declare dso_local i32 @TEST_info(i8*) #1

declare dso_local i32 @BN_print_var(i32*) #1

declare dso_local i32 @BN_free(i32*) #1

declare dso_local i32 @BN_CTX_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
