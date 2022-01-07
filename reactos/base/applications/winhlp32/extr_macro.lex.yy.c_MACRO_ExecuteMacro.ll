; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/winhlp32/extr_macro.lex.yy.c_MACRO_ExecuteMacro.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/winhlp32/extr_macro.lex.yy.c_MACRO_ExecuteMacro.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lex_data = type { i32, i32*, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@TRUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@lex_data = common dso_local global %struct.lex_data* null, align 8
@.str.1 = private unnamed_addr constant [24 x i8] c"got type void func(%s)\0A\00", align 1
@yylval = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"got type bool func(%s)\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"got unexpected type %s\0A\00", align 1
@YY_FLUSH_BUFFER = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @MACRO_ExecuteMacro(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.lex_data, align 8
  %6 = alloca %struct.lex_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i32, i32* @TRUE, align 4
  store i32 %9, i32* %7, align 4
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @debugstr_a(i32 %10)
  %12 = call i32 @WINE_TRACE(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = load %struct.lex_data*, %struct.lex_data** @lex_data, align 8
  store %struct.lex_data* %13, %struct.lex_data** %6, align 8
  store %struct.lex_data* %5, %struct.lex_data** @lex_data, align 8
  %14 = load %struct.lex_data*, %struct.lex_data** @lex_data, align 8
  %15 = call i32 @memset(%struct.lex_data* %14, i32 0, i32 24)
  %16 = load i32, i32* %4, align 4
  %17 = load %struct.lex_data*, %struct.lex_data** @lex_data, align 8
  %18 = getelementptr inbounds %struct.lex_data, %struct.lex_data* %17, i32 0, i32 3
  store i32 %16, i32* %18, align 4
  %19 = load i32*, i32** %3, align 8
  %20 = call i32 @WINHELP_GrabWindow(i32* %19)
  %21 = load %struct.lex_data*, %struct.lex_data** @lex_data, align 8
  %22 = getelementptr inbounds %struct.lex_data, %struct.lex_data* %21, i32 0, i32 2
  store i32 %20, i32* %22, align 8
  br label %23

23:                                               ; preds = %53, %2
  %24 = call i32 (...) @yylex()
  store i32 %24, i32* %8, align 4
  %25 = icmp ne i32 %24, 129
  br i1 %25, label %26, label %54

26:                                               ; preds = %23
  %27 = load i32, i32* %8, align 4
  switch i32 %27, label %39 [
    i32 128, label %28
    i32 130, label %35
  ]

28:                                               ; preds = %26
  %29 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @yylval, i32 0, i32 0), align 4
  %30 = call i32 @debugstr_a(i32 %29)
  %31 = call i32 @WINE_TRACE(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %30)
  %32 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @yylval, i32 0, i32 1), align 4
  %33 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @yylval, i32 0, i32 0), align 4
  %34 = call i32 @MACRO_CallVoidFunc(i32 %32, i32 %33)
  br label %46

35:                                               ; preds = %26
  %36 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @yylval, i32 0, i32 0), align 4
  %37 = call i32 @debugstr_a(i32 %36)
  %38 = call i32 @WINE_WARN(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %37)
  br label %46

39:                                               ; preds = %26
  %40 = load i32, i32* %8, align 4
  %41 = call i32 @ts(i32 %40)
  %42 = call i32 @debugstr_a(i32 %41)
  %43 = call i32 @WINE_WARN(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %42)
  %44 = load i32, i32* @YY_FLUSH_BUFFER, align 4
  %45 = load i32, i32* @FALSE, align 4
  store i32 %45, i32* %7, align 4
  br label %55

46:                                               ; preds = %35, %28
  %47 = call i32 (...) @yylex()
  store i32 %47, i32* %8, align 4
  switch i32 %47, label %50 [
    i32 129, label %48
    i32 59, label %49
  ]

48:                                               ; preds = %46
  br label %55

49:                                               ; preds = %46
  br label %53

50:                                               ; preds = %46
  %51 = load i32, i32* @FALSE, align 4
  store i32 %51, i32* %7, align 4
  %52 = load i32, i32* @YY_FLUSH_BUFFER, align 4
  br label %55

53:                                               ; preds = %49
  br label %23

54:                                               ; preds = %23
  br label %55

55:                                               ; preds = %54, %50, %48, %39
  store i32 0, i32* %8, align 4
  br label %56

56:                                               ; preds = %72, %55
  %57 = load i32, i32* %8, align 4
  %58 = load %struct.lex_data*, %struct.lex_data** @lex_data, align 8
  %59 = getelementptr inbounds %struct.lex_data, %struct.lex_data* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = icmp slt i32 %57, %60
  br i1 %61, label %62, label %75

62:                                               ; preds = %56
  %63 = call i32 (...) @GetProcessHeap()
  %64 = load %struct.lex_data*, %struct.lex_data** @lex_data, align 8
  %65 = getelementptr inbounds %struct.lex_data, %struct.lex_data* %64, i32 0, i32 1
  %66 = load i32*, i32** %65, align 8
  %67 = load i32, i32* %8, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @HeapFree(i32 %63, i32 0, i32 %70)
  br label %72

72:                                               ; preds = %62
  %73 = load i32, i32* %8, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %8, align 4
  br label %56

75:                                               ; preds = %56
  %76 = load %struct.lex_data*, %struct.lex_data** %6, align 8
  store %struct.lex_data* %76, %struct.lex_data** @lex_data, align 8
  %77 = load i32*, i32** %3, align 8
  %78 = call i32 @WINHELP_ReleaseWindow(i32* %77)
  %79 = load i32, i32* %7, align 4
  ret i32 %79
}

declare dso_local i32 @WINE_TRACE(i8*, i32) #1

declare dso_local i32 @debugstr_a(i32) #1

declare dso_local i32 @memset(%struct.lex_data*, i32, i32) #1

declare dso_local i32 @WINHELP_GrabWindow(i32*) #1

declare dso_local i32 @yylex(...) #1

declare dso_local i32 @MACRO_CallVoidFunc(i32, i32) #1

declare dso_local i32 @WINE_WARN(i8*, i32) #1

declare dso_local i32 @ts(i32) #1

declare dso_local i32 @HeapFree(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @WINHELP_ReleaseWindow(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
