; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_compat.c___MultiByteToWideChar.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_compat.c___MultiByteToWideChar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ERROR_INVALID_PARAMETER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__MultiByteToWideChar(i32 %0, i32 %1, i32* %2, i32 %3, i32* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32* %2, i32** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32 %5, i32* %13, align 4
  %15 = load i32*, i32** %10, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %26

17:                                               ; preds = %6
  %18 = load i32, i32* %11, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %17
  %21 = load i32*, i32** %12, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %29, label %23

23:                                               ; preds = %20
  %24 = load i32, i32* %13, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %23, %17, %6
  %27 = load i32, i32* @ERROR_INVALID_PARAMETER, align 4
  %28 = call i32 @SetLastError(i32 %27)
  store i32 0, i32* %7, align 4
  br label %67

29:                                               ; preds = %23, %20
  %30 = load i32, i32* %11, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %29
  %33 = load i32*, i32** %10, align 8
  %34 = call i32 @strlen(i32* %33)
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %11, align 4
  br label %36

36:                                               ; preds = %32, %29
  %37 = load i32, i32* %13, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %36
  %40 = load i32, i32* %11, align 4
  store i32 %40, i32* %7, align 4
  br label %67

41:                                               ; preds = %36
  store i32 0, i32* %14, align 4
  br label %42

42:                                               ; preds = %62, %41
  %43 = load i32, i32* %14, align 4
  %44 = load i32, i32* %11, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %50

46:                                               ; preds = %42
  %47 = load i32, i32* %14, align 4
  %48 = load i32, i32* %13, align 4
  %49 = icmp slt i32 %47, %48
  br label %50

50:                                               ; preds = %46, %42
  %51 = phi i1 [ false, %42 ], [ %49, %46 ]
  br i1 %51, label %52, label %65

52:                                               ; preds = %50
  %53 = load i32*, i32** %10, align 8
  %54 = load i32, i32* %14, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = load i32*, i32** %12, align 8
  %59 = load i32, i32* %14, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  store i32 %57, i32* %61, align 4
  br label %62

62:                                               ; preds = %52
  %63 = load i32, i32* %14, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %14, align 4
  br label %42

65:                                               ; preds = %50
  %66 = load i32, i32* %14, align 4
  store i32 %66, i32* %7, align 4
  br label %67

67:                                               ; preds = %65, %39, %26
  %68 = load i32, i32* %7, align 4
  ret i32 %68
}

declare dso_local i32 @SetLastError(i32) #1

declare dso_local i32 @strlen(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
