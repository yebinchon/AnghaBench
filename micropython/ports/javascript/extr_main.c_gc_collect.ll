; ModuleID = '/home/carl/AnghaBench/micropython/ports/javascript/extr_main.c_gc_collect.c'
source_filename = "/home/carl/AnghaBench/micropython/ports/javascript/extr_main.c_gc_collect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stack_top = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gc_collect() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* %1, align 4
  %3 = call i64 @setjmp(i32 %2)
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %5, label %8

5:                                                ; preds = %0
  %6 = load i32, i32* %1, align 4
  %7 = call i32 @longjmp(i32 %6, i32 1) #3
  unreachable

8:                                                ; preds = %0
  %9 = call i32 (...) @gc_collect_start()
  %10 = load i64, i64* @stack_top, align 8
  %11 = inttoptr i64 %10 to i8*
  %12 = getelementptr inbounds i32, i32* %1, i64 1
  %13 = bitcast i32* %12 to i8*
  %14 = ptrtoint i8* %13 to i32
  %15 = load i64, i64* @stack_top, align 8
  %16 = trunc i64 %15 to i32
  %17 = sub nsw i32 %14, %16
  %18 = sext i32 %17 to i64
  %19 = udiv i64 %18, 4
  %20 = trunc i64 %19 to i32
  %21 = call i32 @gc_collect_root(i8* %11, i32 %20)
  %22 = call i32 (...) @gc_collect_end()
  ret void
}

declare dso_local i64 @setjmp(i32) #1

; Function Attrs: noreturn
declare dso_local i32 @longjmp(i32, i32) #2

declare dso_local i32 @gc_collect_start(...) #1

declare dso_local i32 @gc_collect_root(i8*, i32) #1

declare dso_local i32 @gc_collect_end(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
