; ModuleID = '/home/carl/AnghaBench/macvim/src/extr_getchar.c_start_redo_ins.c'
source_filename = "/home/carl/AnghaBench/macvim/src/extr_getchar.c_start_redo_ins.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@FAIL = common dso_local global i32 0, align 4
@NUL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"AaIiRrOo\00", align 1
@readbuf2 = common dso_local global i32 0, align 4
@NL_STR = common dso_local global i32 0, align 4
@block_redo = common dso_local global i32 0, align 4
@OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @start_redo_ins() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @TRUE, align 4
  %4 = load i32, i32* @FALSE, align 4
  %5 = call i32 @read_redo(i32 %3, i32 %4)
  %6 = load i32, i32* @FAIL, align 4
  %7 = icmp eq i32 %5, %6
  br i1 %7, label %8, label %10

8:                                                ; preds = %0
  %9 = load i32, i32* @FAIL, align 4
  store i32 %9, i32* %1, align 4
  br label %38

10:                                               ; preds = %0
  %11 = call i32 (...) @start_stuff()
  br label %12

12:                                               ; preds = %32, %10
  %13 = load i32, i32* @FALSE, align 4
  %14 = load i32, i32* @FALSE, align 4
  %15 = call i32 @read_redo(i32 %13, i32 %14)
  store i32 %15, i32* %2, align 4
  %16 = load i32, i32* @NUL, align 4
  %17 = icmp ne i32 %15, %16
  br i1 %17, label %18, label %33

18:                                               ; preds = %12
  %19 = load i32, i32* %2, align 4
  %20 = call i32* @vim_strchr(i32* bitcast ([9 x i8]* @.str to i32*), i32 %19)
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %32

22:                                               ; preds = %18
  %23 = load i32, i32* %2, align 4
  %24 = icmp eq i32 %23, 79
  br i1 %24, label %28, label %25

25:                                               ; preds = %22
  %26 = load i32, i32* %2, align 4
  %27 = icmp eq i32 %26, 111
  br i1 %27, label %28, label %31

28:                                               ; preds = %25, %22
  %29 = load i32, i32* @NL_STR, align 4
  %30 = call i32 @add_buff(i32* @readbuf2, i32 %29, i64 -1)
  br label %31

31:                                               ; preds = %28, %25
  br label %33

32:                                               ; preds = %18
  br label %12

33:                                               ; preds = %31, %12
  %34 = load i32, i32* @FALSE, align 4
  %35 = call i32 @copy_redo(i32 %34)
  %36 = load i32, i32* @TRUE, align 4
  store i32 %36, i32* @block_redo, align 4
  %37 = load i32, i32* @OK, align 4
  store i32 %37, i32* %1, align 4
  br label %38

38:                                               ; preds = %33, %8
  %39 = load i32, i32* %1, align 4
  ret i32 %39
}

declare dso_local i32 @read_redo(i32, i32) #1

declare dso_local i32 @start_stuff(...) #1

declare dso_local i32* @vim_strchr(i32*, i32) #1

declare dso_local i32 @add_buff(i32*, i32, i64) #1

declare dso_local i32 @copy_redo(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
