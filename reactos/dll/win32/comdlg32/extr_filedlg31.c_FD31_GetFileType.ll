; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comdlg32/extr_filedlg31.c_FD31_GetFileType.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comdlg32/extr_filedlg31.c_FD31_GetFileType.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FILE_star = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i64, i32)* @FD31_GetFileType to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @FD31_GetFileType(i64 %0, i64 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %9, align 4
  %10 = load i64, i64* %5, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %39

12:                                               ; preds = %3
  br label %13

13:                                               ; preds = %35, %12
  %14 = load i64, i64* %5, align 8
  %15 = call i32 @lstrlenW(i64 %14)
  store i32 %15, i32* %8, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %38

17:                                               ; preds = %13
  %18 = load i32, i32* %8, align 4
  %19 = add nsw i32 %18, 1
  %20 = sext i32 %19 to i64
  %21 = load i64, i64* %5, align 8
  %22 = add nsw i64 %21, %20
  store i64 %22, i64* %5, align 8
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %17
  %27 = load i64, i64* %5, align 8
  store i64 %27, i64* %4, align 8
  br label %71

28:                                               ; preds = %17
  %29 = load i64, i64* %5, align 8
  %30 = call i32 @lstrlenW(i64 %29)
  %31 = add nsw i32 %30, 1
  %32 = sext i32 %31 to i64
  %33 = load i64, i64* %5, align 8
  %34 = add nsw i64 %33, %32
  store i64 %34, i64* %5, align 8
  br label %35

35:                                               ; preds = %28
  %36 = load i32, i32* %9, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %9, align 4
  br label %13

38:                                               ; preds = %13
  br label %39

39:                                               ; preds = %38, %3
  %40 = load i64, i64* %6, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %69

42:                                               ; preds = %39
  br label %43

43:                                               ; preds = %65, %42
  %44 = load i64, i64* %6, align 8
  %45 = call i32 @lstrlenW(i64 %44)
  store i32 %45, i32* %8, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %68

47:                                               ; preds = %43
  %48 = load i32, i32* %8, align 4
  %49 = add nsw i32 %48, 1
  %50 = sext i32 %49 to i64
  %51 = load i64, i64* %6, align 8
  %52 = add nsw i64 %51, %50
  store i64 %52, i64* %6, align 8
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* %7, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %47
  %57 = load i64, i64* %6, align 8
  store i64 %57, i64* %4, align 8
  br label %71

58:                                               ; preds = %47
  %59 = load i64, i64* %6, align 8
  %60 = call i32 @lstrlenW(i64 %59)
  %61 = add nsw i32 %60, 1
  %62 = sext i32 %61 to i64
  %63 = load i64, i64* %6, align 8
  %64 = add nsw i64 %63, %62
  store i64 %64, i64* %6, align 8
  br label %65

65:                                               ; preds = %58
  %66 = load i32, i32* %9, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %9, align 4
  br label %43

68:                                               ; preds = %43
  br label %69

69:                                               ; preds = %68, %39
  %70 = load i64, i64* @FILE_star, align 8
  store i64 %70, i64* %4, align 8
  br label %71

71:                                               ; preds = %69, %56, %26
  %72 = load i64, i64* %4, align 8
  ret i64 %72
}

declare dso_local i32 @lstrlenW(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
