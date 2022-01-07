; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_taskdialog.c_taskdialog_init_button.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_taskdialog.c_taskdialog_init_button.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.taskdialog_button_desc = type { i32, i32, i64, i32, i32* }
%struct.taskdialog_template_desc = type { %struct.taskdialog_button_desc*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_5__ = type { i64 }

@DIALOG_BUTTON_WIDTH = common dso_local global i32 0, align 4
@DIALOG_SPACING = common dso_local global i32 0, align 4
@COMCTL32_hModule = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.taskdialog_button_desc*, %struct.taskdialog_template_desc*, i32, i32*, i64)* @taskdialog_init_button to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @taskdialog_init_button(%struct.taskdialog_button_desc* %0, %struct.taskdialog_template_desc* %1, i32 %2, i32* %3, i64 %4) #0 {
  %6 = alloca %struct.taskdialog_button_desc*, align 8
  %7 = alloca %struct.taskdialog_template_desc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_5__, align 8
  store %struct.taskdialog_button_desc* %0, %struct.taskdialog_button_desc** %6, align 8
  store %struct.taskdialog_template_desc* %1, %struct.taskdialog_template_desc** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i64 %4, i64* %10, align 8
  %12 = load %struct.taskdialog_template_desc*, %struct.taskdialog_template_desc** %7, align 8
  %13 = load i32*, i32** %9, align 8
  %14 = load i64, i64* %10, align 8
  %15 = call i32 @taskdialog_get_text_extent(%struct.taskdialog_template_desc* %12, i32* %13, i64 %14, %struct.TYPE_5__* %11)
  %16 = load i32, i32* %8, align 4
  %17 = load %struct.taskdialog_button_desc*, %struct.taskdialog_button_desc** %6, align 8
  %18 = getelementptr inbounds %struct.taskdialog_button_desc, %struct.taskdialog_button_desc* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 8
  %19 = load i32*, i32** %9, align 8
  %20 = load %struct.taskdialog_button_desc*, %struct.taskdialog_button_desc** %6, align 8
  %21 = getelementptr inbounds %struct.taskdialog_button_desc, %struct.taskdialog_button_desc* %20, i32 0, i32 4
  store i32* %19, i32** %21, align 8
  %22 = load i32, i32* @DIALOG_BUTTON_WIDTH, align 4
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i32, i32* @DIALOG_SPACING, align 4
  %26 = mul nsw i32 %25, 2
  %27 = sext i32 %26 to i64
  %28 = add nsw i64 %24, %27
  %29 = call i32 @max(i32 %22, i64 %28)
  %30 = load %struct.taskdialog_button_desc*, %struct.taskdialog_button_desc** %6, align 8
  %31 = getelementptr inbounds %struct.taskdialog_button_desc, %struct.taskdialog_button_desc* %30, i32 0, i32 3
  store i32 %29, i32* %31, align 8
  %32 = load %struct.taskdialog_button_desc*, %struct.taskdialog_button_desc** %6, align 8
  %33 = getelementptr inbounds %struct.taskdialog_button_desc, %struct.taskdialog_button_desc* %32, i32 0, i32 2
  store i64 0, i64* %33, align 8
  %34 = load i64, i64* %10, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %5
  %37 = load %struct.taskdialog_template_desc*, %struct.taskdialog_template_desc** %7, align 8
  %38 = getelementptr inbounds %struct.taskdialog_template_desc, %struct.taskdialog_template_desc* %37, i32 0, i32 1
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  br label %44

42:                                               ; preds = %5
  %43 = load i32, i32* @COMCTL32_hModule, align 4
  br label %44

44:                                               ; preds = %42, %36
  %45 = phi i32 [ %41, %36 ], [ %43, %42 ]
  %46 = load %struct.taskdialog_button_desc*, %struct.taskdialog_button_desc** %6, align 8
  %47 = getelementptr inbounds %struct.taskdialog_button_desc, %struct.taskdialog_button_desc* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 4
  %48 = load i32, i32* %8, align 4
  %49 = load %struct.taskdialog_template_desc*, %struct.taskdialog_template_desc** %7, align 8
  %50 = getelementptr inbounds %struct.taskdialog_template_desc, %struct.taskdialog_template_desc* %49, i32 0, i32 1
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = icmp eq i32 %48, %53
  br i1 %54, label %55, label %59

55:                                               ; preds = %44
  %56 = load %struct.taskdialog_button_desc*, %struct.taskdialog_button_desc** %6, align 8
  %57 = load %struct.taskdialog_template_desc*, %struct.taskdialog_template_desc** %7, align 8
  %58 = getelementptr inbounds %struct.taskdialog_template_desc, %struct.taskdialog_template_desc* %57, i32 0, i32 0
  store %struct.taskdialog_button_desc* %56, %struct.taskdialog_button_desc** %58, align 8
  br label %59

59:                                               ; preds = %55, %44
  ret void
}

declare dso_local i32 @taskdialog_get_text_extent(%struct.taskdialog_template_desc*, i32*, i64, %struct.TYPE_5__*) #1

declare dso_local i32 @max(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
