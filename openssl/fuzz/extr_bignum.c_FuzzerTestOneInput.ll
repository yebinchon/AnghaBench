; ModuleID = '/home/carl/AnghaBench/openssl/fuzz/extr_bignum.c_FuzzerTestOneInput.c'
source_filename = "/home/carl/AnghaBench/openssl/fuzz/extr_bignum.c_FuzzerTestOneInput.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stdout = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @FuzzerTestOneInput(i64* %0, i64 %1) #0 {
  %3 = alloca i64*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  store i64* %0, i64** %3, align 8
  store i64 %1, i64* %4, align 8
  store i32 0, i32* %5, align 4
  store i64 0, i64* %6, align 8
  store i64 0, i64* %7, align 8
  store i64 0, i64* %8, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %17 = call i32* (...) @BN_new()
  store i32* %17, i32** %12, align 8
  %18 = call i32* (...) @BN_new()
  store i32* %18, i32** %13, align 8
  %19 = call i32* (...) @BN_new()
  store i32* %19, i32** %14, align 8
  %20 = call i32* (...) @BN_new()
  store i32* %20, i32** %15, align 8
  %21 = call i32* (...) @BN_new()
  store i32* %21, i32** %16, align 8
  %22 = call i32* (...) @BN_CTX_new()
  store i32* %22, i32** %11, align 8
  %23 = load i64, i64* %4, align 8
  %24 = icmp ugt i64 %23, 2
  br i1 %24, label %25, label %63

25:                                               ; preds = %2
  %26 = load i64, i64* %4, align 8
  %27 = sub i64 %26, 3
  store i64 %27, i64* %4, align 8
  %28 = load i64*, i64** %3, align 8
  %29 = getelementptr inbounds i64, i64* %28, i64 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* %4, align 8
  %32 = mul i64 %30, %31
  %33 = udiv i64 %32, 255
  store i64 %33, i64* %6, align 8
  %34 = load i64*, i64** %3, align 8
  %35 = getelementptr inbounds i64, i64* %34, i32 1
  store i64* %35, i64** %3, align 8
  %36 = load i64*, i64** %3, align 8
  %37 = getelementptr inbounds i64, i64* %36, i64 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* %4, align 8
  %40 = load i64, i64* %6, align 8
  %41 = sub i64 %39, %40
  %42 = mul i64 %38, %41
  %43 = udiv i64 %42, 255
  store i64 %43, i64* %7, align 8
  %44 = load i64*, i64** %3, align 8
  %45 = getelementptr inbounds i64, i64* %44, i32 1
  store i64* %45, i64** %3, align 8
  %46 = load i64, i64* %4, align 8
  %47 = load i64, i64* %6, align 8
  %48 = sub i64 %46, %47
  %49 = load i64, i64* %7, align 8
  %50 = sub i64 %48, %49
  store i64 %50, i64* %8, align 8
  %51 = load i64*, i64** %3, align 8
  %52 = getelementptr inbounds i64, i64* %51, i64 0
  %53 = load i64, i64* %52, align 8
  %54 = and i64 %53, 1
  %55 = trunc i64 %54 to i32
  store i32 %55, i32* %9, align 4
  %56 = load i64*, i64** %3, align 8
  %57 = getelementptr inbounds i64, i64* %56, i64 0
  %58 = load i64, i64* %57, align 8
  %59 = and i64 %58, 4
  %60 = trunc i64 %59 to i32
  store i32 %60, i32* %10, align 4
  %61 = load i64*, i64** %3, align 8
  %62 = getelementptr inbounds i64, i64* %61, i32 1
  store i64* %62, i64** %3, align 8
  br label %63

63:                                               ; preds = %25, %2
  %64 = load i64*, i64** %3, align 8
  %65 = load i64, i64* %6, align 8
  %66 = load i32*, i32** %12, align 8
  %67 = call i32* @BN_bin2bn(i64* %64, i64 %65, i32* %66)
  %68 = load i32*, i32** %12, align 8
  %69 = icmp eq i32* %67, %68
  %70 = zext i1 %69 to i32
  %71 = call i32 @OPENSSL_assert(i32 %70)
  %72 = load i32*, i32** %12, align 8
  %73 = load i32, i32* %9, align 4
  %74 = call i32 @BN_set_negative(i32* %72, i32 %73)
  %75 = load i64*, i64** %3, align 8
  %76 = load i64, i64* %6, align 8
  %77 = getelementptr inbounds i64, i64* %75, i64 %76
  %78 = load i64, i64* %7, align 8
  %79 = load i32*, i32** %13, align 8
  %80 = call i32* @BN_bin2bn(i64* %77, i64 %78, i32* %79)
  %81 = load i32*, i32** %13, align 8
  %82 = icmp eq i32* %80, %81
  %83 = zext i1 %82 to i32
  %84 = call i32 @OPENSSL_assert(i32 %83)
  %85 = load i64*, i64** %3, align 8
  %86 = load i64, i64* %6, align 8
  %87 = getelementptr inbounds i64, i64* %85, i64 %86
  %88 = load i64, i64* %7, align 8
  %89 = getelementptr inbounds i64, i64* %87, i64 %88
  %90 = load i64, i64* %8, align 8
  %91 = load i32*, i32** %14, align 8
  %92 = call i32* @BN_bin2bn(i64* %89, i64 %90, i32* %91)
  %93 = load i32*, i32** %14, align 8
  %94 = icmp eq i32* %92, %93
  %95 = zext i1 %94 to i32
  %96 = call i32 @OPENSSL_assert(i32 %95)
  %97 = load i32*, i32** %14, align 8
  %98 = load i32, i32* %10, align 4
  %99 = call i32 @BN_set_negative(i32* %97, i32 %98)
  %100 = load i32*, i32** %14, align 8
  %101 = call i64 @BN_is_zero(i32* %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %63
  store i32 1, i32* %5, align 4
  br label %148

104:                                              ; preds = %63
  %105 = load i32*, i32** %15, align 8
  %106 = load i32*, i32** %12, align 8
  %107 = load i32*, i32** %13, align 8
  %108 = load i32*, i32** %14, align 8
  %109 = load i32*, i32** %11, align 8
  %110 = call i32 @BN_mod_exp(i32* %105, i32* %106, i32* %107, i32* %108, i32* %109)
  %111 = call i32 @OPENSSL_assert(i32 %110)
  %112 = load i32*, i32** %16, align 8
  %113 = load i32*, i32** %12, align 8
  %114 = load i32*, i32** %13, align 8
  %115 = load i32*, i32** %14, align 8
  %116 = load i32*, i32** %11, align 8
  %117 = call i32 @BN_mod_exp_simple(i32* %112, i32* %113, i32* %114, i32* %115, i32* %116)
  %118 = call i32 @OPENSSL_assert(i32 %117)
  %119 = load i32*, i32** %15, align 8
  %120 = load i32*, i32** %16, align 8
  %121 = call i64 @BN_cmp(i32* %119, i32* %120)
  %122 = icmp eq i64 %121, 0
  %123 = zext i1 %122 to i32
  store i32 %123, i32* %5, align 4
  %124 = load i32, i32* %5, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %147, label %126

126:                                              ; preds = %104
  %127 = load i32, i32* @stdout, align 4
  %128 = load i32*, i32** %12, align 8
  %129 = call i32 @BN_print_fp(i32 %127, i32* %128)
  %130 = call i32 @putchar(i8 signext 10)
  %131 = load i32, i32* @stdout, align 4
  %132 = load i32*, i32** %13, align 8
  %133 = call i32 @BN_print_fp(i32 %131, i32* %132)
  %134 = call i32 @putchar(i8 signext 10)
  %135 = load i32, i32* @stdout, align 4
  %136 = load i32*, i32** %14, align 8
  %137 = call i32 @BN_print_fp(i32 %135, i32* %136)
  %138 = call i32 @putchar(i8 signext 10)
  %139 = load i32, i32* @stdout, align 4
  %140 = load i32*, i32** %15, align 8
  %141 = call i32 @BN_print_fp(i32 %139, i32* %140)
  %142 = call i32 @putchar(i8 signext 10)
  %143 = load i32, i32* @stdout, align 4
  %144 = load i32*, i32** %16, align 8
  %145 = call i32 @BN_print_fp(i32 %143, i32* %144)
  %146 = call i32 @putchar(i8 signext 10)
  br label %147

147:                                              ; preds = %126, %104
  br label %148

148:                                              ; preds = %147, %103
  %149 = load i32, i32* %5, align 4
  %150 = call i32 @OPENSSL_assert(i32 %149)
  %151 = load i32*, i32** %12, align 8
  %152 = call i32 @BN_free(i32* %151)
  %153 = load i32*, i32** %13, align 8
  %154 = call i32 @BN_free(i32* %153)
  %155 = load i32*, i32** %14, align 8
  %156 = call i32 @BN_free(i32* %155)
  %157 = load i32*, i32** %15, align 8
  %158 = call i32 @BN_free(i32* %157)
  %159 = load i32*, i32** %16, align 8
  %160 = call i32 @BN_free(i32* %159)
  %161 = load i32*, i32** %11, align 8
  %162 = call i32 @BN_CTX_free(i32* %161)
  %163 = call i32 (...) @ERR_clear_error()
  ret i32 0
}

declare dso_local i32* @BN_new(...) #1

declare dso_local i32* @BN_CTX_new(...) #1

declare dso_local i32 @OPENSSL_assert(i32) #1

declare dso_local i32* @BN_bin2bn(i64*, i64, i32*) #1

declare dso_local i32 @BN_set_negative(i32*, i32) #1

declare dso_local i64 @BN_is_zero(i32*) #1

declare dso_local i32 @BN_mod_exp(i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @BN_mod_exp_simple(i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i64 @BN_cmp(i32*, i32*) #1

declare dso_local i32 @BN_print_fp(i32, i32*) #1

declare dso_local i32 @putchar(i8 signext) #1

declare dso_local i32 @BN_free(i32*) #1

declare dso_local i32 @BN_CTX_free(i32*) #1

declare dso_local i32 @ERR_clear_error(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
