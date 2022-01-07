; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/mb/conversion_procs/euc2004_sjis2004/extr_euc2004_sjis2004.c_get_ten.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/mb/conversion_procs/euc2004_sjis2004/extr_euc2004_sjis2004.c_get_ten.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*)* @get_ten to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_ten(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32* %1, i32** %4, align 8
  %6 = load i32, i32* %3, align 4
  %7 = icmp sge i32 %6, 64
  br i1 %7, label %8, label %15

8:                                                ; preds = %2
  %9 = load i32, i32* %3, align 4
  %10 = icmp sle i32 %9, 126
  br i1 %10, label %11, label %15

11:                                               ; preds = %8
  %12 = load i32, i32* %3, align 4
  %13 = sub nsw i32 %12, 63
  store i32 %13, i32* %5, align 4
  %14 = load i32*, i32** %4, align 8
  store i32 1, i32* %14, align 4
  br label %39

15:                                               ; preds = %8, %2
  %16 = load i32, i32* %3, align 4
  %17 = icmp sge i32 %16, 128
  br i1 %17, label %18, label %25

18:                                               ; preds = %15
  %19 = load i32, i32* %3, align 4
  %20 = icmp sle i32 %19, 158
  br i1 %20, label %21, label %25

21:                                               ; preds = %18
  %22 = load i32, i32* %3, align 4
  %23 = sub nsw i32 %22, 64
  store i32 %23, i32* %5, align 4
  %24 = load i32*, i32** %4, align 8
  store i32 1, i32* %24, align 4
  br label %38

25:                                               ; preds = %18, %15
  %26 = load i32, i32* %3, align 4
  %27 = icmp sge i32 %26, 159
  br i1 %27, label %28, label %35

28:                                               ; preds = %25
  %29 = load i32, i32* %3, align 4
  %30 = icmp sle i32 %29, 252
  br i1 %30, label %31, label %35

31:                                               ; preds = %28
  %32 = load i32, i32* %3, align 4
  %33 = sub nsw i32 %32, 158
  store i32 %33, i32* %5, align 4
  %34 = load i32*, i32** %4, align 8
  store i32 0, i32* %34, align 4
  br label %37

35:                                               ; preds = %28, %25
  store i32 -1, i32* %5, align 4
  %36 = load i32*, i32** %4, align 8
  store i32 0, i32* %36, align 4
  br label %37

37:                                               ; preds = %35, %31
  br label %38

38:                                               ; preds = %37, %21
  br label %39

39:                                               ; preds = %38, %11
  %40 = load i32, i32* %5, align 4
  ret i32 %40
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
