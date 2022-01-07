; ModuleID = '/home/carl/AnghaBench/radare2/libr/anal/extr_esil.c_signed_compare_gt.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/anal/extr_esil.c_signed_compare_gt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @signed_compare_gt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @signed_compare_gt(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %6, align 4
  switch i32 %8, label %32 [
    i32 1, label %9
    i32 8, label %16
    i32 16, label %21
    i32 32, label %26
    i32 64, label %31
  ]

9:                                                ; preds = %3
  %10 = load i32, i32* %4, align 4
  %11 = and i32 %10, 1
  %12 = load i32, i32* %5, align 4
  %13 = and i32 %12, 1
  %14 = icmp sgt i32 %11, %13
  %15 = zext i1 %14 to i32
  store i32 %15, i32* %7, align 4
  br label %37

16:                                               ; preds = %3
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp sgt i32 %17, %18
  %20 = zext i1 %19 to i32
  store i32 %20, i32* %7, align 4
  br label %37

21:                                               ; preds = %3
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp sgt i32 %22, %23
  %25 = zext i1 %24 to i32
  store i32 %25, i32* %7, align 4
  br label %37

26:                                               ; preds = %3
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* %5, align 4
  %29 = icmp sgt i32 %27, %28
  %30 = zext i1 %29 to i32
  store i32 %30, i32* %7, align 4
  br label %37

31:                                               ; preds = %3
  br label %32

32:                                               ; preds = %3, %31
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* %5, align 4
  %35 = icmp sgt i32 %33, %34
  %36 = zext i1 %35 to i32
  store i32 %36, i32* %7, align 4
  br label %37

37:                                               ; preds = %32, %26, %21, %16, %9
  %38 = load i32, i32* %7, align 4
  ret i32 %38
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
