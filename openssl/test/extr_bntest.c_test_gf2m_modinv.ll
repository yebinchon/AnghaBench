; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_bntest.c_test_gf2m_modinv.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_bntest.c_test_gf2m_modinv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@p0 = common dso_local global i32 0, align 4
@p1 = common dso_local global i32 0, align 4
@NUM0 = common dso_local global i32 0, align 4
@ctx = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @test_gf2m_modinv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_gf2m_modinv() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca [2 x i32*], align 16
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* null, i32** %1, align 8
  %8 = bitcast [2 x i32*]* %2 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %8, i8 0, i64 16, i1 false)
  store i32* null, i32** %3, align 8
  store i32* null, i32** %4, align 8
  store i32 0, i32* %7, align 4
  %9 = call i32* (...) @BN_new()
  store i32* %9, i32** %1, align 8
  %10 = call i32 @TEST_ptr(i32* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %30

12:                                               ; preds = %0
  %13 = call i32* (...) @BN_new()
  %14 = getelementptr inbounds [2 x i32*], [2 x i32*]* %2, i64 0, i64 0
  store i32* %13, i32** %14, align 16
  %15 = call i32 @TEST_ptr(i32* %13)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %30

17:                                               ; preds = %12
  %18 = call i32* (...) @BN_new()
  %19 = getelementptr inbounds [2 x i32*], [2 x i32*]* %2, i64 0, i64 1
  store i32* %18, i32** %19, align 8
  %20 = call i32 @TEST_ptr(i32* %18)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %17
  %23 = call i32* (...) @BN_new()
  store i32* %23, i32** %3, align 8
  %24 = call i32 @TEST_ptr(i32* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %22
  %27 = call i32* (...) @BN_new()
  store i32* %27, i32** %4, align 8
  %28 = call i32 @TEST_ptr(i32* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %26, %22, %17, %12, %0
  br label %98

31:                                               ; preds = %26
  %32 = load i32, i32* @p0, align 4
  %33 = getelementptr inbounds [2 x i32*], [2 x i32*]* %2, i64 0, i64 0
  %34 = load i32*, i32** %33, align 16
  %35 = call i32 @BN_GF2m_arr2poly(i32 %32, i32* %34)
  %36 = call i64 @TEST_true(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %31
  %39 = load i32, i32* @p1, align 4
  %40 = getelementptr inbounds [2 x i32*], [2 x i32*]* %2, i64 0, i64 1
  %41 = load i32*, i32** %40, align 8
  %42 = call i32 @BN_GF2m_arr2poly(i32 %39, i32* %41)
  %43 = call i64 @TEST_true(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %38, %31
  br label %98

46:                                               ; preds = %38
  store i32 0, i32* %5, align 4
  br label %47

47:                                               ; preds = %94, %46
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* @NUM0, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %97

51:                                               ; preds = %47
  %52 = load i32*, i32** %1, align 8
  %53 = call i32 @BN_bntest_rand(i32* %52, i32 512, i32 0, i32 0)
  %54 = call i64 @TEST_true(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %51
  br label %98

57:                                               ; preds = %51
  store i32 0, i32* %6, align 4
  br label %58

58:                                               ; preds = %90, %57
  %59 = load i32, i32* %6, align 4
  %60 = icmp slt i32 %59, 2
  br i1 %60, label %61, label %93

61:                                               ; preds = %58
  %62 = load i32*, i32** %3, align 8
  %63 = load i32*, i32** %1, align 8
  %64 = load i32, i32* %6, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds [2 x i32*], [2 x i32*]* %2, i64 0, i64 %65
  %67 = load i32*, i32** %66, align 8
  %68 = load i32, i32* @ctx, align 4
  %69 = call i32 @BN_GF2m_mod_inv(i32* %62, i32* %63, i32* %67, i32 %68)
  %70 = call i64 @TEST_true(i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %88

72:                                               ; preds = %61
  %73 = load i32*, i32** %4, align 8
  %74 = load i32*, i32** %1, align 8
  %75 = load i32*, i32** %3, align 8
  %76 = load i32, i32* %6, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds [2 x i32*], [2 x i32*]* %2, i64 0, i64 %77
  %79 = load i32*, i32** %78, align 8
  %80 = load i32, i32* @ctx, align 4
  %81 = call i32 @BN_GF2m_mod_mul(i32* %73, i32* %74, i32* %75, i32* %79, i32 %80)
  %82 = call i64 @TEST_true(i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %72
  %85 = load i32*, i32** %4, align 8
  %86 = call i64 @TEST_BN_eq_one(i32* %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %89, label %88

88:                                               ; preds = %84, %72, %61
  br label %98

89:                                               ; preds = %84
  br label %90

90:                                               ; preds = %89
  %91 = load i32, i32* %6, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %6, align 4
  br label %58

93:                                               ; preds = %58
  br label %94

94:                                               ; preds = %93
  %95 = load i32, i32* %5, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %5, align 4
  br label %47

97:                                               ; preds = %47
  store i32 1, i32* %7, align 4
  br label %98

98:                                               ; preds = %97, %88, %56, %45, %30
  %99 = load i32*, i32** %1, align 8
  %100 = call i32 @BN_free(i32* %99)
  %101 = getelementptr inbounds [2 x i32*], [2 x i32*]* %2, i64 0, i64 0
  %102 = load i32*, i32** %101, align 16
  %103 = call i32 @BN_free(i32* %102)
  %104 = getelementptr inbounds [2 x i32*], [2 x i32*]* %2, i64 0, i64 1
  %105 = load i32*, i32** %104, align 8
  %106 = call i32 @BN_free(i32* %105)
  %107 = load i32*, i32** %3, align 8
  %108 = call i32 @BN_free(i32* %107)
  %109 = load i32*, i32** %4, align 8
  %110 = call i32 @BN_free(i32* %109)
  %111 = load i32, i32* %7, align 4
  ret i32 %111
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @TEST_ptr(i32*) #2

declare dso_local i32* @BN_new(...) #2

declare dso_local i64 @TEST_true(i32) #2

declare dso_local i32 @BN_GF2m_arr2poly(i32, i32*) #2

declare dso_local i32 @BN_bntest_rand(i32*, i32, i32, i32) #2

declare dso_local i32 @BN_GF2m_mod_inv(i32*, i32*, i32*, i32) #2

declare dso_local i32 @BN_GF2m_mod_mul(i32*, i32*, i32*, i32*, i32) #2

declare dso_local i64 @TEST_BN_eq_one(i32*) #2

declare dso_local i32 @BN_free(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
