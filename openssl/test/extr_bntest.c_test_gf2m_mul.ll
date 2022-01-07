; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_bntest.c_test_gf2m_mul.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_bntest.c_test_gf2m_mul.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@p0 = common dso_local global i32 0, align 4
@p1 = common dso_local global i32 0, align 4
@NUM0 = common dso_local global i32 0, align 4
@ctx = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @test_gf2m_mul to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_gf2m_mul() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca [2 x i32*], align 16
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = bitcast [2 x i32*]* %2 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %12, i8 0, i64 16, i1 false)
  store i32* null, i32** %3, align 8
  store i32* null, i32** %4, align 8
  store i32* null, i32** %5, align 8
  store i32* null, i32** %6, align 8
  store i32* null, i32** %7, align 8
  store i32* null, i32** %8, align 8
  store i32 0, i32* %11, align 4
  %13 = call i32* (...) @BN_new()
  store i32* %13, i32** %1, align 8
  %14 = call i32 @TEST_ptr(i32* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %50

16:                                               ; preds = %0
  %17 = call i32* (...) @BN_new()
  %18 = getelementptr inbounds [2 x i32*], [2 x i32*]* %2, i64 0, i64 0
  store i32* %17, i32** %18, align 16
  %19 = call i32 @TEST_ptr(i32* %17)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %50

21:                                               ; preds = %16
  %22 = call i32* (...) @BN_new()
  %23 = getelementptr inbounds [2 x i32*], [2 x i32*]* %2, i64 0, i64 1
  store i32* %22, i32** %23, align 8
  %24 = call i32 @TEST_ptr(i32* %22)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %50

26:                                               ; preds = %21
  %27 = call i32* (...) @BN_new()
  store i32* %27, i32** %3, align 8
  %28 = call i32 @TEST_ptr(i32* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %50

30:                                               ; preds = %26
  %31 = call i32* (...) @BN_new()
  store i32* %31, i32** %4, align 8
  %32 = call i32 @TEST_ptr(i32* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %50

34:                                               ; preds = %30
  %35 = call i32* (...) @BN_new()
  store i32* %35, i32** %5, align 8
  %36 = call i32 @TEST_ptr(i32* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %50

38:                                               ; preds = %34
  %39 = call i32* (...) @BN_new()
  store i32* %39, i32** %6, align 8
  %40 = call i32 @TEST_ptr(i32* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %50

42:                                               ; preds = %38
  %43 = call i32* (...) @BN_new()
  store i32* %43, i32** %7, align 8
  %44 = call i32 @TEST_ptr(i32* %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %42
  %47 = call i32* (...) @BN_new()
  store i32* %47, i32** %8, align 8
  %48 = call i32 @TEST_ptr(i32* %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %46, %42, %38, %34, %30, %26, %21, %16, %0
  br label %162

51:                                               ; preds = %46
  %52 = load i32, i32* @p0, align 4
  %53 = getelementptr inbounds [2 x i32*], [2 x i32*]* %2, i64 0, i64 0
  %54 = load i32*, i32** %53, align 16
  %55 = call i32 @BN_GF2m_arr2poly(i32 %52, i32* %54)
  %56 = call i64 @TEST_true(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %51
  %59 = load i32, i32* @p1, align 4
  %60 = getelementptr inbounds [2 x i32*], [2 x i32*]* %2, i64 0, i64 1
  %61 = load i32*, i32** %60, align 8
  %62 = call i32 @BN_GF2m_arr2poly(i32 %59, i32* %61)
  %63 = call i64 @TEST_true(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %58, %51
  br label %162

66:                                               ; preds = %58
  store i32 0, i32* %9, align 4
  br label %67

67:                                               ; preds = %158, %66
  %68 = load i32, i32* %9, align 4
  %69 = load i32, i32* @NUM0, align 4
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %71, label %161

71:                                               ; preds = %67
  %72 = load i32*, i32** %1, align 8
  %73 = call i32 @BN_bntest_rand(i32* %72, i32 1024, i32 0, i32 0)
  %74 = call i64 @TEST_true(i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %86

76:                                               ; preds = %71
  %77 = load i32*, i32** %3, align 8
  %78 = call i32 @BN_bntest_rand(i32* %77, i32 1024, i32 0, i32 0)
  %79 = call i64 @TEST_true(i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %76
  %82 = load i32*, i32** %4, align 8
  %83 = call i32 @BN_bntest_rand(i32* %82, i32 1024, i32 0, i32 0)
  %84 = call i64 @TEST_true(i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %87, label %86

86:                                               ; preds = %81, %76, %71
  br label %162

87:                                               ; preds = %81
  store i32 0, i32* %10, align 4
  br label %88

88:                                               ; preds = %154, %87
  %89 = load i32, i32* %10, align 4
  %90 = icmp slt i32 %89, 2
  br i1 %90, label %91, label %157

91:                                               ; preds = %88
  %92 = load i32*, i32** %5, align 8
  %93 = load i32*, i32** %1, align 8
  %94 = load i32*, i32** %3, align 8
  %95 = load i32, i32* %10, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds [2 x i32*], [2 x i32*]* %2, i64 0, i64 %96
  %98 = load i32*, i32** %97, align 8
  %99 = load i32, i32* @ctx, align 4
  %100 = call i32 @BN_GF2m_mod_mul(i32* %92, i32* %93, i32* %94, i32* %98, i32 %99)
  %101 = call i64 @TEST_true(i32 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %152

103:                                              ; preds = %91
  %104 = load i32*, i32** %6, align 8
  %105 = load i32*, i32** %1, align 8
  %106 = load i32*, i32** %4, align 8
  %107 = call i32 @BN_GF2m_add(i32* %104, i32* %105, i32* %106)
  %108 = call i64 @TEST_true(i32 %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %152

110:                                              ; preds = %103
  %111 = load i32*, i32** %7, align 8
  %112 = load i32*, i32** %6, align 8
  %113 = load i32*, i32** %3, align 8
  %114 = load i32, i32* %10, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds [2 x i32*], [2 x i32*]* %2, i64 0, i64 %115
  %117 = load i32*, i32** %116, align 8
  %118 = load i32, i32* @ctx, align 4
  %119 = call i32 @BN_GF2m_mod_mul(i32* %111, i32* %112, i32* %113, i32* %117, i32 %118)
  %120 = call i64 @TEST_true(i32 %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %152

122:                                              ; preds = %110
  %123 = load i32*, i32** %8, align 8
  %124 = load i32*, i32** %4, align 8
  %125 = load i32*, i32** %3, align 8
  %126 = load i32, i32* %10, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds [2 x i32*], [2 x i32*]* %2, i64 0, i64 %127
  %129 = load i32*, i32** %128, align 8
  %130 = load i32, i32* @ctx, align 4
  %131 = call i32 @BN_GF2m_mod_mul(i32* %123, i32* %124, i32* %125, i32* %129, i32 %130)
  %132 = call i64 @TEST_true(i32 %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %152

134:                                              ; preds = %122
  %135 = load i32*, i32** %6, align 8
  %136 = load i32*, i32** %5, align 8
  %137 = load i32*, i32** %7, align 8
  %138 = call i32 @BN_GF2m_add(i32* %135, i32* %136, i32* %137)
  %139 = call i64 @TEST_true(i32 %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %152

141:                                              ; preds = %134
  %142 = load i32*, i32** %6, align 8
  %143 = load i32*, i32** %6, align 8
  %144 = load i32*, i32** %8, align 8
  %145 = call i32 @BN_GF2m_add(i32* %142, i32* %143, i32* %144)
  %146 = call i64 @TEST_true(i32 %145)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %152

148:                                              ; preds = %141
  %149 = load i32*, i32** %6, align 8
  %150 = call i64 @TEST_BN_eq_zero(i32* %149)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %153, label %152

152:                                              ; preds = %148, %141, %134, %122, %110, %103, %91
  br label %162

153:                                              ; preds = %148
  br label %154

154:                                              ; preds = %153
  %155 = load i32, i32* %10, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %10, align 4
  br label %88

157:                                              ; preds = %88
  br label %158

158:                                              ; preds = %157
  %159 = load i32, i32* %9, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %9, align 4
  br label %67

161:                                              ; preds = %67
  store i32 1, i32* %11, align 4
  br label %162

162:                                              ; preds = %161, %152, %86, %65, %50
  %163 = load i32*, i32** %1, align 8
  %164 = call i32 @BN_free(i32* %163)
  %165 = getelementptr inbounds [2 x i32*], [2 x i32*]* %2, i64 0, i64 0
  %166 = load i32*, i32** %165, align 16
  %167 = call i32 @BN_free(i32* %166)
  %168 = getelementptr inbounds [2 x i32*], [2 x i32*]* %2, i64 0, i64 1
  %169 = load i32*, i32** %168, align 8
  %170 = call i32 @BN_free(i32* %169)
  %171 = load i32*, i32** %3, align 8
  %172 = call i32 @BN_free(i32* %171)
  %173 = load i32*, i32** %4, align 8
  %174 = call i32 @BN_free(i32* %173)
  %175 = load i32*, i32** %5, align 8
  %176 = call i32 @BN_free(i32* %175)
  %177 = load i32*, i32** %6, align 8
  %178 = call i32 @BN_free(i32* %177)
  %179 = load i32*, i32** %7, align 8
  %180 = call i32 @BN_free(i32* %179)
  %181 = load i32*, i32** %8, align 8
  %182 = call i32 @BN_free(i32* %181)
  %183 = load i32, i32* %11, align 4
  ret i32 %183
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @TEST_ptr(i32*) #2

declare dso_local i32* @BN_new(...) #2

declare dso_local i64 @TEST_true(i32) #2

declare dso_local i32 @BN_GF2m_arr2poly(i32, i32*) #2

declare dso_local i32 @BN_bntest_rand(i32*, i32, i32, i32) #2

declare dso_local i32 @BN_GF2m_mod_mul(i32*, i32*, i32*, i32*, i32) #2

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
