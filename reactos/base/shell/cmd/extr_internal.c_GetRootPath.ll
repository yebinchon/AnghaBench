; ModuleID = '/home/carl/AnghaBench/reactos/base/shell/cmd/extr_internal.c_GetRootPath.c'
source_filename = "/home/carl/AnghaBench/reactos/base/shell/cmd/extr_internal.c_GetRootPath.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @GetRootPath(i64* %0, i64* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i64* %0, i64** %5, align 8
  store i64* %1, i64** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i64*, i64** %5, align 8
  %10 = getelementptr inbounds i64, i64* %9, i64 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %93

13:                                               ; preds = %3
  %14 = load i64*, i64** %5, align 8
  %15 = getelementptr inbounds i64, i64* %14, i64 1
  %16 = load i64, i64* %15, align 8
  %17 = call i64 @_T(i8 signext 58)
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %93

19:                                               ; preds = %13
  store i32 0, i32* %8, align 4
  %20 = load i64*, i64** %5, align 8
  %21 = getelementptr inbounds i64, i64* %20, i64 0
  %22 = load i64, i64* %21, align 8
  %23 = call i64 @_T(i8 signext 48)
  %24 = icmp sge i64 %22, %23
  br i1 %24, label %25, label %39

25:                                               ; preds = %19
  %26 = load i64*, i64** %5, align 8
  %27 = getelementptr inbounds i64, i64* %26, i64 0
  %28 = load i64, i64* %27, align 8
  %29 = call i64 @_T(i8 signext 57)
  %30 = icmp sle i64 %28, %29
  br i1 %30, label %31, label %39

31:                                               ; preds = %25
  %32 = load i64*, i64** %5, align 8
  %33 = getelementptr inbounds i64, i64* %32, i64 0
  %34 = load i64, i64* %33, align 8
  %35 = call i64 @_T(i8 signext 48)
  %36 = sub nsw i64 %34, %35
  %37 = add nsw i64 %36, 28
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* %8, align 4
  br label %39

39:                                               ; preds = %31, %25, %19
  %40 = load i64*, i64** %5, align 8
  %41 = getelementptr inbounds i64, i64* %40, i64 0
  %42 = load i64, i64* %41, align 8
  %43 = call i64 @_T(i8 signext 97)
  %44 = icmp sge i64 %42, %43
  br i1 %44, label %45, label %66

45:                                               ; preds = %39
  %46 = load i64*, i64** %5, align 8
  %47 = getelementptr inbounds i64, i64* %46, i64 0
  %48 = load i64, i64* %47, align 8
  %49 = call i64 @_T(i8 signext 122)
  %50 = icmp sle i64 %48, %49
  br i1 %50, label %51, label %66

51:                                               ; preds = %45
  %52 = load i64*, i64** %5, align 8
  %53 = getelementptr inbounds i64, i64* %52, i64 0
  %54 = load i64, i64* %53, align 8
  %55 = call i64 @_T(i8 signext 97)
  %56 = sub nsw i64 %54, %55
  %57 = add nsw i64 %56, 1
  %58 = trunc i64 %57 to i32
  store i32 %58, i32* %8, align 4
  %59 = load i32, i32* %8, align 4
  %60 = sext i32 %59 to i64
  %61 = call i64 @_T(i8 signext 65)
  %62 = add nsw i64 %60, %61
  %63 = sub nsw i64 %62, 1
  %64 = load i64*, i64** %5, align 8
  %65 = getelementptr inbounds i64, i64* %64, i64 0
  store i64 %63, i64* %65, align 8
  br label %66

66:                                               ; preds = %51, %45, %39
  %67 = load i64*, i64** %5, align 8
  %68 = getelementptr inbounds i64, i64* %67, i64 0
  %69 = load i64, i64* %68, align 8
  %70 = call i64 @_T(i8 signext 65)
  %71 = icmp sge i64 %69, %70
  br i1 %71, label %72, label %86

72:                                               ; preds = %66
  %73 = load i64*, i64** %5, align 8
  %74 = getelementptr inbounds i64, i64* %73, i64 0
  %75 = load i64, i64* %74, align 8
  %76 = call i64 @_T(i8 signext 90)
  %77 = icmp sle i64 %75, %76
  br i1 %77, label %78, label %86

78:                                               ; preds = %72
  %79 = load i64*, i64** %5, align 8
  %80 = getelementptr inbounds i64, i64* %79, i64 0
  %81 = load i64, i64* %80, align 8
  %82 = call i64 @_T(i8 signext 65)
  %83 = sub nsw i64 %81, %82
  %84 = add nsw i64 %83, 1
  %85 = trunc i64 %84 to i32
  store i32 %85, i32* %8, align 4
  br label %86

86:                                               ; preds = %78, %72, %66
  %87 = load i32, i32* %8, align 4
  %88 = load i64*, i64** %6, align 8
  %89 = load i32, i32* %7, align 4
  %90 = call i32* @_tgetdcwd(i32 %87, i64* %88, i32 %89)
  %91 = icmp eq i32* %90, null
  %92 = zext i1 %91 to i32
  store i32 %92, i32* %4, align 4
  br label %100

93:                                               ; preds = %13, %3
  %94 = load i32, i32* %7, align 4
  %95 = load i64*, i64** %6, align 8
  %96 = call i32 @GetCurrentDirectory(i32 %94, i64* %95)
  %97 = icmp ne i32 %96, 0
  %98 = xor i1 %97, true
  %99 = zext i1 %98 to i32
  store i32 %99, i32* %4, align 4
  br label %100

100:                                              ; preds = %93, %86
  %101 = load i32, i32* %4, align 4
  ret i32 %101
}

declare dso_local i64 @_T(i8 signext) #1

declare dso_local i32* @_tgetdcwd(i32, i64*, i32) #1

declare dso_local i32 @GetCurrentDirectory(i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
