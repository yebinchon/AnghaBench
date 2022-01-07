; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/winhlp32/extr_macro.lex.yy.c_MACRO_CheckArgs.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/winhlp32/extr_macro.lex.yy.c_MACRO_CheckArgs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i64 }

@.str = private unnamed_addr constant [13 x i8] c"Checking %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"missing (\0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"Got %s <=> %c\0A\00", align 1
@STRING = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [11 x i8] c"missing S\0A\00", align 1
@yylval = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@INTEGER = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [11 x i8] c"missing U\0A\00", align 1
@BOOL_FUNCTION = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [11 x i8] c"missing B\0A\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"unexpected %s while args is %c\0A\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"missing ,\0A\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"stack overflow (%d)\0A\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"missing )\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i32, i8*)* @MACRO_CheckArgs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @MACRO_CheckArgs(i8** %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8** %0, i8*** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %11 = load i8*, i8** %7, align 8
  %12 = call i32 @debugstr_a(i8* %11)
  %13 = call i32 (i8*, i32, ...) @WINE_TRACE(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = call signext i8 (...) @yylex()
  %15 = sext i8 %14 to i32
  %16 = icmp ne i32 %15, 40
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = call i32 (i8*, ...) @WINE_WARN(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %139

19:                                               ; preds = %3
  %20 = load i8*, i8** %7, align 8
  %21 = load i8, i8* %20, align 1
  %22 = icmp ne i8 %21, 0
  br i1 %22, label %23, label %119

23:                                               ; preds = %19
  %24 = load i8*, i8** %7, align 8
  %25 = call i32 @strlen(i8* %24)
  store i32 %25, i32* %9, align 4
  br label %26

26:                                               ; preds = %117, %23
  %27 = call signext i8 (...) @yylex()
  %28 = sext i8 %27 to i32
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = call i8* @ts(i32 %29)
  %31 = call i32 @debugstr_a(i8* %30)
  %32 = load i8*, i8** %7, align 8
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = call i32 (i8*, i32, ...) @WINE_TRACE(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 %31, i32 %34)
  %36 = load i8*, i8** %7, align 8
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  switch i32 %38, label %82 [
    i32 83, label %39
    i32 85, label %52
    i32 73, label %52
    i32 66, label %65
  ]

39:                                               ; preds = %26
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* @STRING, align 4
  %42 = icmp ne i32 %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %39
  %44 = call i32 (i8*, ...) @WINE_WARN(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %139

45:                                               ; preds = %39
  %46 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @yylval, i32 0, i32 3), align 8
  %47 = inttoptr i64 %46 to i8*
  %48 = load i8**, i8*** %5, align 8
  %49 = load i32, i32* %10, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds i8*, i8** %48, i64 %50
  store i8* %47, i8** %51, align 8
  br label %90

52:                                               ; preds = %26, %26
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* @INTEGER, align 4
  %55 = icmp ne i32 %53, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %52
  %57 = call i32 (i8*, ...) @WINE_WARN(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %139

58:                                               ; preds = %52
  %59 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @yylval, i32 0, i32 2), align 8
  %60 = call i8* @LongToPtr(i32 %59)
  %61 = load i8**, i8*** %5, align 8
  %62 = load i32, i32* %10, align 4
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds i8*, i8** %61, i64 %63
  store i8* %60, i8** %64, align 8
  br label %90

65:                                               ; preds = %26
  %66 = load i32, i32* %8, align 4
  %67 = load i32, i32* @BOOL_FUNCTION, align 4
  %68 = icmp ne i32 %66, %67
  br i1 %68, label %69, label %71

69:                                               ; preds = %65
  %70 = call i32 (i8*, ...) @WINE_WARN(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %139

71:                                               ; preds = %65
  %72 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @yylval, i32 0, i32 1), align 4
  %73 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @yylval, i32 0, i32 0), align 8
  %74 = load i8**, i8*** %5, align 8
  %75 = load i32, i32* %10, align 4
  %76 = zext i32 %75 to i64
  %77 = getelementptr inbounds i8*, i8** %74, i64 %76
  %78 = call i32 @MACRO_CallBoolFunc(i32 %72, i32 %73, i8** %77)
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %71
  store i32 -1, i32* %4, align 4
  br label %139

81:                                               ; preds = %71
  br label %90

82:                                               ; preds = %26
  %83 = load i32, i32* %8, align 4
  %84 = call i8* @ts(i32 %83)
  %85 = call i32 @debugstr_a(i8* %84)
  %86 = load i8*, i8** %7, align 8
  %87 = load i8, i8* %86, align 1
  %88 = sext i8 %87 to i32
  %89 = call i32 (i8*, ...) @WINE_WARN(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0), i32 %85, i32 %88)
  store i32 -1, i32* %4, align 4
  br label %139

90:                                               ; preds = %81, %58, %45
  %91 = load i32, i32* %10, align 4
  %92 = add i32 %91, 1
  store i32 %92, i32* %10, align 4
  %93 = load i8*, i8** %7, align 8
  %94 = getelementptr inbounds i8, i8* %93, i32 1
  store i8* %94, i8** %7, align 8
  %95 = load i8, i8* %94, align 1
  %96 = sext i8 %95 to i32
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %90
  br label %118

99:                                               ; preds = %90
  %100 = call signext i8 (...) @yylex()
  %101 = sext i8 %100 to i32
  store i32 %101, i32* %8, align 4
  %102 = load i32, i32* %8, align 4
  %103 = icmp eq i32 %102, 41
  br i1 %103, label %104, label %105

104:                                              ; preds = %99
  br label %126

105:                                              ; preds = %99
  %106 = load i32, i32* %8, align 4
  %107 = icmp ne i32 %106, 44
  br i1 %107, label %108, label %110

108:                                              ; preds = %105
  %109 = call i32 (i8*, ...) @WINE_WARN(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %139

110:                                              ; preds = %105
  %111 = load i32, i32* %10, align 4
  %112 = load i32, i32* %6, align 4
  %113 = icmp uge i32 %111, %112
  br i1 %113, label %114, label %117

114:                                              ; preds = %110
  %115 = load i32, i32* %6, align 4
  %116 = call i32 @WINE_FIXME(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0), i32 %115)
  store i32 -1, i32* %4, align 4
  br label %139

117:                                              ; preds = %110
  br label %26

118:                                              ; preds = %98
  br label %119

119:                                              ; preds = %118, %19
  %120 = call signext i8 (...) @yylex()
  %121 = sext i8 %120 to i32
  %122 = icmp ne i32 %121, 41
  br i1 %122, label %123, label %125

123:                                              ; preds = %119
  %124 = call i32 (i8*, ...) @WINE_WARN(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %139

125:                                              ; preds = %119
  br label %126

126:                                              ; preds = %125, %104
  br label %127

127:                                              ; preds = %131, %126
  %128 = load i32, i32* %9, align 4
  %129 = load i32, i32* %10, align 4
  %130 = icmp ugt i32 %128, %129
  br i1 %130, label %131, label %137

131:                                              ; preds = %127
  %132 = load i8**, i8*** %5, align 8
  %133 = load i32, i32* %9, align 4
  %134 = add i32 %133, -1
  store i32 %134, i32* %9, align 4
  %135 = zext i32 %134 to i64
  %136 = getelementptr inbounds i8*, i8** %132, i64 %135
  store i8* null, i8** %136, align 8
  br label %127

137:                                              ; preds = %127
  %138 = load i32, i32* %10, align 4
  store i32 %138, i32* %4, align 4
  br label %139

139:                                              ; preds = %137, %123, %114, %108, %82, %80, %69, %56, %43, %17
  %140 = load i32, i32* %4, align 4
  ret i32 %140
}

declare dso_local i32 @WINE_TRACE(i8*, i32, ...) #1

declare dso_local i32 @debugstr_a(i8*) #1

declare dso_local signext i8 @yylex(...) #1

declare dso_local i32 @WINE_WARN(i8*, ...) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @ts(i32) #1

declare dso_local i8* @LongToPtr(i32) #1

declare dso_local i32 @MACRO_CallBoolFunc(i32, i32, i8**) #1

declare dso_local i32 @WINE_FIXME(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
