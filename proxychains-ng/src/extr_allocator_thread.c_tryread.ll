; ModuleID = '/home/carl/AnghaBench/proxychains-ng/src/extr_allocator_thread.c_tryread.c'
source_filename = "/home/carl/AnghaBench/proxychains-ng/src/extr_allocator_thread.c_tryread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@errno = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i64)* @tryread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tryread(i32 %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load i8*, i8** %6, align 8
  store i8* %10, i8** %9, align 8
  br label %11

11:                                               ; preds = %33, %21, %3
  %12 = load i32, i32* %5, align 4
  %13 = load i8*, i8** %9, align 8
  %14 = load i64, i64* %7, align 8
  %15 = call i32 @read(i32 %12, i8* %13, i64 %14)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  switch i32 %16, label %24 [
    i32 -1, label %17
    i32 0, label %23
  ]

17:                                               ; preds = %11
  %18 = load i32, i32* @errno, align 4
  %19 = load i32, i32* @EINTR, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  br label %11

22:                                               ; preds = %17
  br label %23

23:                                               ; preds = %11, %22
  store i32 0, i32* %4, align 4
  br label %42

24:                                               ; preds = %11
  %25 = load i32, i32* %8, align 4
  %26 = sext i32 %25 to i64
  %27 = load i64, i64* %7, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %32, label %29

29:                                               ; preds = %24
  %30 = load i64, i64* %7, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %29, %24
  store i32 1, i32* %4, align 4
  br label %42

33:                                               ; preds = %29
  %34 = load i32, i32* %8, align 4
  %35 = load i8*, i8** %9, align 8
  %36 = sext i32 %34 to i64
  %37 = getelementptr inbounds i8, i8* %35, i64 %36
  store i8* %37, i8** %9, align 8
  %38 = load i32, i32* %8, align 4
  %39 = sext i32 %38 to i64
  %40 = load i64, i64* %7, align 8
  %41 = sub i64 %40, %39
  store i64 %41, i64* %7, align 8
  br label %11

42:                                               ; preds = %32, %23
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

declare dso_local i32 @read(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
