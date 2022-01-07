; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/heap/extr_heapam.c_fix_infomask_from_infobits.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/heap/extr_heapam.c_fix_infomask_from_infobits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@HEAP_XMAX_IS_MULTI = common dso_local global i32 0, align 4
@HEAP_XMAX_LOCK_ONLY = common dso_local global i32 0, align 4
@HEAP_XMAX_KEYSHR_LOCK = common dso_local global i32 0, align 4
@HEAP_XMAX_EXCL_LOCK = common dso_local global i32 0, align 4
@HEAP_KEYS_UPDATED = common dso_local global i32 0, align 4
@XLHL_XMAX_IS_MULTI = common dso_local global i32 0, align 4
@XLHL_XMAX_LOCK_ONLY = common dso_local global i32 0, align 4
@XLHL_XMAX_EXCL_LOCK = common dso_local global i32 0, align 4
@XLHL_XMAX_KEYSHR_LOCK = common dso_local global i32 0, align 4
@XLHL_KEYS_UPDATED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*, i32*)* @fix_infomask_from_infobits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fix_infomask_from_infobits(i32 %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %7 = load i32, i32* @HEAP_XMAX_IS_MULTI, align 4
  %8 = load i32, i32* @HEAP_XMAX_LOCK_ONLY, align 4
  %9 = or i32 %7, %8
  %10 = load i32, i32* @HEAP_XMAX_KEYSHR_LOCK, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @HEAP_XMAX_EXCL_LOCK, align 4
  %13 = or i32 %11, %12
  %14 = xor i32 %13, -1
  %15 = load i32*, i32** %5, align 8
  %16 = load i32, i32* %15, align 4
  %17 = and i32 %16, %14
  store i32 %17, i32* %15, align 4
  %18 = load i32, i32* @HEAP_KEYS_UPDATED, align 4
  %19 = xor i32 %18, -1
  %20 = load i32*, i32** %6, align 8
  %21 = load i32, i32* %20, align 4
  %22 = and i32 %21, %19
  store i32 %22, i32* %20, align 4
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @XLHL_XMAX_IS_MULTI, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %3
  %28 = load i32, i32* @HEAP_XMAX_IS_MULTI, align 4
  %29 = load i32*, i32** %5, align 8
  %30 = load i32, i32* %29, align 4
  %31 = or i32 %30, %28
  store i32 %31, i32* %29, align 4
  br label %32

32:                                               ; preds = %27, %3
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* @XLHL_XMAX_LOCK_ONLY, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %32
  %38 = load i32, i32* @HEAP_XMAX_LOCK_ONLY, align 4
  %39 = load i32*, i32** %5, align 8
  %40 = load i32, i32* %39, align 4
  %41 = or i32 %40, %38
  store i32 %41, i32* %39, align 4
  br label %42

42:                                               ; preds = %37, %32
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* @XLHL_XMAX_EXCL_LOCK, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %42
  %48 = load i32, i32* @HEAP_XMAX_EXCL_LOCK, align 4
  %49 = load i32*, i32** %5, align 8
  %50 = load i32, i32* %49, align 4
  %51 = or i32 %50, %48
  store i32 %51, i32* %49, align 4
  br label %52

52:                                               ; preds = %47, %42
  %53 = load i32, i32* %4, align 4
  %54 = load i32, i32* @XLHL_XMAX_KEYSHR_LOCK, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %52
  %58 = load i32, i32* @HEAP_XMAX_KEYSHR_LOCK, align 4
  %59 = load i32*, i32** %5, align 8
  %60 = load i32, i32* %59, align 4
  %61 = or i32 %60, %58
  store i32 %61, i32* %59, align 4
  br label %62

62:                                               ; preds = %57, %52
  %63 = load i32, i32* %4, align 4
  %64 = load i32, i32* @XLHL_KEYS_UPDATED, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %62
  %68 = load i32, i32* @HEAP_KEYS_UPDATED, align 4
  %69 = load i32*, i32** %6, align 8
  %70 = load i32, i32* %69, align 4
  %71 = or i32 %70, %68
  store i32 %71, i32* %69, align 4
  br label %72

72:                                               ; preds = %67, %62
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
