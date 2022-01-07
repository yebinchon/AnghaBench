; ModuleID = '/home/carl/AnghaBench/macvim/src/extr_gui_gtk_x11.c_is_cjk_font.c'
source_filename = "/home/carl/AnghaBench/macvim/src/extr_gui_gtk_x11.c_is_cjk_font.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@is_cjk_font.cjk_langs = internal constant [5 x i8*] [i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [6 x i8] c"zh_CN\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"zh_TW\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"zh_HK\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"ja\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"ko\00", align 1
@FALSE = common dso_local global i32 0, align 4
@gui = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@PANGO_COVERAGE_EXACT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @is_cjk_font to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_cjk_font(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %9 = load i32, i32* @FALSE, align 4
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gui, i32 0, i32 0), align 4
  %11 = load i32*, i32** %3, align 8
  %12 = call i32* @pango_context_load_font(i32 %10, i32* %11)
  store i32* %12, i32** %4, align 8
  %13 = load i32*, i32** %4, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* @FALSE, align 4
  store i32 %16, i32* %2, align 4
  br label %64

17:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %18

18:                                               ; preds = %57, %17
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %18
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @G_N_ELEMENTS(i8** getelementptr inbounds ([5 x i8*], [5 x i8*]* @is_cjk_font.cjk_langs, i64 0, i64 0))
  %24 = icmp ult i32 %22, %23
  br label %25

25:                                               ; preds = %21, %18
  %26 = phi i1 [ false, %18 ], [ %24, %21 ]
  br i1 %26, label %27, label %60

27:                                               ; preds = %25
  %28 = load i32*, i32** %4, align 8
  %29 = load i32, i32* %5, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds [5 x i8*], [5 x i8*]* @is_cjk_font.cjk_langs, i64 0, i64 %30
  %32 = load i8*, i8** %31, align 8
  %33 = call i32 @pango_language_from_string(i8* %32)
  %34 = call i32* @pango_font_get_coverage(i32* %28, i32 %33)
  store i32* %34, i32** %7, align 8
  %35 = load i32*, i32** %7, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %37, label %56

37:                                               ; preds = %27
  %38 = load i32, i32* %5, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds [5 x i8*], [5 x i8*]* @is_cjk_font.cjk_langs, i64 0, i64 %39
  %41 = load i8*, i8** %40, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 0
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp eq i32 %44, 107
  %46 = zext i1 %45 to i64
  %47 = select i1 %45, i32 44032, i32 19968
  store i32 %47, i32* %8, align 4
  %48 = load i32*, i32** %7, align 8
  %49 = load i32, i32* %8, align 4
  %50 = call i64 @pango_coverage_get(i32* %48, i32 %49)
  %51 = load i64, i64* @PANGO_COVERAGE_EXACT, align 8
  %52 = icmp eq i64 %50, %51
  %53 = zext i1 %52 to i32
  store i32 %53, i32* %6, align 4
  %54 = load i32*, i32** %7, align 8
  %55 = call i32 @pango_coverage_unref(i32* %54)
  br label %56

56:                                               ; preds = %37, %27
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %5, align 4
  %59 = add i32 %58, 1
  store i32 %59, i32* %5, align 4
  br label %18

60:                                               ; preds = %25
  %61 = load i32*, i32** %4, align 8
  %62 = call i32 @g_object_unref(i32* %61)
  %63 = load i32, i32* %6, align 4
  store i32 %63, i32* %2, align 4
  br label %64

64:                                               ; preds = %60, %15
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

declare dso_local i32* @pango_context_load_font(i32, i32*) #1

declare dso_local i32 @G_N_ELEMENTS(i8**) #1

declare dso_local i32* @pango_font_get_coverage(i32*, i32) #1

declare dso_local i32 @pango_language_from_string(i8*) #1

declare dso_local i64 @pango_coverage_get(i32*, i32) #1

declare dso_local i32 @pango_coverage_unref(i32*) #1

declare dso_local i32 @g_object_unref(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
