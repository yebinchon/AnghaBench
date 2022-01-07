; ModuleID = '/home/carl/AnghaBench/radare2/libr/core/extr_panels.c___create_default_panels.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/core/extr_panels.c___create_default_panels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64, i64 }

@panels_static = common dso_local global i8** null, align 8
@PANEL_LAYOUT_DEFAULT_DYNAMIC = common dso_local global i64 0, align 8
@panels_dynamic = common dso_local global i8** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__create_default_panels(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %2, align 8
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  store %struct.TYPE_8__* %11, %struct.TYPE_8__** %3, align 8
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 1
  store i64 0, i64* %13, align 8
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %15 = call i32 @__set_curnode(%struct.TYPE_9__* %14, i32 0)
  %16 = load i8**, i8*** @panels_static, align 8
  store i8** %16, i8*** %4, align 8
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @PANEL_LAYOUT_DEFAULT_DYNAMIC, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %1
  %23 = load i8**, i8*** @panels_dynamic, align 8
  store i8** %23, i8*** %4, align 8
  br label %24

24:                                               ; preds = %22, %1
  store i32 0, i32* %5, align 4
  br label %25

25:                                               ; preds = %41, %24
  %26 = load i8**, i8*** %4, align 8
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i8*, i8** %26, i64 %28
  %30 = load i8*, i8** %29, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %32, label %58

32:                                               ; preds = %25
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = call i32* @__get_panel(%struct.TYPE_8__* %33, i64 %36)
  store i32* %37, i32** %6, align 8
  %38 = load i32*, i32** %6, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %32
  br label %58

41:                                               ; preds = %32
  %42 = load i8**, i8*** %4, align 8
  %43 = load i32, i32* %5, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %5, align 4
  %45 = sext i32 %43 to i64
  %46 = getelementptr inbounds i8*, i8** %42, i64 %45
  %47 = load i8*, i8** %46, align 8
  store i8* %47, i8** %7, align 8
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %49 = load i8*, i8** %7, align 8
  %50 = call i8* @__search_db(%struct.TYPE_9__* %48, i8* %49)
  store i8* %50, i8** %8, align 8
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %52 = load i32*, i32** %6, align 8
  %53 = load i8*, i8** %7, align 8
  %54 = load i8*, i8** %8, align 8
  %55 = call i32 @__init_panel_param(%struct.TYPE_9__* %51, i32* %52, i8* %53, i8* %54)
  %56 = load i8*, i8** %8, align 8
  %57 = call i32 @free(i8* %56)
  br label %25

58:                                               ; preds = %40, %25
  ret void
}

declare dso_local i32 @__set_curnode(%struct.TYPE_9__*, i32) #1

declare dso_local i32* @__get_panel(%struct.TYPE_8__*, i64) #1

declare dso_local i8* @__search_db(%struct.TYPE_9__*, i8*) #1

declare dso_local i32 @__init_panel_param(%struct.TYPE_9__*, i32*, i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
