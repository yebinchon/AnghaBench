; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_bntest.c_test_gf2m_moddiv.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_bntest.c_test_gf2m_moddiv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@p0 = common dso_local global i32 0, align 4
@p1 = common dso_local global i32 0, align 4
@NUM0 = common dso_local global i32 0, align 4
@ctx = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @test_gf2m_moddiv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_gf2m_moddiv() #0 {
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
  br label %126

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
  br label %126

56:                                               ; preds = %48
  store i32 0, i32* %7, align 4
  br label %57

57:                                               ; preds = %122, %56
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* @NUM0, align 4
  %60 = icmp slt i32 %58, %59
  br i1 %60, label %61, label %125

61:                                               ; preds = %57
  %62 = load i32*, i32** %1, align 8
  %63 = call i32 @BN_bntest_rand(i32* %62, i32 512, i32 0, i32 0)
  %64 = call i64 @TEST_true(i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %61
  %67 = load i32*, i32** %3, align 8
  %68 = call i32 @BN_bntest_rand(i32* %67, i32 512, i32 0, i32 0)
  %69 = call i64 @TEST_true(i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %66, %61
  br label %126

72:                                               ; preds = %66
  store i32 0, i32* %8, align 4
  br label %73

73:                                               ; preds = %118, %72
  %74 = load i32, i32* %8, align 4
  %75 = icmp slt i32 %74, 2
  br i1 %75, label %76, label %121

76:                                               ; preds = %73
  %77 = load i32*, i32** %4, align 8
  %78 = load i32*, i32** %1, align 8
  %79 = load i32*, i32** %3, align 8
  %80 = load i32, i32* %8, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds [2 x i32*], [2 x i32*]* %2, i64 0, i64 %81
  %83 = load i32*, i32** %82, align 8
  %84 = load i32, i32* @ctx, align 4
  %85 = call i32 @BN_GF2m_mod_div(i32* %77, i32* %78, i32* %79, i32* %83, i32 %84)
  %86 = call i64 @TEST_true(i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %116

88:                                               ; preds = %76
  %89 = load i32*, i32** %5, align 8
  %90 = load i32*, i32** %4, align 8
  %91 = load i32*, i32** %3, align 8
  %92 = load i32, i32* %8, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds [2 x i32*], [2 x i32*]* %2, i64 0, i64 %93
  %95 = load i32*, i32** %94, align 8
  %96 = load i32, i32* @ctx, align 4
  %97 = call i32 @BN_GF2m_mod_mul(i32* %89, i32* %90, i32* %91, i32* %95, i32 %96)
  %98 = call i64 @TEST_true(i32 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %116

100:                                              ; preds = %88
  %101 = load i32*, i32** %6, align 8
  %102 = load i32*, i32** %1, align 8
  %103 = load i32*, i32** %5, align 8
  %104 = load i32, i32* %8, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds [2 x i32*], [2 x i32*]* %2, i64 0, i64 %105
  %107 = load i32*, i32** %106, align 8
  %108 = load i32, i32* @ctx, align 4
  %109 = call i32 @BN_GF2m_mod_div(i32* %101, i32* %102, i32* %103, i32* %107, i32 %108)
  %110 = call i64 @TEST_true(i32 %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %116

112:                                              ; preds = %100
  %113 = load i32*, i32** %6, align 8
  %114 = call i64 @TEST_BN_eq_one(i32* %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %117, label %116

116:                                              ; preds = %112, %100, %88, %76
  br label %126

117:                                              ; preds = %112
  br label %118

118:                                              ; preds = %117
  %119 = load i32, i32* %8, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %8, align 4
  br label %73

121:                                              ; preds = %73
  br label %122

122:                                              ; preds = %121
  %123 = load i32, i32* %7, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %7, align 4
  br label %57

125:                                              ; preds = %57
  store i32 1, i32* %9, align 4
  br label %126

126:                                              ; preds = %125, %116, %71, %55, %40
  %127 = load i32*, i32** %1, align 8
  %128 = call i32 @BN_free(i32* %127)
  %129 = getelementptr inbounds [2 x i32*], [2 x i32*]* %2, i64 0, i64 0
  %130 = load i32*, i32** %129, align 16
  %131 = call i32 @BN_free(i32* %130)
  %132 = getelementptr inbounds [2 x i32*], [2 x i32*]* %2, i64 0, i64 1
  %133 = load i32*, i32** %132, align 8
  %134 = call i32 @BN_free(i32* %133)
  %135 = load i32*, i32** %3, align 8
  %136 = call i32 @BN_free(i32* %135)
  %137 = load i32*, i32** %4, align 8
  %138 = call i32 @BN_free(i32* %137)
  %139 = load i32*, i32** %5, align 8
  %140 = call i32 @BN_free(i32* %139)
  %141 = load i32*, i32** %6, align 8
  %142 = call i32 @BN_free(i32* %141)
  %143 = load i32, i32* %9, align 4
  ret i32 %143
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @TEST_ptr(i32*) #2

declare dso_local i32* @BN_new(...) #2

declare dso_local i64 @TEST_true(i32) #2

declare dso_local i32 @BN_GF2m_arr2poly(i32, i32*) #2

declare dso_local i32 @BN_bntest_rand(i32*, i32, i32, i32) #2

declare dso_local i32 @BN_GF2m_mod_div(i32*, i32*, i32*, i32*, i32) #2

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
