; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/regex/extr_regc_pg_locale.c_pg_set_regex_collation.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/regex/extr_regc_pg_locale.c_pg_set_regex_collation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32 }

@PG_REGEX_LOCALE_C = common dso_local global i32 0, align 4
@pg_regex_strategy = common dso_local global i32 0, align 4
@pg_regex_locale = common dso_local global %struct.TYPE_3__* null, align 8
@C_COLLATION_OID = common dso_local global i64 0, align 8
@pg_regex_collation = common dso_local global i64 0, align 8
@DEFAULT_COLLATION_OID = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_INDETERMINATE_COLLATION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [66 x i8] c"could not determine which collation to use for regular expression\00", align 1
@.str.1 = private unnamed_addr constant [56 x i8] c"Use the COLLATE clause to set the collation explicitly.\00", align 1
@ERRCODE_FEATURE_NOT_SUPPORTED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [70 x i8] c"nondeterministic collations are not supported for regular expressions\00", align 1
@PG_UTF8 = common dso_local global i64 0, align 8
@PG_REGEX_LOCALE_WIDE_L = common dso_local global i32 0, align 4
@PG_REGEX_LOCALE_WIDE = common dso_local global i32 0, align 4
@PG_REGEX_LOCALE_1BYTE_L = common dso_local global i32 0, align 4
@PG_REGEX_LOCALE_1BYTE = common dso_local global i32 0, align 4
@COLLPROVIDER_ICU = common dso_local global i64 0, align 8
@PG_REGEX_LOCALE_ICU = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pg_set_regex_collation(i64 %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = call i64 @lc_ctype_is_c(i64 %3)
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %1
  %7 = load i32, i32* @PG_REGEX_LOCALE_C, align 4
  store i32 %7, i32* @pg_regex_strategy, align 4
  store %struct.TYPE_3__* null, %struct.TYPE_3__** @pg_regex_locale, align 8
  %8 = load i64, i64* @C_COLLATION_OID, align 8
  store i64 %8, i64* @pg_regex_collation, align 8
  br label %65

9:                                                ; preds = %1
  %10 = load i64, i64* %2, align 8
  %11 = load i64, i64* @DEFAULT_COLLATION_OID, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %9
  store %struct.TYPE_3__* null, %struct.TYPE_3__** @pg_regex_locale, align 8
  br label %29

14:                                               ; preds = %9
  %15 = load i64, i64* %2, align 8
  %16 = call i64 @OidIsValid(i64 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %14
  %19 = load i64, i64* %2, align 8
  %20 = call %struct.TYPE_3__* @pg_newlocale_from_collation(i64 %19)
  store %struct.TYPE_3__* %20, %struct.TYPE_3__** @pg_regex_locale, align 8
  br label %28

21:                                               ; preds = %14
  %22 = load i32, i32* @ERROR, align 4
  %23 = load i32, i32* @ERRCODE_INDETERMINATE_COLLATION, align 4
  %24 = call i32 @errcode(i32 %23)
  %25 = call i32 @errmsg(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0))
  %26 = call i32 @errhint(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0))
  %27 = call i32 @ereport(i32 %22, i32 %26)
  br label %28

28:                                               ; preds = %21, %18
  br label %29

29:                                               ; preds = %28, %13
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** @pg_regex_locale, align 8
  %31 = icmp ne %struct.TYPE_3__* %30, null
  br i1 %31, label %32, label %43

32:                                               ; preds = %29
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** @pg_regex_locale, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %43, label %37

37:                                               ; preds = %32
  %38 = load i32, i32* @ERROR, align 4
  %39 = load i32, i32* @ERRCODE_FEATURE_NOT_SUPPORTED, align 4
  %40 = call i32 @errcode(i32 %39)
  %41 = call i32 @errmsg(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.2, i64 0, i64 0))
  %42 = call i32 @ereport(i32 %38, i32 %41)
  br label %43

43:                                               ; preds = %37, %32, %29
  %44 = call i64 (...) @GetDatabaseEncoding()
  %45 = load i64, i64* @PG_UTF8, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %55

47:                                               ; preds = %43
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** @pg_regex_locale, align 8
  %49 = icmp ne %struct.TYPE_3__* %48, null
  br i1 %49, label %50, label %52

50:                                               ; preds = %47
  %51 = load i32, i32* @PG_REGEX_LOCALE_WIDE_L, align 4
  store i32 %51, i32* @pg_regex_strategy, align 4
  br label %54

52:                                               ; preds = %47
  %53 = load i32, i32* @PG_REGEX_LOCALE_WIDE, align 4
  store i32 %53, i32* @pg_regex_strategy, align 4
  br label %54

54:                                               ; preds = %52, %50
  br label %63

55:                                               ; preds = %43
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** @pg_regex_locale, align 8
  %57 = icmp ne %struct.TYPE_3__* %56, null
  br i1 %57, label %58, label %60

58:                                               ; preds = %55
  %59 = load i32, i32* @PG_REGEX_LOCALE_1BYTE_L, align 4
  store i32 %59, i32* @pg_regex_strategy, align 4
  br label %62

60:                                               ; preds = %55
  %61 = load i32, i32* @PG_REGEX_LOCALE_1BYTE, align 4
  store i32 %61, i32* @pg_regex_strategy, align 4
  br label %62

62:                                               ; preds = %60, %58
  br label %63

63:                                               ; preds = %62, %54
  %64 = load i64, i64* %2, align 8
  store i64 %64, i64* @pg_regex_collation, align 8
  br label %65

65:                                               ; preds = %63, %6
  ret void
}

declare dso_local i64 @lc_ctype_is_c(i64) #1

declare dso_local i64 @OidIsValid(i64) #1

declare dso_local %struct.TYPE_3__* @pg_newlocale_from_collation(i64) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local i32 @errhint(i8*) #1

declare dso_local i64 @GetDatabaseEncoding(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
