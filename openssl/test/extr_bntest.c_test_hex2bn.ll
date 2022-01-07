; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_bntest.c_test_hex2bn.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_bntest.c_test_hex2bn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"256\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"-42\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"cb\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"-0\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"abctrailing garbage is ignored\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @test_hex2bn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_hex2bn() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  store i32* null, i32** %1, align 8
  store i32 0, i32* %2, align 4
  %3 = call i32 @parseBN(i32** %1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %4 = call i32 @TEST_int_eq(i32 %3, i32 1)
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %18

6:                                                ; preds = %0
  %7 = load i32*, i32** %1, align 8
  %8 = call i32 @TEST_BN_eq_zero(i32* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %18

10:                                               ; preds = %6
  %11 = load i32*, i32** %1, align 8
  %12 = call i32 @TEST_BN_ge_zero(i32* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %10
  %15 = load i32*, i32** %1, align 8
  %16 = call i32 @TEST_BN_even(i32* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %14, %10, %6, %0
  br label %151

19:                                               ; preds = %14
  %20 = load i32*, i32** %1, align 8
  %21 = call i32 @BN_free(i32* %20)
  store i32* null, i32** %1, align 8
  %22 = call i32 @parseBN(i32** %1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %23 = call i32 @TEST_int_eq(i32 %22, i32 3)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %45

25:                                               ; preds = %19
  %26 = load i32*, i32** %1, align 8
  %27 = call i32 @TEST_BN_eq_word(i32* %26, i32 598)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %45

29:                                               ; preds = %25
  %30 = load i32*, i32** %1, align 8
  %31 = call i32 @TEST_BN_ge_zero(i32* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %45

33:                                               ; preds = %29
  %34 = load i32*, i32** %1, align 8
  %35 = call i32 @TEST_BN_gt_zero(i32* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %33
  %38 = load i32*, i32** %1, align 8
  %39 = call i32 @TEST_BN_ne_zero(i32* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %37
  %42 = load i32*, i32** %1, align 8
  %43 = call i32 @TEST_BN_even(i32* %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %41, %37, %33, %29, %25, %19
  br label %151

46:                                               ; preds = %41
  %47 = load i32*, i32** %1, align 8
  %48 = call i32 @BN_free(i32* %47)
  store i32* null, i32** %1, align 8
  %49 = call i32 @parseBN(i32** %1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %50 = call i32 @TEST_int_eq(i32 %49, i32 3)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %72

52:                                               ; preds = %46
  %53 = load i32*, i32** %1, align 8
  %54 = call i32 @TEST_BN_abs_eq_word(i32* %53, i32 66)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %72

56:                                               ; preds = %52
  %57 = load i32*, i32** %1, align 8
  %58 = call i32 @TEST_BN_lt_zero(i32* %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %72

60:                                               ; preds = %56
  %61 = load i32*, i32** %1, align 8
  %62 = call i32 @TEST_BN_le_zero(i32* %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %72

64:                                               ; preds = %60
  %65 = load i32*, i32** %1, align 8
  %66 = call i32 @TEST_BN_ne_zero(i32* %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %64
  %69 = load i32*, i32** %1, align 8
  %70 = call i32 @TEST_BN_even(i32* %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %68, %64, %60, %56, %52, %46
  br label %151

73:                                               ; preds = %68
  %74 = load i32*, i32** %1, align 8
  %75 = call i32 @BN_free(i32* %74)
  store i32* null, i32** %1, align 8
  %76 = call i32 @parseBN(i32** %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %77 = call i32 @TEST_int_eq(i32 %76, i32 2)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %99

79:                                               ; preds = %73
  %80 = load i32*, i32** %1, align 8
  %81 = call i32 @TEST_BN_eq_word(i32* %80, i32 203)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %99

83:                                               ; preds = %79
  %84 = load i32*, i32** %1, align 8
  %85 = call i32 @TEST_BN_ge_zero(i32* %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %99

87:                                               ; preds = %83
  %88 = load i32*, i32** %1, align 8
  %89 = call i32 @TEST_BN_gt_zero(i32* %88)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %99

91:                                               ; preds = %87
  %92 = load i32*, i32** %1, align 8
  %93 = call i32 @TEST_BN_ne_zero(i32* %92)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %99

95:                                               ; preds = %91
  %96 = load i32*, i32** %1, align 8
  %97 = call i32 @TEST_BN_odd(i32* %96)
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %100, label %99

99:                                               ; preds = %95, %91, %87, %83, %79, %73
  br label %151

100:                                              ; preds = %95
  %101 = load i32*, i32** %1, align 8
  %102 = call i32 @BN_free(i32* %101)
  store i32* null, i32** %1, align 8
  %103 = call i32 @parseBN(i32** %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %104 = call i32 @TEST_int_eq(i32 %103, i32 2)
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %122

106:                                              ; preds = %100
  %107 = load i32*, i32** %1, align 8
  %108 = call i32 @TEST_BN_eq_zero(i32* %107)
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %122

110:                                              ; preds = %106
  %111 = load i32*, i32** %1, align 8
  %112 = call i32 @TEST_BN_ge_zero(i32* %111)
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %122

114:                                              ; preds = %110
  %115 = load i32*, i32** %1, align 8
  %116 = call i32 @TEST_BN_le_zero(i32* %115)
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %122

118:                                              ; preds = %114
  %119 = load i32*, i32** %1, align 8
  %120 = call i32 @TEST_BN_even(i32* %119)
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %123, label %122

122:                                              ; preds = %118, %114, %110, %106, %100
  br label %151

123:                                              ; preds = %118
  %124 = load i32*, i32** %1, align 8
  %125 = call i32 @BN_free(i32* %124)
  store i32* null, i32** %1, align 8
  %126 = call i32 @parseBN(i32** %1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0))
  %127 = call i32 @TEST_int_eq(i32 %126, i32 3)
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %149

129:                                              ; preds = %123
  %130 = load i32*, i32** %1, align 8
  %131 = call i32 @TEST_BN_eq_word(i32* %130, i32 2748)
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %149

133:                                              ; preds = %129
  %134 = load i32*, i32** %1, align 8
  %135 = call i32 @TEST_BN_ge_zero(i32* %134)
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %149

137:                                              ; preds = %133
  %138 = load i32*, i32** %1, align 8
  %139 = call i32 @TEST_BN_gt_zero(i32* %138)
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %149

141:                                              ; preds = %137
  %142 = load i32*, i32** %1, align 8
  %143 = call i32 @TEST_BN_ne_zero(i32* %142)
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %149

145:                                              ; preds = %141
  %146 = load i32*, i32** %1, align 8
  %147 = call i32 @TEST_BN_even(i32* %146)
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %150, label %149

149:                                              ; preds = %145, %141, %137, %133, %129, %123
  br label %151

150:                                              ; preds = %145
  store i32 1, i32* %2, align 4
  br label %151

151:                                              ; preds = %150, %149, %122, %99, %72, %45, %18
  %152 = load i32*, i32** %1, align 8
  %153 = call i32 @BN_free(i32* %152)
  %154 = load i32, i32* %2, align 4
  ret i32 %154
}

declare dso_local i32 @TEST_int_eq(i32, i32) #1

declare dso_local i32 @parseBN(i32**, i8*) #1

declare dso_local i32 @TEST_BN_eq_zero(i32*) #1

declare dso_local i32 @TEST_BN_ge_zero(i32*) #1

declare dso_local i32 @TEST_BN_even(i32*) #1

declare dso_local i32 @BN_free(i32*) #1

declare dso_local i32 @TEST_BN_eq_word(i32*, i32) #1

declare dso_local i32 @TEST_BN_gt_zero(i32*) #1

declare dso_local i32 @TEST_BN_ne_zero(i32*) #1

declare dso_local i32 @TEST_BN_abs_eq_word(i32*, i32) #1

declare dso_local i32 @TEST_BN_lt_zero(i32*) #1

declare dso_local i32 @TEST_BN_le_zero(i32*) #1

declare dso_local i32 @TEST_BN_odd(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
