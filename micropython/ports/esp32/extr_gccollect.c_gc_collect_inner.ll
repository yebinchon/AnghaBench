; ModuleID = '/home/carl/AnghaBench/micropython/ports/esp32/extr_gccollect.c_gc_collect_inner.c'
source_filename = "/home/carl/AnghaBench/micropython/ports/esp32/extr_gccollect.c_gc_collect_inner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@XCHAL_NUM_AREGS = common dso_local global i32 0, align 4
@stack_top = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @gc_collect_inner to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gc_collect_inner(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = load i32, i32* @XCHAL_NUM_AREGS, align 4
  %6 = sdiv i32 %5, 8
  %7 = icmp slt i32 %4, %6
  br i1 %7, label %8, label %15

8:                                                ; preds = %1
  %9 = load i32, i32* %2, align 4
  %10 = add nsw i32 %9, 1
  call void @gc_collect_inner(i32 %10)
  %11 = load i32, i32* %2, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %8
  br label %34

14:                                               ; preds = %8
  br label %15

15:                                               ; preds = %14, %1
  %16 = load i32, i32* %2, align 4
  %17 = load i32, i32* @XCHAL_NUM_AREGS, align 4
  %18 = sdiv i32 %17, 8
  %19 = icmp eq i32 %16, %18
  br i1 %19, label %20, label %34

20:                                               ; preds = %15
  %21 = call i32 (...) @get_sp()
  store volatile i32 %21, i32* %3, align 4
  %22 = load volatile i32, i32* %3, align 4
  %23 = sext i32 %22 to i64
  %24 = inttoptr i64 %23 to i8**
  %25 = load i32, i32* @stack_top, align 4
  %26 = call i64 @MP_STATE_THREAD(i32 %25)
  %27 = trunc i64 %26 to i32
  %28 = load volatile i32, i32* %3, align 4
  %29 = sub nsw i32 %27, %28
  %30 = sext i32 %29 to i64
  %31 = udiv i64 %30, 4
  %32 = trunc i64 %31 to i32
  %33 = call i32 @gc_collect_root(i8** %24, i32 %32)
  br label %34

34:                                               ; preds = %13, %20, %15
  ret void
}

declare dso_local i32 @get_sp(...) #1

declare dso_local i32 @gc_collect_root(i8**, i32) #1

declare dso_local i64 @MP_STATE_THREAD(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
