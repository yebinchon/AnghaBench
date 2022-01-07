; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/regedit/extr_find.c_CompareData.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/regedit/extr_find.c_CompareData.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@REG_SZ = common dso_local global i64 0, align 8
@REG_EXPAND_SZ = common dso_local global i64 0, align 8
@s_dwFlags = common dso_local global i32 0, align 4
@RSF_WHOLESTRING = common dso_local global i32 0, align 4
@RSF_MATCHCASE = common dso_local global i32 0, align 4
@LOCALE_SYSTEM_DEFAULT = common dso_local global i32 0, align 4
@NORM_IGNORECASE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64, i64)* @CompareData to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @CompareData(i64 %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load i64, i64* %6, align 8
  %12 = call i64 @wcslen(i64 %11)
  store i64 %12, i64* %9, align 8
  %13 = load i64, i64* %7, align 8
  %14 = call i64 @wcslen(i64 %13)
  store i64 %14, i64* %10, align 8
  %15 = load i64, i64* %5, align 8
  %16 = load i64, i64* @REG_SZ, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %22, label %18

18:                                               ; preds = %3
  %19 = load i64, i64* %5, align 8
  %20 = load i64, i64* @REG_EXPAND_SZ, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %95

22:                                               ; preds = %18, %3
  %23 = load i32, i32* @s_dwFlags, align 4
  %24 = load i32, i32* @RSF_WHOLESTRING, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %51

27:                                               ; preds = %22
  %28 = load i32, i32* @s_dwFlags, align 4
  %29 = load i32, i32* @RSF_MATCHCASE, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %41

32:                                               ; preds = %27
  %33 = load i32, i32* @LOCALE_SYSTEM_DEFAULT, align 4
  %34 = load i64, i64* %6, align 8
  %35 = load i64, i64* %9, align 8
  %36 = load i64, i64* %7, align 8
  %37 = load i64, i64* %10, align 8
  %38 = call i32 @CompareStringW(i32 %33, i32 0, i64 %34, i64 %35, i64 %36, i64 %37)
  %39 = icmp eq i32 2, %38
  %40 = zext i1 %39 to i32
  store i32 %40, i32* %4, align 4
  br label %97

41:                                               ; preds = %27
  %42 = load i32, i32* @LOCALE_SYSTEM_DEFAULT, align 4
  %43 = load i32, i32* @NORM_IGNORECASE, align 4
  %44 = load i64, i64* %6, align 8
  %45 = load i64, i64* %9, align 8
  %46 = load i64, i64* %7, align 8
  %47 = load i64, i64* %10, align 8
  %48 = call i32 @CompareStringW(i32 %42, i32 %43, i64 %44, i64 %45, i64 %46, i64 %47)
  %49 = icmp eq i32 2, %48
  %50 = zext i1 %49 to i32
  store i32 %50, i32* %4, align 4
  br label %97

51:                                               ; preds = %22
  store i64 0, i64* %8, align 8
  br label %52

52:                                               ; preds = %91, %51
  %53 = load i64, i64* %8, align 8
  %54 = load i64, i64* %9, align 8
  %55 = load i64, i64* %10, align 8
  %56 = sub nsw i64 %54, %55
  %57 = icmp sle i64 %53, %56
  br i1 %57, label %58, label %94

58:                                               ; preds = %52
  %59 = load i32, i32* @s_dwFlags, align 4
  %60 = load i32, i32* @RSF_MATCHCASE, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %76

63:                                               ; preds = %58
  %64 = load i32, i32* @LOCALE_SYSTEM_DEFAULT, align 4
  %65 = load i64, i64* %6, align 8
  %66 = load i64, i64* %8, align 8
  %67 = add nsw i64 %65, %66
  %68 = load i64, i64* %10, align 8
  %69 = load i64, i64* %7, align 8
  %70 = load i64, i64* %10, align 8
  %71 = call i32 @CompareStringW(i32 %64, i32 0, i64 %67, i64 %68, i64 %69, i64 %70)
  %72 = icmp eq i32 2, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %63
  %74 = load i32, i32* @TRUE, align 4
  store i32 %74, i32* %4, align 4
  br label %97

75:                                               ; preds = %63
  br label %90

76:                                               ; preds = %58
  %77 = load i32, i32* @LOCALE_SYSTEM_DEFAULT, align 4
  %78 = load i32, i32* @NORM_IGNORECASE, align 4
  %79 = load i64, i64* %6, align 8
  %80 = load i64, i64* %8, align 8
  %81 = add nsw i64 %79, %80
  %82 = load i64, i64* %10, align 8
  %83 = load i64, i64* %7, align 8
  %84 = load i64, i64* %10, align 8
  %85 = call i32 @CompareStringW(i32 %77, i32 %78, i64 %81, i64 %82, i64 %83, i64 %84)
  %86 = icmp eq i32 2, %85
  br i1 %86, label %87, label %89

87:                                               ; preds = %76
  %88 = load i32, i32* @TRUE, align 4
  store i32 %88, i32* %4, align 4
  br label %97

89:                                               ; preds = %76
  br label %90

90:                                               ; preds = %89, %75
  br label %91

91:                                               ; preds = %90
  %92 = load i64, i64* %8, align 8
  %93 = add nsw i64 %92, 1
  store i64 %93, i64* %8, align 8
  br label %52

94:                                               ; preds = %52
  br label %95

95:                                               ; preds = %94, %18
  %96 = load i32, i32* @FALSE, align 4
  store i32 %96, i32* %4, align 4
  br label %97

97:                                               ; preds = %95, %87, %73, %41, %32
  %98 = load i32, i32* %4, align 4
  ret i32 %98
}

declare dso_local i64 @wcslen(i64) #1

declare dso_local i32 @CompareStringW(i32, i32, i64, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
