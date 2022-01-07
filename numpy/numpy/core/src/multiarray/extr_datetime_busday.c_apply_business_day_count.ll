; ModuleID = '/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_datetime_busday.c_apply_business_day_count.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_datetime_busday.c_apply_business_day_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NPY_DATETIME_NAT = common dso_local global i64 0, align 8
@PyExc_ValueError = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [65 x i8] c"Cannot compute a business day count with a NaT (not-a-time) date\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64, i32*, i64*, i32, i64*, i64*)* @apply_business_day_count to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @apply_business_day_count(i64 %0, i64 %1, i32* %2, i64* %3, i32 %4, i64* %5, i64* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64*, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  store i64 %0, i64* %9, align 8
  store i64 %1, i64* %10, align 8
  store i32* %2, i32** %11, align 8
  store i64* %3, i64** %12, align 8
  store i32 %4, i32* %13, align 4
  store i64* %5, i64** %14, align 8
  store i64* %6, i64** %15, align 8
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  %21 = load i64, i64* %9, align 8
  %22 = load i64, i64* @NPY_DATETIME_NAT, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %28, label %24

24:                                               ; preds = %7
  %25 = load i64, i64* %10, align 8
  %26 = load i64, i64* @NPY_DATETIME_NAT, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %24, %7
  %29 = load i32, i32* @PyExc_ValueError, align 4
  %30 = call i32 @PyErr_SetString(i32 %29, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %8, align 4
  br label %116

31:                                               ; preds = %24
  %32 = load i64, i64* %9, align 8
  %33 = load i64, i64* %10, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %31
  %36 = load i32*, i32** %11, align 8
  store i32 0, i32* %36, align 4
  store i32 0, i32* %8, align 4
  br label %116

37:                                               ; preds = %31
  %38 = load i64, i64* %9, align 8
  %39 = load i64, i64* %10, align 8
  %40 = icmp sgt i64 %38, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %37
  %42 = load i64, i64* %9, align 8
  store i64 %42, i64* %20, align 8
  %43 = load i64, i64* %10, align 8
  store i64 %43, i64* %9, align 8
  %44 = load i64, i64* %20, align 8
  store i64 %44, i64* %10, align 8
  store i32 1, i32* %19, align 4
  br label %45

45:                                               ; preds = %41, %37
  br label %46

46:                                               ; preds = %45
  %47 = load i64, i64* %9, align 8
  %48 = load i64*, i64** %14, align 8
  %49 = load i64*, i64** %15, align 8
  %50 = call i64* @find_earliest_holiday_on_or_after(i64 %47, i64* %48, i64* %49)
  store i64* %50, i64** %14, align 8
  %51 = load i64, i64* %10, align 8
  %52 = load i64*, i64** %14, align 8
  %53 = load i64*, i64** %15, align 8
  %54 = call i64* @find_earliest_holiday_on_or_after(i64 %51, i64* %52, i64* %53)
  store i64* %54, i64** %15, align 8
  %55 = load i64*, i64** %15, align 8
  %56 = load i64*, i64** %14, align 8
  %57 = ptrtoint i64* %55 to i64
  %58 = ptrtoint i64* %56 to i64
  %59 = sub i64 %57, %58
  %60 = sdiv exact i64 %59, 8
  %61 = sub nsw i64 0, %60
  %62 = trunc i64 %61 to i32
  store i32 %62, i32* %16, align 4
  %63 = load i64, i64* %10, align 8
  %64 = load i64, i64* %9, align 8
  %65 = sub nsw i64 %63, %64
  %66 = sdiv i64 %65, 7
  %67 = trunc i64 %66 to i32
  store i32 %67, i32* %17, align 4
  %68 = load i32, i32* %17, align 4
  %69 = load i32, i32* %13, align 4
  %70 = mul nsw i32 %68, %69
  %71 = load i32, i32* %16, align 4
  %72 = add nsw i32 %71, %70
  store i32 %72, i32* %16, align 4
  %73 = load i32, i32* %17, align 4
  %74 = mul nsw i32 %73, 7
  %75 = sext i32 %74 to i64
  %76 = load i64, i64* %9, align 8
  %77 = add nsw i64 %76, %75
  store i64 %77, i64* %9, align 8
  %78 = load i64, i64* %9, align 8
  %79 = load i64, i64* %10, align 8
  %80 = icmp slt i64 %78, %79
  br i1 %80, label %81, label %107

81:                                               ; preds = %46
  %82 = load i64, i64* %9, align 8
  %83 = call i32 @get_day_of_week(i64 %82)
  store i32 %83, i32* %18, align 4
  br label %84

84:                                               ; preds = %105, %81
  %85 = load i64, i64* %9, align 8
  %86 = load i64, i64* %10, align 8
  %87 = icmp slt i64 %85, %86
  br i1 %87, label %88, label %106

88:                                               ; preds = %84
  %89 = load i64*, i64** %12, align 8
  %90 = load i32, i32* %18, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i64, i64* %89, i64 %91
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %88
  %96 = load i32, i32* %16, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %16, align 4
  br label %98

98:                                               ; preds = %95, %88
  %99 = load i64, i64* %9, align 8
  %100 = add nsw i64 %99, 1
  store i64 %100, i64* %9, align 8
  %101 = load i32, i32* %18, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %18, align 4
  %103 = icmp eq i32 %102, 7
  br i1 %103, label %104, label %105

104:                                              ; preds = %98
  store i32 0, i32* %18, align 4
  br label %105

105:                                              ; preds = %104, %98
  br label %84

106:                                              ; preds = %84
  br label %107

107:                                              ; preds = %106, %46
  %108 = load i32, i32* %19, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %107
  %111 = load i32, i32* %16, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %16, align 4
  br label %113

113:                                              ; preds = %110, %107
  %114 = load i32, i32* %16, align 4
  %115 = load i32*, i32** %11, align 8
  store i32 %114, i32* %115, align 4
  store i32 0, i32* %8, align 4
  br label %116

116:                                              ; preds = %113, %35, %28
  %117 = load i32, i32* %8, align 4
  ret i32 %117
}

declare dso_local i32 @PyErr_SetString(i32, i8*) #1

declare dso_local i64* @find_earliest_holiday_on_or_after(i64, i64*, i64*) #1

declare dso_local i32 @get_day_of_week(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
