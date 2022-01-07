; ModuleID = '/home/carl/AnghaBench/postgres/src/interfaces/ecpg/ecpglib/extr_typename.c_sqlda_dynamic_type.c'
source_filename = "/home/carl/AnghaBench/postgres/src/interfaces/ecpg/ecpglib/extr_typename.c_sqlda_dynamic_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ECPGt_char = common dso_local global i32 0, align 4
@ECPGt_short = common dso_local global i32 0, align 4
@ECPGt_int = common dso_local global i32 0, align 4
@ECPGt_double = common dso_local global i32 0, align 4
@ECPGt_float = common dso_local global i32 0, align 4
@ECPGt_decimal = common dso_local global i32 0, align 4
@ECPGt_numeric = common dso_local global i32 0, align 4
@ECPGt_date = common dso_local global i32 0, align 4
@ECPGt_timestamp = common dso_local global i32 0, align 4
@ECPGt_interval = common dso_local global i32 0, align 4
@ECPGt_long = common dso_local global i32 0, align 4
@ECPGt_long_long = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sqlda_dynamic_type(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  switch i32 %6, label %34 [
    i32 140, label %7
    i32 128, label %7
    i32 141, label %7
    i32 131, label %7
    i32 136, label %9
    i32 135, label %11
    i32 137, label %13
    i32 138, label %15
    i32 132, label %17
    i32 139, label %27
    i32 130, label %29
    i32 129, label %29
    i32 133, label %31
    i32 134, label %33
  ]

7:                                                ; preds = %2, %2, %2, %2
  %8 = load i32, i32* @ECPGt_char, align 4
  store i32 %8, i32* %3, align 4
  br label %36

9:                                                ; preds = %2
  %10 = load i32, i32* @ECPGt_short, align 4
  store i32 %10, i32* %3, align 4
  br label %36

11:                                               ; preds = %2
  %12 = load i32, i32* @ECPGt_int, align 4
  store i32 %12, i32* %3, align 4
  br label %36

13:                                               ; preds = %2
  %14 = load i32, i32* @ECPGt_double, align 4
  store i32 %14, i32* %3, align 4
  br label %36

15:                                               ; preds = %2
  %16 = load i32, i32* @ECPGt_float, align 4
  store i32 %16, i32* %3, align 4
  br label %36

17:                                               ; preds = %2
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @INFORMIX_MODE(i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  %22 = load i32, i32* @ECPGt_decimal, align 4
  br label %25

23:                                               ; preds = %17
  %24 = load i32, i32* @ECPGt_numeric, align 4
  br label %25

25:                                               ; preds = %23, %21
  %26 = phi i32 [ %22, %21 ], [ %24, %23 ]
  store i32 %26, i32* %3, align 4
  br label %36

27:                                               ; preds = %2
  %28 = load i32, i32* @ECPGt_date, align 4
  store i32 %28, i32* %3, align 4
  br label %36

29:                                               ; preds = %2, %2
  %30 = load i32, i32* @ECPGt_timestamp, align 4
  store i32 %30, i32* %3, align 4
  br label %36

31:                                               ; preds = %2
  %32 = load i32, i32* @ECPGt_interval, align 4
  store i32 %32, i32* %3, align 4
  br label %36

33:                                               ; preds = %2
  br label %34

34:                                               ; preds = %2, %33
  %35 = load i32, i32* @ECPGt_char, align 4
  store i32 %35, i32* %3, align 4
  br label %36

36:                                               ; preds = %34, %31, %29, %27, %25, %15, %13, %11, %9, %7
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local i32 @INFORMIX_MODE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
