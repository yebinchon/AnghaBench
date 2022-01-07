; ModuleID = '/home/carl/AnghaBench/postgres/contrib/pg_trgm/extr_trgm_regexp.c_RE_compile.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/pg_trgm/extr_trgm_regexp.c_RE_compile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@REG_OKAY = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_INVALID_REGULAR_EXPRESSION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"invalid regular expression: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32, i32)* @RE_compile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @RE_compile(i32* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca [100 x i8], align 16
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %15 = load i32*, i32** %6, align 8
  %16 = call i32 @VARSIZE_ANY_EXHDR(i32* %15)
  store i32 %16, i32* %9, align 4
  %17 = load i32*, i32** %6, align 8
  %18 = call i8* @VARDATA_ANY(i32* %17)
  store i8* %18, i8** %10, align 8
  %19 = load i32, i32* %9, align 4
  %20 = add nsw i32 %19, 1
  %21 = sext i32 %20 to i64
  %22 = mul i64 %21, 4
  %23 = trunc i64 %22 to i32
  %24 = call i64 @palloc(i32 %23)
  %25 = inttoptr i64 %24 to i32*
  store i32* %25, i32** %11, align 8
  %26 = load i8*, i8** %10, align 8
  %27 = load i32*, i32** %11, align 8
  %28 = load i32, i32* %9, align 4
  %29 = call i32 @pg_mb2wchar_with_len(i8* %26, i32* %27, i32 %28)
  store i32 %29, i32* %12, align 4
  %30 = load i32*, i32** %5, align 8
  %31 = load i32*, i32** %11, align 8
  %32 = load i32, i32* %12, align 4
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @pg_regcomp(i32* %30, i32* %31, i32 %32, i32 %33, i32 %34)
  store i32 %35, i32* %13, align 4
  %36 = load i32*, i32** %11, align 8
  %37 = call i32 @pfree(i32* %36)
  %38 = load i32, i32* %13, align 4
  %39 = load i32, i32* @REG_OKAY, align 4
  %40 = icmp ne i32 %38, %39
  br i1 %40, label %41, label %52

41:                                               ; preds = %4
  %42 = load i32, i32* %13, align 4
  %43 = load i32*, i32** %5, align 8
  %44 = getelementptr inbounds [100 x i8], [100 x i8]* %14, i64 0, i64 0
  %45 = call i32 @pg_regerror(i32 %42, i32* %43, i8* %44, i32 100)
  %46 = load i32, i32* @ERROR, align 4
  %47 = load i32, i32* @ERRCODE_INVALID_REGULAR_EXPRESSION, align 4
  %48 = call i32 @errcode(i32 %47)
  %49 = getelementptr inbounds [100 x i8], [100 x i8]* %14, i64 0, i64 0
  %50 = call i32 @errmsg(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8* %49)
  %51 = call i32 @ereport(i32 %46, i32 %50)
  br label %52

52:                                               ; preds = %41, %4
  ret void
}

declare dso_local i32 @VARSIZE_ANY_EXHDR(i32*) #1

declare dso_local i8* @VARDATA_ANY(i32*) #1

declare dso_local i64 @palloc(i32) #1

declare dso_local i32 @pg_mb2wchar_with_len(i8*, i32*, i32) #1

declare dso_local i32 @pg_regcomp(i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @pfree(i32*) #1

declare dso_local i32 @pg_regerror(i32, i32*, i8*, i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
