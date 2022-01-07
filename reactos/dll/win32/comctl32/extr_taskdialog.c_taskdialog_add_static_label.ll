; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_taskdialog.c_taskdialog_add_static_label.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_taskdialog.c_taskdialog_add_static_label.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.taskdialog_template_desc = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i64, i32 }

@TRUE = common dso_local global i32 0, align 4
@DIALOG_SPACING = common dso_local global i64 0, align 8
@WC_STATICW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.taskdialog_template_desc*, i32, i32*)* @taskdialog_add_static_label to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @taskdialog_add_static_label(%struct.taskdialog_template_desc* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.taskdialog_template_desc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_5__, align 8
  store %struct.taskdialog_template_desc* %0, %struct.taskdialog_template_desc** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %10 = load i32*, i32** %7, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %54

13:                                               ; preds = %3
  %14 = load %struct.taskdialog_template_desc*, %struct.taskdialog_template_desc** %5, align 8
  %15 = load i32*, i32** %7, align 8
  %16 = load i32, i32* @TRUE, align 4
  %17 = call i32 @taskdialog_get_text_extent(%struct.taskdialog_template_desc* %14, i32* %15, i32 %16, %struct.TYPE_5__* %9)
  %18 = load i64, i64* @DIALOG_SPACING, align 8
  %19 = load %struct.taskdialog_template_desc*, %struct.taskdialog_template_desc** %5, align 8
  %20 = getelementptr inbounds %struct.taskdialog_template_desc, %struct.taskdialog_template_desc* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = sext i32 %21 to i64
  %23 = add nsw i64 %22, %18
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* %20, align 8
  %25 = load %struct.taskdialog_template_desc*, %struct.taskdialog_template_desc** %5, align 8
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @WC_STATICW, align 4
  %28 = load %struct.taskdialog_template_desc*, %struct.taskdialog_template_desc** %5, align 8
  %29 = getelementptr inbounds %struct.taskdialog_template_desc, %struct.taskdialog_template_desc* %28, i32 0, i32 1
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32*, i32** %7, align 8
  %34 = load i64, i64* @DIALOG_SPACING, align 8
  %35 = load %struct.taskdialog_template_desc*, %struct.taskdialog_template_desc** %5, align 8
  %36 = getelementptr inbounds %struct.taskdialog_template_desc, %struct.taskdialog_template_desc* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @taskdialog_add_control(%struct.taskdialog_template_desc* %25, i32 %26, i32 %27, i32 %32, i32* %33, i32 0, i64 %34, i32 %37, i32 %39, i64 %41)
  store i32 %42, i32* %8, align 4
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @DIALOG_SPACING, align 8
  %46 = add nsw i64 %44, %45
  %47 = load %struct.taskdialog_template_desc*, %struct.taskdialog_template_desc** %5, align 8
  %48 = getelementptr inbounds %struct.taskdialog_template_desc, %struct.taskdialog_template_desc* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = sext i32 %49 to i64
  %51 = add nsw i64 %50, %46
  %52 = trunc i64 %51 to i32
  store i32 %52, i32* %48, align 8
  %53 = load i32, i32* %8, align 4
  store i32 %53, i32* %4, align 4
  br label %54

54:                                               ; preds = %13, %12
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

declare dso_local i32 @taskdialog_get_text_extent(%struct.taskdialog_template_desc*, i32*, i32, %struct.TYPE_5__*) #1

declare dso_local i32 @taskdialog_add_control(%struct.taskdialog_template_desc*, i32, i32, i32, i32*, i32, i64, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
