; ModuleID = '/home/carl/AnghaBench/radare2/libr/crypto/p/extr_crypto_rc6.c_update.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/crypto/p/extr_crypto_rc6.c_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BLOCK_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Input should be multiple of 128bit.\0A\00", align 1
@flag = common dso_local global i64 0, align 8
@st = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32)* @update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @update(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* @BLOCK_SIZE, align 4
  %13 = srem i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = call i32 @eprintf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %82

17:                                               ; preds = %3
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* @BLOCK_SIZE, align 4
  %20 = sdiv i32 %18, %19
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %7, align 4
  %22 = call i32* @calloc(i32 1, i32 %21)
  store i32* %22, i32** %9, align 8
  %23 = load i32*, i32** %9, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %17
  store i32 0, i32* %4, align 4
  br label %82

26:                                               ; preds = %17
  %27 = load i64, i64* @flag, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %52

29:                                               ; preds = %26
  store i32 0, i32* %10, align 4
  br label %30

30:                                               ; preds = %48, %29
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* %8, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %51

34:                                               ; preds = %30
  %35 = load i32*, i32** %6, align 8
  %36 = load i32, i32* @BLOCK_SIZE, align 4
  %37 = load i32, i32* %10, align 4
  %38 = mul nsw i32 %36, %37
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %35, i64 %39
  %41 = load i32*, i32** %9, align 8
  %42 = load i32, i32* @BLOCK_SIZE, align 4
  %43 = load i32, i32* %10, align 4
  %44 = mul nsw i32 %42, %43
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %41, i64 %45
  %47 = call i32 @rc6_decrypt(i32* @st, i32* %40, i32* %46)
  br label %48

48:                                               ; preds = %34
  %49 = load i32, i32* %10, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %10, align 4
  br label %30

51:                                               ; preds = %30
  br label %75

52:                                               ; preds = %26
  store i32 0, i32* %10, align 4
  br label %53

53:                                               ; preds = %71, %52
  %54 = load i32, i32* %10, align 4
  %55 = load i32, i32* %8, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %74

57:                                               ; preds = %53
  %58 = load i32*, i32** %6, align 8
  %59 = load i32, i32* @BLOCK_SIZE, align 4
  %60 = load i32, i32* %10, align 4
  %61 = mul nsw i32 %59, %60
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %58, i64 %62
  %64 = load i32*, i32** %9, align 8
  %65 = load i32, i32* @BLOCK_SIZE, align 4
  %66 = load i32, i32* %10, align 4
  %67 = mul nsw i32 %65, %66
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %64, i64 %68
  %70 = call i32 @rc6_encrypt(i32* @st, i32* %63, i32* %69)
  br label %71

71:                                               ; preds = %57
  %72 = load i32, i32* %10, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %10, align 4
  br label %53

74:                                               ; preds = %53
  br label %75

75:                                               ; preds = %74, %51
  %76 = load i32*, i32** %5, align 8
  %77 = load i32*, i32** %9, align 8
  %78 = load i32, i32* %7, align 4
  %79 = call i32 @r_crypto_append(i32* %76, i32* %77, i32 %78)
  %80 = load i32*, i32** %9, align 8
  %81 = call i32 @free(i32* %80)
  store i32 1, i32* %4, align 4
  br label %82

82:                                               ; preds = %75, %25, %15
  %83 = load i32, i32* %4, align 4
  ret i32 %83
}

declare dso_local i32 @eprintf(i8*) #1

declare dso_local i32* @calloc(i32, i32) #1

declare dso_local i32 @rc6_decrypt(i32*, i32*, i32*) #1

declare dso_local i32 @rc6_encrypt(i32*, i32*, i32*) #1

declare dso_local i32 @r_crypto_append(i32*, i32*, i32) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
