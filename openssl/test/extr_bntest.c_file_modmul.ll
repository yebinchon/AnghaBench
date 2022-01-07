; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_bntest.c_file_modmul.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_bntest.c_file_modmul.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"B\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"M\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"ModMul\00", align 1
@ctx = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [14 x i8] c"A * B (mod M)\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"A * B (mod M) (mont)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @file_modmul to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @file_modmul(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  store i32* null, i32** %3, align 8
  store i32* null, i32** %4, align 8
  store i32* null, i32** %5, align 8
  store i32* null, i32** %6, align 8
  store i32* null, i32** %7, align 8
  store i32 0, i32* %8, align 4
  %12 = load i32*, i32** %2, align 8
  %13 = call i32* @getBN(i32* %12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %13, i32** %3, align 8
  %14 = call i32 @TEST_ptr(i32* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %35

16:                                               ; preds = %1
  %17 = load i32*, i32** %2, align 8
  %18 = call i32* @getBN(i32* %17, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %18, i32** %4, align 8
  %19 = call i32 @TEST_ptr(i32* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %35

21:                                               ; preds = %16
  %22 = load i32*, i32** %2, align 8
  %23 = call i32* @getBN(i32* %22, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i32* %23, i32** %5, align 8
  %24 = call i32 @TEST_ptr(i32* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %35

26:                                               ; preds = %21
  %27 = load i32*, i32** %2, align 8
  %28 = call i32* @getBN(i32* %27, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  store i32* %28, i32** %6, align 8
  %29 = call i32 @TEST_ptr(i32* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %26
  %32 = call i32* (...) @BN_new()
  store i32* %32, i32** %7, align 8
  %33 = call i32 @TEST_ptr(i32* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %31, %26, %21, %16, %1
  br label %142

36:                                               ; preds = %31
  %37 = load i32*, i32** %7, align 8
  %38 = load i32*, i32** %3, align 8
  %39 = load i32*, i32** %4, align 8
  %40 = load i32*, i32** %5, align 8
  %41 = load i32, i32* @ctx, align 4
  %42 = call i32 @BN_mod_mul(i32* %37, i32* %38, i32* %39, i32* %40, i32 %41)
  %43 = call i32 @TEST_true(i32 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %36
  %46 = load i32*, i32** %6, align 8
  %47 = load i32*, i32** %7, align 8
  %48 = call i32 @equalBN(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i32* %46, i32* %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %45, %36
  br label %142

51:                                               ; preds = %45
  %52 = load i32*, i32** %5, align 8
  %53 = call i64 @BN_is_odd(i32* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %141

55:                                               ; preds = %51
  %56 = call i32* (...) @BN_MONT_CTX_new()
  store i32* %56, i32** %9, align 8
  %57 = call i32* (...) @BN_new()
  store i32* %57, i32** %10, align 8
  %58 = call i32* (...) @BN_new()
  store i32* %58, i32** %11, align 8
  %59 = load i32*, i32** %9, align 8
  %60 = icmp eq i32* %59, null
  br i1 %60, label %128, label %61

61:                                               ; preds = %55
  %62 = load i32*, i32** %10, align 8
  %63 = icmp eq i32* %62, null
  br i1 %63, label %128, label %64

64:                                               ; preds = %61
  %65 = load i32*, i32** %11, align 8
  %66 = icmp eq i32* %65, null
  br i1 %66, label %128, label %67

67:                                               ; preds = %64
  %68 = load i32*, i32** %9, align 8
  %69 = load i32*, i32** %5, align 8
  %70 = load i32, i32* @ctx, align 4
  %71 = call i32 @BN_MONT_CTX_set(i32* %68, i32* %69, i32 %70)
  %72 = call i32 @TEST_true(i32 %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %128

74:                                               ; preds = %67
  %75 = load i32*, i32** %10, align 8
  %76 = load i32*, i32** %3, align 8
  %77 = load i32*, i32** %5, align 8
  %78 = load i32, i32* @ctx, align 4
  %79 = call i32 @BN_nnmod(i32* %75, i32* %76, i32* %77, i32 %78)
  %80 = call i32 @TEST_true(i32 %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %128

82:                                               ; preds = %74
  %83 = load i32*, i32** %11, align 8
  %84 = load i32*, i32** %4, align 8
  %85 = load i32*, i32** %5, align 8
  %86 = load i32, i32* @ctx, align 4
  %87 = call i32 @BN_nnmod(i32* %83, i32* %84, i32* %85, i32 %86)
  %88 = call i32 @TEST_true(i32 %87)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %128

90:                                               ; preds = %82
  %91 = load i32*, i32** %10, align 8
  %92 = load i32*, i32** %10, align 8
  %93 = load i32*, i32** %9, align 8
  %94 = load i32, i32* @ctx, align 4
  %95 = call i32 @BN_to_montgomery(i32* %91, i32* %92, i32* %93, i32 %94)
  %96 = call i32 @TEST_true(i32 %95)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %128

98:                                               ; preds = %90
  %99 = load i32*, i32** %11, align 8
  %100 = load i32*, i32** %11, align 8
  %101 = load i32*, i32** %9, align 8
  %102 = load i32, i32* @ctx, align 4
  %103 = call i32 @BN_to_montgomery(i32* %99, i32* %100, i32* %101, i32 %102)
  %104 = call i32 @TEST_true(i32 %103)
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %128

106:                                              ; preds = %98
  %107 = load i32*, i32** %7, align 8
  %108 = load i32*, i32** %10, align 8
  %109 = load i32*, i32** %11, align 8
  %110 = load i32*, i32** %9, align 8
  %111 = load i32, i32* @ctx, align 4
  %112 = call i32 @BN_mod_mul_montgomery(i32* %107, i32* %108, i32* %109, i32* %110, i32 %111)
  %113 = call i32 @TEST_true(i32 %112)
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %128

115:                                              ; preds = %106
  %116 = load i32*, i32** %7, align 8
  %117 = load i32*, i32** %7, align 8
  %118 = load i32*, i32** %9, align 8
  %119 = load i32, i32* @ctx, align 4
  %120 = call i32 @BN_from_montgomery(i32* %116, i32* %117, i32* %118, i32 %119)
  %121 = call i32 @TEST_true(i32 %120)
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %128

123:                                              ; preds = %115
  %124 = load i32*, i32** %6, align 8
  %125 = load i32*, i32** %7, align 8
  %126 = call i32 @equalBN(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i32* %124, i32* %125)
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %129, label %128

128:                                              ; preds = %123, %115, %106, %98, %90, %82, %74, %67, %64, %61, %55
  store i32 0, i32* %8, align 4
  br label %130

129:                                              ; preds = %123
  store i32 1, i32* %8, align 4
  br label %130

130:                                              ; preds = %129, %128
  %131 = load i32*, i32** %9, align 8
  %132 = call i32 @BN_MONT_CTX_free(i32* %131)
  %133 = load i32*, i32** %10, align 8
  %134 = call i32 @BN_free(i32* %133)
  %135 = load i32*, i32** %11, align 8
  %136 = call i32 @BN_free(i32* %135)
  %137 = load i32, i32* %8, align 4
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %139, label %140

139:                                              ; preds = %130
  br label %142

140:                                              ; preds = %130
  br label %141

141:                                              ; preds = %140, %51
  store i32 1, i32* %8, align 4
  br label %142

142:                                              ; preds = %141, %139, %50, %35
  %143 = load i32*, i32** %3, align 8
  %144 = call i32 @BN_free(i32* %143)
  %145 = load i32*, i32** %4, align 8
  %146 = call i32 @BN_free(i32* %145)
  %147 = load i32*, i32** %5, align 8
  %148 = call i32 @BN_free(i32* %147)
  %149 = load i32*, i32** %6, align 8
  %150 = call i32 @BN_free(i32* %149)
  %151 = load i32*, i32** %7, align 8
  %152 = call i32 @BN_free(i32* %151)
  %153 = load i32, i32* %8, align 4
  ret i32 %153
}

declare dso_local i32 @TEST_ptr(i32*) #1

declare dso_local i32* @getBN(i32*, i8*) #1

declare dso_local i32* @BN_new(...) #1

declare dso_local i32 @TEST_true(i32) #1

declare dso_local i32 @BN_mod_mul(i32*, i32*, i32*, i32*, i32) #1

declare dso_local i32 @equalBN(i8*, i32*, i32*) #1

declare dso_local i64 @BN_is_odd(i32*) #1

declare dso_local i32* @BN_MONT_CTX_new(...) #1

declare dso_local i32 @BN_MONT_CTX_set(i32*, i32*, i32) #1

declare dso_local i32 @BN_nnmod(i32*, i32*, i32*, i32) #1

declare dso_local i32 @BN_to_montgomery(i32*, i32*, i32*, i32) #1

declare dso_local i32 @BN_mod_mul_montgomery(i32*, i32*, i32*, i32*, i32) #1

declare dso_local i32 @BN_from_montgomery(i32*, i32*, i32*, i32) #1

declare dso_local i32 @BN_MONT_CTX_free(i32*) #1

declare dso_local i32 @BN_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
