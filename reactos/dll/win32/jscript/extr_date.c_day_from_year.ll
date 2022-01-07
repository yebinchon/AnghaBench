; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_date.c_day_from_year.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_date.c_day_from_year.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NAN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @day_from_year to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @day_from_year(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = icmp ne i32 %4, %5
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = load i32, i32* @NAN, align 4
  store i32 %8, i32* %2, align 4
  br label %36

9:                                                ; preds = %1
  %10 = load i32, i32* %3, align 4
  %11 = sub nsw i32 %10, 1970
  %12 = sitofp i32 %11 to double
  %13 = fmul double 3.650000e+02, %12
  %14 = load i32, i32* %3, align 4
  %15 = sub nsw i32 %14, 1969
  %16 = sdiv i32 %15, 4
  %17 = sitofp i32 %16 to double
  %18 = call i32 @floor(double %17)
  %19 = sitofp i32 %18 to double
  %20 = fadd double %13, %19
  %21 = load i32, i32* %3, align 4
  %22 = sub nsw i32 %21, 1901
  %23 = sdiv i32 %22, 100
  %24 = sitofp i32 %23 to double
  %25 = call i32 @floor(double %24)
  %26 = sitofp i32 %25 to double
  %27 = fsub double %20, %26
  %28 = load i32, i32* %3, align 4
  %29 = sub nsw i32 %28, 1601
  %30 = sdiv i32 %29, 400
  %31 = sitofp i32 %30 to double
  %32 = call i32 @floor(double %31)
  %33 = sitofp i32 %32 to double
  %34 = fadd double %27, %33
  %35 = call i32 @floor(double %34)
  store i32 %35, i32* %2, align 4
  br label %36

36:                                               ; preds = %9, %7
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local i32 @floor(double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
