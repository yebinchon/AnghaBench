; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/mb/conversion_procs/utf8_and_gb18030/extr_utf8_and_gb18030.c_unicode_to_utf8word.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/mb/conversion_procs/utf8_and_gb18030/extr_utf8_and_gb18030.c_unicode_to_utf8word.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @unicode_to_utf8word to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unicode_to_utf8word(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = icmp sle i32 %4, 127
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = load i32, i32* %2, align 4
  store i32 %7, i32* %3, align 4
  br label %70

8:                                                ; preds = %1
  %9 = load i32, i32* %2, align 4
  %10 = icmp sle i32 %9, 2047
  br i1 %10, label %11, label %22

11:                                               ; preds = %8
  %12 = load i32, i32* %2, align 4
  %13 = ashr i32 %12, 6
  %14 = and i32 %13, 31
  %15 = or i32 192, %14
  %16 = shl i32 %15, 8
  store i32 %16, i32* %3, align 4
  %17 = load i32, i32* %2, align 4
  %18 = and i32 %17, 63
  %19 = or i32 128, %18
  %20 = load i32, i32* %3, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %3, align 4
  br label %69

22:                                               ; preds = %8
  %23 = load i32, i32* %2, align 4
  %24 = icmp sle i32 %23, 65535
  br i1 %24, label %25, label %43

25:                                               ; preds = %22
  %26 = load i32, i32* %2, align 4
  %27 = ashr i32 %26, 12
  %28 = and i32 %27, 15
  %29 = or i32 224, %28
  %30 = shl i32 %29, 16
  store i32 %30, i32* %3, align 4
  %31 = load i32, i32* %2, align 4
  %32 = ashr i32 %31, 6
  %33 = and i32 %32, 63
  %34 = or i32 128, %33
  %35 = shl i32 %34, 8
  %36 = load i32, i32* %3, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %3, align 4
  %38 = load i32, i32* %2, align 4
  %39 = and i32 %38, 63
  %40 = or i32 128, %39
  %41 = load i32, i32* %3, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %3, align 4
  br label %68

43:                                               ; preds = %22
  %44 = load i32, i32* %2, align 4
  %45 = ashr i32 %44, 18
  %46 = and i32 %45, 7
  %47 = or i32 240, %46
  %48 = shl i32 %47, 24
  store i32 %48, i32* %3, align 4
  %49 = load i32, i32* %2, align 4
  %50 = ashr i32 %49, 12
  %51 = and i32 %50, 63
  %52 = or i32 128, %51
  %53 = shl i32 %52, 16
  %54 = load i32, i32* %3, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %3, align 4
  %56 = load i32, i32* %2, align 4
  %57 = ashr i32 %56, 6
  %58 = and i32 %57, 63
  %59 = or i32 128, %58
  %60 = shl i32 %59, 8
  %61 = load i32, i32* %3, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %3, align 4
  %63 = load i32, i32* %2, align 4
  %64 = and i32 %63, 63
  %65 = or i32 128, %64
  %66 = load i32, i32* %3, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %3, align 4
  br label %68

68:                                               ; preds = %43, %25
  br label %69

69:                                               ; preds = %68, %11
  br label %70

70:                                               ; preds = %69, %6
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
