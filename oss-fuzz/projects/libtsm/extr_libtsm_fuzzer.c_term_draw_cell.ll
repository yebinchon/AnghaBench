; ModuleID = '/home/carl/AnghaBench/oss-fuzz/projects/libtsm/extr_libtsm_fuzzer.c_term_draw_cell.c'
source_filename = "/home/carl/AnghaBench/oss-fuzz/projects/libtsm/extr_libtsm_fuzzer.c_term_draw_cell.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tsm_screen = type { i32 }
%struct.tsm_screen_attr = type { i32 }

@WIDTH = common dso_local global i32 0, align 4
@HEIGHT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tsm_screen*, i32, i32*, i64, i32, i32, i32, %struct.tsm_screen_attr*, i32, i8*)* @term_draw_cell to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @term_draw_cell(%struct.tsm_screen* %0, i32 %1, i32* %2, i64 %3, i32 %4, i32 %5, i32 %6, %struct.tsm_screen_attr* %7, i32 %8, i8* %9) #0 {
  %11 = alloca %struct.tsm_screen*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.tsm_screen_attr*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  store %struct.tsm_screen* %0, %struct.tsm_screen** %11, align 8
  store i32 %1, i32* %12, align 4
  store i32* %2, i32** %13, align 8
  store i64 %3, i64* %14, align 8
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store %struct.tsm_screen_attr* %7, %struct.tsm_screen_attr** %18, align 8
  store i32 %8, i32* %19, align 4
  store i8* %9, i8** %20, align 8
  %21 = load i32, i32* %16, align 4
  %22 = load i32, i32* @WIDTH, align 4
  %23 = icmp uge i32 %21, %22
  br i1 %23, label %28, label %24

24:                                               ; preds = %10
  %25 = load i32, i32* %17, align 4
  %26 = load i32, i32* @HEIGHT, align 4
  %27 = icmp uge i32 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %24, %10
  %29 = call i32 (...) @abort() #2
  unreachable

30:                                               ; preds = %24
  ret i32 0
}

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
