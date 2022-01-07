; ModuleID = '/home/carl/AnghaBench/macvim/src/extr_misc2.c_virtual_active.c'
source_filename = "/home/carl/AnghaBench/macvim/src/extr_misc2.c_virtual_active.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@virtual_op = common dso_local global i64 0, align 8
@MAYBE = common dso_local global i64 0, align 8
@ve_flags = common dso_local global i32 0, align 4
@VE_ALL = common dso_local global i32 0, align 4
@VE_BLOCK = common dso_local global i32 0, align 4
@VIsual_active = common dso_local global i64 0, align 8
@VIsual_mode = common dso_local global i64 0, align 8
@Ctrl_V = common dso_local global i64 0, align 8
@VE_INSERT = common dso_local global i32 0, align 4
@State = common dso_local global i32 0, align 4
@INSERT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @virtual_active() #0 {
  %1 = alloca i32, align 4
  %2 = load i64, i64* @virtual_op, align 8
  %3 = load i64, i64* @MAYBE, align 8
  %4 = icmp ne i64 %2, %3
  br i1 %4, label %5, label %8

5:                                                ; preds = %0
  %6 = load i64, i64* @virtual_op, align 8
  %7 = trunc i64 %6 to i32
  store i32 %7, i32* %1, align 4
  br label %39

8:                                                ; preds = %0
  %9 = load i32, i32* @ve_flags, align 4
  %10 = load i32, i32* @VE_ALL, align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %36, label %12

12:                                               ; preds = %8
  %13 = load i32, i32* @ve_flags, align 4
  %14 = load i32, i32* @VE_BLOCK, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %12
  %18 = load i64, i64* @VIsual_active, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %17
  %21 = load i64, i64* @VIsual_mode, align 8
  %22 = load i64, i64* @Ctrl_V, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %36, label %24

24:                                               ; preds = %20, %17, %12
  %25 = load i32, i32* @ve_flags, align 4
  %26 = load i32, i32* @VE_INSERT, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %24
  %30 = load i32, i32* @State, align 4
  %31 = load i32, i32* @INSERT, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br label %34

34:                                               ; preds = %29, %24
  %35 = phi i1 [ false, %24 ], [ %33, %29 ]
  br label %36

36:                                               ; preds = %34, %20, %8
  %37 = phi i1 [ true, %20 ], [ true, %8 ], [ %35, %34 ]
  %38 = zext i1 %37 to i32
  store i32 %38, i32* %1, align 4
  br label %39

39:                                               ; preds = %36, %5
  %40 = load i32, i32* %1, align 4
  ret i32 %40
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
