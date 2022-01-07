; ModuleID = '/home/carl/AnghaBench/radare2/libr/magic/extr_apprentice.c_get_op.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/magic/extr_apprentice.c_get_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FILE_OPAND = common dso_local global i32 0, align 4
@FILE_OPOR = common dso_local global i32 0, align 4
@FILE_OPXOR = common dso_local global i32 0, align 4
@FILE_OPADD = common dso_local global i32 0, align 4
@FILE_OPMINUS = common dso_local global i32 0, align 4
@FILE_OPMULTIPLY = common dso_local global i32 0, align 4
@FILE_OPDIVIDE = common dso_local global i32 0, align 4
@FILE_OPMODULO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8)* @get_op to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_op(i8 signext %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8, align 1
  store i8 %0, i8* %3, align 1
  %4 = load i8, i8* %3, align 1
  %5 = sext i8 %4 to i32
  switch i32 %5, label %22 [
    i32 38, label %6
    i32 124, label %8
    i32 94, label %10
    i32 43, label %12
    i32 45, label %14
    i32 42, label %16
    i32 47, label %18
    i32 37, label %20
  ]

6:                                                ; preds = %1
  %7 = load i32, i32* @FILE_OPAND, align 4
  store i32 %7, i32* %2, align 4
  br label %23

8:                                                ; preds = %1
  %9 = load i32, i32* @FILE_OPOR, align 4
  store i32 %9, i32* %2, align 4
  br label %23

10:                                               ; preds = %1
  %11 = load i32, i32* @FILE_OPXOR, align 4
  store i32 %11, i32* %2, align 4
  br label %23

12:                                               ; preds = %1
  %13 = load i32, i32* @FILE_OPADD, align 4
  store i32 %13, i32* %2, align 4
  br label %23

14:                                               ; preds = %1
  %15 = load i32, i32* @FILE_OPMINUS, align 4
  store i32 %15, i32* %2, align 4
  br label %23

16:                                               ; preds = %1
  %17 = load i32, i32* @FILE_OPMULTIPLY, align 4
  store i32 %17, i32* %2, align 4
  br label %23

18:                                               ; preds = %1
  %19 = load i32, i32* @FILE_OPDIVIDE, align 4
  store i32 %19, i32* %2, align 4
  br label %23

20:                                               ; preds = %1
  %21 = load i32, i32* @FILE_OPMODULO, align 4
  store i32 %21, i32* %2, align 4
  br label %23

22:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %23

23:                                               ; preds = %22, %20, %18, %16, %14, %12, %10, %8, %6
  %24 = load i32, i32* %2, align 4
  ret i32 %24
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
