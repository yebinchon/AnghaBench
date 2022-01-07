; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/wordpad/extr_print.c_toggle_num_pages.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/wordpad/extr_print.c_toggle_num_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64, i32 }

@IDC_REBAR = common dso_local global i32 0, align 4
@MAX_STRING_LEN = common dso_local global i32 0, align 4
@preview = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@STRING_PREVIEW_ONEPAGE = common dso_local global i32 0, align 4
@STRING_PREVIEW_TWOPAGES = common dso_local global i32 0, align 4
@ID_PREVIEW_NUMPAGES = common dso_local global i32 0, align 4
@IDC_PREVIEW = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @toggle_num_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @toggle_num_pages(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %8 = load i32, i32* %2, align 4
  %9 = load i32, i32* @IDC_REBAR, align 4
  %10 = call i32 @GetDlgItem(i32 %8, i32 %9)
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* @MAX_STRING_LEN, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %4, align 8
  %14 = alloca i32, i64 %12, align 16
  store i64 %12, i64* %5, align 8
  %15 = call i32 @GetModuleHandleW(i32 0)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @preview, i32 0, i32 0), align 8
  %17 = icmp sgt i32 %16, 1
  %18 = zext i1 %17 to i64
  %19 = select i1 %17, i32 1, i32 2
  store i32 %19, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @preview, i32 0, i32 0), align 8
  %20 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @preview, i32 0, i32 1), align 8
  %21 = icmp sgt i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %1
  %23 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @preview, i32 0, i32 2), align 8
  br label %26

24:                                               ; preds = %1
  %25 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @preview, i32 0, i32 0), align 8
  br label %26

26:                                               ; preds = %24, %22
  %27 = phi i32 [ %23, %22 ], [ %25, %24 ]
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp sgt i32 %29, 1
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = load i32, i32* @STRING_PREVIEW_ONEPAGE, align 4
  br label %35

33:                                               ; preds = %26
  %34 = load i32, i32* @STRING_PREVIEW_TWOPAGES, align 4
  br label %35

35:                                               ; preds = %33, %31
  %36 = phi i32 [ %32, %31 ], [ %34, %33 ]
  %37 = load i32, i32* @MAX_STRING_LEN, align 4
  %38 = call i32 @LoadStringW(i32 %28, i32 %36, i32* %14, i32 %37)
  %39 = load i32, i32* %3, align 4
  %40 = load i32, i32* @ID_PREVIEW_NUMPAGES, align 4
  %41 = call i32 @GetDlgItem(i32 %39, i32 %40)
  %42 = call i32 @SetWindowTextW(i32 %41, i32* %14)
  %43 = load i32, i32* %2, align 4
  %44 = load i32, i32* @IDC_PREVIEW, align 4
  %45 = call i32 @GetDlgItem(i32 %43, i32 %44)
  %46 = load i32, i32* @TRUE, align 4
  %47 = call i32 @update_preview_sizes(i32 %45, i32 %46)
  %48 = load i32, i32* %2, align 4
  %49 = call i32 @update_preview(i32 %48)
  %50 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %50)
  ret void
}

declare dso_local i32 @GetDlgItem(i32, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @GetModuleHandleW(i32) #1

declare dso_local i32 @LoadStringW(i32, i32, i32*, i32) #1

declare dso_local i32 @SetWindowTextW(i32, i32*) #1

declare dso_local i32 @update_preview_sizes(i32, i32) #1

declare dso_local i32 @update_preview(i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
