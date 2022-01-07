; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_bntest.c_test_gf2m_modsolvequad.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_bntest.c_test_gf2m_modsolvequad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@p0 = common dso_local global i32 0, align 4
@p1 = common dso_local global i32 0, align 4
@NUM0 = common dso_local global i32 0, align 4
@ctx = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"%d tests found no roots; probably an error\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @test_gf2m_modsolvequad to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_gf2m_modsolvequad() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca [2 x i32*], align 16
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* null, i32** %1, align 8
  %11 = bitcast [2 x i32*]* %2 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %11, i8 0, i64 16, i1 false)
  store i32* null, i32** %3, align 8
  store i32* null, i32** %4, align 8
  store i32* null, i32** %5, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %10, align 4
  %12 = call i32* (...) @BN_new()
  store i32* %12, i32** %1, align 8
  %13 = call i32 @TEST_ptr(i32* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %37

15:                                               ; preds = %0
  %16 = call i32* (...) @BN_new()
  %17 = getelementptr inbounds [2 x i32*], [2 x i32*]* %2, i64 0, i64 0
  store i32* %16, i32** %17, align 16
  %18 = call i32 @TEST_ptr(i32* %16)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %37

20:                                               ; preds = %15
  %21 = call i32* (...) @BN_new()
  %22 = getelementptr inbounds [2 x i32*], [2 x i32*]* %2, i64 0, i64 1
  store i32* %21, i32** %22, align 8
  %23 = call i32 @TEST_ptr(i32* %21)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %37

25:                                               ; preds = %20
  %26 = call i32* (...) @BN_new()
  store i32* %26, i32** %3, align 8
  %27 = call i32 @TEST_ptr(i32* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %25
  %30 = call i32* (...) @BN_new()
  store i32* %30, i32** %4, align 8
  %31 = call i32 @TEST_ptr(i32* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %29
  %34 = call i32* (...) @BN_new()
  store i32* %34, i32** %5, align 8
  %35 = call i32 @TEST_ptr(i32* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %33, %29, %25, %20, %15, %0
  br label %138

38:                                               ; preds = %33
  %39 = load i32, i32* @p0, align 4
  %40 = getelementptr inbounds [2 x i32*], [2 x i32*]* %2, i64 0, i64 0
  %41 = load i32*, i32** %40, align 16
  %42 = call i32 @BN_GF2m_arr2poly(i32 %39, i32* %41)
  %43 = call i64 @TEST_true(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %38
  %46 = load i32, i32* @p1, align 4
  %47 = getelementptr inbounds [2 x i32*], [2 x i32*]* %2, i64 0, i64 1
  %48 = load i32*, i32** %47, align 8
  %49 = call i32 @BN_GF2m_arr2poly(i32 %46, i32* %48)
  %50 = call i64 @TEST_true(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %45, %38
  br label %138

53:                                               ; preds = %45
  store i32 0, i32* %6, align 4
  br label %54

54:                                               ; preds = %127, %53
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* @NUM0, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %130

58:                                               ; preds = %54
  %59 = load i32*, i32** %1, align 8
  %60 = call i32 @BN_bntest_rand(i32* %59, i32 512, i32 0, i32 0)
  %61 = call i64 @TEST_true(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %58
  br label %138

64:                                               ; preds = %58
  store i32 0, i32* %7, align 4
  br label %65

65:                                               ; preds = %123, %64
  %66 = load i32, i32* %7, align 4
  %67 = icmp slt i32 %66, 2
  br i1 %67, label %68, label %126

68:                                               ; preds = %65
  %69 = load i32*, i32** %3, align 8
  %70 = load i32*, i32** %1, align 8
  %71 = load i32, i32* %7, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds [2 x i32*], [2 x i32*]* %2, i64 0, i64 %72
  %74 = load i32*, i32** %73, align 8
  %75 = load i32, i32* @ctx, align 4
  %76 = call i32 @BN_GF2m_mod_solve_quad(i32* %69, i32* %70, i32* %74, i32 %75)
  store i32 %76, i32* %9, align 4
  %77 = load i32, i32* %9, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %122

79:                                               ; preds = %68
  %80 = load i32, i32* %8, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %8, align 4
  %82 = load i32*, i32** %4, align 8
  %83 = load i32*, i32** %3, align 8
  %84 = load i32, i32* %7, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds [2 x i32*], [2 x i32*]* %2, i64 0, i64 %85
  %87 = load i32*, i32** %86, align 8
  %88 = load i32, i32* @ctx, align 4
  %89 = call i32 @BN_GF2m_mod_sqr(i32* %82, i32* %83, i32* %87, i32 %88)
  %90 = call i64 @TEST_true(i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %120

92:                                               ; preds = %79
  %93 = load i32*, i32** %4, align 8
  %94 = load i32*, i32** %3, align 8
  %95 = load i32*, i32** %4, align 8
  %96 = call i32 @BN_GF2m_add(i32* %93, i32* %94, i32* %95)
  %97 = call i64 @TEST_true(i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %120

99:                                               ; preds = %92
  %100 = load i32*, i32** %5, align 8
  %101 = load i32*, i32** %1, align 8
  %102 = load i32, i32* %7, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds [2 x i32*], [2 x i32*]* %2, i64 0, i64 %103
  %105 = load i32*, i32** %104, align 8
  %106 = call i32 @BN_GF2m_mod(i32* %100, i32* %101, i32* %105)
  %107 = call i64 @TEST_true(i32 %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %120

109:                                              ; preds = %99
  %110 = load i32*, i32** %5, align 8
  %111 = load i32*, i32** %5, align 8
  %112 = load i32*, i32** %4, align 8
  %113 = call i32 @BN_GF2m_add(i32* %110, i32* %111, i32* %112)
  %114 = call i64 @TEST_true(i32 %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %120

116:                                              ; preds = %109
  %117 = load i32*, i32** %5, align 8
  %118 = call i64 @TEST_BN_eq_zero(i32* %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %121, label %120

120:                                              ; preds = %116, %109, %99, %92, %79
  br label %138

121:                                              ; preds = %116
  br label %122

122:                                              ; preds = %121, %68
  br label %123

123:                                              ; preds = %122
  %124 = load i32, i32* %7, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %7, align 4
  br label %65

126:                                              ; preds = %65
  br label %127

127:                                              ; preds = %126
  %128 = load i32, i32* %6, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %6, align 4
  br label %54

130:                                              ; preds = %54
  %131 = load i32, i32* %8, align 4
  %132 = call i32 @TEST_int_ge(i32 %131, i32 0)
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %137, label %134

134:                                              ; preds = %130
  %135 = load i32, i32* @NUM0, align 4
  %136 = call i32 @TEST_info(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %135)
  br label %138

137:                                              ; preds = %130
  store i32 1, i32* %10, align 4
  br label %138

138:                                              ; preds = %137, %134, %120, %63, %52, %37
  %139 = load i32*, i32** %1, align 8
  %140 = call i32 @BN_free(i32* %139)
  %141 = getelementptr inbounds [2 x i32*], [2 x i32*]* %2, i64 0, i64 0
  %142 = load i32*, i32** %141, align 16
  %143 = call i32 @BN_free(i32* %142)
  %144 = getelementptr inbounds [2 x i32*], [2 x i32*]* %2, i64 0, i64 1
  %145 = load i32*, i32** %144, align 8
  %146 = call i32 @BN_free(i32* %145)
  %147 = load i32*, i32** %3, align 8
  %148 = call i32 @BN_free(i32* %147)
  %149 = load i32*, i32** %4, align 8
  %150 = call i32 @BN_free(i32* %149)
  %151 = load i32*, i32** %5, align 8
  %152 = call i32 @BN_free(i32* %151)
  %153 = load i32, i32* %10, align 4
  ret i32 %153
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @TEST_ptr(i32*) #2

declare dso_local i32* @BN_new(...) #2

declare dso_local i64 @TEST_true(i32) #2

declare dso_local i32 @BN_GF2m_arr2poly(i32, i32*) #2

declare dso_local i32 @BN_bntest_rand(i32*, i32, i32, i32) #2

declare dso_local i32 @BN_GF2m_mod_solve_quad(i32*, i32*, i32*, i32) #2

declare dso_local i32 @BN_GF2m_mod_sqr(i32*, i32*, i32*, i32) #2

declare dso_local i32 @BN_GF2m_add(i32*, i32*, i32*) #2

declare dso_local i32 @BN_GF2m_mod(i32*, i32*, i32*) #2

declare dso_local i64 @TEST_BN_eq_zero(i32*) #2

declare dso_local i32 @TEST_int_ge(i32, i32) #2

declare dso_local i32 @TEST_info(i8*, i32) #2

declare dso_local i32 @BN_free(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
