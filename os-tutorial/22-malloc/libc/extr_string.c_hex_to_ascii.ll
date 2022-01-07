; ModuleID = '/home/carl/AnghaBench/os-tutorial/22-malloc/libc/extr_string.c_hex_to_ascii.c'
source_filename = "/home/carl/AnghaBench/os-tutorial/22-malloc/libc/extr_string.c_hex_to_ascii.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hex_to_ascii(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = call i32 @append(i8* %8, i32 48)
  %10 = load i8*, i8** %4, align 8
  %11 = call i32 @append(i8* %10, i32 120)
  store i8 0, i8* %5, align 1
  store i32 28, i32* %7, align 4
  br label %12

12:                                               ; preds = %42, %2
  %13 = load i32, i32* %7, align 4
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %45

15:                                               ; preds = %12
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* %7, align 4
  %18 = ashr i32 %16, %17
  %19 = and i32 %18, 15
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %15
  %23 = load i8, i8* %5, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  br label %42

27:                                               ; preds = %22, %15
  store i8 1, i8* %5, align 1
  %28 = load i32, i32* %6, align 4
  %29 = icmp sgt i32 %28, 10
  br i1 %29, label %30, label %36

30:                                               ; preds = %27
  %31 = load i8*, i8** %4, align 8
  %32 = load i32, i32* %6, align 4
  %33 = sub nsw i32 %32, 10
  %34 = add nsw i32 %33, 97
  %35 = call i32 @append(i8* %31, i32 %34)
  br label %41

36:                                               ; preds = %27
  %37 = load i8*, i8** %4, align 8
  %38 = load i32, i32* %6, align 4
  %39 = add nsw i32 %38, 48
  %40 = call i32 @append(i8* %37, i32 %39)
  br label %41

41:                                               ; preds = %36, %30
  br label %42

42:                                               ; preds = %41, %26
  %43 = load i32, i32* %7, align 4
  %44 = sub nsw i32 %43, 4
  store i32 %44, i32* %7, align 4
  br label %12

45:                                               ; preds = %12
  %46 = load i32, i32* %3, align 4
  %47 = and i32 %46, 15
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* %6, align 4
  %49 = icmp sge i32 %48, 10
  br i1 %49, label %50, label %56

50:                                               ; preds = %45
  %51 = load i8*, i8** %4, align 8
  %52 = load i32, i32* %6, align 4
  %53 = sub nsw i32 %52, 10
  %54 = add nsw i32 %53, 97
  %55 = call i32 @append(i8* %51, i32 %54)
  br label %61

56:                                               ; preds = %45
  %57 = load i8*, i8** %4, align 8
  %58 = load i32, i32* %6, align 4
  %59 = add nsw i32 %58, 48
  %60 = call i32 @append(i8* %57, i32 %59)
  br label %61

61:                                               ; preds = %56, %50
  ret void
}

declare dso_local i32 @append(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
