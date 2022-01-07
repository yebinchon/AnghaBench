; ModuleID = '/home/carl/AnghaBench/radare2/libr/core/extr_panels.c___search_strings.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/core/extr_panels.c___search_strings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PANEL_TITLE_STRINGS_BIN = common dso_local global i8* null, align 8
@PANEL_TITLE_STRINGS_DATA = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [17 x i8] c"Search Strings: \00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%s~%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @__search_strings(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i8*, i8** @PANEL_TITLE_STRINGS_BIN, align 8
  br label %15

13:                                               ; preds = %2
  %14 = load i8*, i8** @PANEL_TITLE_STRINGS_DATA, align 8
  br label %15

15:                                               ; preds = %13, %11
  %16 = phi i8* [ %12, %11 ], [ %14, %13 ]
  store i8* %16, i8** %5, align 8
  %17 = load i32*, i32** %3, align 8
  %18 = call i8* @__show_status_input(i32* %17, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  store i8* %18, i8** %6, align 8
  %19 = load i32*, i32** %3, align 8
  %20 = load i8*, i8** %5, align 8
  %21 = call i8* @__search_db(i32* %19, i8* %20)
  store i8* %21, i8** %7, align 8
  %22 = load i8*, i8** %7, align 8
  %23 = load i8*, i8** %6, align 8
  %24 = call i8* @r_str_newf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %22, i8* %23)
  store i8* %24, i8** %8, align 8
  %25 = load i8*, i8** %7, align 8
  %26 = call i32 @free(i8* %25)
  %27 = load i8*, i8** %8, align 8
  ret i8* %27
}

declare dso_local i8* @__show_status_input(i32*, i8*) #1

declare dso_local i8* @__search_db(i32*, i8*) #1

declare dso_local i8* @r_str_newf(i8*, i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
