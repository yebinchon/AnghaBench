; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_preshader.c_find_bytecode_comment.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_preshader.c_find_bytecode_comment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32, i32, i32*)* @find_bytecode_comment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @find_bytecode_comment(i32* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  br label %11

11:                                               ; preds = %44, %4
  %12 = load i32, i32* %7, align 4
  %13 = icmp ugt i32 %12, 2
  br i1 %13, label %14, label %19

14:                                               ; preds = %11
  %15 = load i32*, i32** %6, align 8
  %16 = load i32, i32* %15, align 4
  %17 = and i32 %16, 65535
  %18 = icmp eq i32 %17, 65534
  br label %19

19:                                               ; preds = %14, %11
  %20 = phi i1 [ false, %11 ], [ %18, %14 ]
  br i1 %20, label %21, label %54

21:                                               ; preds = %19
  %22 = load i32*, i32** %6, align 8
  %23 = load i32, i32* %22, align 4
  %24 = lshr i32 %23, 16
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %10, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %21
  %28 = load i32, i32* %10, align 4
  %29 = add i32 %28, 1
  %30 = load i32, i32* %7, align 4
  %31 = icmp ugt i32 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %27, %21
  br label %54

33:                                               ; preds = %27
  %34 = load i32*, i32** %6, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %8, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %44

39:                                               ; preds = %33
  %40 = load i32, i32* %10, align 4
  %41 = load i32*, i32** %9, align 8
  store i32 %40, i32* %41, align 4
  %42 = load i32*, i32** %6, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 2
  store i32* %43, i32** %5, align 8
  br label %55

44:                                               ; preds = %33
  %45 = load i32, i32* %10, align 4
  %46 = add i32 %45, 1
  %47 = load i32, i32* %7, align 4
  %48 = sub i32 %47, %46
  store i32 %48, i32* %7, align 4
  %49 = load i32, i32* %10, align 4
  %50 = add i32 %49, 1
  %51 = load i32*, i32** %6, align 8
  %52 = zext i32 %50 to i64
  %53 = getelementptr inbounds i32, i32* %51, i64 %52
  store i32* %53, i32** %6, align 8
  br label %11

54:                                               ; preds = %32, %19
  store i32* null, i32** %5, align 8
  br label %55

55:                                               ; preds = %54, %39
  %56 = load i32*, i32** %5, align 8
  ret i32* %56
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
