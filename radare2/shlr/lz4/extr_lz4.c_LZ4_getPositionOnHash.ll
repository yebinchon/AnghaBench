; ModuleID = '/home/carl/AnghaBench/radare2/shlr/lz4/extr_lz4.c_LZ4_getPositionOnHash.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/lz4/extr_lz4.c_LZ4_getPositionOnHash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@byPtr = common dso_local global i64 0, align 8
@byut32 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i64, i8*, i64, i32*)* @LZ4_getPositionOnHash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @LZ4_getPositionOnHash(i64 %0, i8* %1, i64 %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32**, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32*, align 8
  store i64 %0, i64* %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  %13 = load i64, i64* %8, align 8
  %14 = load i64, i64* @byPtr, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %23

16:                                               ; preds = %4
  %17 = load i8*, i8** %7, align 8
  %18 = bitcast i8* %17 to i32**
  store i32** %18, i32*** %10, align 8
  %19 = load i32**, i32*** %10, align 8
  %20 = load i64, i64* %6, align 8
  %21 = getelementptr inbounds i32*, i32** %19, i64 %20
  %22 = load i32*, i32** %21, align 8
  store i32* %22, i32** %5, align 8
  br label %46

23:                                               ; preds = %4
  %24 = load i64, i64* %8, align 8
  %25 = load i64, i64* @byut32, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %36

27:                                               ; preds = %23
  %28 = load i8*, i8** %7, align 8
  %29 = bitcast i8* %28 to i64*
  store i64* %29, i64** %11, align 8
  %30 = load i64*, i64** %11, align 8
  %31 = load i64, i64* %6, align 8
  %32 = getelementptr inbounds i64, i64* %30, i64 %31
  %33 = load i64, i64* %32, align 8
  %34 = load i32*, i32** %9, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 %33
  store i32* %35, i32** %5, align 8
  br label %46

36:                                               ; preds = %23
  %37 = load i8*, i8** %7, align 8
  %38 = bitcast i8* %37 to i32*
  store i32* %38, i32** %12, align 8
  %39 = load i32*, i32** %12, align 8
  %40 = load i64, i64* %6, align 8
  %41 = getelementptr inbounds i32, i32* %39, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = load i32*, i32** %9, align 8
  %44 = sext i32 %42 to i64
  %45 = getelementptr inbounds i32, i32* %43, i64 %44
  store i32* %45, i32** %5, align 8
  br label %46

46:                                               ; preds = %36, %27, %16
  %47 = load i32*, i32** %5, align 8
  ret i32* %47
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
