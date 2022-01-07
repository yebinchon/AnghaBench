; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_bntest.c_file_modexp.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_bntest.c_file_modexp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"E\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"M\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"ModExp\00", align 1
@ctx = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [14 x i8] c"A ^ E (mod M)\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"A ^ E (mod M) (mont)\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"A ^ E (mod M) (mont const\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"050505050505\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"02\00", align 1
@.str.9 = private unnamed_addr constant [379 x i8] c"414141414141414141414127414141414141414141414141414141414141414141414141414141414141414141414141414141414141414141414141414141414141414141414141414141800000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @file_modexp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @file_modexp(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  store i32* null, i32** %3, align 8
  store i32* null, i32** %4, align 8
  store i32* null, i32** %5, align 8
  store i32* null, i32** %6, align 8
  store i32* null, i32** %7, align 8
  store i32* null, i32** %8, align 8
  store i32* null, i32** %9, align 8
  store i32* null, i32** %10, align 8
  store i32 0, i32* %11, align 4
  %12 = load i32*, i32** %2, align 8
  %13 = call i32* @getBN(i32* %12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %13, i32** %3, align 8
  %14 = call i32 @TEST_ptr(i32* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %39

16:                                               ; preds = %1
  %17 = load i32*, i32** %2, align 8
  %18 = call i32* @getBN(i32* %17, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %18, i32** %4, align 8
  %19 = call i32 @TEST_ptr(i32* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %39

21:                                               ; preds = %16
  %22 = load i32*, i32** %2, align 8
  %23 = call i32* @getBN(i32* %22, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i32* %23, i32** %5, align 8
  %24 = call i32 @TEST_ptr(i32* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %39

26:                                               ; preds = %21
  %27 = load i32*, i32** %2, align 8
  %28 = call i32* @getBN(i32* %27, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  store i32* %28, i32** %6, align 8
  %29 = call i32 @TEST_ptr(i32* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %26
  %32 = call i32* (...) @BN_new()
  store i32* %32, i32** %7, align 8
  %33 = call i32 @TEST_ptr(i32* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %31
  %36 = call i32* (...) @BN_new()
  store i32* %36, i32** %10, align 8
  %37 = call i32 @TEST_ptr(i32* %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %35, %31, %26, %21, %16, %1
  br label %116

40:                                               ; preds = %35
  %41 = load i32*, i32** %7, align 8
  %42 = load i32*, i32** %3, align 8
  %43 = load i32*, i32** %4, align 8
  %44 = load i32*, i32** %5, align 8
  %45 = load i32, i32* @ctx, align 4
  %46 = call i32 @BN_mod_exp(i32* %41, i32* %42, i32* %43, i32* %44, i32 %45)
  %47 = call i32 @TEST_true(i32 %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %40
  %50 = load i32*, i32** %6, align 8
  %51 = load i32*, i32** %7, align 8
  %52 = call i32 @equalBN(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i32* %50, i32* %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %49, %40
  br label %116

55:                                               ; preds = %49
  %56 = load i32*, i32** %5, align 8
  %57 = call i64 @BN_is_odd(i32* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %89

59:                                               ; preds = %55
  %60 = load i32*, i32** %7, align 8
  %61 = load i32*, i32** %3, align 8
  %62 = load i32*, i32** %4, align 8
  %63 = load i32*, i32** %5, align 8
  %64 = load i32, i32* @ctx, align 4
  %65 = call i32 @BN_mod_exp_mont(i32* %60, i32* %61, i32* %62, i32* %63, i32 %64, i32* null)
  %66 = call i32 @TEST_true(i32 %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %87

68:                                               ; preds = %59
  %69 = load i32*, i32** %6, align 8
  %70 = load i32*, i32** %7, align 8
  %71 = call i32 @equalBN(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i32* %69, i32* %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %87

73:                                               ; preds = %68
  %74 = load i32*, i32** %7, align 8
  %75 = load i32*, i32** %3, align 8
  %76 = load i32*, i32** %4, align 8
  %77 = load i32*, i32** %5, align 8
  %78 = load i32, i32* @ctx, align 4
  %79 = call i32 @BN_mod_exp_mont_consttime(i32* %74, i32* %75, i32* %76, i32* %77, i32 %78, i32* null)
  %80 = call i32 @TEST_true(i32 %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %73
  %83 = load i32*, i32** %6, align 8
  %84 = load i32*, i32** %7, align 8
  %85 = call i32 @equalBN(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i32* %83, i32* %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %88, label %87

87:                                               ; preds = %82, %73, %68, %59
  br label %116

88:                                               ; preds = %82
  br label %89

89:                                               ; preds = %88, %55
  %90 = call i32 @BN_hex2bn(i32** %3, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0))
  %91 = call i32 @BN_hex2bn(i32** %8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0))
  %92 = call i32 @BN_hex2bn(i32** %9, i8* getelementptr inbounds ([379 x i8], [379 x i8]* @.str.9, i64 0, i64 0))
  %93 = load i32*, i32** %10, align 8
  %94 = load i32*, i32** %3, align 8
  %95 = load i32*, i32** %8, align 8
  %96 = load i32*, i32** %9, align 8
  %97 = load i32, i32* @ctx, align 4
  %98 = call i32 @BN_mod_exp(i32* %93, i32* %94, i32* %95, i32* %96, i32 %97)
  %99 = call i32 @TEST_true(i32 %98)
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %114

101:                                              ; preds = %89
  %102 = load i32*, i32** %4, align 8
  %103 = load i32*, i32** %3, align 8
  %104 = load i32*, i32** %3, align 8
  %105 = load i32, i32* @ctx, align 4
  %106 = call i32 @BN_mul(i32* %102, i32* %103, i32* %104, i32 %105)
  %107 = call i32 @TEST_true(i32 %106)
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %114

109:                                              ; preds = %101
  %110 = load i32*, i32** %10, align 8
  %111 = load i32*, i32** %4, align 8
  %112 = call i32 @TEST_BN_eq(i32* %110, i32* %111)
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %115, label %114

114:                                              ; preds = %109, %101, %89
  br label %116

115:                                              ; preds = %109
  store i32 1, i32* %11, align 4
  br label %116

116:                                              ; preds = %115, %114, %87, %54, %39
  %117 = load i32*, i32** %3, align 8
  %118 = call i32 @BN_free(i32* %117)
  %119 = load i32*, i32** %8, align 8
  %120 = call i32 @BN_free(i32* %119)
  %121 = load i32*, i32** %9, align 8
  %122 = call i32 @BN_free(i32* %121)
  %123 = load i32*, i32** %10, align 8
  %124 = call i32 @BN_free(i32* %123)
  %125 = load i32*, i32** %4, align 8
  %126 = call i32 @BN_free(i32* %125)
  %127 = load i32*, i32** %5, align 8
  %128 = call i32 @BN_free(i32* %127)
  %129 = load i32*, i32** %6, align 8
  %130 = call i32 @BN_free(i32* %129)
  %131 = load i32*, i32** %7, align 8
  %132 = call i32 @BN_free(i32* %131)
  %133 = load i32, i32* %11, align 4
  ret i32 %133
}

declare dso_local i32 @TEST_ptr(i32*) #1

declare dso_local i32* @getBN(i32*, i8*) #1

declare dso_local i32* @BN_new(...) #1

declare dso_local i32 @TEST_true(i32) #1

declare dso_local i32 @BN_mod_exp(i32*, i32*, i32*, i32*, i32) #1

declare dso_local i32 @equalBN(i8*, i32*, i32*) #1

declare dso_local i64 @BN_is_odd(i32*) #1

declare dso_local i32 @BN_mod_exp_mont(i32*, i32*, i32*, i32*, i32, i32*) #1

declare dso_local i32 @BN_mod_exp_mont_consttime(i32*, i32*, i32*, i32*, i32, i32*) #1

declare dso_local i32 @BN_hex2bn(i32**, i8*) #1

declare dso_local i32 @BN_mul(i32*, i32*, i32*, i32) #1

declare dso_local i32 @TEST_BN_eq(i32*, i32*) #1

declare dso_local i32 @BN_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
