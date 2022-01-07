; ModuleID = '/home/carl/AnghaBench/macvim/src/extr_dosinst.c_init_bat_choices.c'
source_filename = "/home/carl/AnghaBench/macvim/src/extr_dosinst.c_init_bat_choices.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64, i32*, i32, i32 }
%struct.TYPE_3__ = type { i8*, i32* }

@bat_text_yes = common dso_local global i32 0, align 4
@choices = common dso_local global %struct.TYPE_4__* null, align 8
@choice_count = common dso_local global i64 0, align 8
@change_main_bat_choice = common dso_local global i32 0, align 4
@TARGET_COUNT = common dso_local global i32 0, align 4
@targets = common dso_local global %struct.TYPE_3__* null, align 8
@has_gvim = common dso_local global i64 0, align 8
@has_vim = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @init_bat_choices to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_bat_choices() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @bat_text_yes, align 4
  %3 = load %struct.TYPE_4__*, %struct.TYPE_4__** @choices, align 8
  %4 = load i64, i64* @choice_count, align 8
  %5 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i64 %4
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* @change_main_bat_choice, align 4
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** @choices, align 8
  %9 = load i64, i64* @choice_count, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i64 %9
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 3
  store i32 %7, i32* %11, align 8
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** @choices, align 8
  %13 = load i64, i64* @choice_count, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i64 %13
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 2
  store i32* null, i32** %15, align 8
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** @choices, align 8
  %17 = load i64, i64* @choice_count, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  store i32 1, i32* %19, align 8
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** @choices, align 8
  %21 = load i64, i64* @choice_count, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  store i64 0, i64* %23, align 8
  %24 = load i64, i64* @choice_count, align 8
  %25 = add i64 %24, 1
  store i64 %25, i64* @choice_count, align 8
  store i32 1, i32* %1, align 4
  br label %26

26:                                               ; preds = %61, %0
  %27 = load i32, i32* %1, align 4
  %28 = load i32, i32* @TARGET_COUNT, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %64

30:                                               ; preds = %26
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** @targets, align 8
  %32 = load i32, i32* %1, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = icmp eq i32* %36, null
  br i1 %37, label %38, label %58

38:                                               ; preds = %30
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** @targets, align 8
  %40 = load i32, i32* %1, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 0
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp eq i32 %47, 103
  br i1 %48, label %49, label %52

49:                                               ; preds = %38
  %50 = load i64, i64* @has_gvim, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %55, label %58

52:                                               ; preds = %38
  %53 = load i64, i64* @has_vim, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %52, %49
  %56 = load i32, i32* %1, align 4
  %57 = call i32 @init_bat_choice(i32 %56)
  br label %60

58:                                               ; preds = %52, %49, %30
  %59 = call i32 (...) @add_dummy_choice()
  br label %60

60:                                               ; preds = %58, %55
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %1, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %1, align 4
  br label %26

64:                                               ; preds = %26
  ret void
}

declare dso_local i32 @init_bat_choice(i32) #1

declare dso_local i32 @add_dummy_choice(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
