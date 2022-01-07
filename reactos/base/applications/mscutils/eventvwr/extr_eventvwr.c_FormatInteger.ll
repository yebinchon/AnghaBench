; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/mscutils/eventvwr/extr_eventvwr.c_FormatInteger.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/mscutils/eventvwr/extr_eventvwr.c_FormatInteger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32*, i32*, i32 }

@.str = private unnamed_addr constant [6 x i32] [i32 37, i32 73, i32 54, i32 52, i32 117, i32 0], align 4
@LOCALE_USER_DEFAULT = common dso_local global i32 0, align 4
@LOCALE_SDECIMAL = common dso_local global i32 0, align 4
@LOCALE_STHOUSAND = common dso_local global i32 0, align 4
@LOCALE_SGROUPING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @FormatInteger(i8* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca [24 x i32], align 16
  %9 = alloca [8 x i32], align 16
  %10 = alloca [8 x i32], align 16
  %11 = alloca %struct.TYPE_4__, align 8
  %12 = alloca [12 x i32], align 16
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %17 = getelementptr inbounds [24 x i32], [24 x i32]* %8, i64 0, i64 0
  %18 = load i8*, i8** %5, align 8
  %19 = call i32 @swprintf(i32* %17, i8* bitcast ([6 x i32]* @.str to i8*), i8* %18)
  %20 = load i32, i32* @LOCALE_USER_DEFAULT, align 4
  %21 = load i32, i32* @LOCALE_SDECIMAL, align 4
  %22 = getelementptr inbounds [8 x i32], [8 x i32]* %9, i64 0, i64 0
  %23 = getelementptr inbounds [8 x i32], [8 x i32]* %9, i64 0, i64 0
  %24 = call i32 @_countof(i32* %23)
  %25 = call i64 @GetLocaleInfoW(i32 %20, i32 %21, i32* %22, i32 %24)
  %26 = load i32, i32* @LOCALE_USER_DEFAULT, align 4
  %27 = load i32, i32* @LOCALE_STHOUSAND, align 4
  %28 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 0
  %29 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 0
  %30 = call i32 @_countof(i32* %29)
  %31 = call i64 @GetLocaleInfoW(i32 %26, i32 %27, i32* %28, i32 %30)
  %32 = call i32 @ZeroMemory(%struct.TYPE_4__* %11, i32 24)
  %33 = getelementptr inbounds [8 x i32], [8 x i32]* %9, i64 0, i64 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  store i32* %33, i32** %34, align 8
  %35 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 1
  store i32* %35, i32** %36, align 8
  %37 = load i32, i32* @LOCALE_USER_DEFAULT, align 4
  %38 = load i32, i32* @LOCALE_SGROUPING, align 4
  %39 = getelementptr inbounds [12 x i32], [12 x i32]* %12, i64 0, i64 0
  %40 = getelementptr inbounds [12 x i32], [12 x i32]* %12, i64 0, i64 0
  %41 = call i32 @_countof(i32* %40)
  %42 = call i64 @GetLocaleInfoW(i32 %37, i32 %38, i32* %39, i32 %41)
  store i64 %42, i64* %13, align 8
  store i64 0, i64* %15, align 8
  br label %43

43:                                               ; preds = %70, %3
  %44 = load i64, i64* %15, align 8
  %45 = load i64, i64* %13, align 8
  %46 = icmp ult i64 %44, %45
  br i1 %46, label %47, label %73

47:                                               ; preds = %43
  %48 = load i64, i64* %15, align 8
  %49 = getelementptr inbounds [12 x i32], [12 x i32]* %12, i64 0, i64 %48
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %16, align 4
  %51 = load i32, i32* %16, align 4
  %52 = icmp sge i32 %51, 48
  br i1 %52, label %53, label %64

53:                                               ; preds = %47
  %54 = load i32, i32* %16, align 4
  %55 = icmp sle i32 %54, 57
  br i1 %55, label %56, label %64

56:                                               ; preds = %53
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = mul nsw i32 %58, 10
  %60 = load i32, i32* %16, align 4
  %61 = sub nsw i32 %60, 48
  %62 = add nsw i32 %59, %61
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 2
  store i32 %62, i32* %63, align 8
  br label %69

64:                                               ; preds = %53, %47
  %65 = load i32, i32* %16, align 4
  %66 = icmp ne i32 %65, 59
  br i1 %66, label %67, label %68

67:                                               ; preds = %64
  br label %73

68:                                               ; preds = %64
  br label %69

69:                                               ; preds = %68, %56
  br label %70

70:                                               ; preds = %69
  %71 = load i64, i64* %15, align 8
  %72 = add i64 %71, 1
  store i64 %72, i64* %15, align 8
  br label %43

73:                                               ; preds = %67, %43
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = srem i32 %75, 10
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %73
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = sdiv i32 %80, 10
  store i32 %81, i32* %79, align 8
  br label %86

82:                                               ; preds = %73
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = mul nsw i32 %84, 10
  store i32 %85, i32* %83, align 8
  br label %86

86:                                               ; preds = %82, %78
  %87 = load i32, i32* @LOCALE_USER_DEFAULT, align 4
  %88 = getelementptr inbounds [24 x i32], [24 x i32]* %8, i64 0, i64 0
  %89 = load i32, i32* %6, align 4
  %90 = load i64, i64* %7, align 8
  %91 = call i64 @GetNumberFormatW(i32 %87, i32 0, i32* %88, %struct.TYPE_4__* %11, i32 %89, i64 %90)
  store i64 %91, i64* %14, align 8
  %92 = load i64, i64* %14, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %95, label %94

94:                                               ; preds = %86
  store i64 0, i64* %4, align 8
  br label %98

95:                                               ; preds = %86
  %96 = load i64, i64* %14, align 8
  %97 = sub i64 %96, 1
  store i64 %97, i64* %4, align 8
  br label %98

98:                                               ; preds = %95, %94
  %99 = load i64, i64* %4, align 8
  ret i64 %99
}

declare dso_local i32 @swprintf(i32*, i8*, i8*) #1

declare dso_local i64 @GetLocaleInfoW(i32, i32, i32*, i32) #1

declare dso_local i32 @_countof(i32*) #1

declare dso_local i32 @ZeroMemory(%struct.TYPE_4__*, i32) #1

declare dso_local i64 @GetNumberFormatW(i32, i32, i32*, %struct.TYPE_4__*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
