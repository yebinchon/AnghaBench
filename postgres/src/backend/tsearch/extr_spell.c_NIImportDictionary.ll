; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/tsearch/extr_spell.c_NIImportDictionary.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/tsearch/extr_spell.c_NIImportDictionary.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ERROR = common dso_local global i32 0, align 4
@ERRCODE_CONFIG_FILE_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"could not open dictionary file \22%s\22: %m\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @NIImportDictionary(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = call i32 @tsearch_readline_begin(i32* %5, i8* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %20, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @ERROR, align 4
  %15 = load i32, i32* @ERRCODE_CONFIG_FILE_ERROR, align 4
  %16 = call i32 @errcode(i32 %15)
  %17 = load i8*, i8** %4, align 8
  %18 = call i32 @errmsg(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i8* %17)
  %19 = call i32 @ereport(i32 %14, i32 %18)
  br label %20

20:                                               ; preds = %13, %2
  br label %21

21:                                               ; preds = %74, %20
  %22 = call i8* @tsearch_readline(i32* %5)
  store i8* %22, i8** %6, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %86

24:                                               ; preds = %21
  store i8* null, i8** %9, align 8
  %25 = load i8*, i8** %6, align 8
  %26 = call i8* @findchar(i8* %25, i8 signext 47)
  store i8* %26, i8** %7, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %55

28:                                               ; preds = %24
  %29 = load i8*, i8** %7, align 8
  %30 = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %30, i8** %7, align 8
  store i8 0, i8* %29, align 1
  %31 = load i8*, i8** %7, align 8
  store i8* %31, i8** %9, align 8
  br label %32

32:                                               ; preds = %53, %28
  %33 = load i8*, i8** %7, align 8
  %34 = load i8, i8* %33, align 1
  %35 = icmp ne i8 %34, 0
  br i1 %35, label %36, label %54

36:                                               ; preds = %32
  %37 = load i8*, i8** %7, align 8
  %38 = call i32 @pg_mblen(i8* %37)
  %39 = icmp eq i32 %38, 1
  br i1 %39, label %40, label %51

40:                                               ; preds = %36
  %41 = load i8*, i8** %7, align 8
  %42 = call i64 @t_isprint(i8* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %40
  %45 = load i8*, i8** %7, align 8
  %46 = call i64 @t_isspace(i8* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %44
  %49 = load i8*, i8** %7, align 8
  %50 = getelementptr inbounds i8, i8* %49, i32 1
  store i8* %50, i8** %7, align 8
  br label %53

51:                                               ; preds = %44, %40, %36
  %52 = load i8*, i8** %7, align 8
  store i8 0, i8* %52, align 1
  br label %54

53:                                               ; preds = %48
  br label %32

54:                                               ; preds = %51, %32
  br label %56

55:                                               ; preds = %24
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8** %9, align 8
  br label %56

56:                                               ; preds = %55, %54
  %57 = load i8*, i8** %6, align 8
  store i8* %57, i8** %7, align 8
  br label %58

58:                                               ; preds = %68, %56
  %59 = load i8*, i8** %7, align 8
  %60 = load i8, i8* %59, align 1
  %61 = icmp ne i8 %60, 0
  br i1 %61, label %62, label %74

62:                                               ; preds = %58
  %63 = load i8*, i8** %7, align 8
  %64 = call i64 @t_isspace(i8* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %62
  %67 = load i8*, i8** %7, align 8
  store i8 0, i8* %67, align 1
  br label %74

68:                                               ; preds = %62
  %69 = load i8*, i8** %7, align 8
  %70 = call i32 @pg_mblen(i8* %69)
  %71 = load i8*, i8** %7, align 8
  %72 = sext i32 %70 to i64
  %73 = getelementptr inbounds i8, i8* %71, i64 %72
  store i8* %73, i8** %7, align 8
  br label %58

74:                                               ; preds = %66, %58
  %75 = load i32*, i32** %3, align 8
  %76 = load i8*, i8** %6, align 8
  %77 = call i8* @lowerstr_ctx(i32* %75, i8* %76)
  store i8* %77, i8** %8, align 8
  %78 = load i32*, i32** %3, align 8
  %79 = load i8*, i8** %8, align 8
  %80 = load i8*, i8** %9, align 8
  %81 = call i32 @NIAddSpell(i32* %78, i8* %79, i8* %80)
  %82 = load i8*, i8** %8, align 8
  %83 = call i32 @pfree(i8* %82)
  %84 = load i8*, i8** %6, align 8
  %85 = call i32 @pfree(i8* %84)
  br label %21

86:                                               ; preds = %21
  %87 = call i32 @tsearch_readline_end(i32* %5)
  ret void
}

declare dso_local i32 @tsearch_readline_begin(i32*, i8*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i8*) #1

declare dso_local i8* @tsearch_readline(i32*) #1

declare dso_local i8* @findchar(i8*, i8 signext) #1

declare dso_local i32 @pg_mblen(i8*) #1

declare dso_local i64 @t_isprint(i8*) #1

declare dso_local i64 @t_isspace(i8*) #1

declare dso_local i8* @lowerstr_ctx(i32*, i8*) #1

declare dso_local i32 @NIAddSpell(i32*, i8*, i8*) #1

declare dso_local i32 @pfree(i8*) #1

declare dso_local i32 @tsearch_readline_end(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
