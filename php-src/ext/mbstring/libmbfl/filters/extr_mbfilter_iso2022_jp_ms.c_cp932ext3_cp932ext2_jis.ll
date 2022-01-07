; ModuleID = '/home/carl/AnghaBench/php-src/ext/mbstring/libmbfl/filters/extr_mbfilter_iso2022_jp_ms.c_cp932ext3_cp932ext2_jis.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/mbstring/libmbfl/filters/extr_mbfilter_iso2022_jp_ms.c_cp932ext3_cp932ext2_jis.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @cp932ext3_cp932ext2_jis to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cp932ext3_cp932ext2_jis(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = call i32 @sjistoidx(i32 250, i32 64)
  %5 = load i32, i32* %2, align 4
  %6 = add nsw i32 %4, %5
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call i32 @sjistoidx(i32 250, i32 92)
  %9 = icmp sge i32 %7, %8
  br i1 %9, label %10, label %16

10:                                               ; preds = %1
  %11 = call i32 @sjistoidx(i32 250, i32 92)
  %12 = call i32 @sjistoidx(i32 237, i32 64)
  %13 = sub nsw i32 %11, %12
  %14 = load i32, i32* %3, align 4
  %15 = sub nsw i32 %14, %13
  store i32 %15, i32* %3, align 4
  br label %38

16:                                               ; preds = %1
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @sjistoidx(i32 250, i32 85)
  %19 = icmp sge i32 %17, %18
  br i1 %19, label %20, label %26

20:                                               ; preds = %16
  %21 = call i32 @sjistoidx(i32 250, i32 85)
  %22 = call i32 @sjistoidx(i32 238, i32 250)
  %23 = sub nsw i32 %21, %22
  %24 = load i32, i32* %3, align 4
  %25 = sub nsw i32 %24, %23
  store i32 %25, i32* %3, align 4
  br label %37

26:                                               ; preds = %16
  %27 = load i32, i32* %3, align 4
  %28 = call i32 @sjistoidx(i32 250, i32 64)
  %29 = icmp sge i32 %27, %28
  br i1 %29, label %30, label %36

30:                                               ; preds = %26
  %31 = call i32 @sjistoidx(i32 250, i32 64)
  %32 = call i32 @sjistoidx(i32 238, i32 239)
  %33 = sub nsw i32 %31, %32
  %34 = load i32, i32* %3, align 4
  %35 = sub nsw i32 %34, %33
  store i32 %35, i32* %3, align 4
  br label %36

36:                                               ; preds = %30, %26
  br label %37

37:                                               ; preds = %36, %20
  br label %38

38:                                               ; preds = %37, %10
  %39 = load i32, i32* %3, align 4
  %40 = call i32 @idxtojis1(i32 %39)
  %41 = shl i32 %40, 8
  %42 = load i32, i32* %3, align 4
  %43 = call i32 @idxtojis2(i32 %42)
  %44 = or i32 %41, %43
  ret i32 %44
}

declare dso_local i32 @sjistoidx(i32, i32) #1

declare dso_local i32 @idxtojis1(i32) #1

declare dso_local i32 @idxtojis2(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
