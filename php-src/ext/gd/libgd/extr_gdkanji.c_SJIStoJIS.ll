; ModuleID = '/home/carl/AnghaBench/php-src/ext/gd/libgd/extr_gdkanji.c_SJIStoJIS.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/gd/libgd/extr_gdkanji.c_SJIStoJIS.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*)* @SJIStoJIS to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SJIStoJIS(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %10 = load i32*, i32** %3, align 8
  %11 = load i32, i32* %10, align 4
  %12 = trunc i32 %11 to i8
  store i8 %12, i8* %5, align 1
  %13 = load i32*, i32** %4, align 8
  %14 = load i32, i32* %13, align 4
  %15 = trunc i32 %14 to i8
  store i8 %15, i8* %6, align 1
  %16 = load i8, i8* %6, align 1
  %17 = zext i8 %16 to i32
  %18 = icmp slt i32 %17, 159
  %19 = zext i1 %18 to i32
  store i32 %19, i32* %7, align 4
  %20 = load i8, i8* %5, align 1
  %21 = zext i8 %20 to i32
  %22 = icmp slt i32 %21, 160
  %23 = zext i1 %22 to i64
  %24 = select i1 %22, i32 112, i32 176
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %2
  %28 = load i8, i8* %6, align 1
  %29 = zext i8 %28 to i32
  %30 = icmp sgt i32 %29, 127
  %31 = zext i1 %30 to i32
  %32 = add nsw i32 31, %31
  br label %34

33:                                               ; preds = %2
  br label %34

34:                                               ; preds = %33, %27
  %35 = phi i32 [ %32, %27 ], [ 126, %33 ]
  store i32 %35, i32* %9, align 4
  %36 = load i8, i8* %5, align 1
  %37 = zext i8 %36 to i32
  %38 = load i32, i32* %8, align 4
  %39 = sub nsw i32 %37, %38
  %40 = shl i32 %39, 1
  %41 = load i32, i32* %7, align 4
  %42 = sub nsw i32 %40, %41
  %43 = load i32*, i32** %3, align 8
  store i32 %42, i32* %43, align 4
  %44 = load i32, i32* %9, align 4
  %45 = load i32*, i32** %4, align 8
  %46 = load i32, i32* %45, align 4
  %47 = sub nsw i32 %46, %44
  store i32 %47, i32* %45, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
