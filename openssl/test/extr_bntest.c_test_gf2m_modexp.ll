; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_bntest.c_test_gf2m_modexp.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_bntest.c_test_gf2m_modexp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@p0 = common dso_local global i32 0, align 4
@p1 = common dso_local global i32 0, align 4
@NUM0 = common dso_local global i32 0, align 4
@ctx = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @test_gf2m_modexp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_gf2m_modexp() #0 {
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
  br label %157

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
  br label %157

56:                                               ; preds = %48
  store i32 0, i32* %7, align 4
  br label %57

57:                                               ; preds = %153, %56
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* @NUM0, align 4
  %60 = icmp slt i32 %58, %59
  br i1 %60, label %61, label %156

61:                                               ; preds = %57
  %62 = load i32*, i32** %1, align 8
  %63 = call i32 @BN_bntest_rand(i32* %62, i32 512, i32 0, i32 0)
  %64 = call i64 @TEST_true(i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %76

66:                                               ; preds = %61
  %67 = load i32*, i32** %3, align 8
  %68 = call i32 @BN_bntest_rand(i32* %67, i32 512, i32 0, i32 0)
  %69 = call i64 @TEST_true(i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %66
  %72 = load i32*, i32** %4, align 8
  %73 = call i32 @BN_bntest_rand(i32* %72, i32 512, i32 0, i32 0)
  %74 = call i64 @TEST_true(i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %77, label %76

76:                                               ; preds = %71, %66, %61
  br label %157

77:                                               ; preds = %71
  store i32 0, i32* %8, align 4
  br label %78

78:                                               ; preds = %149, %77
  %79 = load i32, i32* %8, align 4
  %80 = icmp slt i32 %79, 2
  br i1 %80, label %81, label %152

81:                                               ; preds = %78
  %82 = load i32*, i32** %5, align 8
  %83 = load i32*, i32** %1, align 8
  %84 = load i32*, i32** %3, align 8
  %85 = load i32, i32* %8, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds [2 x i32*], [2 x i32*]* %2, i64 0, i64 %86
  %88 = load i32*, i32** %87, align 8
  %89 = load i32, i32* @ctx, align 4
  %90 = call i32 @BN_GF2m_mod_exp(i32* %82, i32* %83, i32* %84, i32* %88, i32 %89)
  %91 = call i64 @TEST_true(i32 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %147

93:                                               ; preds = %81
  %94 = load i32*, i32** %6, align 8
  %95 = load i32*, i32** %1, align 8
  %96 = load i32*, i32** %4, align 8
  %97 = load i32, i32* %8, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds [2 x i32*], [2 x i32*]* %2, i64 0, i64 %98
  %100 = load i32*, i32** %99, align 8
  %101 = load i32, i32* @ctx, align 4
  %102 = call i32 @BN_GF2m_mod_exp(i32* %94, i32* %95, i32* %96, i32* %100, i32 %101)
  %103 = call i64 @TEST_true(i32 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %147

105:                                              ; preds = %93
  %106 = load i32*, i32** %5, align 8
  %107 = load i32*, i32** %5, align 8
  %108 = load i32*, i32** %6, align 8
  %109 = load i32, i32* %8, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds [2 x i32*], [2 x i32*]* %2, i64 0, i64 %110
  %112 = load i32*, i32** %111, align 8
  %113 = load i32, i32* @ctx, align 4
  %114 = call i32 @BN_GF2m_mod_mul(i32* %106, i32* %107, i32* %108, i32* %112, i32 %113)
  %115 = call i64 @TEST_true(i32 %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %147

117:                                              ; preds = %105
  %118 = load i32*, i32** %6, align 8
  %119 = load i32*, i32** %3, align 8
  %120 = load i32*, i32** %4, align 8
  %121 = call i32 @BN_add(i32* %118, i32* %119, i32* %120)
  %122 = call i64 @TEST_true(i32 %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %147

124:                                              ; preds = %117
  %125 = load i32*, i32** %6, align 8
  %126 = load i32*, i32** %1, align 8
  %127 = load i32*, i32** %6, align 8
  %128 = load i32, i32* %8, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds [2 x i32*], [2 x i32*]* %2, i64 0, i64 %129
  %131 = load i32*, i32** %130, align 8
  %132 = load i32, i32* @ctx, align 4
  %133 = call i32 @BN_GF2m_mod_exp(i32* %125, i32* %126, i32* %127, i32* %131, i32 %132)
  %134 = call i64 @TEST_true(i32 %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %147

136:                                              ; preds = %124
  %137 = load i32*, i32** %6, align 8
  %138 = load i32*, i32** %5, align 8
  %139 = load i32*, i32** %6, align 8
  %140 = call i32 @BN_GF2m_add(i32* %137, i32* %138, i32* %139)
  %141 = call i64 @TEST_true(i32 %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %147

143:                                              ; preds = %136
  %144 = load i32*, i32** %6, align 8
  %145 = call i64 @TEST_BN_eq_zero(i32* %144)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %148, label %147

147:                                              ; preds = %143, %136, %124, %117, %105, %93, %81
  br label %157

148:                                              ; preds = %143
  br label %149

149:                                              ; preds = %148
  %150 = load i32, i32* %8, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %8, align 4
  br label %78

152:                                              ; preds = %78
  br label %153

153:                                              ; preds = %152
  %154 = load i32, i32* %7, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %7, align 4
  br label %57

156:                                              ; preds = %57
  store i32 1, i32* %9, align 4
  br label %157

157:                                              ; preds = %156, %147, %76, %55, %40
  %158 = load i32*, i32** %1, align 8
  %159 = call i32 @BN_free(i32* %158)
  %160 = getelementptr inbounds [2 x i32*], [2 x i32*]* %2, i64 0, i64 0
  %161 = load i32*, i32** %160, align 16
  %162 = call i32 @BN_free(i32* %161)
  %163 = getelementptr inbounds [2 x i32*], [2 x i32*]* %2, i64 0, i64 1
  %164 = load i32*, i32** %163, align 8
  %165 = call i32 @BN_free(i32* %164)
  %166 = load i32*, i32** %3, align 8
  %167 = call i32 @BN_free(i32* %166)
  %168 = load i32*, i32** %4, align 8
  %169 = call i32 @BN_free(i32* %168)
  %170 = load i32*, i32** %5, align 8
  %171 = call i32 @BN_free(i32* %170)
  %172 = load i32*, i32** %6, align 8
  %173 = call i32 @BN_free(i32* %172)
  %174 = load i32, i32* %9, align 4
  ret i32 %174
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @TEST_ptr(i32*) #2

declare dso_local i32* @BN_new(...) #2

declare dso_local i64 @TEST_true(i32) #2

declare dso_local i32 @BN_GF2m_arr2poly(i32, i32*) #2

declare dso_local i32 @BN_bntest_rand(i32*, i32, i32, i32) #2

declare dso_local i32 @BN_GF2m_mod_exp(i32*, i32*, i32*, i32*, i32) #2

declare dso_local i32 @BN_GF2m_mod_mul(i32*, i32*, i32*, i32*, i32) #2

declare dso_local i32 @BN_add(i32*, i32*, i32*) #2

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
