; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/cmdutils/reg/extr_reg.c_reg_query.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/cmdutils/reg/extr_reg.c_reg_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@KEY_READ = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@STRING_CANNOT_FIND = common dso_local global i32 0, align 4
@newlineW = common dso_local global i32 0, align 4
@STRING_MATCHES_FOUND = common dso_local global i32 0, align 4
@num_values_found = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i32*, i32*, i64, i64)* @reg_query to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reg_query(i32 %0, i32* %1, i32* %2, i32* %3, i64 %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32* %1, i32** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store i64 %4, i64* %12, align 8
  store i64 %5, i64* %13, align 8
  %16 = load i32, i32* %8, align 4
  %17 = load i32*, i32** %9, align 8
  %18 = load i32, i32* @KEY_READ, align 4
  %19 = call i64 @RegOpenKeyExW(i32 %16, i32* %17, i32 0, i32 %18, i32* %14)
  %20 = load i64, i64* @ERROR_SUCCESS, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %6
  %23 = load i32, i32* @STRING_CANNOT_FIND, align 4
  %24 = call i32 (i32, ...) @output_message(i32 %23)
  store i32 1, i32* %7, align 4
  br label %55

25:                                               ; preds = %6
  %26 = load i32, i32* @newlineW, align 4
  %27 = call i32 @output_string(i32 %26)
  %28 = load i32*, i32** %11, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %25
  %31 = load i64, i64* %12, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %46

33:                                               ; preds = %30, %25
  %34 = load i32, i32* %14, align 4
  %35 = load i32*, i32** %11, align 8
  %36 = load i32*, i32** %10, align 8
  %37 = load i64, i64* %13, align 8
  %38 = call i32 @query_value(i32 %34, i32* %35, i32* %36, i64 %37)
  store i32 %38, i32* %15, align 4
  %39 = load i64, i64* %13, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %33
  %42 = load i32, i32* @STRING_MATCHES_FOUND, align 4
  %43 = load i32, i32* @num_values_found, align 4
  %44 = call i32 (i32, ...) @output_message(i32 %42, i32 %43)
  br label %45

45:                                               ; preds = %41, %33
  br label %51

46:                                               ; preds = %30
  %47 = load i32, i32* %14, align 4
  %48 = load i32*, i32** %10, align 8
  %49 = load i64, i64* %13, align 8
  %50 = call i32 @query_all(i32 %47, i32* %48, i64 %49)
  store i32 %50, i32* %15, align 4
  br label %51

51:                                               ; preds = %46, %45
  %52 = load i32, i32* %14, align 4
  %53 = call i32 @RegCloseKey(i32 %52)
  %54 = load i32, i32* %15, align 4
  store i32 %54, i32* %7, align 4
  br label %55

55:                                               ; preds = %51, %22
  %56 = load i32, i32* %7, align 4
  ret i32 %56
}

declare dso_local i64 @RegOpenKeyExW(i32, i32*, i32, i32, i32*) #1

declare dso_local i32 @output_message(i32, ...) #1

declare dso_local i32 @output_string(i32) #1

declare dso_local i32 @query_value(i32, i32*, i32*, i64) #1

declare dso_local i32 @query_all(i32, i32*, i64) #1

declare dso_local i32 @RegCloseKey(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
