; ModuleID = '/home/carl/AnghaBench/openwrt/scripts/config/lxdialog/extr_textbox.c_print_page.c'
source_filename = "/home/carl/AnghaBench/openwrt/scripts/config/lxdialog/extr_textbox.c_print_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@page = common dso_local global i8* null, align 8
@buf = common dso_local global i32 0, align 4
@page_length = common dso_local global i64 0, align 8
@end_reached = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32, i32 (i32, i8*, i8*, i8*)*, i8*)* @print_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_page(i32* %0, i32 %1, i32 %2, i32 (i32, i8*, i8*, i8*)* %3, i8* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32 (i32, i8*, i8*, i8*)*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 (i32, i8*, i8*, i8*)* %3, i32 (i32, i8*, i8*, i8*)** %9, align 8
  store i8* %4, i8** %10, align 8
  store i32 0, i32* %12, align 4
  %14 = load i32 (i32, i8*, i8*, i8*)*, i32 (i32, i8*, i8*, i8*)** %9, align 8
  %15 = icmp ne i32 (i32, i8*, i8*, i8*)* %14, null
  br i1 %15, label %16, label %44

16:                                               ; preds = %5
  store i32 0, i32* %11, align 4
  br label %17

17:                                               ; preds = %23, %16
  %18 = load i32, i32* %11, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %26

21:                                               ; preds = %17
  %22 = call i32 (...) @get_line()
  br label %23

23:                                               ; preds = %21
  %24 = load i32, i32* %11, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %11, align 4
  br label %17

26:                                               ; preds = %17
  %27 = load i8*, i8** @page, align 8
  store i8* %27, i8** %13, align 8
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @back_lines(i32 %28)
  %30 = load i32 (i32, i8*, i8*, i8*)*, i32 (i32, i8*, i8*, i8*)** %9, align 8
  %31 = load i32, i32* @buf, align 4
  %32 = load i8*, i8** @page, align 8
  %33 = load i32, i32* @buf, align 4
  %34 = sext i32 %33 to i64
  %35 = sub i64 0, %34
  %36 = getelementptr inbounds i8, i8* %32, i64 %35
  %37 = load i8*, i8** %13, align 8
  %38 = load i32, i32* @buf, align 4
  %39 = sext i32 %38 to i64
  %40 = sub i64 0, %39
  %41 = getelementptr inbounds i8, i8* %37, i64 %40
  %42 = load i8*, i8** %10, align 8
  %43 = call i32 %30(i32 %31, i8* %36, i8* %41, i8* %42)
  br label %44

44:                                               ; preds = %26, %5
  store i64 0, i64* @page_length, align 8
  store i32 0, i32* %11, align 4
  br label %45

45:                                               ; preds = %67, %44
  %46 = load i32, i32* %11, align 4
  %47 = load i32, i32* %7, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %70

49:                                               ; preds = %45
  %50 = load i32*, i32** %6, align 8
  %51 = load i32, i32* %11, align 4
  %52 = load i32, i32* %8, align 4
  %53 = call i32 @print_line(i32* %50, i32 %51, i32 %52)
  %54 = load i32, i32* %12, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %49
  %57 = load i64, i64* @page_length, align 8
  %58 = add nsw i64 %57, 1
  store i64 %58, i64* @page_length, align 8
  br label %59

59:                                               ; preds = %56, %49
  %60 = load i64, i64* @end_reached, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %59
  %63 = load i32, i32* %12, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %62
  store i32 1, i32* %12, align 4
  br label %66

66:                                               ; preds = %65, %62, %59
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %11, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %11, align 4
  br label %45

70:                                               ; preds = %45
  %71 = load i32*, i32** %6, align 8
  %72 = call i32 @wnoutrefresh(i32* %71)
  ret void
}

declare dso_local i32 @get_line(...) #1

declare dso_local i32 @back_lines(i32) #1

declare dso_local i32 @print_line(i32*, i32, i32) #1

declare dso_local i32 @wnoutrefresh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
