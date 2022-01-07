; ModuleID = '/home/carl/AnghaBench/postgres/src/fe_utils/extr_print.c_additional_numeric_locale_len.c'
source_filename = "/home/carl/AnghaBench/postgres/src/fe_utils/extr_print.c_additional_numeric_locale_len.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@groupdigits = common dso_local global i32 0, align 4
@thousands_sep = common dso_local global i32 0, align 4
@decimal_point = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @additional_numeric_locale_len to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @additional_numeric_locale_len(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = call i32 @integer_digits(i8* %5)
  store i32 %6, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @groupdigits, align 4
  %9 = icmp sgt i32 %7, %8
  br i1 %9, label %10, label %20

10:                                               ; preds = %1
  %11 = load i32, i32* %3, align 4
  %12 = sub nsw i32 %11, 1
  %13 = load i32, i32* @groupdigits, align 4
  %14 = sdiv i32 %12, %13
  %15 = load i32, i32* @thousands_sep, align 4
  %16 = call i32 @strlen(i32 %15)
  %17 = mul nsw i32 %14, %16
  %18 = load i32, i32* %4, align 4
  %19 = add nsw i32 %18, %17
  store i32 %19, i32* %4, align 4
  br label %20

20:                                               ; preds = %10, %1
  %21 = load i8*, i8** %2, align 8
  %22 = call i32* @strchr(i8* %21, i8 signext 46)
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %30

24:                                               ; preds = %20
  %25 = load i32, i32* @decimal_point, align 4
  %26 = call i32 @strlen(i32 %25)
  %27 = sub nsw i32 %26, 1
  %28 = load i32, i32* %4, align 4
  %29 = add nsw i32 %28, %27
  store i32 %29, i32* %4, align 4
  br label %30

30:                                               ; preds = %24, %20
  %31 = load i32, i32* %4, align 4
  ret i32 %31
}

declare dso_local i32 @integer_digits(i8*) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32* @strchr(i8*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
