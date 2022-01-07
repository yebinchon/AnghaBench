; ModuleID = '/home/carl/AnghaBench/macvim/src/extr_misc2.c_default_fileformat.c'
source_filename = "/home/carl/AnghaBench/macvim/src/extr_misc2.c_default_fileformat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@p_ffs = common dso_local global i32* null, align 8
@EOL_MAC = common dso_local global i32 0, align 4
@EOL_DOS = common dso_local global i32 0, align 4
@EOL_UNIX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @default_fileformat() #0 {
  %1 = alloca i32, align 4
  %2 = load i32*, i32** @p_ffs, align 8
  %3 = load i32, i32* %2, align 4
  switch i32 %3, label %8 [
    i32 109, label %4
    i32 100, label %6
  ]

4:                                                ; preds = %0
  %5 = load i32, i32* @EOL_MAC, align 4
  store i32 %5, i32* %1, align 4
  br label %10

6:                                                ; preds = %0
  %7 = load i32, i32* @EOL_DOS, align 4
  store i32 %7, i32* %1, align 4
  br label %10

8:                                                ; preds = %0
  %9 = load i32, i32* @EOL_UNIX, align 4
  store i32 %9, i32* %1, align 4
  br label %10

10:                                               ; preds = %8, %6, %4
  %11 = load i32, i32* %1, align 4
  ret i32 %11
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
