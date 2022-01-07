; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_like.c_GenericMatchText.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_like.c_GenericMatchText.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@DEFAULT_COLLATION_OID = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_FEATURE_NOT_SUPPORTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"nondeterministic collations are not supported for LIKE\00", align 1
@PG_UTF8 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i8*, i32, i64)* @GenericMatchText to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @GenericMatchText(i8* %0, i32 %1, i8* %2, i32 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_3__*, align 8
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  %13 = load i64, i64* %11, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %40

15:                                               ; preds = %5
  %16 = load i64, i64* %11, align 8
  %17 = call i32 @lc_ctype_is_c(i64 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %40, label %19

19:                                               ; preds = %15
  %20 = load i64, i64* %11, align 8
  %21 = load i64, i64* @DEFAULT_COLLATION_OID, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %40

23:                                               ; preds = %19
  %24 = load i64, i64* %11, align 8
  %25 = call %struct.TYPE_3__* @pg_newlocale_from_collation(i64 %24)
  store %struct.TYPE_3__* %25, %struct.TYPE_3__** %12, align 8
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %27 = icmp ne %struct.TYPE_3__* %26, null
  br i1 %27, label %28, label %39

28:                                               ; preds = %23
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %39, label %33

33:                                               ; preds = %28
  %34 = load i32, i32* @ERROR, align 4
  %35 = load i32, i32* @ERRCODE_FEATURE_NOT_SUPPORTED, align 4
  %36 = call i32 @errcode(i32 %35)
  %37 = call i32 @errmsg(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0))
  %38 = call i32 @ereport(i32 %34, i32 %37)
  br label %39

39:                                               ; preds = %33, %28, %23
  br label %40

40:                                               ; preds = %39, %19, %15, %5
  %41 = call i32 (...) @pg_database_encoding_max_length()
  %42 = icmp eq i32 %41, 1
  br i1 %42, label %43, label %49

43:                                               ; preds = %40
  %44 = load i8*, i8** %7, align 8
  %45 = load i32, i32* %8, align 4
  %46 = load i8*, i8** %9, align 8
  %47 = load i32, i32* %10, align 4
  %48 = call i32 @SB_MatchText(i8* %44, i32 %45, i8* %46, i32 %47, i32 0, i32 1)
  store i32 %48, i32* %6, align 4
  br label %65

49:                                               ; preds = %40
  %50 = call i64 (...) @GetDatabaseEncoding()
  %51 = load i64, i64* @PG_UTF8, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %59

53:                                               ; preds = %49
  %54 = load i8*, i8** %7, align 8
  %55 = load i32, i32* %8, align 4
  %56 = load i8*, i8** %9, align 8
  %57 = load i32, i32* %10, align 4
  %58 = call i32 @UTF8_MatchText(i8* %54, i32 %55, i8* %56, i32 %57, i32 0, i32 1)
  store i32 %58, i32* %6, align 4
  br label %65

59:                                               ; preds = %49
  %60 = load i8*, i8** %7, align 8
  %61 = load i32, i32* %8, align 4
  %62 = load i8*, i8** %9, align 8
  %63 = load i32, i32* %10, align 4
  %64 = call i32 @MB_MatchText(i8* %60, i32 %61, i8* %62, i32 %63, i32 0, i32 1)
  store i32 %64, i32* %6, align 4
  br label %65

65:                                               ; preds = %59, %53, %43
  %66 = load i32, i32* %6, align 4
  ret i32 %66
}

declare dso_local i32 @lc_ctype_is_c(i64) #1

declare dso_local %struct.TYPE_3__* @pg_newlocale_from_collation(i64) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local i32 @pg_database_encoding_max_length(...) #1

declare dso_local i32 @SB_MatchText(i8*, i32, i8*, i32, i32, i32) #1

declare dso_local i64 @GetDatabaseEncoding(...) #1

declare dso_local i32 @UTF8_MatchText(i8*, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @MB_MatchText(i8*, i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
