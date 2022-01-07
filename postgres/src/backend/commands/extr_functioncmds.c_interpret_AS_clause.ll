; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_functioncmds.c_interpret_AS_clause.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_functioncmds.c_interpret_AS_clause.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NIL = common dso_local global i32* null, align 8
@ClanguageId = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [2 x i8] c"-\00", align 1
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_INVALID_FUNCTION_DEFINITION = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"only one AS item needed for language \22%s\22\00", align 1
@INTERNALlanguageId = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i8*, i8*, i32*, i8**, i8**)* @interpret_AS_clause to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @interpret_AS_clause(i64 %0, i8* %1, i8* %2, i32* %3, i8** %4, i8** %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i8**, align 8
  store i64 %0, i64* %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32* %3, i32** %10, align 8
  store i8** %4, i8*** %11, align 8
  store i8** %5, i8*** %12, align 8
  %13 = load i32*, i32** %10, align 8
  %14 = load i32*, i32** @NIL, align 8
  %15 = icmp ne i32* %13, %14
  %16 = zext i1 %15 to i32
  %17 = call i32 @Assert(i32 %16)
  %18 = load i64, i64* %7, align 8
  %19 = load i64, i64* @ClanguageId, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %46

21:                                               ; preds = %6
  %22 = load i32*, i32** %10, align 8
  %23 = call i32 @linitial(i32* %22)
  %24 = call i8* @strVal(i32 %23)
  %25 = load i8**, i8*** %12, align 8
  store i8* %24, i8** %25, align 8
  %26 = load i32*, i32** %10, align 8
  %27 = call i32 @list_length(i32* %26)
  %28 = icmp eq i32 %27, 1
  br i1 %28, label %29, label %32

29:                                               ; preds = %21
  %30 = load i8*, i8** %9, align 8
  %31 = load i8**, i8*** %11, align 8
  store i8* %30, i8** %31, align 8
  br label %45

32:                                               ; preds = %21
  %33 = load i32*, i32** %10, align 8
  %34 = call i32 @lsecond(i32* %33)
  %35 = call i8* @strVal(i32 %34)
  %36 = load i8**, i8*** %11, align 8
  store i8* %35, i8** %36, align 8
  %37 = load i8**, i8*** %11, align 8
  %38 = load i8*, i8** %37, align 8
  %39 = call i64 @strcmp(i8* %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %32
  %42 = load i8*, i8** %9, align 8
  %43 = load i8**, i8*** %11, align 8
  store i8* %42, i8** %43, align 8
  br label %44

44:                                               ; preds = %41, %32
  br label %45

45:                                               ; preds = %44, %29
  br label %76

46:                                               ; preds = %6
  %47 = load i32*, i32** %10, align 8
  %48 = call i32 @linitial(i32* %47)
  %49 = call i8* @strVal(i32 %48)
  %50 = load i8**, i8*** %11, align 8
  store i8* %49, i8** %50, align 8
  %51 = load i8**, i8*** %12, align 8
  store i8* null, i8** %51, align 8
  %52 = load i32*, i32** %10, align 8
  %53 = call i32 @list_length(i32* %52)
  %54 = icmp ne i32 %53, 1
  br i1 %54, label %55, label %62

55:                                               ; preds = %46
  %56 = load i32, i32* @ERROR, align 4
  %57 = load i32, i32* @ERRCODE_INVALID_FUNCTION_DEFINITION, align 4
  %58 = call i32 @errcode(i32 %57)
  %59 = load i8*, i8** %8, align 8
  %60 = call i32 @errmsg(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i8* %59)
  %61 = call i32 @ereport(i32 %56, i32 %60)
  br label %62

62:                                               ; preds = %55, %46
  %63 = load i64, i64* %7, align 8
  %64 = load i64, i64* @INTERNALlanguageId, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %75

66:                                               ; preds = %62
  %67 = load i8**, i8*** %11, align 8
  %68 = load i8*, i8** %67, align 8
  %69 = call i64 @strlen(i8* %68)
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %66
  %72 = load i8*, i8** %9, align 8
  %73 = load i8**, i8*** %11, align 8
  store i8* %72, i8** %73, align 8
  br label %74

74:                                               ; preds = %71, %66
  br label %75

75:                                               ; preds = %74, %62
  br label %76

76:                                               ; preds = %75, %45
  ret void
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i8* @strVal(i32) #1

declare dso_local i32 @linitial(i32*) #1

declare dso_local i32 @list_length(i32*) #1

declare dso_local i32 @lsecond(i32*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i8*) #1

declare dso_local i64 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
