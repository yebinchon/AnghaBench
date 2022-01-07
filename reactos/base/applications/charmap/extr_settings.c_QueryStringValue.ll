; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/charmap/extr_settings.c_QueryStringValue.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/charmap/extr_settings.c_QueryStringValue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ERROR_SUCCESS = common dso_local global i32 0, align 4
@REG_SZ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @QueryStringValue(i32* %0, i64 %1, i64 %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 %4, i32* %10, align 4
  store i32* null, i32** %12, align 8
  %15 = load i64, i64* %7, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %27

17:                                               ; preds = %5
  %18 = load i32*, i32** %6, align 8
  %19 = load i64, i64* %7, align 8
  %20 = call i32 @RegOpenKey(i32* %18, i64 %19, i32** %12)
  store i32 %20, i32* %11, align 4
  %21 = load i32, i32* %11, align 4
  %22 = load i32, i32* @ERROR_SUCCESS, align 4
  %23 = icmp ne i32 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %17
  br label %54

25:                                               ; preds = %17
  %26 = load i32*, i32** %12, align 8
  store i32* %26, i32** %6, align 8
  br label %27

27:                                               ; preds = %25, %5
  %28 = load i32, i32* %10, align 4
  %29 = sub nsw i32 %28, 1
  %30 = sext i32 %29 to i64
  %31 = mul i64 %30, 4
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %13, align 4
  %33 = load i32*, i32** %6, align 8
  %34 = load i64, i64* %8, align 8
  %35 = load i32*, i32** %9, align 8
  %36 = ptrtoint i32* %35 to i32
  %37 = call i32 @RegQueryValueEx(i32* %33, i64 %34, i32* null, i32* %14, i32 %36, i32* %13)
  store i32 %37, i32* %11, align 4
  %38 = load i32, i32* %11, align 4
  %39 = load i32, i32* @ERROR_SUCCESS, align 4
  %40 = icmp ne i32 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %27
  br label %54

42:                                               ; preds = %27
  %43 = load i32, i32* %14, align 4
  %44 = load i32, i32* @REG_SZ, align 4
  %45 = icmp ne i32 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %42
  store i32 -1, i32* %11, align 4
  br label %54

47:                                               ; preds = %42
  %48 = call i32 @_T(i8 signext 0)
  %49 = load i32*, i32** %9, align 8
  %50 = load i32, i32* %13, align 4
  %51 = sext i32 %50 to i64
  %52 = udiv i64 %51, 4
  %53 = getelementptr inbounds i32, i32* %49, i64 %52
  store i32 %48, i32* %53, align 4
  br label %54

54:                                               ; preds = %47, %46, %41, %24
  %55 = load i32, i32* %11, align 4
  %56 = load i32, i32* @ERROR_SUCCESS, align 4
  %57 = icmp ne i32 %55, %56
  br i1 %57, label %58, label %62

58:                                               ; preds = %54
  %59 = call i32 @_T(i8 signext 0)
  %60 = load i32*, i32** %9, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 0
  store i32 %59, i32* %61, align 4
  br label %62

62:                                               ; preds = %58, %54
  %63 = load i32*, i32** %12, align 8
  %64 = icmp ne i32* %63, null
  br i1 %64, label %65, label %68

65:                                               ; preds = %62
  %66 = load i32*, i32** %12, align 8
  %67 = call i32 @RegCloseKey(i32* %66)
  br label %68

68:                                               ; preds = %65, %62
  %69 = load i32, i32* %11, align 4
  ret i32 %69
}

declare dso_local i32 @RegOpenKey(i32*, i64, i32**) #1

declare dso_local i32 @RegQueryValueEx(i32*, i64, i32*, i32*, i32, i32*) #1

declare dso_local i32 @_T(i8 signext) #1

declare dso_local i32 @RegCloseKey(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
