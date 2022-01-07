; ModuleID = '/home/carl/AnghaBench/os-tutorial/23-fixes/libc/extr_mem.c_kmalloc.c'
source_filename = "/home/carl/AnghaBench/os-tutorial/23-fixes/libc/extr_mem.c_kmalloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@free_mem_addr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kmalloc(i64 %0, i32 %1, i32* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %8 = load i32, i32* %5, align 4
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %10, label %19

10:                                               ; preds = %3
  %11 = load i32, i32* @free_mem_addr, align 4
  %12 = and i32 %11, -4096
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %10
  %15 = load i32, i32* @free_mem_addr, align 4
  %16 = and i32 %15, -4096
  store i32 %16, i32* @free_mem_addr, align 4
  %17 = load i32, i32* @free_mem_addr, align 4
  %18 = add nsw i32 %17, 4096
  store i32 %18, i32* @free_mem_addr, align 4
  br label %19

19:                                               ; preds = %14, %10, %3
  %20 = load i32*, i32** %6, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = load i32, i32* @free_mem_addr, align 4
  %24 = load i32*, i32** %6, align 8
  store i32 %23, i32* %24, align 4
  br label %25

25:                                               ; preds = %22, %19
  %26 = load i32, i32* @free_mem_addr, align 4
  store i32 %26, i32* %7, align 4
  %27 = load i64, i64* %4, align 8
  %28 = load i32, i32* @free_mem_addr, align 4
  %29 = sext i32 %28 to i64
  %30 = add i64 %29, %27
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* @free_mem_addr, align 4
  %32 = load i32, i32* %7, align 4
  ret i32 %32
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
