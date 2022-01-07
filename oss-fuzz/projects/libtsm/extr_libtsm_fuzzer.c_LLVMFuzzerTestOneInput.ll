; ModuleID = '/home/carl/AnghaBench/oss-fuzz/projects/libtsm/extr_libtsm_fuzzer.c_LLVMFuzzerTestOneInput.c'
source_filename = "/home/carl/AnghaBench/oss-fuzz/projects/libtsm/extr_libtsm_fuzzer.c_LLVMFuzzerTestOneInput.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tsm_screen = type { i32 }
%struct.tsm_vte = type { i32 }

@terminal_write_fn = common dso_local global i32 0, align 4
@WIDTH = common dso_local global i32 0, align 4
@HEIGHT = common dso_local global i32 0, align 4
@term_draw_cell = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @LLVMFuzzerTestOneInput(i32* %0, i64 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.tsm_screen*, align 8
  %6 = alloca %struct.tsm_vte*, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i64 %1, i64* %4, align 8
  store i32 200, i32* %7, align 4
  %8 = call i32 @tsm_screen_new(%struct.tsm_screen** %5, i32* null, i32* null)
  %9 = load %struct.tsm_screen*, %struct.tsm_screen** %5, align 8
  %10 = call i32 @tsm_screen_set_max_sb(%struct.tsm_screen* %9, i32 200)
  %11 = load %struct.tsm_screen*, %struct.tsm_screen** %5, align 8
  %12 = load i32, i32* @terminal_write_fn, align 4
  %13 = call i32 @tsm_vte_new(%struct.tsm_vte** %6, %struct.tsm_screen* %11, i32 %12, i32* null, i32* null, i32* null)
  %14 = load %struct.tsm_screen*, %struct.tsm_screen** %5, align 8
  %15 = load i32, i32* @WIDTH, align 4
  %16 = load i32, i32* @HEIGHT, align 4
  %17 = call i32 @tsm_screen_resize(%struct.tsm_screen* %14, i32 %15, i32 %16)
  %18 = load %struct.tsm_vte*, %struct.tsm_vte** %6, align 8
  %19 = load i32*, i32** %3, align 8
  %20 = bitcast i32* %19 to i8*
  %21 = load i64, i64* %4, align 8
  %22 = call i32 @tsm_vte_input(%struct.tsm_vte* %18, i8* %20, i64 %21)
  %23 = load %struct.tsm_screen*, %struct.tsm_screen** %5, align 8
  %24 = load i32, i32* @term_draw_cell, align 4
  %25 = call i32 @tsm_screen_draw(%struct.tsm_screen* %23, i32 %24, i32* null)
  %26 = load %struct.tsm_vte*, %struct.tsm_vte** %6, align 8
  %27 = call i32 @tsm_vte_unref(%struct.tsm_vte* %26)
  %28 = load %struct.tsm_screen*, %struct.tsm_screen** %5, align 8
  %29 = call i32 @tsm_screen_unref(%struct.tsm_screen* %28)
  ret i32 0
}

declare dso_local i32 @tsm_screen_new(%struct.tsm_screen**, i32*, i32*) #1

declare dso_local i32 @tsm_screen_set_max_sb(%struct.tsm_screen*, i32) #1

declare dso_local i32 @tsm_vte_new(%struct.tsm_vte**, %struct.tsm_screen*, i32, i32*, i32*, i32*) #1

declare dso_local i32 @tsm_screen_resize(%struct.tsm_screen*, i32, i32) #1

declare dso_local i32 @tsm_vte_input(%struct.tsm_vte*, i8*, i64) #1

declare dso_local i32 @tsm_screen_draw(%struct.tsm_screen*, i32, i32*) #1

declare dso_local i32 @tsm_vte_unref(%struct.tsm_vte*) #1

declare dso_local i32 @tsm_screen_unref(%struct.tsm_screen*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
