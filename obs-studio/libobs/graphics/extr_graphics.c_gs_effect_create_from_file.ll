; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_graphics.c_gs_effect_create_from_file.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_graphics.c_gs_effect_create_from_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [27 x i8] c"gs_effect_create_from_file\00", align 1
@LOG_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Could not load effect file '%s'\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @gs_effect_create_from_file(i8* %0, i8** %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  store i8* %0, i8** %4, align 8
  store i8** %1, i8*** %5, align 8
  store i32* null, i32** %7, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = call i32 @gs_valid_p(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i8* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store i32* null, i32** %3, align 8
  br label %36

12:                                               ; preds = %2
  %13 = load i8*, i8** %4, align 8
  %14 = call i32* @find_cached_effect(i8* %13)
  store i32* %14, i32** %7, align 8
  %15 = load i32*, i32** %7, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %12
  %18 = load i32*, i32** %7, align 8
  store i32* %18, i32** %3, align 8
  br label %36

19:                                               ; preds = %12
  %20 = load i8*, i8** %4, align 8
  %21 = call i8* @os_quick_read_utf8_file(i8* %20)
  store i8* %21, i8** %6, align 8
  %22 = load i8*, i8** %6, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %28, label %24

24:                                               ; preds = %19
  %25 = load i32, i32* @LOG_ERROR, align 4
  %26 = load i8*, i8** %4, align 8
  %27 = call i32 @blog(i32 %25, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i8* %26)
  store i32* null, i32** %3, align 8
  br label %36

28:                                               ; preds = %19
  %29 = load i8*, i8** %6, align 8
  %30 = load i8*, i8** %4, align 8
  %31 = load i8**, i8*** %5, align 8
  %32 = call i32* @gs_effect_create(i8* %29, i8* %30, i8** %31)
  store i32* %32, i32** %7, align 8
  %33 = load i8*, i8** %6, align 8
  %34 = call i32 @bfree(i8* %33)
  %35 = load i32*, i32** %7, align 8
  store i32* %35, i32** %3, align 8
  br label %36

36:                                               ; preds = %28, %24, %17, %11
  %37 = load i32*, i32** %3, align 8
  ret i32* %37
}

declare dso_local i32 @gs_valid_p(i8*, i8*) #1

declare dso_local i32* @find_cached_effect(i8*) #1

declare dso_local i8* @os_quick_read_utf8_file(i8*) #1

declare dso_local i32 @blog(i32, i8*, i8*) #1

declare dso_local i32* @gs_effect_create(i8*, i8*, i8**) #1

declare dso_local i32 @bfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
