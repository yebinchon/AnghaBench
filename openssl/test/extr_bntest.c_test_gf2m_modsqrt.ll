; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_bntest.c_test_gf2m_modsqrt.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_bntest.c_test_gf2m_modsqrt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@p0 = common dso_local global i32 0, align 4
@p1 = common dso_local global i32 0, align 4
@NUM0 = common dso_local global i32 0, align 4
@ctx = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @test_gf2m_modsqrt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_gf2m_modsqrt() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca [2 x i32*], align 16
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* null, i32** %1, align 8
  %10 = bitcast [2 x i32*]* %2 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %10, i8 0, i64 16, i1 false)
  store i32* null, i32** %3, align 8
  store i32* null, i32** %4, align 8
  store i32* null, i32** %5, align 8
  store i32* null, i32** %6, align 8
  store i32 0, i32* %9, align 4
  %11 = call i32* (...) @BN_new()
  store i32* %11, i32** %1, align 8
  %12 = call i32 @TEST_ptr(i32* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %40

14:                                               ; preds = %0
  %15 = call i32* (...) @BN_new()
  %16 = getelementptr inbounds [2 x i32*], [2 x i32*]* %2, i64 0, i64 0
  store i32* %15, i32** %16, align 16
  %17 = call i32 @TEST_ptr(i32* %15)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %40

19:                                               ; preds = %14
  %20 = call i32* (...) @BN_new()
  %21 = getelementptr inbounds [2 x i32*], [2 x i32*]* %2, i64 0, i64 1
  store i32* %20, i32** %21, align 8
  %22 = call i32 @TEST_ptr(i32* %20)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %40

24:                                               ; preds = %19
  %25 = call i32* (...) @BN_new()
  store i32* %25, i32** %3, align 8
  %26 = call i32 @TEST_ptr(i32* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %40

28:                                               ; preds = %24
  %29 = call i32* (...) @BN_new()
  store i32* %29, i32** %4, align 8
  %30 = call i32 @TEST_ptr(i32* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %28
  %33 = call i32* (...) @BN_new()
  store i32* %33, i32** %5, align 8
  %34 = call i32 @TEST_ptr(i32* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %32
  %37 = call i32* (...) @BN_new()
  store i32* %37, i32** %6, align 8
  %38 = call i32 @TEST_ptr(i32* %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %36, %32, %28, %24, %19, %14, %0
  br label %124

41:                                               ; preds = %36
  %42 = load i32, i32* @p0, align 4
  %43 = getelementptr inbounds [2 x i32*], [2 x i32*]* %2, i64 0, i64 0
  %44 = load i32*, i32** %43, align 16
  %45 = call i32 @BN_GF2m_arr2poly(i32 %42, i32* %44)
  %46 = call i64 @TEST_true(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %41
  %49 = load i32, i32* @p1, align 4
  %50 = getelementptr inbounds [2 x i32*], [2 x i32*]* %2, i64 0, i64 1
  %51 = load i32*, i32** %50, align 8
  %52 = call i32 @BN_GF2m_arr2poly(i32 %49, i32* %51)
  %53 = call i64 @TEST_true(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %48, %41
  br label %124

56:                                               ; preds = %48
  store i32 0, i32* %7, align 4
  br label %57

57:                                               ; preds = %120, %56
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* @NUM0, align 4
  %60 = icmp slt i32 %58, %59
  br i1 %60, label %61, label %123

61:                                               ; preds = %57
  %62 = load i32*, i32** %1, align 8
  %63 = call i32 @BN_bntest_rand(i32* %62, i32 512, i32 0, i32 0)
  %64 = call i64 @TEST_true(i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %61
  br label %124

67:                                               ; preds = %61
  store i32 0, i32* %8, align 4
  br label %68

68:                                               ; preds = %116, %67
  %69 = load i32, i32* %8, align 4
  %70 = icmp slt i32 %69, 2
  br i1 %70, label %71, label %119

71:                                               ; preds = %68
  %72 = load i32*, i32** %3, align 8
  %73 = load i32*, i32** %1, align 8
  %74 = load i32, i32* %8, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds [2 x i32*], [2 x i32*]* %2, i64 0, i64 %75
  %77 = load i32*, i32** %76, align 8
  %78 = call i32 @BN_GF2m_mod(i32* %72, i32* %73, i32* %77)
  %79 = call i64 @TEST_true(i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %114

81:                                               ; preds = %71
  %82 = load i32*, i32** %4, align 8
  %83 = load i32*, i32** %1, align 8
  %84 = load i32, i32* %8, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds [2 x i32*], [2 x i32*]* %2, i64 0, i64 %85
  %87 = load i32*, i32** %86, align 8
  %88 = load i32, i32* @ctx, align 4
  %89 = call i32 @BN_GF2m_mod_sqrt(i32* %82, i32* %83, i32* %87, i32 %88)
  %90 = call i64 @TEST_true(i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %114

92:                                               ; preds = %81
  %93 = load i32*, i32** %5, align 8
  %94 = load i32*, i32** %4, align 8
  %95 = load i32, i32* %8, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds [2 x i32*], [2 x i32*]* %2, i64 0, i64 %96
  %98 = load i32*, i32** %97, align 8
  %99 = load i32, i32* @ctx, align 4
  %100 = call i32 @BN_GF2m_mod_sqr(i32* %93, i32* %94, i32* %98, i32 %99)
  %101 = call i64 @TEST_true(i32 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %114

103:                                              ; preds = %92
  %104 = load i32*, i32** %6, align 8
  %105 = load i32*, i32** %3, align 8
  %106 = load i32*, i32** %5, align 8
  %107 = call i32 @BN_GF2m_add(i32* %104, i32* %105, i32* %106)
  %108 = call i64 @TEST_true(i32 %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %114

110:                                              ; preds = %103
  %111 = load i32*, i32** %6, align 8
  %112 = call i64 @TEST_BN_eq_zero(i32* %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %115, label %114

114:                                              ; preds = %110, %103, %92, %81, %71
  br label %124

115:                                              ; preds = %110
  br label %116

116:                                              ; preds = %115
  %117 = load i32, i32* %8, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %8, align 4
  br label %68

119:                                              ; preds = %68
  br label %120

120:                                              ; preds = %119
  %121 = load i32, i32* %7, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %7, align 4
  br label %57

123:                                              ; preds = %57
  store i32 1, i32* %9, align 4
  br label %124

124:                                              ; preds = %123, %114, %66, %55, %40
  %125 = load i32*, i32** %1, align 8
  %126 = call i32 @BN_free(i32* %125)
  %127 = getelementptr inbounds [2 x i32*], [2 x i32*]* %2, i64 0, i64 0
  %128 = load i32*, i32** %127, align 16
  %129 = call i32 @BN_free(i32* %128)
  %130 = getelementptr inbounds [2 x i32*], [2 x i32*]* %2, i64 0, i64 1
  %131 = load i32*, i32** %130, align 8
  %132 = call i32 @BN_free(i32* %131)
  %133 = load i32*, i32** %3, align 8
  %134 = call i32 @BN_free(i32* %133)
  %135 = load i32*, i32** %4, align 8
  %136 = call i32 @BN_free(i32* %135)
  %137 = load i32*, i32** %5, align 8
  %138 = call i32 @BN_free(i32* %137)
  %139 = load i32*, i32** %6, align 8
  %140 = call i32 @BN_free(i32* %139)
  %141 = load i32, i32* %9, align 4
  ret i32 %141
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @TEST_ptr(i32*) #2

declare dso_local i32* @BN_new(...) #2

declare dso_local i64 @TEST_true(i32) #2

declare dso_local i32 @BN_GF2m_arr2poly(i32, i32*) #2

declare dso_local i32 @BN_bntest_rand(i32*, i32, i32, i32) #2

declare dso_local i32 @BN_GF2m_mod(i32*, i32*, i32*) #2

declare dso_local i32 @BN_GF2m_mod_sqrt(i32*, i32*, i32*, i32) #2

declare dso_local i32 @BN_GF2m_mod_sqr(i32*, i32*, i32*, i32) #2

declare dso_local i32 @BN_GF2m_add(i32*, i32*, i32*) #2

declare dso_local i64 @TEST_BN_eq_zero(i32*) #2

declare dso_local i32 @BN_free(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
