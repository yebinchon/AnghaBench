; ModuleID = '/home/carl/AnghaBench/linux/tools/usb/extr_ffs-test.c_fill_in_buf.c'
source_filename = "/home/carl/AnghaBench/linux/tools/usb/extr_ffs-test.c_fill_in_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }

@pattern = common dso_local global i32 0, align 4
@stdin = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.thread*, i8*, i64)* @fill_in_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fill_in_buf(%struct.thread* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.thread*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  store %struct.thread* %0, %struct.thread** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load %struct.thread*, %struct.thread** %5, align 8
  %11 = load i32, i32* @pattern, align 4
  switch i32 %11, label %38 [
    i32 128, label %12
    i32 129, label %16
    i32 130, label %33
  ]

12:                                               ; preds = %3
  %13 = load i8*, i8** %6, align 8
  %14 = load i64, i64* %7, align 8
  %15 = call i32 @memset(i8* %13, i32 0, i64 %14)
  br label %38

16:                                               ; preds = %3
  %17 = load i8*, i8** %6, align 8
  %18 = bitcast i8* %17 to i64*
  store i64* %18, i64** %9, align 8
  store i64 0, i64* %8, align 8
  br label %19

19:                                               ; preds = %27, %16
  %20 = load i64, i64* %8, align 8
  %21 = load i64, i64* %7, align 8
  %22 = icmp ult i64 %20, %21
  br i1 %22, label %23, label %32

23:                                               ; preds = %19
  %24 = load i64, i64* %8, align 8
  %25 = urem i64 %24, 63
  %26 = load i64*, i64** %9, align 8
  store i64 %25, i64* %26, align 8
  br label %27

27:                                               ; preds = %23
  %28 = load i64, i64* %8, align 8
  %29 = add i64 %28, 1
  store i64 %29, i64* %8, align 8
  %30 = load i64*, i64** %9, align 8
  %31 = getelementptr inbounds i64, i64* %30, i32 1
  store i64* %31, i64** %9, align 8
  br label %19

32:                                               ; preds = %19
  br label %38

33:                                               ; preds = %3
  %34 = load i8*, i8** %6, align 8
  %35 = load i64, i64* %7, align 8
  %36 = load i32, i32* @stdin, align 4
  %37 = call i64 @fread(i8* %34, i32 1, i64 %35, i32 %36)
  store i64 %37, i64* %4, align 8
  br label %40

38:                                               ; preds = %3, %32, %12
  %39 = load i64, i64* %7, align 8
  store i64 %39, i64* %4, align 8
  br label %40

40:                                               ; preds = %38, %33
  %41 = load i64, i64* %4, align 8
  ret i64 %41
}

declare dso_local i32 @memset(i8*, i32, i64) #1

declare dso_local i64 @fread(i8*, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
