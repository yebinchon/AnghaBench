; ModuleID = '/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/ntldr/arch/amd64/extr_winldr.c_MempMapRangeOfPages.c'
source_filename = "/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/ntldr/arch/amd64/extr_winldr.c_MempMapRangeOfPages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [38 x i8] c"Failed to map page %ld from %p to %p\0A\00", align 1
@PAGE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i64, i64)* @MempMapRangeOfPages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @MempMapRangeOfPages(i64 %0, i64 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 0, i64* %8, align 8
  br label %9

9:                                                ; preds = %33, %3
  %10 = load i64, i64* %8, align 8
  %11 = load i64, i64* %7, align 8
  %12 = icmp slt i64 %10, %11
  br i1 %12, label %13, label %36

13:                                               ; preds = %9
  %14 = load i64, i64* %5, align 8
  %15 = load i64, i64* %6, align 8
  %16 = call i32 @MempMapSinglePage(i64 %14, i64 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %26, label %18

18:                                               ; preds = %13
  %19 = load i64, i64* %8, align 8
  %20 = load i64, i64* %5, align 8
  %21 = trunc i64 %20 to i32
  %22 = load i64, i64* %6, align 8
  %23 = trunc i64 %22 to i32
  %24 = call i32 @ERR(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i64 %19, i32 %21, i32 %23)
  %25 = load i64, i64* %8, align 8
  store i64 %25, i64* %4, align 8
  br label %38

26:                                               ; preds = %13
  %27 = load i64, i64* @PAGE_SIZE, align 8
  %28 = load i64, i64* %5, align 8
  %29 = add nsw i64 %28, %27
  store i64 %29, i64* %5, align 8
  %30 = load i64, i64* @PAGE_SIZE, align 8
  %31 = load i64, i64* %6, align 8
  %32 = add nsw i64 %31, %30
  store i64 %32, i64* %6, align 8
  br label %33

33:                                               ; preds = %26
  %34 = load i64, i64* %8, align 8
  %35 = add nsw i64 %34, 1
  store i64 %35, i64* %8, align 8
  br label %9

36:                                               ; preds = %9
  %37 = load i64, i64* %8, align 8
  store i64 %37, i64* %4, align 8
  br label %38

38:                                               ; preds = %36, %18
  %39 = load i64, i64* %4, align 8
  ret i64 %39
}

declare dso_local i32 @MempMapSinglePage(i64, i64) #1

declare dso_local i32 @ERR(i8*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
