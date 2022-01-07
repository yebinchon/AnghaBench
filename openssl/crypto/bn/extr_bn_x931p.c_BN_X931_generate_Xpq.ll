; ModuleID = '/home/carl/AnghaBench/openssl/crypto/bn/extr_bn_x931p.c_BN_X931_generate_Xpq.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/bn/extr_bn_x931p.c_BN_X931_generate_Xpq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BN_RAND_TOP_TWO = common dso_local global i32 0, align 4
@BN_RAND_BOTTOM_ANY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BN_X931_generate_Xpq(i32* %0, i32* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %12 = load i32, i32* %8, align 4
  %13 = icmp slt i32 %12, 1024
  br i1 %13, label %18, label %14

14:                                               ; preds = %4
  %15 = load i32, i32* %8, align 4
  %16 = and i32 %15, 255
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %14, %4
  store i32 0, i32* %5, align 4
  br label %79

19:                                               ; preds = %14
  %20 = load i32, i32* %8, align 4
  %21 = ashr i32 %20, 1
  store i32 %21, i32* %8, align 4
  %22 = load i32*, i32** %6, align 8
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* @BN_RAND_TOP_TWO, align 4
  %25 = load i32, i32* @BN_RAND_BOTTOM_ANY, align 4
  %26 = load i32*, i32** %9, align 8
  %27 = call i32 @BN_priv_rand_ex(i32* %22, i32 %23, i32 %24, i32 %25, i32* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %19
  br label %76

30:                                               ; preds = %19
  %31 = load i32*, i32** %9, align 8
  %32 = call i32 @BN_CTX_start(i32* %31)
  %33 = load i32*, i32** %9, align 8
  %34 = call i32* @BN_CTX_get(i32* %33)
  store i32* %34, i32** %10, align 8
  %35 = load i32*, i32** %10, align 8
  %36 = icmp eq i32* %35, null
  br i1 %36, label %37, label %38

37:                                               ; preds = %30
  br label %76

38:                                               ; preds = %30
  store i32 0, i32* %11, align 4
  br label %39

39:                                               ; preds = %66, %38
  %40 = load i32, i32* %11, align 4
  %41 = icmp slt i32 %40, 1000
  br i1 %41, label %42, label %69

42:                                               ; preds = %39
  %43 = load i32*, i32** %7, align 8
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* @BN_RAND_TOP_TWO, align 4
  %46 = load i32, i32* @BN_RAND_BOTTOM_ANY, align 4
  %47 = load i32*, i32** %9, align 8
  %48 = call i32 @BN_priv_rand_ex(i32* %43, i32 %44, i32 %45, i32 %46, i32* %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %42
  br label %76

51:                                               ; preds = %42
  %52 = load i32*, i32** %10, align 8
  %53 = load i32*, i32** %6, align 8
  %54 = load i32*, i32** %7, align 8
  %55 = call i32 @BN_sub(i32* %52, i32* %53, i32* %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %51
  br label %76

58:                                               ; preds = %51
  %59 = load i32*, i32** %10, align 8
  %60 = call i32 @BN_num_bits(i32* %59)
  %61 = load i32, i32* %8, align 4
  %62 = sub nsw i32 %61, 100
  %63 = icmp sgt i32 %60, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %58
  br label %69

65:                                               ; preds = %58
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %11, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %11, align 4
  br label %39

69:                                               ; preds = %64, %39
  %70 = load i32*, i32** %9, align 8
  %71 = call i32 @BN_CTX_end(i32* %70)
  %72 = load i32, i32* %11, align 4
  %73 = icmp slt i32 %72, 1000
  br i1 %73, label %74, label %75

74:                                               ; preds = %69
  store i32 1, i32* %5, align 4
  br label %79

75:                                               ; preds = %69
  store i32 0, i32* %5, align 4
  br label %79

76:                                               ; preds = %57, %50, %37, %29
  %77 = load i32*, i32** %9, align 8
  %78 = call i32 @BN_CTX_end(i32* %77)
  store i32 0, i32* %5, align 4
  br label %79

79:                                               ; preds = %76, %75, %74, %18
  %80 = load i32, i32* %5, align 4
  ret i32 %80
}

declare dso_local i32 @BN_priv_rand_ex(i32*, i32, i32, i32, i32*) #1

declare dso_local i32 @BN_CTX_start(i32*) #1

declare dso_local i32* @BN_CTX_get(i32*) #1

declare dso_local i32 @BN_sub(i32*, i32*, i32*) #1

declare dso_local i32 @BN_num_bits(i32*) #1

declare dso_local i32 @BN_CTX_end(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
