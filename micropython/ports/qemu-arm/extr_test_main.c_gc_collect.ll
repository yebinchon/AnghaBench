; ModuleID = '/home/carl/AnghaBench/micropython/ports/qemu-arm/extr_test_main.c_gc_collect.c'
source_filename = "/home/carl/AnghaBench/micropython/ports/qemu-arm/extr_test_main.c_gc_collect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stack_top = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gc_collect() #0 {
  %1 = alloca [10 x i64], align 16
  %2 = alloca i64, align 8
  %3 = call i32 (...) @gc_collect_start()
  %4 = getelementptr inbounds [10 x i64], [10 x i64]* %1, i64 0, i64 0
  %5 = call i64 @gc_helper_get_regs_and_sp(i64* %4)
  store i64 %5, i64* %2, align 8
  %6 = load i64, i64* %2, align 8
  %7 = inttoptr i64 %6 to i8**
  %8 = load i32, i32* @stack_top, align 4
  %9 = call i64 @MP_STATE_THREAD(i32 %8)
  %10 = trunc i64 %9 to i32
  %11 = load i64, i64* %2, align 8
  %12 = trunc i64 %11 to i32
  %13 = sub nsw i32 %10, %12
  %14 = sext i32 %13 to i64
  %15 = udiv i64 %14, 4
  %16 = trunc i64 %15 to i32
  %17 = call i32 @gc_collect_root(i8** %7, i32 %16)
  %18 = call i32 (...) @gc_collect_end()
  ret void
}

declare dso_local i32 @gc_collect_start(...) #1

declare dso_local i64 @gc_helper_get_regs_and_sp(i64*) #1

declare dso_local i32 @gc_collect_root(i8**, i32) #1

declare dso_local i64 @MP_STATE_THREAD(i32) #1

declare dso_local i32 @gc_collect_end(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
