; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_bntest.c_test_dec2bn.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_bntest.c_test_dec2bn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"256\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"-42\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"-0\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"42trailing garbage is ignored\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @test_dec2bn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_dec2bn() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  store i32* null, i32** %1, align 8
  store i32 0, i32* %2, align 4
  %3 = call i32 @parsedecBN(i32** %1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %4 = call i32 @TEST_int_eq(i32 %3, i32 1)
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %26

6:                                                ; preds = %0
  %7 = load i32*, i32** %1, align 8
  %8 = call i32 @TEST_BN_eq_word(i32* %7, i32 0)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %26

10:                                               ; preds = %6
  %11 = load i32*, i32** %1, align 8
  %12 = call i32 @TEST_BN_eq_zero(i32* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %26

14:                                               ; preds = %10
  %15 = load i32*, i32** %1, align 8
  %16 = call i32 @TEST_BN_le_zero(i32* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %14
  %19 = load i32*, i32** %1, align 8
  %20 = call i32 @TEST_BN_ge_zero(i32* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %18
  %23 = load i32*, i32** %1, align 8
  %24 = call i32 @TEST_BN_even(i32* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %22, %18, %14, %10, %6, %0
  br label %163

27:                                               ; preds = %22
  %28 = load i32*, i32** %1, align 8
  %29 = call i32 @BN_free(i32* %28)
  store i32* null, i32** %1, align 8
  %30 = call i32 @parsedecBN(i32** %1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %31 = call i32 @TEST_int_eq(i32 %30, i32 3)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %53

33:                                               ; preds = %27
  %34 = load i32*, i32** %1, align 8
  %35 = call i32 @TEST_BN_eq_word(i32* %34, i32 256)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %53

37:                                               ; preds = %33
  %38 = load i32*, i32** %1, align 8
  %39 = call i32 @TEST_BN_ge_zero(i32* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %53

41:                                               ; preds = %37
  %42 = load i32*, i32** %1, align 8
  %43 = call i32 @TEST_BN_gt_zero(i32* %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %53

45:                                               ; preds = %41
  %46 = load i32*, i32** %1, align 8
  %47 = call i32 @TEST_BN_ne_zero(i32* %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %45
  %50 = load i32*, i32** %1, align 8
  %51 = call i32 @TEST_BN_even(i32* %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %49, %45, %41, %37, %33, %27
  br label %163

54:                                               ; preds = %49
  %55 = load i32*, i32** %1, align 8
  %56 = call i32 @BN_free(i32* %55)
  store i32* null, i32** %1, align 8
  %57 = call i32 @parsedecBN(i32** %1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %58 = call i32 @TEST_int_eq(i32 %57, i32 3)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %80

60:                                               ; preds = %54
  %61 = load i32*, i32** %1, align 8
  %62 = call i32 @TEST_BN_abs_eq_word(i32* %61, i32 42)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %80

64:                                               ; preds = %60
  %65 = load i32*, i32** %1, align 8
  %66 = call i32 @TEST_BN_lt_zero(i32* %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %80

68:                                               ; preds = %64
  %69 = load i32*, i32** %1, align 8
  %70 = call i32 @TEST_BN_le_zero(i32* %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %80

72:                                               ; preds = %68
  %73 = load i32*, i32** %1, align 8
  %74 = call i32 @TEST_BN_ne_zero(i32* %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %72
  %77 = load i32*, i32** %1, align 8
  %78 = call i32 @TEST_BN_even(i32* %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %81, label %80

80:                                               ; preds = %76, %72, %68, %64, %60, %54
  br label %163

81:                                               ; preds = %76
  %82 = load i32*, i32** %1, align 8
  %83 = call i32 @BN_free(i32* %82)
  store i32* null, i32** %1, align 8
  %84 = call i32 @parsedecBN(i32** %1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %85 = call i32 @TEST_int_eq(i32 %84, i32 1)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %111

87:                                               ; preds = %81
  %88 = load i32*, i32** %1, align 8
  %89 = call i32 @TEST_BN_eq_word(i32* %88, i32 1)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %111

91:                                               ; preds = %87
  %92 = load i32*, i32** %1, align 8
  %93 = call i32 @TEST_BN_ne_zero(i32* %92)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %111

95:                                               ; preds = %91
  %96 = load i32*, i32** %1, align 8
  %97 = call i32 @TEST_BN_gt_zero(i32* %96)
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %111

99:                                               ; preds = %95
  %100 = load i32*, i32** %1, align 8
  %101 = call i32 @TEST_BN_ge_zero(i32* %100)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %111

103:                                              ; preds = %99
  %104 = load i32*, i32** %1, align 8
  %105 = call i32 @TEST_BN_eq_one(i32* %104)
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %103
  %108 = load i32*, i32** %1, align 8
  %109 = call i32 @TEST_BN_odd(i32* %108)
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %112, label %111

111:                                              ; preds = %107, %103, %99, %95, %91, %87, %81
  br label %163

112:                                              ; preds = %107
  %113 = load i32*, i32** %1, align 8
  %114 = call i32 @BN_free(i32* %113)
  store i32* null, i32** %1, align 8
  %115 = call i32 @parsedecBN(i32** %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %116 = call i32 @TEST_int_eq(i32 %115, i32 2)
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %134

118:                                              ; preds = %112
  %119 = load i32*, i32** %1, align 8
  %120 = call i32 @TEST_BN_eq_zero(i32* %119)
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %134

122:                                              ; preds = %118
  %123 = load i32*, i32** %1, align 8
  %124 = call i32 @TEST_BN_ge_zero(i32* %123)
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %134

126:                                              ; preds = %122
  %127 = load i32*, i32** %1, align 8
  %128 = call i32 @TEST_BN_le_zero(i32* %127)
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %134

130:                                              ; preds = %126
  %131 = load i32*, i32** %1, align 8
  %132 = call i32 @TEST_BN_even(i32* %131)
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %135, label %134

134:                                              ; preds = %130, %126, %122, %118, %112
  br label %163

135:                                              ; preds = %130
  %136 = load i32*, i32** %1, align 8
  %137 = call i32 @BN_free(i32* %136)
  store i32* null, i32** %1, align 8
  %138 = call i32 @parsedecBN(i32** %1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0))
  %139 = call i32 @TEST_int_eq(i32 %138, i32 2)
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %161

141:                                              ; preds = %135
  %142 = load i32*, i32** %1, align 8
  %143 = call i32 @TEST_BN_abs_eq_word(i32* %142, i32 42)
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %161

145:                                              ; preds = %141
  %146 = load i32*, i32** %1, align 8
  %147 = call i32 @TEST_BN_ge_zero(i32* %146)
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %161

149:                                              ; preds = %145
  %150 = load i32*, i32** %1, align 8
  %151 = call i32 @TEST_BN_gt_zero(i32* %150)
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %161

153:                                              ; preds = %149
  %154 = load i32*, i32** %1, align 8
  %155 = call i32 @TEST_BN_ne_zero(i32* %154)
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %161

157:                                              ; preds = %153
  %158 = load i32*, i32** %1, align 8
  %159 = call i32 @TEST_BN_even(i32* %158)
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %162, label %161

161:                                              ; preds = %157, %153, %149, %145, %141, %135
  br label %163

162:                                              ; preds = %157
  store i32 1, i32* %2, align 4
  br label %163

163:                                              ; preds = %162, %161, %134, %111, %80, %53, %26
  %164 = load i32*, i32** %1, align 8
  %165 = call i32 @BN_free(i32* %164)
  %166 = load i32, i32* %2, align 4
  ret i32 %166
}

declare dso_local i32 @TEST_int_eq(i32, i32) #1

declare dso_local i32 @parsedecBN(i32**, i8*) #1

declare dso_local i32 @TEST_BN_eq_word(i32*, i32) #1

declare dso_local i32 @TEST_BN_eq_zero(i32*) #1

declare dso_local i32 @TEST_BN_le_zero(i32*) #1

declare dso_local i32 @TEST_BN_ge_zero(i32*) #1

declare dso_local i32 @TEST_BN_even(i32*) #1

declare dso_local i32 @BN_free(i32*) #1

declare dso_local i32 @TEST_BN_gt_zero(i32*) #1

declare dso_local i32 @TEST_BN_ne_zero(i32*) #1

declare dso_local i32 @TEST_BN_abs_eq_word(i32*, i32) #1

declare dso_local i32 @TEST_BN_lt_zero(i32*) #1

declare dso_local i32 @TEST_BN_eq_one(i32*) #1

declare dso_local i32 @TEST_BN_odd(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
