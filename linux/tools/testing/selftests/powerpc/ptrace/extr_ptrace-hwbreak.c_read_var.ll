; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/ptrace/extr_ptrace-hwbreak.c_read_var.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/ptrace/extr_ptrace-hwbreak.c_read_var.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@dummy_var = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @read_var to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @read_var(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8, align 1
  %4 = alloca i16, align 2
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %7 = load i32, i32* %2, align 4
  switch i32 %7, label %24 [
    i32 1, label %8
    i32 2, label %12
    i32 4, label %16
    i32 8, label %20
  ]

8:                                                ; preds = %1
  %9 = load i64, i64* @dummy_var, align 8
  %10 = inttoptr i64 %9 to i8*
  %11 = load i8, i8* %10, align 1
  store i8 %11, i8* %3, align 1
  br label %24

12:                                               ; preds = %1
  %13 = load i64, i64* @dummy_var, align 8
  %14 = inttoptr i64 %13 to i16*
  %15 = load i16, i16* %14, align 2
  store i16 %15, i16* %4, align 2
  br label %24

16:                                               ; preds = %1
  %17 = load i64, i64* @dummy_var, align 8
  %18 = inttoptr i64 %17 to i32*
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %5, align 4
  br label %24

20:                                               ; preds = %1
  %21 = load i64, i64* @dummy_var, align 8
  %22 = inttoptr i64 %21 to i64*
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %6, align 8
  br label %24

24:                                               ; preds = %1, %20, %16, %12, %8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
