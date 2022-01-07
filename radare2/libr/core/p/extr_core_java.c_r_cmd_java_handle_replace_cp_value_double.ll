; ModuleID = '/home/carl/AnghaBench/radare2/libr/core/p/extr_core_java.c_r_cmd_java_handle_replace_cp_value_double.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/core/p/extr_core_java.c_r_cmd_java_handle_replace_cp_value_double.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i8*, i32, i32)* @r_cmd_java_handle_replace_cp_value_double to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r_cmd_java_handle_replace_cp_value_double(i32* %0, i32* %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca double, align 8
  %12 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %13 = load i8*, i8** %8, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %23

15:                                               ; preds = %5
  %16 = load i8*, i8** %8, align 8
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %15
  %21 = load i8*, i8** %8, align 8
  %22 = call double @strtod(i8* %21, i32* null)
  br label %24

23:                                               ; preds = %15, %5
  br label %24

24:                                               ; preds = %23, %20
  %25 = phi double [ %22, %20 ], [ 0.000000e+00, %23 ]
  store double %25, double* %11, align 8
  store i32 0, i32* %12, align 4
  %26 = load i32*, i32** %6, align 8
  %27 = load i32*, i32** %7, align 8
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* %10, align 4
  %30 = bitcast double* %11 to i32*
  %31 = call i32 @r_cmd_java_get_cp_bytes_and_write(i32* %26, i32* %27, i32 %28, i32 %29, i32* %30, i32 8)
  store i32 %31, i32* %12, align 4
  %32 = load i32, i32* %12, align 4
  ret i32 %32
}

declare dso_local double @strtod(i8*, i32*) #1

declare dso_local i32 @r_cmd_java_get_cp_bytes_and_write(i32*, i32*, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
