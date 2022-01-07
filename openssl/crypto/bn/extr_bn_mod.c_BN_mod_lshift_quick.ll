; ModuleID = '/home/carl/AnghaBench/openssl/crypto/bn/extr_bn_mod.c_BN_mod_lshift_quick.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/bn/extr_bn_mod.c_BN_mod_lshift_quick.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BN_F_BN_MOD_LSHIFT_QUICK = common dso_local global i32 0, align 4
@BN_R_INPUT_NOT_REDUCED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BN_mod_lshift_quick(i32* %0, i32* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %11 = load i32*, i32** %6, align 8
  %12 = load i32*, i32** %7, align 8
  %13 = icmp ne i32* %11, %12
  br i1 %13, label %14, label %21

14:                                               ; preds = %4
  %15 = load i32*, i32** %6, align 8
  %16 = load i32*, i32** %7, align 8
  %17 = call i32* @BN_copy(i32* %15, i32* %16)
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  store i32 0, i32* %5, align 4
  br label %83

20:                                               ; preds = %14
  br label %21

21:                                               ; preds = %20, %4
  br label %22

22:                                               ; preds = %79, %21
  %23 = load i32, i32* %8, align 4
  %24 = icmp sgt i32 %23, 0
  br i1 %24, label %25, label %80

25:                                               ; preds = %22
  %26 = load i32*, i32** %9, align 8
  %27 = call i32 @BN_num_bits(i32* %26)
  %28 = load i32*, i32** %6, align 8
  %29 = call i32 @BN_num_bits(i32* %28)
  %30 = sub nsw i32 %27, %29
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* %10, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %25
  %34 = load i32, i32* @BN_F_BN_MOD_LSHIFT_QUICK, align 4
  %35 = load i32, i32* @BN_R_INPUT_NOT_REDUCED, align 4
  %36 = call i32 @BNerr(i32 %34, i32 %35)
  store i32 0, i32* %5, align 4
  br label %83

37:                                               ; preds = %25
  %38 = load i32, i32* %10, align 4
  %39 = load i32, i32* %8, align 4
  %40 = icmp sgt i32 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %37
  %42 = load i32, i32* %8, align 4
  store i32 %42, i32* %10, align 4
  br label %43

43:                                               ; preds = %41, %37
  %44 = load i32, i32* %10, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %57

46:                                               ; preds = %43
  %47 = load i32*, i32** %6, align 8
  %48 = load i32*, i32** %6, align 8
  %49 = load i32, i32* %10, align 4
  %50 = call i32 @BN_lshift(i32* %47, i32* %48, i32 %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %46
  store i32 0, i32* %5, align 4
  br label %83

53:                                               ; preds = %46
  %54 = load i32, i32* %10, align 4
  %55 = load i32, i32* %8, align 4
  %56 = sub nsw i32 %55, %54
  store i32 %56, i32* %8, align 4
  br label %66

57:                                               ; preds = %43
  %58 = load i32*, i32** %6, align 8
  %59 = load i32*, i32** %6, align 8
  %60 = call i32 @BN_lshift1(i32* %58, i32* %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %57
  store i32 0, i32* %5, align 4
  br label %83

63:                                               ; preds = %57
  %64 = load i32, i32* %8, align 4
  %65 = add nsw i32 %64, -1
  store i32 %65, i32* %8, align 4
  br label %66

66:                                               ; preds = %63, %53
  %67 = load i32*, i32** %6, align 8
  %68 = load i32*, i32** %9, align 8
  %69 = call i64 @BN_cmp(i32* %67, i32* %68)
  %70 = icmp sge i64 %69, 0
  br i1 %70, label %71, label %79

71:                                               ; preds = %66
  %72 = load i32*, i32** %6, align 8
  %73 = load i32*, i32** %6, align 8
  %74 = load i32*, i32** %9, align 8
  %75 = call i32 @BN_sub(i32* %72, i32* %73, i32* %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %78, label %77

77:                                               ; preds = %71
  store i32 0, i32* %5, align 4
  br label %83

78:                                               ; preds = %71
  br label %79

79:                                               ; preds = %78, %66
  br label %22

80:                                               ; preds = %22
  %81 = load i32*, i32** %6, align 8
  %82 = call i32 @bn_check_top(i32* %81)
  store i32 1, i32* %5, align 4
  br label %83

83:                                               ; preds = %80, %77, %62, %52, %33, %19
  %84 = load i32, i32* %5, align 4
  ret i32 %84
}

declare dso_local i32* @BN_copy(i32*, i32*) #1

declare dso_local i32 @BN_num_bits(i32*) #1

declare dso_local i32 @BNerr(i32, i32) #1

declare dso_local i32 @BN_lshift(i32*, i32*, i32) #1

declare dso_local i32 @BN_lshift1(i32*, i32*) #1

declare dso_local i64 @BN_cmp(i32*, i32*) #1

declare dso_local i32 @BN_sub(i32*, i32*, i32*) #1

declare dso_local i32 @bn_check_top(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
