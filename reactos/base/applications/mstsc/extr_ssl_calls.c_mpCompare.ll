; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/mstsc/extr_ssl_calls.c_mpCompare.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/mstsc/extr_ssl_calls.c_mpCompare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64*, i64*, i32)* @mpCompare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpCompare(i64* %0, i64* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  store i64* %0, i64** %5, align 8
  store i64* %1, i64** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %44

11:                                               ; preds = %3
  br label %12

12:                                               ; preds = %42, %11
  %13 = load i32, i32* %7, align 4
  %14 = add i32 %13, -1
  store i32 %14, i32* %7, align 4
  %15 = icmp ne i32 %13, 0
  br i1 %15, label %16, label %43

16:                                               ; preds = %12
  %17 = load i64*, i64** %5, align 8
  %18 = load i32, i32* %7, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds i64, i64* %17, i64 %19
  %21 = load i64, i64* %20, align 8
  %22 = load i64*, i64** %6, align 8
  %23 = load i32, i32* %7, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds i64, i64* %22, i64 %24
  %26 = load i64, i64* %25, align 8
  %27 = icmp sgt i64 %21, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %16
  store i32 1, i32* %4, align 4
  br label %44

29:                                               ; preds = %16
  %30 = load i64*, i64** %5, align 8
  %31 = load i32, i32* %7, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds i64, i64* %30, i64 %32
  %34 = load i64, i64* %33, align 8
  %35 = load i64*, i64** %6, align 8
  %36 = load i32, i32* %7, align 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds i64, i64* %35, i64 %37
  %39 = load i64, i64* %38, align 8
  %40 = icmp slt i64 %34, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %29
  store i32 -1, i32* %4, align 4
  br label %44

42:                                               ; preds = %29
  br label %12

43:                                               ; preds = %12
  store i32 0, i32* %4, align 4
  br label %44

44:                                               ; preds = %43, %41, %28, %10
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
