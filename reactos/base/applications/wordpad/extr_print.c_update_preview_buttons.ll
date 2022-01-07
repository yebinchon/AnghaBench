; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/wordpad/extr_print.c_update_preview_buttons.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/wordpad/extr_print.c_update_preview_buttons.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }

@IDC_REBAR = common dso_local global i32 0, align 4
@ID_PREVIEW_PREVPAGE = common dso_local global i32 0, align 4
@preview = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@ID_PREVIEW_NEXTPAGE = common dso_local global i32 0, align 4
@ID_PREVIEW_NUMPAGES = common dso_local global i32 0, align 4
@ID_PREVIEW_ZOOMIN = common dso_local global i32 0, align 4
@ID_PREVIEW_ZOOMOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @update_preview_buttons to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_preview_buttons(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = load i32, i32* @IDC_REBAR, align 4
  %6 = call i32 @GetDlgItem(i32 %4, i32 %5)
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @ID_PREVIEW_PREVPAGE, align 4
  %9 = call i32 @GetDlgItem(i32 %7, i32 %8)
  %10 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @preview, i32 0, i32 0), align 4
  %11 = icmp sgt i32 %10, 1
  %12 = zext i1 %11 to i32
  %13 = call i32 @EnableWindow(i32 %9, i32 %12)
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* @ID_PREVIEW_NEXTPAGE, align 4
  %16 = call i32 @GetDlgItem(i32 %14, i32 %15)
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @preview, i32 0, i32 0), align 4
  %18 = call i32 @is_last_preview_page(i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %28, label %20

20:                                               ; preds = %1
  %21 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @preview, i32 0, i32 0), align 4
  %22 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @preview, i32 0, i32 1), align 4
  %23 = add nsw i32 %21, %22
  %24 = sub nsw i32 %23, 1
  %25 = call i32 @is_last_preview_page(i32 %24)
  %26 = icmp ne i32 %25, 0
  %27 = xor i1 %26, true
  br label %28

28:                                               ; preds = %20, %1
  %29 = phi i1 [ false, %1 ], [ %27, %20 ]
  %30 = zext i1 %29 to i32
  %31 = call i32 @EnableWindow(i32 %16, i32 %30)
  %32 = load i32, i32* %3, align 4
  %33 = load i32, i32* @ID_PREVIEW_NUMPAGES, align 4
  %34 = call i32 @GetDlgItem(i32 %32, i32 %33)
  %35 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @preview, i32 0, i32 1), align 4
  %36 = icmp sgt i32 %35, 1
  br i1 %36, label %45, label %37

37:                                               ; preds = %28
  %38 = call i32 @is_last_preview_page(i32 1)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %37
  %41 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @preview, i32 0, i32 2), align 4
  %42 = icmp eq i32 %41, 0
  br label %43

43:                                               ; preds = %40, %37
  %44 = phi i1 [ false, %37 ], [ %42, %40 ]
  br label %45

45:                                               ; preds = %43, %28
  %46 = phi i1 [ true, %28 ], [ %44, %43 ]
  %47 = zext i1 %46 to i32
  %48 = call i32 @EnableWindow(i32 %34, i32 %47)
  %49 = load i32, i32* %3, align 4
  %50 = load i32, i32* @ID_PREVIEW_ZOOMIN, align 4
  %51 = call i32 @GetDlgItem(i32 %49, i32 %50)
  %52 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @preview, i32 0, i32 2), align 4
  %53 = icmp slt i32 %52, 2
  %54 = zext i1 %53 to i32
  %55 = call i32 @EnableWindow(i32 %51, i32 %54)
  %56 = load i32, i32* %3, align 4
  %57 = load i32, i32* @ID_PREVIEW_ZOOMOUT, align 4
  %58 = call i32 @GetDlgItem(i32 %56, i32 %57)
  %59 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @preview, i32 0, i32 2), align 4
  %60 = icmp sgt i32 %59, 0
  %61 = zext i1 %60 to i32
  %62 = call i32 @EnableWindow(i32 %58, i32 %61)
  ret void
}

declare dso_local i32 @GetDlgItem(i32, i32) #1

declare dso_local i32 @EnableWindow(i32, i32) #1

declare dso_local i32 @is_last_preview_page(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
