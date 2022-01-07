; ModuleID = '/home/carl/AnghaBench/openwrt/package/system/mtd/src/extr_imagetag.c_compute_crc32.c'
source_filename = "/home/carl/AnghaBench/openwrt/package/system/mtd/src/extr_imagetag.c_compute_crc32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @compute_crc32(i32 %0, i64 %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca [1024 x i32], align 16
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load i64, i64* %6, align 8
  store i64 %12, i64* %11, align 8
  br label %13

13:                                               ; preds = %21, %4
  %14 = load i32, i32* %8, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %13
  %17 = load i64, i64* %7, align 8
  %18 = icmp uge i64 %17, 4096
  br label %19

19:                                               ; preds = %16, %13
  %20 = phi i1 [ false, %13 ], [ %18, %16 ]
  br i1 %20, label %21, label %36

21:                                               ; preds = %19
  %22 = load i32, i32* %8, align 4
  %23 = getelementptr inbounds [1024 x i32], [1024 x i32]* %9, i64 0, i64 0
  %24 = load i64, i64* %11, align 8
  %25 = call i64 @pread(i32 %22, i32* %23, i64 4096, i64 %24)
  store i64 %25, i64* %10, align 8
  %26 = load i32, i32* %5, align 4
  %27 = getelementptr inbounds [1024 x i32], [1024 x i32]* %9, i64 0, i64 0
  %28 = load i64, i64* %10, align 8
  %29 = call i32 @crc32(i32 %26, i32* %27, i64 %28)
  store i32 %29, i32* %5, align 4
  %30 = load i64, i64* %7, align 8
  %31 = load i64, i64* %10, align 8
  %32 = sub i64 %30, %31
  store i64 %32, i64* %7, align 8
  %33 = load i64, i64* %10, align 8
  %34 = load i64, i64* %11, align 8
  %35 = add i64 %34, %33
  store i64 %35, i64* %11, align 8
  br label %13

36:                                               ; preds = %19
  %37 = load i32, i32* %8, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %52

39:                                               ; preds = %36
  %40 = load i64, i64* %7, align 8
  %41 = icmp ugt i64 %40, 0
  br i1 %41, label %42, label %52

42:                                               ; preds = %39
  %43 = load i32, i32* %8, align 4
  %44 = getelementptr inbounds [1024 x i32], [1024 x i32]* %9, i64 0, i64 0
  %45 = load i64, i64* %7, align 8
  %46 = load i64, i64* %11, align 8
  %47 = call i64 @pread(i32 %43, i32* %44, i64 %45, i64 %46)
  store i64 %47, i64* %10, align 8
  %48 = load i32, i32* %5, align 4
  %49 = getelementptr inbounds [1024 x i32], [1024 x i32]* %9, i64 0, i64 0
  %50 = load i64, i64* %10, align 8
  %51 = call i32 @crc32(i32 %48, i32* %49, i64 %50)
  store i32 %51, i32* %5, align 4
  br label %52

52:                                               ; preds = %42, %39, %36
  %53 = load i32, i32* %5, align 4
  ret i32 %53
}

declare dso_local i64 @pread(i32, i32*, i64, i64) #1

declare dso_local i32 @crc32(i32, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
