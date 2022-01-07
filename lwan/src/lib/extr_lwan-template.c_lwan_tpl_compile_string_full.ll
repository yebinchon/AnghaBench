; ModuleID = '/home/carl/AnghaBench/lwan/src/lib/extr_lwan-template.c_lwan_tpl_compile_string_full.c'
source_filename = "/home/carl/AnghaBench/lwan/src/lib/extr_lwan-template.c_lwan_tpl_compile_string_full.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lwan_tpl = type { i32 }
%struct.lwan_var_descriptor = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.lwan_tpl* @lwan_tpl_compile_string_full(i8* %0, %struct.lwan_var_descriptor* %1, i32 %2) #0 {
  %4 = alloca %struct.lwan_tpl*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.lwan_var_descriptor*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.lwan_tpl*, align 8
  store i8* %0, i8** %5, align 8
  store %struct.lwan_var_descriptor* %1, %struct.lwan_var_descriptor** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = call %struct.lwan_tpl* @calloc(i32 1, i32 4)
  store %struct.lwan_tpl* %9, %struct.lwan_tpl** %8, align 8
  %10 = load %struct.lwan_tpl*, %struct.lwan_tpl** %8, align 8
  %11 = icmp ne %struct.lwan_tpl* %10, null
  br i1 %11, label %12, label %24

12:                                               ; preds = %3
  %13 = load %struct.lwan_tpl*, %struct.lwan_tpl** %8, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = load %struct.lwan_var_descriptor*, %struct.lwan_var_descriptor** %6, align 8
  %16 = load i32, i32* %7, align 4
  %17 = call i64 @parse_string(%struct.lwan_tpl* %13, i8* %14, %struct.lwan_var_descriptor* %15, i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %12
  %20 = load %struct.lwan_tpl*, %struct.lwan_tpl** %8, align 8
  store %struct.lwan_tpl* %20, %struct.lwan_tpl** %4, align 8
  br label %25

21:                                               ; preds = %12
  %22 = load %struct.lwan_tpl*, %struct.lwan_tpl** %8, align 8
  %23 = call i32 @lwan_tpl_free(%struct.lwan_tpl* %22)
  br label %24

24:                                               ; preds = %21, %3
  store %struct.lwan_tpl* null, %struct.lwan_tpl** %4, align 8
  br label %25

25:                                               ; preds = %24, %19
  %26 = load %struct.lwan_tpl*, %struct.lwan_tpl** %4, align 8
  ret %struct.lwan_tpl* %26
}

declare dso_local %struct.lwan_tpl* @calloc(i32, i32) #1

declare dso_local i64 @parse_string(%struct.lwan_tpl*, i8*, %struct.lwan_var_descriptor*, i32) #1

declare dso_local i32 @lwan_tpl_free(%struct.lwan_tpl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
