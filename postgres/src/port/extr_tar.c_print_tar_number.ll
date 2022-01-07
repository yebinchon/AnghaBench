; ModuleID = '/home/carl/AnghaBench/postgres/src/port/extr_tar.c_print_tar_number.c'
source_filename = "/home/carl/AnghaBench/postgres/src/port/extr_tar.c_print_tar_number.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_tar_number(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* %5, align 4
  %9 = sub nsw i32 %8, 1
  %10 = mul nsw i32 %9, 3
  %11 = shl i32 1, %10
  %12 = icmp slt i32 %7, %11
  br i1 %12, label %13, label %35

13:                                               ; preds = %3
  %14 = load i8*, i8** %4, align 8
  %15 = load i32, i32* %5, align 4
  %16 = add nsw i32 %15, -1
  store i32 %16, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i8, i8* %14, i64 %17
  store i8 32, i8* %18, align 1
  br label %19

19:                                               ; preds = %22, %13
  %20 = load i32, i32* %5, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %34

22:                                               ; preds = %19
  %23 = load i32, i32* %6, align 4
  %24 = and i32 %23, 7
  %25 = add nsw i32 %24, 48
  %26 = trunc i32 %25 to i8
  %27 = load i8*, i8** %4, align 8
  %28 = load i32, i32* %5, align 4
  %29 = add nsw i32 %28, -1
  store i32 %29, i32* %5, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8, i8* %27, i64 %30
  store i8 %26, i8* %31, align 1
  %32 = load i32, i32* %6, align 4
  %33 = ashr i32 %32, 3
  store i32 %33, i32* %6, align 4
  br label %19

34:                                               ; preds = %19
  br label %53

35:                                               ; preds = %3
  %36 = load i8*, i8** %4, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 0
  store i8 -128, i8* %37, align 1
  br label %38

38:                                               ; preds = %41, %35
  %39 = load i32, i32* %5, align 4
  %40 = icmp sgt i32 %39, 1
  br i1 %40, label %41, label %52

41:                                               ; preds = %38
  %42 = load i32, i32* %6, align 4
  %43 = and i32 %42, 255
  %44 = trunc i32 %43 to i8
  %45 = load i8*, i8** %4, align 8
  %46 = load i32, i32* %5, align 4
  %47 = add nsw i32 %46, -1
  store i32 %47, i32* %5, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8, i8* %45, i64 %48
  store i8 %44, i8* %49, align 1
  %50 = load i32, i32* %6, align 4
  %51 = ashr i32 %50, 8
  store i32 %51, i32* %6, align 4
  br label %38

52:                                               ; preds = %38
  br label %53

53:                                               ; preds = %52, %34
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
