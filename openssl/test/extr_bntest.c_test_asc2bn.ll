; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_bntest.c_test_asc2bn.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_bntest.c_test_asc2bn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"256\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"-42\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"0x1234\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"0X1234\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"-0xabcd\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"-0\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"123trailing garbage is ignored\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @test_asc2bn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_asc2bn() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  store i32* null, i32** %1, align 8
  store i32 0, i32* %2, align 4
  %3 = call i32* (...) @BN_new()
  store i32* %3, i32** %1, align 8
  %4 = call i32 @TEST_ptr(i32* %3)
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %0
  br label %112

7:                                                ; preds = %0
  %8 = call i32 @BN_asc2bn(i32** %1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %9 = call i32 @TEST_true(i32 %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %19

11:                                               ; preds = %7
  %12 = load i32*, i32** %1, align 8
  %13 = call i32 @TEST_BN_eq_zero(i32* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %11
  %16 = load i32*, i32** %1, align 8
  %17 = call i32 @TEST_BN_ge_zero(i32* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %15, %11, %7
  br label %112

20:                                               ; preds = %15
  %21 = call i32 @BN_asc2bn(i32** %1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %22 = call i32 @TEST_true(i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %20
  %25 = load i32*, i32** %1, align 8
  %26 = call i32 @TEST_BN_eq_word(i32* %25, i32 256)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %24
  %29 = load i32*, i32** %1, align 8
  %30 = call i32 @TEST_BN_ge_zero(i32* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %28, %24, %20
  br label %112

33:                                               ; preds = %28
  %34 = call i32 @BN_asc2bn(i32** %1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %35 = call i32 @TEST_true(i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %33
  %38 = load i32*, i32** %1, align 8
  %39 = call i32 @TEST_BN_abs_eq_word(i32* %38, i32 42)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %37
  %42 = load i32*, i32** %1, align 8
  %43 = call i32 @TEST_BN_lt_zero(i32* %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %41, %37, %33
  br label %112

46:                                               ; preds = %41
  %47 = call i32 @BN_asc2bn(i32** %1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %48 = call i32 @TEST_true(i32 %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %58

50:                                               ; preds = %46
  %51 = load i32*, i32** %1, align 8
  %52 = call i32 @TEST_BN_eq_word(i32* %51, i32 4660)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %50
  %55 = load i32*, i32** %1, align 8
  %56 = call i32 @TEST_BN_ge_zero(i32* %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %54, %50, %46
  br label %112

59:                                               ; preds = %54
  %60 = call i32 @BN_asc2bn(i32** %1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %61 = call i32 @TEST_true(i32 %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %71

63:                                               ; preds = %59
  %64 = load i32*, i32** %1, align 8
  %65 = call i32 @TEST_BN_eq_word(i32* %64, i32 4660)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %63
  %68 = load i32*, i32** %1, align 8
  %69 = call i32 @TEST_BN_ge_zero(i32* %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %67, %63, %59
  br label %112

72:                                               ; preds = %67
  %73 = call i32 @BN_asc2bn(i32** %1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %74 = call i32 @TEST_true(i32 %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %84

76:                                               ; preds = %72
  %77 = load i32*, i32** %1, align 8
  %78 = call i32 @TEST_BN_abs_eq_word(i32* %77, i32 43981)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %76
  %81 = load i32*, i32** %1, align 8
  %82 = call i32 @TEST_BN_lt_zero(i32* %81)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %85, label %84

84:                                               ; preds = %80, %76, %72
  br label %112

85:                                               ; preds = %80
  %86 = call i32 @BN_asc2bn(i32** %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  %87 = call i32 @TEST_true(i32 %86)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %97

89:                                               ; preds = %85
  %90 = load i32*, i32** %1, align 8
  %91 = call i32 @TEST_BN_eq_zero(i32* %90)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %89
  %94 = load i32*, i32** %1, align 8
  %95 = call i32 @TEST_BN_ge_zero(i32* %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %98, label %97

97:                                               ; preds = %93, %89, %85
  br label %112

98:                                               ; preds = %93
  %99 = call i32 @BN_asc2bn(i32** %1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0))
  %100 = call i32 @TEST_true(i32 %99)
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %110

102:                                              ; preds = %98
  %103 = load i32*, i32** %1, align 8
  %104 = call i32 @TEST_BN_eq_word(i32* %103, i32 123)
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %110

106:                                              ; preds = %102
  %107 = load i32*, i32** %1, align 8
  %108 = call i32 @TEST_BN_ge_zero(i32* %107)
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %111, label %110

110:                                              ; preds = %106, %102, %98
  br label %112

111:                                              ; preds = %106
  store i32 1, i32* %2, align 4
  br label %112

112:                                              ; preds = %111, %110, %97, %84, %71, %58, %45, %32, %19, %6
  %113 = load i32*, i32** %1, align 8
  %114 = call i32 @BN_free(i32* %113)
  %115 = load i32, i32* %2, align 4
  ret i32 %115
}

declare dso_local i32 @TEST_ptr(i32*) #1

declare dso_local i32* @BN_new(...) #1

declare dso_local i32 @TEST_true(i32) #1

declare dso_local i32 @BN_asc2bn(i32**, i8*) #1

declare dso_local i32 @TEST_BN_eq_zero(i32*) #1

declare dso_local i32 @TEST_BN_ge_zero(i32*) #1

declare dso_local i32 @TEST_BN_eq_word(i32*, i32) #1

declare dso_local i32 @TEST_BN_abs_eq_word(i32*, i32) #1

declare dso_local i32 @TEST_BN_lt_zero(i32*) #1

declare dso_local i32 @BN_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
