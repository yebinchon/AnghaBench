; ModuleID = '/home/carl/AnghaBench/radare2/shlr/zip/zip/extr_zip_dirent.c__zip_poke8.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/zip/zip/extr_zip_dirent.c__zip_poke8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_zip_poke8(i32 %0, i32** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32**, align 8
  store i32 %0, i32* %3, align 4
  store i32** %1, i32*** %4, align 8
  %5 = load i32, i32* %3, align 4
  %6 = and i32 %5, 255
  %7 = load i32**, i32*** %4, align 8
  %8 = load i32*, i32** %7, align 8
  %9 = getelementptr inbounds i32, i32* %8, i32 1
  store i32* %9, i32** %7, align 8
  store i32 %6, i32* %8, align 4
  %10 = load i32, i32* %3, align 4
  %11 = ashr i32 %10, 8
  %12 = and i32 %11, 255
  %13 = load i32**, i32*** %4, align 8
  %14 = load i32*, i32** %13, align 8
  %15 = getelementptr inbounds i32, i32* %14, i32 1
  store i32* %15, i32** %13, align 8
  store i32 %12, i32* %14, align 4
  %16 = load i32, i32* %3, align 4
  %17 = ashr i32 %16, 16
  %18 = and i32 %17, 255
  %19 = load i32**, i32*** %4, align 8
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i32 1
  store i32* %21, i32** %19, align 8
  store i32 %18, i32* %20, align 4
  %22 = load i32, i32* %3, align 4
  %23 = ashr i32 %22, 24
  %24 = and i32 %23, 255
  %25 = load i32**, i32*** %4, align 8
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i32 1
  store i32* %27, i32** %25, align 8
  store i32 %24, i32* %26, align 4
  %28 = load i32, i32* %3, align 4
  %29 = ashr i32 %28, 32
  %30 = and i32 %29, 255
  %31 = load i32**, i32*** %4, align 8
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i32 1
  store i32* %33, i32** %31, align 8
  store i32 %30, i32* %32, align 4
  %34 = load i32, i32* %3, align 4
  %35 = ashr i32 %34, 40
  %36 = and i32 %35, 255
  %37 = load i32**, i32*** %4, align 8
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i32 1
  store i32* %39, i32** %37, align 8
  store i32 %36, i32* %38, align 4
  %40 = load i32, i32* %3, align 4
  %41 = ashr i32 %40, 48
  %42 = and i32 %41, 255
  %43 = load i32**, i32*** %4, align 8
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i32 1
  store i32* %45, i32** %43, align 8
  store i32 %42, i32* %44, align 4
  %46 = load i32, i32* %3, align 4
  %47 = ashr i32 %46, 56
  %48 = and i32 %47, 255
  %49 = load i32**, i32*** %4, align 8
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i32 1
  store i32* %51, i32** %49, align 8
  store i32 %48, i32* %50, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
