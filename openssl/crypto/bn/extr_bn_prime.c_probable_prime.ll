; ModuleID = '/home/carl/AnghaBench/openssl/crypto/bn/extr_bn_prime.c_probable_prime.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/bn/extr_bn_prime.c_probable_prime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BN_MASK2 = common dso_local global i64 0, align 8
@primes = common dso_local global i64* null, align 8
@BN_RAND_TOP_TWO = common dso_local global i32 0, align 4
@BN_RAND_BOTTOM_ODD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32, i64*, i32*)* @probable_prime to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @probable_prime(i32* %0, i32 %1, i32 %2, i64* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i64* %3, i64** %10, align 8
  store i32* %4, i32** %11, align 8
  %17 = load i32, i32* %8, align 4
  %18 = call i32 @calc_trial_divisions(i32 %17)
  store i32 %18, i32* %14, align 4
  %19 = load i64, i64* @BN_MASK2, align 8
  %20 = load i64*, i64** @primes, align 8
  %21 = load i32, i32* %14, align 4
  %22 = sub nsw i32 %21, 1
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i64, i64* %20, i64 %23
  %25 = load i64, i64* %24, align 8
  %26 = sub nsw i64 %19, %25
  store i64 %26, i64* %15, align 8
  br label %27

27:                                               ; preds = %155, %138, %5
  %28 = load i32*, i32** %7, align 8
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* @BN_RAND_TOP_TWO, align 4
  %31 = load i32, i32* @BN_RAND_BOTTOM_ODD, align 4
  %32 = load i32*, i32** %11, align 8
  %33 = call i32 @BN_priv_rand_ex(i32* %28, i32 %29, i32 %30, i32 %31, i32* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %27
  store i32 0, i32* %6, align 4
  br label %159

36:                                               ; preds = %27
  %37 = load i32, i32* %9, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %36
  %40 = load i32*, i32** %7, align 8
  %41 = call i32 @BN_set_bit(i32* %40, i32 1)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %39
  store i32 0, i32* %6, align 4
  br label %159

44:                                               ; preds = %39, %36
  store i32 1, i32* %12, align 4
  br label %45

45:                                               ; preds = %66, %44
  %46 = load i32, i32* %12, align 4
  %47 = load i32, i32* %14, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %69

49:                                               ; preds = %45
  %50 = load i32*, i32** %7, align 8
  %51 = load i64*, i64** @primes, align 8
  %52 = load i32, i32* %12, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i64, i64* %51, i64 %53
  %55 = load i64, i64* %54, align 8
  %56 = call i64 @BN_mod_word(i32* %50, i64 %55)
  store i64 %56, i64* %16, align 8
  %57 = load i64, i64* %16, align 8
  %58 = icmp eq i64 %57, -1
  br i1 %58, label %59, label %60

59:                                               ; preds = %49
  store i32 0, i32* %6, align 4
  br label %159

60:                                               ; preds = %49
  %61 = load i64, i64* %16, align 8
  %62 = load i64*, i64** %10, align 8
  %63 = load i32, i32* %12, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i64, i64* %62, i64 %64
  store i64 %61, i64* %65, align 8
  br label %66

66:                                               ; preds = %60
  %67 = load i32, i32* %12, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %12, align 4
  br label %45

69:                                               ; preds = %45
  store i64 0, i64* %13, align 8
  br label %70

70:                                               ; preds = %139, %69
  store i32 1, i32* %12, align 4
  br label %71

71:                                               ; preds = %141, %70
  %72 = load i32, i32* %12, align 4
  %73 = load i32, i32* %14, align 4
  %74 = icmp slt i32 %72, %73
  br i1 %74, label %75, label %144

75:                                               ; preds = %71
  %76 = load i32, i32* %8, align 4
  %77 = icmp sle i32 %76, 31
  br i1 %77, label %78, label %94

78:                                               ; preds = %75
  %79 = load i64, i64* %13, align 8
  %80 = icmp sle i64 %79, 2147483647
  br i1 %80, label %81, label %94

81:                                               ; preds = %78
  %82 = load i64*, i64** @primes, align 8
  %83 = load i32, i32* %12, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i64, i64* %82, i64 %84
  %86 = load i64, i64* %85, align 8
  %87 = call i64 @square(i64 %86)
  %88 = load i32*, i32** %7, align 8
  %89 = call i64 @BN_get_word(i32* %88)
  %90 = load i64, i64* %13, align 8
  %91 = add nsw i64 %89, %90
  %92 = icmp sgt i64 %87, %91
  br i1 %92, label %93, label %94

93:                                               ; preds = %81
  br label %144

94:                                               ; preds = %81, %78, %75
  %95 = load i32, i32* %9, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %112

97:                                               ; preds = %94
  %98 = load i64*, i64** %10, align 8
  %99 = load i32, i32* %12, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i64, i64* %98, i64 %100
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* %13, align 8
  %104 = add nsw i64 %102, %103
  %105 = load i64*, i64** @primes, align 8
  %106 = load i32, i32* %12, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i64, i64* %105, i64 %107
  %109 = load i64, i64* %108, align 8
  %110 = srem i64 %104, %109
  %111 = icmp sle i64 %110, 1
  br i1 %111, label %127, label %140

112:                                              ; preds = %94
  %113 = load i64*, i64** %10, align 8
  %114 = load i32, i32* %12, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i64, i64* %113, i64 %115
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* %13, align 8
  %119 = add nsw i64 %117, %118
  %120 = load i64*, i64** @primes, align 8
  %121 = load i32, i32* %12, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i64, i64* %120, i64 %122
  %124 = load i64, i64* %123, align 8
  %125 = srem i64 %119, %124
  %126 = icmp eq i64 %125, 0
  br i1 %126, label %127, label %140

127:                                              ; preds = %112, %97
  %128 = load i32, i32* %9, align 4
  %129 = icmp ne i32 %128, 0
  %130 = zext i1 %129 to i64
  %131 = select i1 %129, i32 4, i32 2
  %132 = sext i32 %131 to i64
  %133 = load i64, i64* %13, align 8
  %134 = add nsw i64 %133, %132
  store i64 %134, i64* %13, align 8
  %135 = load i64, i64* %13, align 8
  %136 = load i64, i64* %15, align 8
  %137 = icmp sgt i64 %135, %136
  br i1 %137, label %138, label %139

138:                                              ; preds = %127
  br label %27

139:                                              ; preds = %127
  br label %70

140:                                              ; preds = %112, %97
  br label %141

141:                                              ; preds = %140
  %142 = load i32, i32* %12, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %12, align 4
  br label %71

144:                                              ; preds = %93, %71
  %145 = load i32*, i32** %7, align 8
  %146 = load i64, i64* %13, align 8
  %147 = call i32 @BN_add_word(i32* %145, i64 %146)
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %150, label %149

149:                                              ; preds = %144
  store i32 0, i32* %6, align 4
  br label %159

150:                                              ; preds = %144
  %151 = load i32*, i32** %7, align 8
  %152 = call i32 @BN_num_bits(i32* %151)
  %153 = load i32, i32* %8, align 4
  %154 = icmp ne i32 %152, %153
  br i1 %154, label %155, label %156

155:                                              ; preds = %150
  br label %27

156:                                              ; preds = %150
  %157 = load i32*, i32** %7, align 8
  %158 = call i32 @bn_check_top(i32* %157)
  store i32 1, i32* %6, align 4
  br label %159

159:                                              ; preds = %156, %149, %59, %43, %35
  %160 = load i32, i32* %6, align 4
  ret i32 %160
}

declare dso_local i32 @calc_trial_divisions(i32) #1

declare dso_local i32 @BN_priv_rand_ex(i32*, i32, i32, i32, i32*) #1

declare dso_local i32 @BN_set_bit(i32*, i32) #1

declare dso_local i64 @BN_mod_word(i32*, i64) #1

declare dso_local i64 @square(i64) #1

declare dso_local i64 @BN_get_word(i32*) #1

declare dso_local i32 @BN_add_word(i32*, i64) #1

declare dso_local i32 @BN_num_bits(i32*) #1

declare dso_local i32 @bn_check_top(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
