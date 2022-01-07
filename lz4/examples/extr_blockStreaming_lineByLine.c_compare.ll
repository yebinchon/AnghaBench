; ModuleID = '/home/carl/AnghaBench/lz4/examples/extr_blockStreaming_lineByLine.c_compare.c'
source_filename = "/home/carl/AnghaBench/lz4/examples/extr_blockStreaming_lineByLine.c_compare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*)* @compare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @compare(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %5, align 4
  store i64 65536, i64* %6, align 8
  %11 = call i64 @malloc(i64 65536)
  %12 = inttoptr i64 %11 to i8*
  store i8* %12, i8** %7, align 8
  %13 = call i64 @malloc(i64 65536)
  %14 = inttoptr i64 %13 to i8*
  store i8* %14, i8** %8, align 8
  br label %15

15:                                               ; preds = %44, %2
  %16 = load i32, i32* %5, align 4
  %17 = icmp eq i32 0, %16
  br i1 %17, label %18, label %45

18:                                               ; preds = %15
  %19 = load i8*, i8** %7, align 8
  %20 = load i32*, i32** %3, align 8
  %21 = call i64 @fread(i8* %19, i32 1, i64 65536, i32* %20)
  store i64 %21, i64* %9, align 8
  %22 = load i8*, i8** %8, align 8
  %23 = load i32*, i32** %4, align 8
  %24 = call i64 @fread(i8* %22, i32 1, i64 65536, i32* %23)
  store i64 %24, i64* %10, align 8
  %25 = load i64, i64* %9, align 8
  %26 = trunc i64 %25 to i32
  %27 = load i64, i64* %10, align 8
  %28 = trunc i64 %27 to i32
  %29 = sub nsw i32 %26, %28
  store i32 %29, i32* %5, align 4
  %30 = load i64, i64* %9, align 8
  %31 = icmp eq i64 0, %30
  br i1 %31, label %35, label %32

32:                                               ; preds = %18
  %33 = load i64, i64* %10, align 8
  %34 = icmp eq i64 0, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %32, %18
  br label %45

36:                                               ; preds = %32
  %37 = load i32, i32* %5, align 4
  %38 = icmp eq i32 0, %37
  br i1 %38, label %39, label %44

39:                                               ; preds = %36
  %40 = load i8*, i8** %7, align 8
  %41 = load i8*, i8** %8, align 8
  %42 = load i64, i64* %9, align 8
  %43 = call i32 @memcmp(i8* %40, i8* %41, i64 %42)
  store i32 %43, i32* %5, align 4
  br label %44

44:                                               ; preds = %39, %36
  br label %15

45:                                               ; preds = %35, %15
  %46 = load i8*, i8** %8, align 8
  %47 = call i32 @free(i8* %46)
  %48 = load i8*, i8** %7, align 8
  %49 = call i32 @free(i8* %48)
  %50 = load i32, i32* %5, align 4
  ret i32 %50
}

declare dso_local i64 @malloc(i64) #1

declare dso_local i64 @fread(i8*, i32, i64, i32*) #1

declare dso_local i32 @memcmp(i8*, i8*, i64) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
