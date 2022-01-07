; ModuleID = '/home/carl/AnghaBench/php-src/ext/pcre/pcre2lib/sljit/extr_sljitLir.c_sljit_emit_mem.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/pcre/pcre2lib/sljit/extr_sljitLir.c_sljit_emit_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sljit_compiler = type { i32 }

@SLJIT_ERR_UNSUPPORTED = common dso_local global %struct.sljit_compiler* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sljit_compiler* @sljit_emit_mem(%struct.sljit_compiler* %0, %struct.sljit_compiler* %1, %struct.sljit_compiler* %2, %struct.sljit_compiler* %3, %struct.sljit_compiler* %4) #0 {
  %6 = alloca %struct.sljit_compiler*, align 8
  %7 = alloca %struct.sljit_compiler*, align 8
  %8 = alloca %struct.sljit_compiler*, align 8
  %9 = alloca %struct.sljit_compiler*, align 8
  %10 = alloca %struct.sljit_compiler*, align 8
  store %struct.sljit_compiler* %0, %struct.sljit_compiler** %6, align 8
  store %struct.sljit_compiler* %1, %struct.sljit_compiler** %7, align 8
  store %struct.sljit_compiler* %2, %struct.sljit_compiler** %8, align 8
  store %struct.sljit_compiler* %3, %struct.sljit_compiler** %9, align 8
  store %struct.sljit_compiler* %4, %struct.sljit_compiler** %10, align 8
  %11 = load %struct.sljit_compiler*, %struct.sljit_compiler** %6, align 8
  %12 = call i32 @SLJIT_UNUSED_ARG(%struct.sljit_compiler* %11)
  %13 = load %struct.sljit_compiler*, %struct.sljit_compiler** %7, align 8
  %14 = call i32 @SLJIT_UNUSED_ARG(%struct.sljit_compiler* %13)
  %15 = load %struct.sljit_compiler*, %struct.sljit_compiler** %8, align 8
  %16 = call i32 @SLJIT_UNUSED_ARG(%struct.sljit_compiler* %15)
  %17 = load %struct.sljit_compiler*, %struct.sljit_compiler** %9, align 8
  %18 = call i32 @SLJIT_UNUSED_ARG(%struct.sljit_compiler* %17)
  %19 = load %struct.sljit_compiler*, %struct.sljit_compiler** %10, align 8
  %20 = call i32 @SLJIT_UNUSED_ARG(%struct.sljit_compiler* %19)
  %21 = call i32 (...) @CHECK_ERROR()
  %22 = load %struct.sljit_compiler*, %struct.sljit_compiler** %6, align 8
  %23 = load %struct.sljit_compiler*, %struct.sljit_compiler** %7, align 8
  %24 = load %struct.sljit_compiler*, %struct.sljit_compiler** %8, align 8
  %25 = load %struct.sljit_compiler*, %struct.sljit_compiler** %9, align 8
  %26 = load %struct.sljit_compiler*, %struct.sljit_compiler** %10, align 8
  %27 = call i32 @check_sljit_emit_mem(%struct.sljit_compiler* %22, %struct.sljit_compiler* %23, %struct.sljit_compiler* %24, %struct.sljit_compiler* %25, %struct.sljit_compiler* %26)
  %28 = call i32 @CHECK(i32 %27)
  %29 = load %struct.sljit_compiler*, %struct.sljit_compiler** @SLJIT_ERR_UNSUPPORTED, align 8
  ret %struct.sljit_compiler* %29
}

declare dso_local i32 @SLJIT_UNUSED_ARG(%struct.sljit_compiler*) #1

declare dso_local i32 @CHECK_ERROR(...) #1

declare dso_local i32 @CHECK(i32) #1

declare dso_local i32 @check_sljit_emit_mem(%struct.sljit_compiler*, %struct.sljit_compiler*, %struct.sljit_compiler*, %struct.sljit_compiler*, %struct.sljit_compiler*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
