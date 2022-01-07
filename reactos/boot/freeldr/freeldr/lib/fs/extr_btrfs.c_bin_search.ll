; ModuleID = '/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/lib/fs/extr_btrfs.c_bin_search.c'
source_filename = "/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/lib/fs/extr_btrfs.c_bin_search.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i8*, i32 (i8*, i8*)*, i32, i32, i32*)* @bin_search to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bin_search(i8* %0, i32 %1, i8* %2, i32 (i8*, i8*)* %3, i32 %4, i32 %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32 (i8*, i8*)*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i32*, align 8
  store i8* %0, i8** %9, align 8
  store i32 %1, i32* %10, align 4
  store i8* %2, i8** %11, align 8
  store i32 (i8*, i8*)* %3, i32 (i8*, i8*)** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32* %6, i32** %15, align 8
  %22 = load i32, i32* %13, align 4
  store i32 %22, i32* %16, align 4
  %23 = load i32, i32* %14, align 4
  store i32 %23, i32* %17, align 4
  br label %24

24:                                               ; preds = %60, %7
  %25 = load i32, i32* %16, align 4
  %26 = load i32, i32* %17, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %61

28:                                               ; preds = %24
  %29 = load i32, i32* %16, align 4
  %30 = load i32, i32* %17, align 4
  %31 = add nsw i32 %29, %30
  %32 = sdiv i32 %31, 2
  store i32 %32, i32* %18, align 4
  %33 = load i32, i32* %18, align 4
  %34 = load i32, i32* %10, align 4
  %35 = mul nsw i32 %33, %34
  %36 = sext i32 %35 to i64
  store i64 %36, i64* %20, align 8
  %37 = load i8*, i8** %9, align 8
  %38 = bitcast i8* %37 to i32*
  %39 = load i64, i64* %20, align 8
  %40 = getelementptr inbounds i32, i32* %38, i64 %39
  store i32* %40, i32** %21, align 8
  %41 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %12, align 8
  %42 = load i32*, i32** %21, align 8
  %43 = bitcast i32* %42 to i8*
  %44 = load i8*, i8** %11, align 8
  %45 = call i32 %41(i8* %43, i8* %44)
  store i32 %45, i32* %19, align 4
  %46 = load i32, i32* %19, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %28
  %49 = load i32, i32* %18, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %16, align 4
  br label %60

51:                                               ; preds = %28
  %52 = load i32, i32* %19, align 4
  %53 = icmp sgt i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %51
  %55 = load i32, i32* %18, align 4
  store i32 %55, i32* %17, align 4
  br label %59

56:                                               ; preds = %51
  %57 = load i32, i32* %18, align 4
  %58 = load i32*, i32** %15, align 8
  store i32 %57, i32* %58, align 4
  store i32 0, i32* %8, align 4
  br label %64

59:                                               ; preds = %54
  br label %60

60:                                               ; preds = %59, %48
  br label %24

61:                                               ; preds = %24
  %62 = load i32, i32* %16, align 4
  %63 = load i32*, i32** %15, align 8
  store i32 %62, i32* %63, align 4
  store i32 1, i32* %8, align 4
  br label %64

64:                                               ; preds = %61, %56
  %65 = load i32, i32* %8, align 4
  ret i32 %65
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
