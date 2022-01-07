; ModuleID = '/home/carl/AnghaBench/openssl/crypto/bn/extr_bn_exp.c_BN_exp.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/bn/extr_bn_exp.c_BN_exp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BN_FLG_CONSTTIME = common dso_local global i32 0, align 4
@BN_F_BN_EXP = common dso_local global i32 0, align 4
@ERR_R_SHOULD_NOT_HAVE_BEEN_CALLED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BN_exp(i32* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 0, i32* %12, align 4
  %15 = load i32*, i32** %8, align 8
  %16 = load i32, i32* @BN_FLG_CONSTTIME, align 4
  %17 = call i64 @BN_get_flags(i32* %15, i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %4
  %20 = load i32*, i32** %7, align 8
  %21 = load i32, i32* @BN_FLG_CONSTTIME, align 4
  %22 = call i64 @BN_get_flags(i32* %20, i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %19, %4
  %25 = load i32, i32* @BN_F_BN_EXP, align 4
  %26 = load i32, i32* @ERR_R_SHOULD_NOT_HAVE_BEEN_CALLED, align 4
  %27 = call i32 @BNerr(i32 %25, i32 %26)
  store i32 0, i32* %5, align 4
  br label %125

28:                                               ; preds = %19
  %29 = load i32*, i32** %9, align 8
  %30 = call i32 @BN_CTX_start(i32* %29)
  %31 = load i32*, i32** %6, align 8
  %32 = load i32*, i32** %7, align 8
  %33 = icmp eq i32* %31, %32
  br i1 %33, label %38, label %34

34:                                               ; preds = %28
  %35 = load i32*, i32** %6, align 8
  %36 = load i32*, i32** %8, align 8
  %37 = icmp eq i32* %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %34, %28
  %39 = load i32*, i32** %9, align 8
  %40 = call i32* @BN_CTX_get(i32* %39)
  br label %43

41:                                               ; preds = %34
  %42 = load i32*, i32** %6, align 8
  br label %43

43:                                               ; preds = %41, %38
  %44 = phi i32* [ %40, %38 ], [ %42, %41 ]
  store i32* %44, i32** %14, align 8
  %45 = load i32*, i32** %9, align 8
  %46 = call i32* @BN_CTX_get(i32* %45)
  store i32* %46, i32** %13, align 8
  %47 = load i32*, i32** %14, align 8
  %48 = icmp eq i32* %47, null
  br i1 %48, label %52, label %49

49:                                               ; preds = %43
  %50 = load i32*, i32** %13, align 8
  %51 = icmp eq i32* %50, null
  br i1 %51, label %52, label %53

52:                                               ; preds = %49, %43
  br label %119

53:                                               ; preds = %49
  %54 = load i32*, i32** %13, align 8
  %55 = load i32*, i32** %7, align 8
  %56 = call i32* @BN_copy(i32* %54, i32* %55)
  %57 = icmp eq i32* %56, null
  br i1 %57, label %58, label %59

58:                                               ; preds = %53
  br label %119

59:                                               ; preds = %53
  %60 = load i32*, i32** %8, align 8
  %61 = call i32 @BN_num_bits(i32* %60)
  store i32 %61, i32* %11, align 4
  %62 = load i32*, i32** %8, align 8
  %63 = call i64 @BN_is_odd(i32* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %72

65:                                               ; preds = %59
  %66 = load i32*, i32** %14, align 8
  %67 = load i32*, i32** %7, align 8
  %68 = call i32* @BN_copy(i32* %66, i32* %67)
  %69 = icmp eq i32* %68, null
  br i1 %69, label %70, label %71

70:                                               ; preds = %65
  br label %119

71:                                               ; preds = %65
  br label %78

72:                                               ; preds = %59
  %73 = load i32*, i32** %14, align 8
  %74 = call i32 @BN_one(i32* %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %77, label %76

76:                                               ; preds = %72
  br label %119

77:                                               ; preds = %72
  br label %78

78:                                               ; preds = %77, %71
  store i32 1, i32* %10, align 4
  br label %79

79:                                               ; preds = %105, %78
  %80 = load i32, i32* %10, align 4
  %81 = load i32, i32* %11, align 4
  %82 = icmp slt i32 %80, %81
  br i1 %82, label %83, label %108

83:                                               ; preds = %79
  %84 = load i32*, i32** %13, align 8
  %85 = load i32*, i32** %13, align 8
  %86 = load i32*, i32** %9, align 8
  %87 = call i32 @BN_sqr(i32* %84, i32* %85, i32* %86)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %90, label %89

89:                                               ; preds = %83
  br label %119

90:                                               ; preds = %83
  %91 = load i32*, i32** %8, align 8
  %92 = load i32, i32* %10, align 4
  %93 = call i64 @BN_is_bit_set(i32* %91, i32 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %104

95:                                               ; preds = %90
  %96 = load i32*, i32** %14, align 8
  %97 = load i32*, i32** %14, align 8
  %98 = load i32*, i32** %13, align 8
  %99 = load i32*, i32** %9, align 8
  %100 = call i32 @BN_mul(i32* %96, i32* %97, i32* %98, i32* %99)
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %103, label %102

102:                                              ; preds = %95
  br label %119

103:                                              ; preds = %95
  br label %104

104:                                              ; preds = %103, %90
  br label %105

105:                                              ; preds = %104
  %106 = load i32, i32* %10, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %10, align 4
  br label %79

108:                                              ; preds = %79
  %109 = load i32*, i32** %6, align 8
  %110 = load i32*, i32** %14, align 8
  %111 = icmp ne i32* %109, %110
  br i1 %111, label %112, label %118

112:                                              ; preds = %108
  %113 = load i32*, i32** %6, align 8
  %114 = load i32*, i32** %14, align 8
  %115 = call i32* @BN_copy(i32* %113, i32* %114)
  %116 = icmp eq i32* %115, null
  br i1 %116, label %117, label %118

117:                                              ; preds = %112
  br label %119

118:                                              ; preds = %112, %108
  store i32 1, i32* %12, align 4
  br label %119

119:                                              ; preds = %118, %117, %102, %89, %76, %70, %58, %52
  %120 = load i32*, i32** %9, align 8
  %121 = call i32 @BN_CTX_end(i32* %120)
  %122 = load i32*, i32** %6, align 8
  %123 = call i32 @bn_check_top(i32* %122)
  %124 = load i32, i32* %12, align 4
  store i32 %124, i32* %5, align 4
  br label %125

125:                                              ; preds = %119, %24
  %126 = load i32, i32* %5, align 4
  ret i32 %126
}

declare dso_local i64 @BN_get_flags(i32*, i32) #1

declare dso_local i32 @BNerr(i32, i32) #1

declare dso_local i32 @BN_CTX_start(i32*) #1

declare dso_local i32* @BN_CTX_get(i32*) #1

declare dso_local i32* @BN_copy(i32*, i32*) #1

declare dso_local i32 @BN_num_bits(i32*) #1

declare dso_local i64 @BN_is_odd(i32*) #1

declare dso_local i32 @BN_one(i32*) #1

declare dso_local i32 @BN_sqr(i32*, i32*, i32*) #1

declare dso_local i64 @BN_is_bit_set(i32*, i32) #1

declare dso_local i32 @BN_mul(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @BN_CTX_end(i32*) #1

declare dso_local i32 @bn_check_top(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
