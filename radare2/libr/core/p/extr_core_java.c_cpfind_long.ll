; ModuleID = '/home/carl/AnghaBench/radare2/libr/core/p/extr_core_java.c_cpfind_long.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/core/p/extr_core_java.c_cpfind_long.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@R_BIN_JAVA_CP_LONG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*, i8*)* @cpfind_long to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @cpfind_long(i32* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load i32*, i32** %5, align 8
  %10 = load i8*, i8** %7, align 8
  %11 = call i32 @r_cmd_java_get_input_num_value(i32* %9, i8* %10)
  store i32 %11, i32* %8, align 4
  %12 = load i32*, i32** %5, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = call i32 @r_cmd_java_is_valid_input_num_value(i32* %12, i8* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %3
  %17 = call i32* (...) @r_list_new()
  store i32* %17, i32** %4, align 8
  br label %22

18:                                               ; preds = %3
  %19 = load i32*, i32** %6, align 8
  %20 = load i32, i32* @R_BIN_JAVA_CP_LONG, align 4
  %21 = call i32* @r_bin_java_find_cp_const_by_val(i32* %19, i32* %8, i32 8, i32 %20)
  store i32* %21, i32** %4, align 8
  br label %22

22:                                               ; preds = %18, %16
  %23 = load i32*, i32** %4, align 8
  ret i32* %23
}

declare dso_local i32 @r_cmd_java_get_input_num_value(i32*, i8*) #1

declare dso_local i32 @r_cmd_java_is_valid_input_num_value(i32*, i8*) #1

declare dso_local i32* @r_list_new(...) #1

declare dso_local i32* @r_bin_java_find_cp_const_by_val(i32*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
