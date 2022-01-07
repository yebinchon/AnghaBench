; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_bntest.c_test_swap.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_bntest.c_test_swap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BN_BITS2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"swap\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"cswap true\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"cswap false\00", align 1
@BN_FLG_CONSTTIME = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [12 x i8] c"swap, flags\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"cswap true, flags\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"cswap false, flags\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @test_swap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_swap() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* null, i32** %1, align 8
  store i32* null, i32** %2, align 8
  store i32* null, i32** %3, align 8
  store i32* null, i32** %4, align 8
  store i32 0, i32* %7, align 4
  %8 = call i32* (...) @BN_new()
  store i32* %8, i32** %1, align 8
  %9 = call i64 @TEST_ptr(i32* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %23

11:                                               ; preds = %0
  %12 = call i32* (...) @BN_new()
  store i32* %12, i32** %2, align 8
  %13 = call i64 @TEST_ptr(i32* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %23

15:                                               ; preds = %11
  %16 = call i32* (...) @BN_new()
  store i32* %16, i32** %3, align 8
  %17 = call i64 @TEST_ptr(i32* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %15
  %20 = call i32* (...) @BN_new()
  store i32* %20, i32** %4, align 8
  %21 = call i64 @TEST_ptr(i32* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %19, %15, %11, %0
  br label %183

24:                                               ; preds = %19
  %25 = load i32*, i32** %1, align 8
  %26 = call i32 @BN_bntest_rand(i32* %25, i32 1024, i32 1, i32 0)
  %27 = call i64 @TEST_true(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %46

29:                                               ; preds = %24
  %30 = load i32*, i32** %2, align 8
  %31 = call i32 @BN_bntest_rand(i32* %30, i32 1024, i32 1, i32 0)
  %32 = call i64 @TEST_true(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %46

34:                                               ; preds = %29
  %35 = load i32*, i32** %3, align 8
  %36 = load i32*, i32** %1, align 8
  %37 = call i32* @BN_copy(i32* %35, i32* %36)
  %38 = call i64 @TEST_ptr(i32* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %34
  %41 = load i32*, i32** %4, align 8
  %42 = load i32*, i32** %2, align 8
  %43 = call i32* @BN_copy(i32* %41, i32* %42)
  %44 = call i64 @TEST_ptr(i32* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %40, %34, %29, %24
  br label %183

47:                                               ; preds = %40
  %48 = load i32*, i32** %1, align 8
  %49 = call i32 @BN_num_bits(i32* %48)
  %50 = load i32, i32* @BN_BITS2, align 4
  %51 = sdiv i32 %49, %50
  store i32 %51, i32* %5, align 4
  %52 = load i32*, i32** %1, align 8
  %53 = load i32*, i32** %2, align 8
  %54 = call i32 @BN_swap(i32* %52, i32* %53)
  %55 = load i32*, i32** %1, align 8
  %56 = load i32*, i32** %4, align 8
  %57 = call i32 @equalBN(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* %55, i32* %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %47
  %60 = load i32*, i32** %2, align 8
  %61 = load i32*, i32** %3, align 8
  %62 = call i32 @equalBN(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* %60, i32* %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %59, %47
  br label %183

65:                                               ; preds = %59
  store i32 1, i32* %6, align 4
  %66 = load i32, i32* %6, align 4
  %67 = load i32*, i32** %1, align 8
  %68 = load i32*, i32** %2, align 8
  %69 = load i32, i32* %5, align 4
  %70 = call i32 @BN_consttime_swap(i32 %66, i32* %67, i32* %68, i32 %69)
  %71 = load i32*, i32** %1, align 8
  %72 = load i32*, i32** %3, align 8
  %73 = call i32 @equalBN(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32* %71, i32* %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %65
  %76 = load i32*, i32** %2, align 8
  %77 = load i32*, i32** %4, align 8
  %78 = call i32 @equalBN(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32* %76, i32* %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %81, label %80

80:                                               ; preds = %75, %65
  br label %183

81:                                               ; preds = %75
  store i32 0, i32* %6, align 4
  %82 = load i32, i32* %6, align 4
  %83 = load i32*, i32** %1, align 8
  %84 = load i32*, i32** %2, align 8
  %85 = load i32, i32* %5, align 4
  %86 = call i32 @BN_consttime_swap(i32 %82, i32* %83, i32* %84, i32 %85)
  %87 = load i32*, i32** %1, align 8
  %88 = load i32*, i32** %3, align 8
  %89 = call i32 @equalBN(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32* %87, i32* %88)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %96

91:                                               ; preds = %81
  %92 = load i32*, i32** %2, align 8
  %93 = load i32*, i32** %4, align 8
  %94 = call i32 @equalBN(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32* %92, i32* %93)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %97, label %96

96:                                               ; preds = %91, %81
  br label %183

97:                                               ; preds = %91
  %98 = load i32*, i32** %1, align 8
  %99 = load i32, i32* @BN_FLG_CONSTTIME, align 4
  %100 = call i32 @BN_set_flags(i32* %98, i32 %99)
  %101 = load i32*, i32** %1, align 8
  %102 = load i32*, i32** %2, align 8
  %103 = call i32 @BN_swap(i32* %101, i32* %102)
  %104 = load i32*, i32** %1, align 8
  %105 = load i32*, i32** %4, align 8
  %106 = call i32 @equalBN(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32* %104, i32* %105)
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %125

108:                                              ; preds = %97
  %109 = load i32*, i32** %2, align 8
  %110 = load i32*, i32** %3, align 8
  %111 = call i32 @equalBN(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32* %109, i32* %110)
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %125

113:                                              ; preds = %108
  %114 = load i32*, i32** %2, align 8
  %115 = load i32, i32* @BN_FLG_CONSTTIME, align 4
  %116 = call i32 @BN_get_flags(i32* %114, i32 %115)
  %117 = call i64 @TEST_true(i32 %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %125

119:                                              ; preds = %113
  %120 = load i32*, i32** %1, align 8
  %121 = load i32, i32* @BN_FLG_CONSTTIME, align 4
  %122 = call i32 @BN_get_flags(i32* %120, i32 %121)
  %123 = call i32 @TEST_false(i32 %122)
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %126, label %125

125:                                              ; preds = %119, %113, %108, %97
  br label %183

126:                                              ; preds = %119
  store i32 1, i32* %6, align 4
  %127 = load i32, i32* %6, align 4
  %128 = load i32*, i32** %1, align 8
  %129 = load i32*, i32** %2, align 8
  %130 = load i32, i32* %5, align 4
  %131 = call i32 @BN_consttime_swap(i32 %127, i32* %128, i32* %129, i32 %130)
  %132 = load i32*, i32** %1, align 8
  %133 = load i32*, i32** %3, align 8
  %134 = call i32 @equalBN(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32* %132, i32* %133)
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %153

136:                                              ; preds = %126
  %137 = load i32*, i32** %2, align 8
  %138 = load i32*, i32** %4, align 8
  %139 = call i32 @equalBN(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32* %137, i32* %138)
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %153

141:                                              ; preds = %136
  %142 = load i32*, i32** %1, align 8
  %143 = load i32, i32* @BN_FLG_CONSTTIME, align 4
  %144 = call i32 @BN_get_flags(i32* %142, i32 %143)
  %145 = call i64 @TEST_true(i32 %144)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %153

147:                                              ; preds = %141
  %148 = load i32*, i32** %2, align 8
  %149 = load i32, i32* @BN_FLG_CONSTTIME, align 4
  %150 = call i32 @BN_get_flags(i32* %148, i32 %149)
  %151 = call i32 @TEST_false(i32 %150)
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %154, label %153

153:                                              ; preds = %147, %141, %136, %126
  br label %183

154:                                              ; preds = %147
  store i32 0, i32* %6, align 4
  %155 = load i32, i32* %6, align 4
  %156 = load i32*, i32** %1, align 8
  %157 = load i32*, i32** %2, align 8
  %158 = load i32, i32* %5, align 4
  %159 = call i32 @BN_consttime_swap(i32 %155, i32* %156, i32* %157, i32 %158)
  %160 = load i32*, i32** %1, align 8
  %161 = load i32*, i32** %3, align 8
  %162 = call i32 @equalBN(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i32* %160, i32* %161)
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %181

164:                                              ; preds = %154
  %165 = load i32*, i32** %2, align 8
  %166 = load i32*, i32** %4, align 8
  %167 = call i32 @equalBN(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i32* %165, i32* %166)
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %181

169:                                              ; preds = %164
  %170 = load i32*, i32** %1, align 8
  %171 = load i32, i32* @BN_FLG_CONSTTIME, align 4
  %172 = call i32 @BN_get_flags(i32* %170, i32 %171)
  %173 = call i64 @TEST_true(i32 %172)
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %181

175:                                              ; preds = %169
  %176 = load i32*, i32** %2, align 8
  %177 = load i32, i32* @BN_FLG_CONSTTIME, align 4
  %178 = call i32 @BN_get_flags(i32* %176, i32 %177)
  %179 = call i32 @TEST_false(i32 %178)
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %182, label %181

181:                                              ; preds = %175, %169, %164, %154
  br label %183

182:                                              ; preds = %175
  store i32 1, i32* %7, align 4
  br label %183

183:                                              ; preds = %182, %181, %153, %125, %96, %80, %64, %46, %23
  %184 = load i32*, i32** %1, align 8
  %185 = call i32 @BN_free(i32* %184)
  %186 = load i32*, i32** %2, align 8
  %187 = call i32 @BN_free(i32* %186)
  %188 = load i32*, i32** %3, align 8
  %189 = call i32 @BN_free(i32* %188)
  %190 = load i32*, i32** %4, align 8
  %191 = call i32 @BN_free(i32* %190)
  %192 = load i32, i32* %7, align 4
  ret i32 %192
}

declare dso_local i64 @TEST_ptr(i32*) #1

declare dso_local i32* @BN_new(...) #1

declare dso_local i64 @TEST_true(i32) #1

declare dso_local i32 @BN_bntest_rand(i32*, i32, i32, i32) #1

declare dso_local i32* @BN_copy(i32*, i32*) #1

declare dso_local i32 @BN_num_bits(i32*) #1

declare dso_local i32 @BN_swap(i32*, i32*) #1

declare dso_local i32 @equalBN(i8*, i32*, i32*) #1

declare dso_local i32 @BN_consttime_swap(i32, i32*, i32*, i32) #1

declare dso_local i32 @BN_set_flags(i32*, i32) #1

declare dso_local i32 @BN_get_flags(i32*, i32) #1

declare dso_local i32 @TEST_false(i32) #1

declare dso_local i32 @BN_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
