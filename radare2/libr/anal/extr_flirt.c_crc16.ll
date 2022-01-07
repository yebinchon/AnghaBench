; ModuleID = '/home/carl/AnghaBench/radare2/libr/anal/extr_flirt.c_crc16.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/anal/extr_flirt.c_crc16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@POLY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @crc16(i8* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 65535, i32* %8, align 4
  %9 = load i64, i64* %5, align 8
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %57

12:                                               ; preds = %2
  br label %13

13:                                               ; preds = %42, %12
  %14 = load i8*, i8** %4, align 8
  %15 = getelementptr inbounds i8, i8* %14, i32 1
  store i8* %15, i8** %4, align 8
  %16 = load i8, i8* %14, align 1
  %17 = zext i8 %16 to i32
  store i32 %17, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %18

18:                                               ; preds = %38, %13
  %19 = load i32, i32* %6, align 4
  %20 = icmp slt i32 %19, 8
  br i1 %20, label %21, label %41

21:                                               ; preds = %18
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* %7, align 4
  %24 = xor i32 %22, %23
  %25 = and i32 %24, 1
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %21
  %28 = load i32, i32* %8, align 4
  %29 = ashr i32 %28, 1
  %30 = load i32, i32* @POLY, align 4
  %31 = xor i32 %29, %30
  store i32 %31, i32* %8, align 4
  br label %35

32:                                               ; preds = %21
  %33 = load i32, i32* %8, align 4
  %34 = ashr i32 %33, 1
  store i32 %34, i32* %8, align 4
  br label %35

35:                                               ; preds = %32, %27
  %36 = load i32, i32* %7, align 4
  %37 = ashr i32 %36, 1
  store i32 %37, i32* %7, align 4
  br label %38

38:                                               ; preds = %35
  %39 = load i32, i32* %6, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %6, align 4
  br label %18

41:                                               ; preds = %18
  br label %42

42:                                               ; preds = %41
  %43 = load i64, i64* %5, align 8
  %44 = add i64 %43, -1
  store i64 %44, i64* %5, align 8
  %45 = icmp ugt i64 %44, 0
  br i1 %45, label %13, label %46

46:                                               ; preds = %42
  %47 = load i32, i32* %8, align 4
  %48 = xor i32 %47, -1
  store i32 %48, i32* %8, align 4
  %49 = load i32, i32* %8, align 4
  store i32 %49, i32* %7, align 4
  %50 = load i32, i32* %8, align 4
  %51 = shl i32 %50, 8
  %52 = load i32, i32* %7, align 4
  %53 = ashr i32 %52, 8
  %54 = and i32 %53, 255
  %55 = or i32 %51, %54
  store i32 %55, i32* %8, align 4
  %56 = load i32, i32* %8, align 4
  store i32 %56, i32* %3, align 4
  br label %57

57:                                               ; preds = %46, %11
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
