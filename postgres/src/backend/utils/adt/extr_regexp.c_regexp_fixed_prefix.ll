; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_regexp.c_regexp_fixed_prefix.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_regexp.c_regexp_fixed_prefix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@REG_ADVANCED = common dso_local global i32 0, align 4
@REG_ICASE = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_INVALID_REGULAR_EXPRESSION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"regular expression failed: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @regexp_fixed_prefix(i32* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca [100 x i8], align 16
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %18 = load i32*, i32** %9, align 8
  store i32 0, i32* %18, align 4
  %19 = load i32, i32* @REG_ADVANCED, align 4
  store i32 %19, i32* %12, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %4
  %23 = load i32, i32* @REG_ICASE, align 4
  %24 = load i32, i32* %12, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %12, align 4
  br label %26

26:                                               ; preds = %22, %4
  %27 = load i32*, i32** %6, align 8
  %28 = load i32, i32* %12, align 4
  %29 = load i32, i32* %8, align 4
  %30 = call i32* @RE_compile_and_cache(i32* %27, i32 %28, i32 %29)
  store i32* %30, i32** %11, align 8
  %31 = load i32*, i32** %11, align 8
  %32 = call i32 @pg_regprefix(i32* %31, i32** %14, i64* %15)
  store i32 %32, i32* %13, align 4
  %33 = load i32, i32* %13, align 4
  switch i32 %33, label %38 [
    i32 129, label %34
    i32 128, label %35
    i32 130, label %36
  ]

34:                                               ; preds = %26
  store i8* null, i8** %5, align 8
  br label %70

35:                                               ; preds = %26
  br label %50

36:                                               ; preds = %26
  %37 = load i32*, i32** %9, align 8
  store i32 1, i32* %37, align 4
  br label %50

38:                                               ; preds = %26
  %39 = call i32 (...) @CHECK_FOR_INTERRUPTS()
  %40 = load i32, i32* %13, align 4
  %41 = load i32*, i32** %11, align 8
  %42 = getelementptr inbounds [100 x i8], [100 x i8]* %17, i64 0, i64 0
  %43 = call i32 @pg_regerror(i32 %40, i32* %41, i8* %42, i32 100)
  %44 = load i32, i32* @ERROR, align 4
  %45 = load i32, i32* @ERRCODE_INVALID_REGULAR_EXPRESSION, align 4
  %46 = call i32 @errcode(i32 %45)
  %47 = getelementptr inbounds [100 x i8], [100 x i8]* %17, i64 0, i64 0
  %48 = call i32 @errmsg(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i8* %47)
  %49 = call i32 @ereport(i32 %44, i32 %48)
  br label %50

50:                                               ; preds = %38, %36, %35
  %51 = call i64 (...) @pg_database_encoding_max_length()
  %52 = load i64, i64* %15, align 8
  %53 = mul i64 %51, %52
  %54 = add i64 %53, 1
  store i64 %54, i64* %16, align 8
  %55 = load i64, i64* %16, align 8
  %56 = call i64 @palloc(i64 %55)
  %57 = inttoptr i64 %56 to i8*
  store i8* %57, i8** %10, align 8
  %58 = load i32*, i32** %14, align 8
  %59 = load i8*, i8** %10, align 8
  %60 = load i64, i64* %15, align 8
  %61 = call i64 @pg_wchar2mb_with_len(i32* %58, i8* %59, i64 %60)
  store i64 %61, i64* %15, align 8
  %62 = load i64, i64* %15, align 8
  %63 = load i64, i64* %16, align 8
  %64 = icmp ult i64 %62, %63
  %65 = zext i1 %64 to i32
  %66 = call i32 @Assert(i32 %65)
  %67 = load i32*, i32** %14, align 8
  %68 = call i32 @free(i32* %67)
  %69 = load i8*, i8** %10, align 8
  store i8* %69, i8** %5, align 8
  br label %70

70:                                               ; preds = %50, %34
  %71 = load i8*, i8** %5, align 8
  ret i8* %71
}

declare dso_local i32* @RE_compile_and_cache(i32*, i32, i32) #1

declare dso_local i32 @pg_regprefix(i32*, i32**, i64*) #1

declare dso_local i32 @CHECK_FOR_INTERRUPTS(...) #1

declare dso_local i32 @pg_regerror(i32, i32*, i8*, i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i8*) #1

declare dso_local i64 @pg_database_encoding_max_length(...) #1

declare dso_local i64 @palloc(i64) #1

declare dso_local i64 @pg_wchar2mb_with_len(i32*, i8*, i64) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
