; ModuleID = '/home/carl/AnghaBench/php-src/ext/gd/extr_gd_compat.c_overflow2.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/gd/extr_gd_compat.c_overflow2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@E_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [103 x i8] c"one parameter to a memory allocation multiplication is negative or zero, failing operation gracefully\0A\00", align 1
@INT_MAX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [96 x i8] c"product of memory allocation multiplication would exceed INT_MAX, failing operation gracefully\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @overflow2(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp sle i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = load i32, i32* %5, align 4
  %10 = icmp sle i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %8, %2
  %12 = load i32, i32* @E_WARNING, align 4
  %13 = call i32 @php_error_docref(i32* null, i32 %12, i8* getelementptr inbounds ([103 x i8], [103 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %24

14:                                               ; preds = %8
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @INT_MAX, align 4
  %17 = load i32, i32* %5, align 4
  %18 = sdiv i32 %16, %17
  %19 = icmp sgt i32 %15, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %14
  %21 = load i32, i32* @E_WARNING, align 4
  %22 = call i32 @php_error_docref(i32* null, i32 %21, i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %24

23:                                               ; preds = %14
  store i32 0, i32* %3, align 4
  br label %24

24:                                               ; preds = %23, %20, %11
  %25 = load i32, i32* %3, align 4
  ret i32 %25
}

declare dso_local i32 @php_error_docref(i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
