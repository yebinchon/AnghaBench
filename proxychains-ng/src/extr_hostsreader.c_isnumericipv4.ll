; ModuleID = '/home/carl/AnghaBench/proxychains-ng/src/extr_hostsreader.c_isnumericipv4.c'
source_filename = "/home/carl/AnghaBench/proxychains-ng/src/extr_hostsreader.c_isnumericipv4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @isnumericipv4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isnumericipv4(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i64 0, i64* %4, align 8
  store i64 0, i64* %5, align 8
  store i64 0, i64* %6, align 8
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %1, %29
  %9 = load i8*, i8** %3, align 8
  %10 = load i64, i64* %4, align 8
  %11 = getelementptr inbounds i8, i8* %9, i64 %10
  %12 = load i8, i8* %11, align 1
  %13 = sext i8 %12 to i32
  switch i32 %13, label %28 [
    i32 0, label %14
    i32 46, label %15
    i32 48, label %25
    i32 49, label %25
    i32 50, label %25
    i32 51, label %25
    i32 52, label %25
    i32 53, label %25
    i32 54, label %25
    i32 55, label %25
    i32 56, label %25
    i32 57, label %25
  ]

14:                                               ; preds = %8
  br label %32

15:                                               ; preds = %8
  %16 = load i64, i64* %5, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %15
  %19 = load i32, i32* %7, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %18, %15
  store i32 0, i32* %2, align 4
  br label %43

22:                                               ; preds = %18
  %23 = load i64, i64* %6, align 8
  %24 = add i64 %23, 1
  store i64 %24, i64* %6, align 8
  store i32 1, i32* %7, align 4
  br label %29

25:                                               ; preds = %8, %8, %8, %8, %8, %8, %8, %8, %8, %8
  %26 = load i64, i64* %5, align 8
  %27 = add i64 %26, 1
  store i64 %27, i64* %5, align 8
  store i32 0, i32* %7, align 4
  br label %29

28:                                               ; preds = %8
  store i32 0, i32* %2, align 4
  br label %43

29:                                               ; preds = %25, %22
  %30 = load i64, i64* %4, align 8
  %31 = add i64 %30, 1
  store i64 %31, i64* %4, align 8
  br label %8

32:                                               ; preds = %14
  %33 = load i64, i64* %6, align 8
  %34 = icmp eq i64 %33, 3
  br i1 %34, label %35, label %42

35:                                               ; preds = %32
  %36 = load i64, i64* %5, align 8
  %37 = icmp uge i64 %36, 4
  br i1 %37, label %38, label %42

38:                                               ; preds = %35
  %39 = load i64, i64* %5, align 8
  %40 = icmp ule i64 %39, 12
  br i1 %40, label %41, label %42

41:                                               ; preds = %38
  store i32 1, i32* %2, align 4
  br label %43

42:                                               ; preds = %38, %35, %32
  store i32 0, i32* %2, align 4
  br label %43

43:                                               ; preds = %42, %41, %28, %21
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
