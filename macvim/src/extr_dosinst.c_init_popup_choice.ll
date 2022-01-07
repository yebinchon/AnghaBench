; ModuleID = '/home/carl/AnghaBench/macvim/src/extr_dosinst.c_init_popup_choice.c'
source_filename = "/home/carl/AnghaBench/macvim/src/extr_dosinst.c_init_popup_choice.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32*, i32 (i64)* }
%struct.stat = type { i32 }

@has_gvim = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [12 x i8] c"gvimext.dll\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"gvimext/gvimext.dll\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"regedit.exe\00", align 1
@choices = common dso_local global %struct.TYPE_2__* null, align 8
@choice_count = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @init_popup_choice to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_popup_choice() #0 {
  %1 = alloca %struct.stat, align 4
  %2 = load i64, i64* @has_gvim, align 8
  %3 = icmp ne i64 %2, 0
  br i1 %3, label %4, label %30

4:                                                ; preds = %0
  %5 = call i64 @stat(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), %struct.stat* %1)
  %6 = icmp sge i64 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %4
  %8 = call i64 @stat(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), %struct.stat* %1)
  %9 = icmp sge i64 %8, 0
  br i1 %9, label %10, label %30

10:                                               ; preds = %7, %4
  %11 = call i32* @searchpath(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %30

13:                                               ; preds = %10
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** @choices, align 8
  %15 = load i64, i64* @choice_count, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 2
  store i32 (i64)* @change_popup_choice, i32 (i64)** %17, align 8
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** @choices, align 8
  %19 = load i64, i64* @choice_count, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  store i32* null, i32** %21, align 8
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** @choices, align 8
  %23 = load i64, i64* @choice_count, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  store i32 1, i32* %25, align 8
  %26 = load i64, i64* @choice_count, align 8
  %27 = call i32 @change_popup_choice(i64 %26)
  %28 = load i64, i64* @choice_count, align 8
  %29 = add i64 %28, 1
  store i64 %29, i64* @choice_count, align 8
  br label %32

30:                                               ; preds = %10, %7, %0
  %31 = call i32 (...) @add_dummy_choice()
  br label %32

32:                                               ; preds = %30, %13
  ret void
}

declare dso_local i64 @stat(i8*, %struct.stat*) #1

declare dso_local i32* @searchpath(i8*) #1

declare dso_local i32 @change_popup_choice(i64) #1

declare dso_local i32 @add_dummy_choice(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
