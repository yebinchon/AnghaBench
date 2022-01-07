; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_network.c_bitncmp.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_network.c_bitncmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bitncmp(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = sdiv i32 %12, 8
  store i32 %13, i32* %11, align 4
  %14 = load i8*, i8** %5, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = load i32, i32* %11, align 4
  %17 = call i32 @memcmp(i8* %14, i8* %15, i32 %16)
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* %10, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %3
  %21 = load i32, i32* %7, align 4
  %22 = srem i32 %21, 8
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %20, %3
  %25 = load i32, i32* %10, align 4
  store i32 %25, i32* %4, align 4
  br label %65

26:                                               ; preds = %20
  %27 = load i8*, i8** %5, align 8
  %28 = load i32, i32* %11, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i8, i8* %27, i64 %29
  %31 = load i8, i8* %30, align 1
  %32 = zext i8 %31 to i32
  store i32 %32, i32* %8, align 4
  %33 = load i8*, i8** %6, align 8
  %34 = load i32, i32* %11, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8, i8* %33, i64 %35
  %37 = load i8, i8* %36, align 1
  %38 = zext i8 %37 to i32
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* %7, align 4
  %40 = srem i32 %39, 8
  store i32 %40, i32* %11, align 4
  br label %41

41:                                               ; preds = %61, %26
  %42 = load i32, i32* %11, align 4
  %43 = icmp sgt i32 %42, 0
  br i1 %43, label %44, label %64

44:                                               ; preds = %41
  %45 = load i32, i32* %8, align 4
  %46 = call i64 @IS_HIGHBIT_SET(i32 %45)
  %47 = load i32, i32* %9, align 4
  %48 = call i64 @IS_HIGHBIT_SET(i32 %47)
  %49 = icmp ne i64 %46, %48
  br i1 %49, label %50, label %56

50:                                               ; preds = %44
  %51 = load i32, i32* %8, align 4
  %52 = call i64 @IS_HIGHBIT_SET(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %50
  store i32 1, i32* %4, align 4
  br label %65

55:                                               ; preds = %50
  store i32 -1, i32* %4, align 4
  br label %65

56:                                               ; preds = %44
  %57 = load i32, i32* %8, align 4
  %58 = shl i32 %57, 1
  store i32 %58, i32* %8, align 4
  %59 = load i32, i32* %9, align 4
  %60 = shl i32 %59, 1
  store i32 %60, i32* %9, align 4
  br label %61

61:                                               ; preds = %56
  %62 = load i32, i32* %11, align 4
  %63 = add nsw i32 %62, -1
  store i32 %63, i32* %11, align 4
  br label %41

64:                                               ; preds = %41
  store i32 0, i32* %4, align 4
  br label %65

65:                                               ; preds = %64, %55, %54, %24
  %66 = load i32, i32* %4, align 4
  ret i32 %66
}

declare dso_local i32 @memcmp(i8*, i8*, i32) #1

declare dso_local i64 @IS_HIGHBIT_SET(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
