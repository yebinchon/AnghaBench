; ModuleID = '/home/carl/AnghaBench/macvim/src/extr_ex_getln.c_set_cmdspos_cursor.c'
source_filename = "/home/carl/AnghaBench/macvim/src/extr_ex_getln.c_set_cmdspos_cursor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i64 }

@KeyTyped = common dso_local global i64 0, align 8
@Columns = common dso_local global i32 0, align 4
@Rows = common dso_local global i32 0, align 4
@MAXCOL = common dso_local global i32 0, align 4
@ccline = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@has_mbyte = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @set_cmdspos_cursor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_cmdspos_cursor() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = call i32 (...) @set_cmdspos()
  %5 = load i64, i64* @KeyTyped, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %16

7:                                                ; preds = %0
  %8 = load i32, i32* @Columns, align 4
  %9 = load i32, i32* @Rows, align 4
  %10 = mul nsw i32 %8, %9
  store i32 %10, i32* %2, align 4
  %11 = load i32, i32* %2, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %7
  %14 = load i32, i32* @MAXCOL, align 4
  store i32 %14, i32* %2, align 4
  br label %15

15:                                               ; preds = %13, %7
  br label %18

16:                                               ; preds = %0
  %17 = load i32, i32* @MAXCOL, align 4
  store i32 %17, i32* %2, align 4
  br label %18

18:                                               ; preds = %16, %15
  store i32 0, i32* %1, align 4
  br label %19

19:                                               ; preds = %42, %18
  %20 = load i32, i32* %1, align 4
  %21 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ccline, i32 0, i32 0), align 8
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %19
  %24 = load i32, i32* %1, align 4
  %25 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ccline, i32 0, i32 1), align 4
  %26 = icmp slt i32 %24, %25
  br label %27

27:                                               ; preds = %23, %19
  %28 = phi i1 [ false, %19 ], [ %26, %23 ]
  br i1 %28, label %29, label %45

29:                                               ; preds = %27
  %30 = load i32, i32* %1, align 4
  %31 = call i32 @cmdline_charsize(i32 %30)
  store i32 %31, i32* %3, align 4
  %32 = load i32, i32* %3, align 4
  %33 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ccline, i32 0, i32 2), align 8
  %34 = add nsw i32 %33, %32
  store i32 %34, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ccline, i32 0, i32 2), align 8
  %35 = load i32, i32* %2, align 4
  %36 = icmp sge i32 %34, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %29
  %38 = load i32, i32* %3, align 4
  %39 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ccline, i32 0, i32 2), align 8
  %40 = sub nsw i32 %39, %38
  store i32 %40, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ccline, i32 0, i32 2), align 8
  br label %45

41:                                               ; preds = %29
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %1, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %1, align 4
  br label %19

45:                                               ; preds = %37, %27
  ret void
}

declare dso_local i32 @set_cmdspos(...) #1

declare dso_local i32 @cmdline_charsize(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
