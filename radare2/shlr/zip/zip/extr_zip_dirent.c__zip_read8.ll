; ModuleID = '/home/carl/AnghaBench/radare2/shlr/zip/zip/extr_zip_dirent.c__zip_read8.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/zip/zip/extr_zip_dirent.c__zip_read8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_zip_read8(i32** %0) #0 {
  %2 = alloca i32**, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32** %0, i32*** %2, align 8
  %5 = load i32**, i32*** %2, align 8
  %6 = load i32*, i32** %5, align 8
  %7 = getelementptr inbounds i32, i32* %6, i64 3
  %8 = load i32, i32* %7, align 4
  %9 = shl i32 %8, 8
  %10 = load i32**, i32*** %2, align 8
  %11 = load i32*, i32** %10, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 2
  %13 = load i32, i32* %12, align 4
  %14 = add nsw i32 %9, %13
  %15 = shl i32 %14, 8
  %16 = load i32**, i32*** %2, align 8
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 1
  %19 = load i32, i32* %18, align 4
  %20 = add nsw i32 %15, %19
  %21 = shl i32 %20, 8
  %22 = load i32**, i32*** %2, align 8
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  %25 = load i32, i32* %24, align 4
  %26 = add nsw i32 %21, %25
  store i32 %26, i32* %3, align 4
  %27 = load i32**, i32*** %2, align 8
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 4
  store i32* %29, i32** %27, align 8
  %30 = load i32**, i32*** %2, align 8
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 3
  %33 = load i32, i32* %32, align 4
  %34 = shl i32 %33, 8
  %35 = load i32**, i32*** %2, align 8
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 2
  %38 = load i32, i32* %37, align 4
  %39 = add nsw i32 %34, %38
  %40 = shl i32 %39, 8
  %41 = load i32**, i32*** %2, align 8
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 1
  %44 = load i32, i32* %43, align 4
  %45 = add nsw i32 %40, %44
  %46 = shl i32 %45, 8
  %47 = load i32**, i32*** %2, align 8
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 0
  %50 = load i32, i32* %49, align 4
  %51 = add nsw i32 %46, %50
  store i32 %51, i32* %4, align 4
  %52 = load i32**, i32*** %2, align 8
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 4
  store i32* %54, i32** %52, align 8
  %55 = load i32, i32* %3, align 4
  %56 = load i32, i32* %4, align 4
  %57 = shl i32 %56, 32
  %58 = add nsw i32 %55, %57
  ret i32 %58
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
