; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/win-capture/extr_window-helpers.c_build_window_strings.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/win-capture/extr_window-helpers.c_build_window_strings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @build_window_strings(i8* %0, i8** %1, i8** %2, i8** %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i8**, align 8
  store i8* %0, i8** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i8** %2, i8*** %7, align 8
  store i8** %3, i8*** %8, align 8
  %10 = load i8**, i8*** %6, align 8
  store i8* null, i8** %10, align 8
  %11 = load i8**, i8*** %7, align 8
  store i8* null, i8** %11, align 8
  %12 = load i8**, i8*** %8, align 8
  store i8* null, i8** %12, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %4
  br label %55

16:                                               ; preds = %4
  %17 = load i8*, i8** %5, align 8
  %18 = call i8** @strlist_split(i8* %17, i8 signext 58, i32 1)
  store i8** %18, i8*** %9, align 8
  %19 = load i8**, i8*** %9, align 8
  %20 = icmp ne i8** %19, null
  br i1 %20, label %21, label %52

21:                                               ; preds = %16
  %22 = load i8**, i8*** %9, align 8
  %23 = getelementptr inbounds i8*, i8** %22, i64 0
  %24 = load i8*, i8** %23, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %52

26:                                               ; preds = %21
  %27 = load i8**, i8*** %9, align 8
  %28 = getelementptr inbounds i8*, i8** %27, i64 1
  %29 = load i8*, i8** %28, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %52

31:                                               ; preds = %26
  %32 = load i8**, i8*** %9, align 8
  %33 = getelementptr inbounds i8*, i8** %32, i64 2
  %34 = load i8*, i8** %33, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %36, label %52

36:                                               ; preds = %31
  %37 = load i8**, i8*** %9, align 8
  %38 = getelementptr inbounds i8*, i8** %37, i64 0
  %39 = load i8*, i8** %38, align 8
  %40 = call i8* @decode_str(i8* %39)
  %41 = load i8**, i8*** %7, align 8
  store i8* %40, i8** %41, align 8
  %42 = load i8**, i8*** %9, align 8
  %43 = getelementptr inbounds i8*, i8** %42, i64 1
  %44 = load i8*, i8** %43, align 8
  %45 = call i8* @decode_str(i8* %44)
  %46 = load i8**, i8*** %6, align 8
  store i8* %45, i8** %46, align 8
  %47 = load i8**, i8*** %9, align 8
  %48 = getelementptr inbounds i8*, i8** %47, i64 2
  %49 = load i8*, i8** %48, align 8
  %50 = call i8* @decode_str(i8* %49)
  %51 = load i8**, i8*** %8, align 8
  store i8* %50, i8** %51, align 8
  br label %52

52:                                               ; preds = %36, %31, %26, %21, %16
  %53 = load i8**, i8*** %9, align 8
  %54 = call i32 @strlist_free(i8** %53)
  br label %55

55:                                               ; preds = %52, %15
  ret void
}

declare dso_local i8** @strlist_split(i8*, i8 signext, i32) #1

declare dso_local i8* @decode_str(i8*) #1

declare dso_local i32 @strlist_free(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
