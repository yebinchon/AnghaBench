; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_bntest.c_test_gf2m_mod.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_bntest.c_test_gf2m_mod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@p0 = common dso_local global i32 0, align 4
@p1 = common dso_local global i32 0, align 4
@NUM0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @test_gf2m_mod to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_gf2m_mod() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca [2 x i32*], align 16
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* null, i32** %1, align 8
  %9 = bitcast [2 x i32*]* %2 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %9, i8 0, i64 16, i1 false)
  store i32* null, i32** %3, align 8
  store i32* null, i32** %4, align 8
  store i32* null, i32** %5, align 8
  store i32 0, i32* %8, align 4
  %10 = call i32* (...) @BN_new()
  store i32* %10, i32** %1, align 8
  %11 = call i32 @TEST_ptr(i32* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %35

13:                                               ; preds = %0
  %14 = call i32* (...) @BN_new()
  %15 = getelementptr inbounds [2 x i32*], [2 x i32*]* %2, i64 0, i64 0
  store i32* %14, i32** %15, align 16
  %16 = call i32 @TEST_ptr(i32* %14)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %35

18:                                               ; preds = %13
  %19 = call i32* (...) @BN_new()
  %20 = getelementptr inbounds [2 x i32*], [2 x i32*]* %2, i64 0, i64 1
  store i32* %19, i32** %20, align 8
  %21 = call i32 @TEST_ptr(i32* %19)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %35

23:                                               ; preds = %18
  %24 = call i32* (...) @BN_new()
  store i32* %24, i32** %3, align 8
  %25 = call i32 @TEST_ptr(i32* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %23
  %28 = call i32* (...) @BN_new()
  store i32* %28, i32** %4, align 8
  %29 = call i32 @TEST_ptr(i32* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %27
  %32 = call i32* (...) @BN_new()
  store i32* %32, i32** %5, align 8
  %33 = call i32 @TEST_ptr(i32* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %31, %27, %23, %18, %13, %0
  br label %107

36:                                               ; preds = %31
  %37 = load i32, i32* @p0, align 4
  %38 = getelementptr inbounds [2 x i32*], [2 x i32*]* %2, i64 0, i64 0
  %39 = load i32*, i32** %38, align 16
  %40 = call i32 @BN_GF2m_arr2poly(i32 %37, i32* %39)
  %41 = call i64 @TEST_true(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %36
  %44 = load i32, i32* @p1, align 4
  %45 = getelementptr inbounds [2 x i32*], [2 x i32*]* %2, i64 0, i64 1
  %46 = load i32*, i32** %45, align 8
  %47 = call i32 @BN_GF2m_arr2poly(i32 %44, i32* %46)
  %48 = call i64 @TEST_true(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %43, %36
  br label %107

51:                                               ; preds = %43
  store i32 0, i32* %6, align 4
  br label %52

52:                                               ; preds = %103, %51
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* @NUM0, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %106

56:                                               ; preds = %52
  %57 = load i32*, i32** %1, align 8
  %58 = call i32 @BN_bntest_rand(i32* %57, i32 1024, i32 0, i32 0)
  %59 = call i64 @TEST_true(i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %56
  br label %107

62:                                               ; preds = %56
  store i32 0, i32* %7, align 4
  br label %63

63:                                               ; preds = %99, %62
  %64 = load i32, i32* %7, align 4
  %65 = icmp slt i32 %64, 2
  br i1 %65, label %66, label %102

66:                                               ; preds = %63
  %67 = load i32*, i32** %3, align 8
  %68 = load i32*, i32** %1, align 8
  %69 = load i32, i32* %7, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds [2 x i32*], [2 x i32*]* %2, i64 0, i64 %70
  %72 = load i32*, i32** %71, align 8
  %73 = call i32 @BN_GF2m_mod(i32* %67, i32* %68, i32* %72)
  %74 = call i64 @TEST_true(i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %97

76:                                               ; preds = %66
  %77 = load i32*, i32** %4, align 8
  %78 = load i32*, i32** %1, align 8
  %79 = load i32*, i32** %3, align 8
  %80 = call i32 @BN_GF2m_add(i32* %77, i32* %78, i32* %79)
  %81 = call i64 @TEST_true(i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %97

83:                                               ; preds = %76
  %84 = load i32*, i32** %5, align 8
  %85 = load i32*, i32** %4, align 8
  %86 = load i32, i32* %7, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds [2 x i32*], [2 x i32*]* %2, i64 0, i64 %87
  %89 = load i32*, i32** %88, align 8
  %90 = call i32 @BN_GF2m_mod(i32* %84, i32* %85, i32* %89)
  %91 = call i64 @TEST_true(i32 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %83
  %94 = load i32*, i32** %5, align 8
  %95 = call i64 @TEST_BN_eq_zero(i32* %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %98, label %97

97:                                               ; preds = %93, %83, %76, %66
  br label %107

98:                                               ; preds = %93
  br label %99

99:                                               ; preds = %98
  %100 = load i32, i32* %7, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %7, align 4
  br label %63

102:                                              ; preds = %63
  br label %103

103:                                              ; preds = %102
  %104 = load i32, i32* %6, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %6, align 4
  br label %52

106:                                              ; preds = %52
  store i32 1, i32* %8, align 4
  br label %107

107:                                              ; preds = %106, %97, %61, %50, %35
  %108 = load i32*, i32** %1, align 8
  %109 = call i32 @BN_free(i32* %108)
  %110 = getelementptr inbounds [2 x i32*], [2 x i32*]* %2, i64 0, i64 0
  %111 = load i32*, i32** %110, align 16
  %112 = call i32 @BN_free(i32* %111)
  %113 = getelementptr inbounds [2 x i32*], [2 x i32*]* %2, i64 0, i64 1
  %114 = load i32*, i32** %113, align 8
  %115 = call i32 @BN_free(i32* %114)
  %116 = load i32*, i32** %3, align 8
  %117 = call i32 @BN_free(i32* %116)
  %118 = load i32*, i32** %4, align 8
  %119 = call i32 @BN_free(i32* %118)
  %120 = load i32*, i32** %5, align 8
  %121 = call i32 @BN_free(i32* %120)
  %122 = load i32, i32* %8, align 4
  ret i32 %122
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @TEST_ptr(i32*) #2

declare dso_local i32* @BN_new(...) #2

declare dso_local i64 @TEST_true(i32) #2

declare dso_local i32 @BN_GF2m_arr2poly(i32, i32*) #2

declare dso_local i32 @BN_bntest_rand(i32*, i32, i32, i32) #2

declare dso_local i32 @BN_GF2m_mod(i32*, i32*, i32*) #2

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
