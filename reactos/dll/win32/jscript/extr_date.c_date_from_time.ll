; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_date.c_date_from_time.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_date.c_date_from_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NAN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @date_from_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @date_from_time(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call i32 @day_within_year(i32 %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call i32 @in_leap_year(i32 %9)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %3, align 4
  %12 = call i32 @month_from_time(i32 %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %3, align 4
  %14 = call i64 @isnan(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i32, i32* @NAN, align 4
  store i32 %17, i32* %2, align 4
  br label %107

18:                                               ; preds = %1
  %19 = load i32, i32* %6, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = load i32, i32* %4, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %2, align 4
  br label %107

24:                                               ; preds = %18
  %25 = load i32, i32* %6, align 4
  %26 = icmp eq i32 %25, 1
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = load i32, i32* %4, align 4
  %29 = sub nsw i32 %28, 30
  store i32 %29, i32* %2, align 4
  br label %107

30:                                               ; preds = %24
  %31 = load i32, i32* %6, align 4
  %32 = icmp eq i32 %31, 2
  br i1 %32, label %33, label %38

33:                                               ; preds = %30
  %34 = load i32, i32* %4, align 4
  %35 = sub nsw i32 %34, 58
  %36 = load i32, i32* %5, align 4
  %37 = sub nsw i32 %35, %36
  store i32 %37, i32* %2, align 4
  br label %107

38:                                               ; preds = %30
  %39 = load i32, i32* %6, align 4
  %40 = icmp eq i32 %39, 3
  br i1 %40, label %41, label %46

41:                                               ; preds = %38
  %42 = load i32, i32* %4, align 4
  %43 = sub nsw i32 %42, 89
  %44 = load i32, i32* %5, align 4
  %45 = sub nsw i32 %43, %44
  store i32 %45, i32* %2, align 4
  br label %107

46:                                               ; preds = %38
  %47 = load i32, i32* %6, align 4
  %48 = icmp eq i32 %47, 4
  br i1 %48, label %49, label %54

49:                                               ; preds = %46
  %50 = load i32, i32* %4, align 4
  %51 = sub nsw i32 %50, 119
  %52 = load i32, i32* %5, align 4
  %53 = sub nsw i32 %51, %52
  store i32 %53, i32* %2, align 4
  br label %107

54:                                               ; preds = %46
  %55 = load i32, i32* %6, align 4
  %56 = icmp eq i32 %55, 5
  br i1 %56, label %57, label %62

57:                                               ; preds = %54
  %58 = load i32, i32* %4, align 4
  %59 = sub nsw i32 %58, 150
  %60 = load i32, i32* %5, align 4
  %61 = sub nsw i32 %59, %60
  store i32 %61, i32* %2, align 4
  br label %107

62:                                               ; preds = %54
  %63 = load i32, i32* %6, align 4
  %64 = icmp eq i32 %63, 6
  br i1 %64, label %65, label %70

65:                                               ; preds = %62
  %66 = load i32, i32* %4, align 4
  %67 = sub nsw i32 %66, 180
  %68 = load i32, i32* %5, align 4
  %69 = sub nsw i32 %67, %68
  store i32 %69, i32* %2, align 4
  br label %107

70:                                               ; preds = %62
  %71 = load i32, i32* %6, align 4
  %72 = icmp eq i32 %71, 7
  br i1 %72, label %73, label %78

73:                                               ; preds = %70
  %74 = load i32, i32* %4, align 4
  %75 = sub nsw i32 %74, 211
  %76 = load i32, i32* %5, align 4
  %77 = sub nsw i32 %75, %76
  store i32 %77, i32* %2, align 4
  br label %107

78:                                               ; preds = %70
  %79 = load i32, i32* %6, align 4
  %80 = icmp eq i32 %79, 8
  br i1 %80, label %81, label %86

81:                                               ; preds = %78
  %82 = load i32, i32* %4, align 4
  %83 = sub nsw i32 %82, 242
  %84 = load i32, i32* %5, align 4
  %85 = sub nsw i32 %83, %84
  store i32 %85, i32* %2, align 4
  br label %107

86:                                               ; preds = %78
  %87 = load i32, i32* %6, align 4
  %88 = icmp eq i32 %87, 9
  br i1 %88, label %89, label %94

89:                                               ; preds = %86
  %90 = load i32, i32* %4, align 4
  %91 = sub nsw i32 %90, 272
  %92 = load i32, i32* %5, align 4
  %93 = sub nsw i32 %91, %92
  store i32 %93, i32* %2, align 4
  br label %107

94:                                               ; preds = %86
  %95 = load i32, i32* %6, align 4
  %96 = icmp eq i32 %95, 10
  br i1 %96, label %97, label %102

97:                                               ; preds = %94
  %98 = load i32, i32* %4, align 4
  %99 = sub nsw i32 %98, 303
  %100 = load i32, i32* %5, align 4
  %101 = sub nsw i32 %99, %100
  store i32 %101, i32* %2, align 4
  br label %107

102:                                              ; preds = %94
  %103 = load i32, i32* %4, align 4
  %104 = sub nsw i32 %103, 333
  %105 = load i32, i32* %5, align 4
  %106 = sub nsw i32 %104, %105
  store i32 %106, i32* %2, align 4
  br label %107

107:                                              ; preds = %102, %97, %89, %81, %73, %65, %57, %49, %41, %33, %27, %21, %16
  %108 = load i32, i32* %2, align 4
  ret i32 %108
}

declare dso_local i32 @day_within_year(i32) #1

declare dso_local i32 @in_leap_year(i32) #1

declare dso_local i32 @month_from_time(i32) #1

declare dso_local i64 @isnan(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
