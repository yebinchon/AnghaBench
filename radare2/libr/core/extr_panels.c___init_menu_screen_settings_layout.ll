; ModuleID = '/home/carl/AnghaBench/radare2/libr/core/extr_panels.c___init_menu_screen_settings_layout.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/core/extr_panels.c___init_menu_screen_settings_layout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@menus_settings_screen = common dso_local global i8** null, align 8
@.str = private unnamed_addr constant [3 x i8] c": \00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"scr.color\00", align 1
@__config_value_cb = common dso_local global i32 0, align 4
@__config_toggle_cb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*)* @__init_menu_screen_settings_layout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__init_menu_screen_settings_layout(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = bitcast i8* %9 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %10, %struct.TYPE_3__** %5, align 8
  %11 = call i32* @r_strbuf_new(i32* null)
  store i32* %11, i32** %6, align 8
  store i32 0, i32* %7, align 4
  br label %12

12:                                               ; preds = %58, %2
  %13 = load i8**, i8*** @menus_settings_screen, align 8
  %14 = load i32, i32* %7, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i8*, i8** %13, i64 %15
  %17 = load i8*, i8** %16, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %61

19:                                               ; preds = %12
  %20 = load i8**, i8*** @menus_settings_screen, align 8
  %21 = load i32, i32* %7, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i8*, i8** %20, i64 %22
  %24 = load i8*, i8** %23, align 8
  store i8* %24, i8** %8, align 8
  %25 = load i32*, i32** %6, align 8
  %26 = load i8*, i8** %8, align 8
  %27 = call i32 @r_strbuf_set(i32* %25, i8* %26)
  %28 = load i32*, i32** %6, align 8
  %29 = call i32 @r_strbuf_append(i32* %28, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %30 = load i32*, i32** %6, align 8
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i8*, i8** %8, align 8
  %35 = call i8* @r_config_get(i32 %33, i8* %34)
  %36 = call i32 @r_strbuf_append(i32* %30, i8* %35)
  %37 = load i8**, i8*** @menus_settings_screen, align 8
  %38 = load i32, i32* %7, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8*, i8** %37, i64 %39
  %41 = load i8*, i8** %40, align 8
  %42 = call i32 @strcmp(i8* %41, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %51, label %44

44:                                               ; preds = %19
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %46 = load i8*, i8** %4, align 8
  %47 = load i32*, i32** %6, align 8
  %48 = call i32 @r_strbuf_get(i32* %47)
  %49 = load i32, i32* @__config_value_cb, align 4
  %50 = call i32 @__add_menu(%struct.TYPE_3__* %45, i8* %46, i32 %48, i32 %49)
  br label %58

51:                                               ; preds = %19
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %53 = load i8*, i8** %4, align 8
  %54 = load i32*, i32** %6, align 8
  %55 = call i32 @r_strbuf_get(i32* %54)
  %56 = load i32, i32* @__config_toggle_cb, align 4
  %57 = call i32 @__add_menu(%struct.TYPE_3__* %52, i8* %53, i32 %55, i32 %56)
  br label %58

58:                                               ; preds = %51, %44
  %59 = load i32, i32* %7, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %7, align 4
  br label %12

61:                                               ; preds = %12
  %62 = load i32*, i32** %6, align 8
  %63 = call i32 @r_strbuf_free(i32* %62)
  ret void
}

declare dso_local i32* @r_strbuf_new(i32*) #1

declare dso_local i32 @r_strbuf_set(i32*, i8*) #1

declare dso_local i32 @r_strbuf_append(i32*, i8*) #1

declare dso_local i8* @r_config_get(i32, i8*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @__add_menu(%struct.TYPE_3__*, i8*, i32, i32) #1

declare dso_local i32 @r_strbuf_get(i32*) #1

declare dso_local i32 @r_strbuf_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
