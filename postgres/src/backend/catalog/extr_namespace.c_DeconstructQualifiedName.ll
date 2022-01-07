; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/catalog/extr_namespace.c_DeconstructQualifiedName.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/catalog/extr_namespace.c_DeconstructQualifiedName.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MyDatabaseId = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_FEATURE_NOT_SUPPORTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"cross-database references are not implemented: %s\00", align 1
@ERRCODE_SYNTAX_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [52 x i8] c"improper qualified name (too many dotted names): %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @DeconstructQualifiedName(i32* %0, i8** %1, i8** %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i8** %1, i8*** %5, align 8
  store i8** %2, i8*** %6, align 8
  store i8* null, i8** %8, align 8
  store i8* null, i8** %9, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = call i32 @list_length(i32* %10)
  switch i32 %11, label %47 [
    i32 1, label %12
    i32 2, label %16
    i32 3, label %23
  ]

12:                                               ; preds = %3
  %13 = load i32*, i32** %4, align 8
  %14 = call i32 @linitial(i32* %13)
  %15 = call i8* @strVal(i32 %14)
  store i8* %15, i8** %9, align 8
  br label %55

16:                                               ; preds = %3
  %17 = load i32*, i32** %4, align 8
  %18 = call i32 @linitial(i32* %17)
  %19 = call i8* @strVal(i32 %18)
  store i8* %19, i8** %8, align 8
  %20 = load i32*, i32** %4, align 8
  %21 = call i32 @lsecond(i32* %20)
  %22 = call i8* @strVal(i32 %21)
  store i8* %22, i8** %9, align 8
  br label %55

23:                                               ; preds = %3
  %24 = load i32*, i32** %4, align 8
  %25 = call i32 @linitial(i32* %24)
  %26 = call i8* @strVal(i32 %25)
  store i8* %26, i8** %7, align 8
  %27 = load i32*, i32** %4, align 8
  %28 = call i32 @lsecond(i32* %27)
  %29 = call i8* @strVal(i32 %28)
  store i8* %29, i8** %8, align 8
  %30 = load i32*, i32** %4, align 8
  %31 = call i32 @lthird(i32* %30)
  %32 = call i8* @strVal(i32 %31)
  store i8* %32, i8** %9, align 8
  %33 = load i8*, i8** %7, align 8
  %34 = load i32, i32* @MyDatabaseId, align 4
  %35 = call i32 @get_database_name(i32 %34)
  %36 = call i32 @strcmp(i8* %33, i32 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %23
  %39 = load i32, i32* @ERROR, align 4
  %40 = load i32, i32* @ERRCODE_FEATURE_NOT_SUPPORTED, align 4
  %41 = call i32 @errcode(i32 %40)
  %42 = load i32*, i32** %4, align 8
  %43 = call i32 @NameListToString(i32* %42)
  %44 = call i32 @errmsg(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %43)
  %45 = call i32 @ereport(i32 %39, i32 %44)
  br label %46

46:                                               ; preds = %38, %23
  br label %55

47:                                               ; preds = %3
  %48 = load i32, i32* @ERROR, align 4
  %49 = load i32, i32* @ERRCODE_SYNTAX_ERROR, align 4
  %50 = call i32 @errcode(i32 %49)
  %51 = load i32*, i32** %4, align 8
  %52 = call i32 @NameListToString(i32* %51)
  %53 = call i32 @errmsg(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i32 %52)
  %54 = call i32 @ereport(i32 %48, i32 %53)
  br label %55

55:                                               ; preds = %47, %46, %16, %12
  %56 = load i8*, i8** %8, align 8
  %57 = load i8**, i8*** %5, align 8
  store i8* %56, i8** %57, align 8
  %58 = load i8*, i8** %9, align 8
  %59 = load i8**, i8*** %6, align 8
  store i8* %58, i8** %59, align 8
  ret void
}

declare dso_local i32 @list_length(i32*) #1

declare dso_local i8* @strVal(i32) #1

declare dso_local i32 @linitial(i32*) #1

declare dso_local i32 @lsecond(i32*) #1

declare dso_local i32 @lthird(i32*) #1

declare dso_local i32 @strcmp(i8*, i32) #1

declare dso_local i32 @get_database_name(i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i32) #1

declare dso_local i32 @NameListToString(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
