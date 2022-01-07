; ModuleID = '/home/carl/AnghaBench/macvim/src/extr_if_py_both.h_TabPageAttr.c'
source_filename = "/home/carl/AnghaBench/macvim/src/extr_if_py_both.h_TabPageAttr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_8__* }

@.str = private unnamed_addr constant [8 x i8] c"windows\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"number\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"vars\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"window\00", align 1
@curtab = common dso_local global %struct.TYPE_8__* null, align 8
@curwin = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [12 x i8] c"__members__\00", align 1
@TabPageAttrs = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_7__*, i8*)* @TabPageAttr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @TabPageAttr(%struct.TYPE_7__* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i8*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i8* %1, i8** %5, align 8
  %6 = load i8*, i8** %5, align 8
  %7 = call i64 @strcmp(i8* %6, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %11 = call i32* @WinListNew(%struct.TYPE_7__* %10)
  store i32* %11, i32** %3, align 8
  br label %69

12:                                               ; preds = %2
  %13 = load i8*, i8** %5, align 8
  %14 = call i64 @strcmp(i8* %13, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %12
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %20 = call i64 @get_tab_number(%struct.TYPE_8__* %19)
  %21 = call i32* @PyLong_FromLong(i64 %20)
  store i32* %21, i32** %3, align 8
  br label %69

22:                                               ; preds = %12
  %23 = load i8*, i8** %5, align 8
  %24 = call i64 @strcmp(i8* %23, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %22
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32* @NEW_DICTIONARY(i32 %31)
  store i32* %32, i32** %3, align 8
  br label %69

33:                                               ; preds = %22
  %34 = load i8*, i8** %5, align 8
  %35 = call i64 @strcmp(i8* %34, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %57

37:                                               ; preds = %33
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %39, align 8
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** @curtab, align 8
  %42 = icmp eq %struct.TYPE_8__* %40, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %37
  %44 = load i32, i32* @curwin, align 4
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** @curtab, align 8
  %46 = call i32* @WindowNew(i32 %44, %struct.TYPE_8__* %45)
  store i32* %46, i32** %3, align 8
  br label %69

47:                                               ; preds = %37
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %54, align 8
  %56 = call i32* @WindowNew(i32 %52, %struct.TYPE_8__* %55)
  store i32* %56, i32** %3, align 8
  br label %69

57:                                               ; preds = %33
  %58 = load i8*, i8** %5, align 8
  %59 = call i64 @strcmp(i8* %58, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %57
  %62 = load i32, i32* @TabPageAttrs, align 4
  %63 = call i32* @ObjectDir(i32* null, i32 %62)
  store i32* %63, i32** %3, align 8
  br label %69

64:                                               ; preds = %57
  br label %65

65:                                               ; preds = %64
  br label %66

66:                                               ; preds = %65
  br label %67

67:                                               ; preds = %66
  br label %68

68:                                               ; preds = %67
  store i32* null, i32** %3, align 8
  br label %69

69:                                               ; preds = %68, %61, %47, %43, %26, %16, %9
  %70 = load i32*, i32** %3, align 8
  ret i32* %70
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32* @WinListNew(%struct.TYPE_7__*) #1

declare dso_local i32* @PyLong_FromLong(i64) #1

declare dso_local i64 @get_tab_number(%struct.TYPE_8__*) #1

declare dso_local i32* @NEW_DICTIONARY(i32) #1

declare dso_local i32* @WindowNew(i32, %struct.TYPE_8__*) #1

declare dso_local i32* @ObjectDir(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
