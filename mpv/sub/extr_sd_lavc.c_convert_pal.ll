; ModuleID = '/home/carl/AnghaBench/mpv/sub/extr_sd_lavc.c_convert_pal.c'
source_filename = "/home/carl/AnghaBench/mpv/sub/extr_sd_lavc.c_convert_pal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i64, i32)* @convert_pal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @convert_pal(i32* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %13

13:                                               ; preds = %71, %3
  %14 = load i32, i32* %7, align 4
  %15 = sext i32 %14 to i64
  %16 = load i64, i64* %5, align 8
  %17 = icmp ult i64 %15, %16
  br i1 %17, label %18, label %74

18:                                               ; preds = %13
  %19 = load i32*, i32** %4, align 8
  %20 = load i32, i32* %7, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = and i32 %24, 255
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %8, align 4
  %27 = ashr i32 %26, 8
  %28 = and i32 %27, 255
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %8, align 4
  %30 = ashr i32 %29, 16
  %31 = and i32 %30, 255
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %8, align 4
  %33 = ashr i32 %32, 24
  %34 = and i32 %33, 255
  store i32 %34, i32* %12, align 4
  %35 = load i32, i32* %6, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %18
  %38 = load i32, i32* %11, align 4
  %39 = load i32, i32* %10, align 4
  %40 = add nsw i32 %38, %39
  %41 = load i32, i32* %9, align 4
  %42 = add nsw i32 %40, %41
  %43 = sdiv i32 %42, 3
  store i32 %43, i32* %9, align 4
  store i32 %43, i32* %10, align 4
  store i32 %43, i32* %11, align 4
  br label %44

44:                                               ; preds = %37, %18
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* %12, align 4
  %47 = mul nsw i32 %45, %46
  %48 = sdiv i32 %47, 255
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* %10, align 4
  %50 = load i32, i32* %12, align 4
  %51 = mul nsw i32 %49, %50
  %52 = sdiv i32 %51, 255
  store i32 %52, i32* %10, align 4
  %53 = load i32, i32* %11, align 4
  %54 = load i32, i32* %12, align 4
  %55 = mul nsw i32 %53, %54
  %56 = sdiv i32 %55, 255
  store i32 %56, i32* %11, align 4
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* %10, align 4
  %59 = shl i32 %58, 8
  %60 = or i32 %57, %59
  %61 = load i32, i32* %11, align 4
  %62 = shl i32 %61, 16
  %63 = or i32 %60, %62
  %64 = load i32, i32* %12, align 4
  %65 = shl i32 %64, 24
  %66 = or i32 %63, %65
  %67 = load i32*, i32** %4, align 8
  %68 = load i32, i32* %7, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  store i32 %66, i32* %70, align 4
  br label %71

71:                                               ; preds = %44
  %72 = load i32, i32* %7, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %7, align 4
  br label %13

74:                                               ; preds = %13
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
