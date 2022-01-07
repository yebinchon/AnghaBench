; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/mb/conversion_procs/utf8_and_gb18030/extr_utf8_and_gb18030.c_utf8word_to_unicode.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/mb/conversion_procs/utf8_and_gb18030/extr_utf8_and_gb18030.c_utf8word_to_unicode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @utf8word_to_unicode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @utf8word_to_unicode(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = icmp sle i32 %4, 127
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = load i32, i32* %2, align 4
  store i32 %7, i32* %3, align 4
  br label %61

8:                                                ; preds = %1
  %9 = load i32, i32* %2, align 4
  %10 = icmp sle i32 %9, 65535
  br i1 %10, label %11, label %20

11:                                               ; preds = %8
  %12 = load i32, i32* %2, align 4
  %13 = ashr i32 %12, 8
  %14 = and i32 %13, 31
  %15 = shl i32 %14, 6
  store i32 %15, i32* %3, align 4
  %16 = load i32, i32* %2, align 4
  %17 = and i32 %16, 63
  %18 = load i32, i32* %3, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* %3, align 4
  br label %60

20:                                               ; preds = %8
  %21 = load i32, i32* %2, align 4
  %22 = icmp sle i32 %21, 16777215
  br i1 %22, label %23, label %38

23:                                               ; preds = %20
  %24 = load i32, i32* %2, align 4
  %25 = ashr i32 %24, 16
  %26 = and i32 %25, 15
  %27 = shl i32 %26, 12
  store i32 %27, i32* %3, align 4
  %28 = load i32, i32* %2, align 4
  %29 = ashr i32 %28, 8
  %30 = and i32 %29, 63
  %31 = shl i32 %30, 6
  %32 = load i32, i32* %3, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %3, align 4
  %34 = load i32, i32* %2, align 4
  %35 = and i32 %34, 63
  %36 = load i32, i32* %3, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %3, align 4
  br label %59

38:                                               ; preds = %20
  %39 = load i32, i32* %2, align 4
  %40 = ashr i32 %39, 24
  %41 = and i32 %40, 7
  %42 = shl i32 %41, 18
  store i32 %42, i32* %3, align 4
  %43 = load i32, i32* %2, align 4
  %44 = ashr i32 %43, 16
  %45 = and i32 %44, 63
  %46 = shl i32 %45, 12
  %47 = load i32, i32* %3, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %3, align 4
  %49 = load i32, i32* %2, align 4
  %50 = ashr i32 %49, 8
  %51 = and i32 %50, 63
  %52 = shl i32 %51, 6
  %53 = load i32, i32* %3, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %3, align 4
  %55 = load i32, i32* %2, align 4
  %56 = and i32 %55, 63
  %57 = load i32, i32* %3, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %3, align 4
  br label %59

59:                                               ; preds = %38, %23
  br label %60

60:                                               ; preds = %59, %11
  br label %61

61:                                               ; preds = %60, %6
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
