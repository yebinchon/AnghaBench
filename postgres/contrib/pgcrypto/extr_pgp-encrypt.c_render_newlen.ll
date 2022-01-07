; ModuleID = '/home/carl/AnghaBench/postgres/contrib/pgcrypto/extr_pgp-encrypt.c_render_newlen.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/pgcrypto/extr_pgp-encrypt.c_render_newlen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32)* @render_newlen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @render_newlen(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = icmp sle i32 %5, 191
  br i1 %6, label %7, label %12

7:                                                ; preds = %2
  %8 = load i32, i32* %4, align 4
  %9 = and i32 %8, 255
  %10 = load i32*, i32** %3, align 8
  %11 = getelementptr inbounds i32, i32* %10, i32 1
  store i32* %11, i32** %3, align 8
  store i32 %9, i32* %10, align 4
  br label %53

12:                                               ; preds = %2
  %13 = load i32, i32* %4, align 4
  %14 = icmp sgt i32 %13, 191
  br i1 %14, label %15, label %30

15:                                               ; preds = %12
  %16 = load i32, i32* %4, align 4
  %17 = icmp sle i32 %16, 8383
  br i1 %17, label %18, label %30

18:                                               ; preds = %15
  %19 = load i32, i32* %4, align 4
  %20 = sub nsw i32 %19, 192
  %21 = ashr i32 %20, 8
  %22 = add nsw i32 %21, 192
  %23 = load i32*, i32** %3, align 8
  %24 = getelementptr inbounds i32, i32* %23, i32 1
  store i32* %24, i32** %3, align 8
  store i32 %22, i32* %23, align 4
  %25 = load i32, i32* %4, align 4
  %26 = sub nsw i32 %25, 192
  %27 = and i32 %26, 255
  %28 = load i32*, i32** %3, align 8
  %29 = getelementptr inbounds i32, i32* %28, i32 1
  store i32* %29, i32** %3, align 8
  store i32 %27, i32* %28, align 4
  br label %52

30:                                               ; preds = %15, %12
  %31 = load i32*, i32** %3, align 8
  %32 = getelementptr inbounds i32, i32* %31, i32 1
  store i32* %32, i32** %3, align 8
  store i32 255, i32* %31, align 4
  %33 = load i32, i32* %4, align 4
  %34 = ashr i32 %33, 24
  %35 = and i32 %34, 255
  %36 = load i32*, i32** %3, align 8
  %37 = getelementptr inbounds i32, i32* %36, i32 1
  store i32* %37, i32** %3, align 8
  store i32 %35, i32* %36, align 4
  %38 = load i32, i32* %4, align 4
  %39 = ashr i32 %38, 16
  %40 = and i32 %39, 255
  %41 = load i32*, i32** %3, align 8
  %42 = getelementptr inbounds i32, i32* %41, i32 1
  store i32* %42, i32** %3, align 8
  store i32 %40, i32* %41, align 4
  %43 = load i32, i32* %4, align 4
  %44 = ashr i32 %43, 8
  %45 = and i32 %44, 255
  %46 = load i32*, i32** %3, align 8
  %47 = getelementptr inbounds i32, i32* %46, i32 1
  store i32* %47, i32** %3, align 8
  store i32 %45, i32* %46, align 4
  %48 = load i32, i32* %4, align 4
  %49 = and i32 %48, 255
  %50 = load i32*, i32** %3, align 8
  %51 = getelementptr inbounds i32, i32* %50, i32 1
  store i32* %51, i32** %3, align 8
  store i32 %49, i32* %50, align 4
  br label %52

52:                                               ; preds = %30, %18
  br label %53

53:                                               ; preds = %52, %7
  %54 = load i32*, i32** %3, align 8
  ret i32* %54
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
