; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_crypto-blackrock2.c_ENCRYPT.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_crypto-blackrock2.c_ENCRYPT.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, i32, i32, i32)* @ENCRYPT to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ENCRYPT(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i32 %0, i32* %9, align 4
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 1, i32* %18, align 4
  %20 = load i32, i32* %12, align 4
  %21 = call i32 @UNUSEDPARM(i32 %20)
  %22 = load i32, i32* %14, align 4
  %23 = load i32, i32* %11, align 4
  %24 = and i32 %22, %23
  store i32 %24, i32* %16, align 4
  %25 = load i32, i32* %14, align 4
  %26 = load i32, i32* %10, align 4
  %27 = ashr i32 %25, %26
  store i32 %27, i32* %17, align 4
  store i32 1, i32* %18, align 4
  br label %28

28:                                               ; preds = %55, %7
  %29 = load i32, i32* %18, align 4
  %30 = load i32, i32* %9, align 4
  %31 = icmp ule i32 %29, %30
  br i1 %31, label %32, label %58

32:                                               ; preds = %28
  %33 = load i32, i32* %16, align 4
  %34 = load i32, i32* %18, align 4
  %35 = load i32, i32* %17, align 4
  %36 = load i32, i32* %15, align 4
  %37 = call i32 @ROUND(i32 %34, i32 %35, i32 %36)
  %38 = add nsw i32 %33, %37
  %39 = load i32, i32* %11, align 4
  %40 = and i32 %38, %39
  store i32 %40, i32* %19, align 4
  %41 = load i32, i32* %17, align 4
  store i32 %41, i32* %16, align 4
  %42 = load i32, i32* %19, align 4
  store i32 %42, i32* %17, align 4
  %43 = load i32, i32* %18, align 4
  %44 = add i32 %43, 1
  store i32 %44, i32* %18, align 4
  %45 = load i32, i32* %16, align 4
  %46 = load i32, i32* %18, align 4
  %47 = load i32, i32* %17, align 4
  %48 = load i32, i32* %15, align 4
  %49 = call i32 @ROUND(i32 %46, i32 %47, i32 %48)
  %50 = add nsw i32 %45, %49
  %51 = load i32, i32* %13, align 4
  %52 = and i32 %50, %51
  store i32 %52, i32* %19, align 4
  %53 = load i32, i32* %17, align 4
  store i32 %53, i32* %16, align 4
  %54 = load i32, i32* %19, align 4
  store i32 %54, i32* %17, align 4
  br label %55

55:                                               ; preds = %32
  %56 = load i32, i32* %18, align 4
  %57 = add i32 %56, 1
  store i32 %57, i32* %18, align 4
  br label %28

58:                                               ; preds = %28
  %59 = load i32, i32* %18, align 4
  %60 = sub i32 %59, 1
  %61 = and i32 %60, 1
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %58
  %64 = load i32, i32* %16, align 4
  %65 = load i32, i32* %10, align 4
  %66 = shl i32 %64, %65
  %67 = load i32, i32* %17, align 4
  %68 = add nsw i32 %66, %67
  store i32 %68, i32* %8, align 4
  br label %75

69:                                               ; preds = %58
  %70 = load i32, i32* %17, align 4
  %71 = load i32, i32* %10, align 4
  %72 = shl i32 %70, %71
  %73 = load i32, i32* %16, align 4
  %74 = add nsw i32 %72, %73
  store i32 %74, i32* %8, align 4
  br label %75

75:                                               ; preds = %69, %63
  %76 = load i32, i32* %8, align 4
  ret i32 %76
}

declare dso_local i32 @UNUSEDPARM(i32) #1

declare dso_local i32 @ROUND(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
