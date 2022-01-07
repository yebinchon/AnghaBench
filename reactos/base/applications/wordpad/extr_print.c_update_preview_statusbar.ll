; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/wordpad/extr_print.c_update_preview_statusbar.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/wordpad/extr_print.c_update_preview_statusbar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64 }

@IDC_STATUSBAR = common dso_local global i32 0, align 4
@MAX_STRING_LEN = common dso_local global i32 0, align 4
@preview = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@update_preview_statusbar.fmt = internal constant [4 x i8] c" %d\00", align 1
@STRING_PREVIEW_PAGE = common dso_local global i32 0, align 4
@update_preview_statusbar.fmt.1 = internal constant [7 x i8] c" %d-%d\00", align 1
@STRING_PREVIEW_PAGES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @update_preview_statusbar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_preview_statusbar(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %8 = load i32, i32* %2, align 4
  %9 = load i32, i32* @IDC_STATUSBAR, align 4
  %10 = call i32 @GetDlgItem(i32 %8, i32 %9)
  store i32 %10, i32* %3, align 4
  %11 = call i32 @GetModuleHandleW(i32 0)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* @MAX_STRING_LEN, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %6, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %7, align 8
  store i8* %15, i8** %5, align 8
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @preview, i32 0, i32 0), align 8
  %17 = icmp slt i32 %16, 2
  br i1 %17, label %22, label %18

18:                                               ; preds = %1
  %19 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @preview, i32 0, i32 1), align 8
  %20 = call i64 @is_last_preview_page(i64 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %33

22:                                               ; preds = %18, %1
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @STRING_PREVIEW_PAGE, align 4
  %25 = load i32, i32* @MAX_STRING_LEN, align 4
  %26 = call i32 @LoadStringW(i32 %23, i32 %24, i8* %15, i32 %25)
  %27 = load i8*, i8** %5, align 8
  %28 = sext i32 %26 to i64
  %29 = getelementptr inbounds i8, i8* %27, i64 %28
  store i8* %29, i8** %5, align 8
  %30 = load i8*, i8** %5, align 8
  %31 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @preview, i32 0, i32 1), align 8
  %32 = call i32 (i8*, i8*, i64, ...) @wsprintfW(i8* %30, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @update_preview_statusbar.fmt, i64 0, i64 0), i64 %31)
  br label %46

33:                                               ; preds = %18
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* @STRING_PREVIEW_PAGES, align 4
  %36 = load i32, i32* @MAX_STRING_LEN, align 4
  %37 = call i32 @LoadStringW(i32 %34, i32 %35, i8* %15, i32 %36)
  %38 = load i8*, i8** %5, align 8
  %39 = sext i32 %37 to i64
  %40 = getelementptr inbounds i8, i8* %38, i64 %39
  store i8* %40, i8** %5, align 8
  %41 = load i8*, i8** %5, align 8
  %42 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @preview, i32 0, i32 1), align 8
  %43 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @preview, i32 0, i32 1), align 8
  %44 = add nsw i64 %43, 1
  %45 = call i32 (i8*, i8*, i64, ...) @wsprintfW(i8* %41, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @update_preview_statusbar.fmt.1, i64 0, i64 0), i64 %42, i64 %44)
  br label %46

46:                                               ; preds = %33, %22
  %47 = load i32, i32* %3, align 4
  %48 = call i32 @SetWindowTextW(i32 %47, i8* %15)
  %49 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %49)
  ret void
}

declare dso_local i32 @GetDlgItem(i32, i32) #1

declare dso_local i32 @GetModuleHandleW(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i64 @is_last_preview_page(i64) #1

declare dso_local i32 @LoadStringW(i32, i32, i8*, i32) #1

declare dso_local i32 @wsprintfW(i8*, i8*, i64, ...) #1

declare dso_local i32 @SetWindowTextW(i32, i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
