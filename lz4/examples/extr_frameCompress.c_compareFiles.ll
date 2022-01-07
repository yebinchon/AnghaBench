; ModuleID = '/home/carl/AnghaBench/lz4/examples/extr_frameCompress.c_compareFiles.c'
source_filename = "/home/carl/AnghaBench/lz4/examples/extr_frameCompress.c_compareFiles.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @compareFiles(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [1024 x i8], align 16
  %7 = alloca [1024 x i8], align 16
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %5, align 4
  br label %10

10:                                               ; preds = %38, %2
  %11 = load i32, i32* %5, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %39

13:                                               ; preds = %10
  %14 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %15 = load i32*, i32** %3, align 8
  %16 = call i64 @fread(i8* %14, i32 1, i32 1024, i32* %15)
  store i64 %16, i64* %8, align 8
  %17 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i64 0, i64 0
  %18 = load i32*, i32** %4, align 8
  %19 = call i64 @fread(i8* %17, i32 1, i32 1024, i32* %18)
  store i64 %19, i64* %9, align 8
  %20 = load i64, i64* %8, align 8
  %21 = load i64, i64* %9, align 8
  %22 = icmp ne i64 %20, %21
  %23 = zext i1 %22 to i32
  store i32 %23, i32* %5, align 4
  %24 = load i64, i64* %8, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %13
  %27 = load i64, i64* %9, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %26, %13
  br label %39

30:                                               ; preds = %26
  %31 = load i32, i32* %5, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %30
  %34 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %35 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i64 0, i64 0
  %36 = load i64, i64* %8, align 8
  %37 = call i32 @memcmp(i8* %34, i8* %35, i64 %36)
  store i32 %37, i32* %5, align 4
  br label %38

38:                                               ; preds = %33, %30
  br label %10

39:                                               ; preds = %29, %10
  %40 = load i32, i32* %5, align 4
  ret i32 %40
}

declare dso_local i64 @fread(i8*, i32, i32, i32*) #1

declare dso_local i32 @memcmp(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
