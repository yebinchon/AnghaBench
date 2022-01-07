; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/handwired/promethium/keymaps/priyadi/extr_keymap.c_layer_state_set_kb.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/handwired/promethium/keymaps/priyadi/extr_keymap.c_layer_state_set_kb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_NUM = common dso_local global i64 0, align 8
@_FUN = common dso_local global i64 0, align 8
@_PUNC = common dso_local global i64 0, align 8
@_EMPTY = common dso_local global i64 0, align 8
@_GREEKU = common dso_local global i64 0, align 8
@_GREEKL = common dso_local global i64 0, align 8
@_EMOJI = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @layer_state_set_kb(i64 %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = load i64, i64* @_NUM, align 8
  %5 = shl i64 1, %4
  %6 = load i64, i64* @_FUN, align 8
  %7 = shl i64 1, %6
  %8 = or i64 %5, %7
  %9 = and i64 %3, %8
  %10 = load i64, i64* @_NUM, align 8
  %11 = shl i64 1, %10
  %12 = load i64, i64* @_FUN, align 8
  %13 = shl i64 1, %12
  %14 = or i64 %11, %13
  %15 = icmp eq i64 %9, %14
  br i1 %15, label %16, label %21

16:                                               ; preds = %1
  %17 = load i64, i64* @_PUNC, align 8
  %18 = shl i64 1, %17
  %19 = load i64, i64* %2, align 8
  %20 = or i64 %19, %18
  store i64 %20, i64* %2, align 8
  br label %27

21:                                               ; preds = %1
  %22 = load i64, i64* @_PUNC, align 8
  %23 = shl i64 1, %22
  %24 = xor i64 %23, -1
  %25 = load i64, i64* %2, align 8
  %26 = and i64 %25, %24
  store i64 %26, i64* %2, align 8
  br label %27

27:                                               ; preds = %21, %16
  %28 = load i64, i64* %2, align 8
  %29 = load i64, i64* @_EMPTY, align 8
  %30 = shl i64 1, %29
  %31 = load i64, i64* @_GREEKU, align 8
  %32 = shl i64 1, %31
  %33 = or i64 %30, %32
  %34 = and i64 %28, %33
  %35 = load i64, i64* @_EMPTY, align 8
  %36 = shl i64 1, %35
  %37 = load i64, i64* @_GREEKU, align 8
  %38 = shl i64 1, %37
  %39 = or i64 %36, %38
  %40 = icmp eq i64 %34, %39
  br i1 %40, label %55, label %41

41:                                               ; preds = %27
  %42 = load i64, i64* %2, align 8
  %43 = load i64, i64* @_EMPTY, align 8
  %44 = shl i64 1, %43
  %45 = load i64, i64* @_GREEKL, align 8
  %46 = shl i64 1, %45
  %47 = or i64 %44, %46
  %48 = and i64 %42, %47
  %49 = load i64, i64* @_EMPTY, align 8
  %50 = shl i64 1, %49
  %51 = load i64, i64* @_GREEKL, align 8
  %52 = shl i64 1, %51
  %53 = or i64 %50, %52
  %54 = icmp eq i64 %48, %53
  br i1 %54, label %55, label %60

55:                                               ; preds = %41, %27
  %56 = load i64, i64* @_EMOJI, align 8
  %57 = shl i64 1, %56
  %58 = load i64, i64* %2, align 8
  %59 = or i64 %58, %57
  store i64 %59, i64* %2, align 8
  br label %66

60:                                               ; preds = %41
  %61 = load i64, i64* @_EMOJI, align 8
  %62 = shl i64 1, %61
  %63 = xor i64 %62, -1
  %64 = load i64, i64* %2, align 8
  %65 = and i64 %64, %63
  store i64 %65, i64* %2, align 8
  br label %66

66:                                               ; preds = %60, %55
  %67 = load i64, i64* %2, align 8
  ret i64 %67
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
