; ModuleID = '/home/carl/AnghaBench/lz4/lib/extr_lz4.c_LZ4_getIndexOnHash.c'
source_filename = "/home/carl/AnghaBench/lz4/lib/extr_lz4.c_LZ4_getIndexOnHash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LZ4_MEMORY_USAGE = common dso_local global i32 0, align 4
@byU32 = common dso_local global i64 0, align 8
@byU16 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i64)* @LZ4_getIndexOnHash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @LZ4_getIndexOnHash(i32 %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load i32, i32* @LZ4_MEMORY_USAGE, align 4
  %11 = icmp sgt i32 %10, 2
  %12 = zext i1 %11 to i32
  %13 = call i32 @LZ4_STATIC_ASSERT(i32 %12)
  %14 = load i64, i64* %7, align 8
  %15 = load i64, i64* @byU32, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %32

17:                                               ; preds = %3
  %18 = load i8*, i8** %6, align 8
  %19 = bitcast i8* %18 to i32*
  store i32* %19, i32** %8, align 8
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @LZ4_MEMORY_USAGE, align 4
  %22 = sub nsw i32 %21, 2
  %23 = shl i32 1, %22
  %24 = icmp ult i32 %20, %23
  %25 = zext i1 %24 to i32
  %26 = call i32 @assert(i32 %25)
  %27 = load i32*, i32** %8, align 8
  %28 = load i32, i32* %5, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %4, align 4
  br label %53

32:                                               ; preds = %3
  %33 = load i64, i64* %7, align 8
  %34 = load i64, i64* @byU16, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %51

36:                                               ; preds = %32
  %37 = load i8*, i8** %6, align 8
  %38 = bitcast i8* %37 to i32*
  store i32* %38, i32** %9, align 8
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* @LZ4_MEMORY_USAGE, align 4
  %41 = sub nsw i32 %40, 1
  %42 = shl i32 1, %41
  %43 = icmp ult i32 %39, %42
  %44 = zext i1 %43 to i32
  %45 = call i32 @assert(i32 %44)
  %46 = load i32*, i32** %9, align 8
  %47 = load i32, i32* %5, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %4, align 4
  br label %53

51:                                               ; preds = %32
  %52 = call i32 @assert(i32 0)
  store i32 0, i32* %4, align 4
  br label %53

53:                                               ; preds = %51, %36, %17
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local i32 @LZ4_STATIC_ASSERT(i32) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
