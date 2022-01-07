; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_bntest.c_file_lshift1.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_bntest.c_file_lshift1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"LShift1\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"A + A\00", align 1
@ctx = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"A * 2\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"LShift1 / 2\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"LShift1 % 2\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"A << 1\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"LShift >> 1\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"(LShift1 | 1) / 2\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"(LShift | 1) >> 1\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @file_lshift1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @file_lshift1(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  store i32* null, i32** %3, align 8
  store i32* null, i32** %4, align 8
  store i32* null, i32** %5, align 8
  store i32* null, i32** %6, align 8
  store i32* null, i32** %7, align 8
  store i32* null, i32** %8, align 8
  store i32 0, i32* %9, align 4
  %10 = load i32*, i32** %2, align 8
  %11 = call i32* @getBN(i32* %10, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %11, i32** %3, align 8
  %12 = call i32 @TEST_ptr(i32* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %35

14:                                               ; preds = %1
  %15 = load i32*, i32** %2, align 8
  %16 = call i32* @getBN(i32* %15, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  store i32* %16, i32** %4, align 8
  %17 = call i32 @TEST_ptr(i32* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %35

19:                                               ; preds = %14
  %20 = call i32* (...) @BN_new()
  store i32* %20, i32** %5, align 8
  %21 = call i32 @TEST_ptr(i32* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %35

23:                                               ; preds = %19
  %24 = call i32* (...) @BN_new()
  store i32* %24, i32** %6, align 8
  %25 = call i32 @TEST_ptr(i32* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %23
  %28 = call i32* (...) @BN_new()
  store i32* %28, i32** %7, align 8
  %29 = call i32 @TEST_ptr(i32* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %27
  %32 = call i32* (...) @BN_new()
  store i32* %32, i32** %8, align 8
  %33 = call i32 @TEST_ptr(i32* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %31, %27, %23, %19, %14, %1
  br label %152

36:                                               ; preds = %31
  %37 = load i32*, i32** %5, align 8
  %38 = call i32 @BN_zero(i32* %37)
  %39 = load i32*, i32** %7, align 8
  %40 = call i32 @BN_set_word(i32* %39, i32 2)
  %41 = call i32 @TEST_true(i32 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %120

43:                                               ; preds = %36
  %44 = load i32*, i32** %6, align 8
  %45 = load i32*, i32** %3, align 8
  %46 = load i32*, i32** %3, align 8
  %47 = call i32 @BN_add(i32* %44, i32* %45, i32* %46)
  %48 = call i32 @TEST_true(i32 %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %120

50:                                               ; preds = %43
  %51 = load i32*, i32** %4, align 8
  %52 = load i32*, i32** %6, align 8
  %53 = call i32 @equalBN(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32* %51, i32* %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %120

55:                                               ; preds = %50
  %56 = load i32*, i32** %6, align 8
  %57 = load i32*, i32** %3, align 8
  %58 = load i32*, i32** %7, align 8
  %59 = load i32, i32* @ctx, align 4
  %60 = call i32 @BN_mul(i32* %56, i32* %57, i32* %58, i32 %59)
  %61 = call i32 @TEST_true(i32 %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %120

63:                                               ; preds = %55
  %64 = load i32*, i32** %4, align 8
  %65 = load i32*, i32** %6, align 8
  %66 = call i32 @equalBN(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32* %64, i32* %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %120

68:                                               ; preds = %63
  %69 = load i32*, i32** %6, align 8
  %70 = load i32*, i32** %8, align 8
  %71 = load i32*, i32** %4, align 8
  %72 = load i32*, i32** %7, align 8
  %73 = load i32, i32* @ctx, align 4
  %74 = call i32 @BN_div(i32* %69, i32* %70, i32* %71, i32* %72, i32 %73)
  %75 = call i32 @TEST_true(i32 %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %120

77:                                               ; preds = %68
  %78 = load i32*, i32** %3, align 8
  %79 = load i32*, i32** %6, align 8
  %80 = call i32 @equalBN(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32* %78, i32* %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %120

82:                                               ; preds = %77
  %83 = load i32*, i32** %5, align 8
  %84 = load i32*, i32** %8, align 8
  %85 = call i32 @equalBN(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i32* %83, i32* %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %120

87:                                               ; preds = %82
  %88 = load i32*, i32** %6, align 8
  %89 = load i32*, i32** %3, align 8
  %90 = call i32 @BN_lshift1(i32* %88, i32* %89)
  %91 = call i32 @TEST_true(i32 %90)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %120

93:                                               ; preds = %87
  %94 = load i32*, i32** %4, align 8
  %95 = load i32*, i32** %6, align 8
  %96 = call i32 @equalBN(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i32* %94, i32* %95)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %120

98:                                               ; preds = %93
  %99 = load i32*, i32** %6, align 8
  %100 = load i32*, i32** %4, align 8
  %101 = call i32 @BN_rshift1(i32* %99, i32* %100)
  %102 = call i32 @TEST_true(i32 %101)
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %120

104:                                              ; preds = %98
  %105 = load i32*, i32** %3, align 8
  %106 = load i32*, i32** %6, align 8
  %107 = call i32 @equalBN(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i32* %105, i32* %106)
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %120

109:                                              ; preds = %104
  %110 = load i32*, i32** %6, align 8
  %111 = load i32*, i32** %4, align 8
  %112 = call i32 @BN_rshift1(i32* %110, i32* %111)
  %113 = call i32 @TEST_true(i32 %112)
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %120

115:                                              ; preds = %109
  %116 = load i32*, i32** %3, align 8
  %117 = load i32*, i32** %6, align 8
  %118 = call i32 @equalBN(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i32* %116, i32* %117)
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %121, label %120

120:                                              ; preds = %115, %109, %104, %98, %93, %87, %82, %77, %68, %63, %55, %50, %43, %36
  br label %152

121:                                              ; preds = %115
  %122 = load i32*, i32** %4, align 8
  %123 = call i32 @BN_set_bit(i32* %122, i32 0)
  %124 = call i32 @TEST_true(i32 %123)
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %150

126:                                              ; preds = %121
  %127 = load i32*, i32** %6, align 8
  %128 = load i32*, i32** %4, align 8
  %129 = load i32*, i32** %7, align 8
  %130 = load i32, i32* @ctx, align 4
  %131 = call i32 @BN_div(i32* %127, i32* null, i32* %128, i32* %129, i32 %130)
  %132 = call i32 @TEST_true(i32 %131)
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %150

134:                                              ; preds = %126
  %135 = load i32*, i32** %3, align 8
  %136 = load i32*, i32** %6, align 8
  %137 = call i32 @equalBN(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0), i32* %135, i32* %136)
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %150

139:                                              ; preds = %134
  %140 = load i32*, i32** %6, align 8
  %141 = load i32*, i32** %4, align 8
  %142 = call i32 @BN_rshift1(i32* %140, i32* %141)
  %143 = call i32 @TEST_true(i32 %142)
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %150

145:                                              ; preds = %139
  %146 = load i32*, i32** %3, align 8
  %147 = load i32*, i32** %6, align 8
  %148 = call i32 @equalBN(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0), i32* %146, i32* %147)
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %151, label %150

150:                                              ; preds = %145, %139, %134, %126, %121
  br label %152

151:                                              ; preds = %145
  store i32 1, i32* %9, align 4
  br label %152

152:                                              ; preds = %151, %150, %120, %35
  %153 = load i32*, i32** %3, align 8
  %154 = call i32 @BN_free(i32* %153)
  %155 = load i32*, i32** %4, align 8
  %156 = call i32 @BN_free(i32* %155)
  %157 = load i32*, i32** %5, align 8
  %158 = call i32 @BN_free(i32* %157)
  %159 = load i32*, i32** %6, align 8
  %160 = call i32 @BN_free(i32* %159)
  %161 = load i32*, i32** %7, align 8
  %162 = call i32 @BN_free(i32* %161)
  %163 = load i32*, i32** %8, align 8
  %164 = call i32 @BN_free(i32* %163)
  %165 = load i32, i32* %9, align 4
  ret i32 %165
}

declare dso_local i32 @TEST_ptr(i32*) #1

declare dso_local i32* @getBN(i32*, i8*) #1

declare dso_local i32* @BN_new(...) #1

declare dso_local i32 @BN_zero(i32*) #1

declare dso_local i32 @TEST_true(i32) #1

declare dso_local i32 @BN_set_word(i32*, i32) #1

declare dso_local i32 @BN_add(i32*, i32*, i32*) #1

declare dso_local i32 @equalBN(i8*, i32*, i32*) #1

declare dso_local i32 @BN_mul(i32*, i32*, i32*, i32) #1

declare dso_local i32 @BN_div(i32*, i32*, i32*, i32*, i32) #1

declare dso_local i32 @BN_lshift1(i32*, i32*) #1

declare dso_local i32 @BN_rshift1(i32*, i32*) #1

declare dso_local i32 @BN_set_bit(i32*, i32) #1

declare dso_local i32 @BN_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
