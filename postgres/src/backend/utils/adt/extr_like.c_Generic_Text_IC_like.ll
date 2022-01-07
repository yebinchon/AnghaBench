; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_like.c_Generic_Text_IC_like.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_like.c_Generic_Text_IC_like.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32 }

@DEFAULT_COLLATION_OID = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_INDETERMINATE_COLLATION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"could not determine which collation to use for ILIKE\00", align 1
@.str.1 = private unnamed_addr constant [56 x i8] c"Use the COLLATE clause to set the collation explicitly.\00", align 1
@ERRCODE_FEATURE_NOT_SUPPORTED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [56 x i8] c"nondeterministic collations are not supported for ILIKE\00", align 1
@COLLPROVIDER_ICU = common dso_local global i64 0, align 8
@lower = common dso_local global i32 0, align 4
@PG_UTF8 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i64)* @Generic_Text_IC_like to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Generic_Text_IC_like(i32* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_4__*, align 8
  %13 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %12, align 8
  store i32 0, i32* %13, align 4
  %14 = load i64, i64* %7, align 8
  %15 = call i64 @lc_ctype_is_c(i64 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  store i32 1, i32* %13, align 4
  br label %51

18:                                               ; preds = %3
  %19 = load i64, i64* %7, align 8
  %20 = load i64, i64* @DEFAULT_COLLATION_OID, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %50

22:                                               ; preds = %18
  %23 = load i64, i64* %7, align 8
  %24 = call i32 @OidIsValid(i64 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %33, label %26

26:                                               ; preds = %22
  %27 = load i32, i32* @ERROR, align 4
  %28 = load i32, i32* @ERRCODE_INDETERMINATE_COLLATION, align 4
  %29 = call i32 @errcode(i32 %28)
  %30 = call i32 @errmsg(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0))
  %31 = call i32 @errhint(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0))
  %32 = call i32 @ereport(i32 %27, i32 %31)
  br label %33

33:                                               ; preds = %26, %22
  %34 = load i64, i64* %7, align 8
  %35 = call %struct.TYPE_4__* @pg_newlocale_from_collation(i64 %34)
  store %struct.TYPE_4__* %35, %struct.TYPE_4__** %12, align 8
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %37 = icmp ne %struct.TYPE_4__* %36, null
  br i1 %37, label %38, label %49

38:                                               ; preds = %33
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %49, label %43

43:                                               ; preds = %38
  %44 = load i32, i32* @ERROR, align 4
  %45 = load i32, i32* @ERRCODE_FEATURE_NOT_SUPPORTED, align 4
  %46 = call i32 @errcode(i32 %45)
  %47 = call i32 @errmsg(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i64 0, i64 0))
  %48 = call i32 @ereport(i32 %44, i32 %47)
  br label %49

49:                                               ; preds = %43, %38, %33
  br label %50

50:                                               ; preds = %49, %18
  br label %51

51:                                               ; preds = %50, %17
  %52 = call i32 (...) @pg_database_encoding_max_length()
  %53 = icmp sgt i32 %52, 1
  br i1 %53, label %63, label %54

54:                                               ; preds = %51
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %56 = icmp ne %struct.TYPE_4__* %55, null
  br i1 %56, label %57, label %99

57:                                               ; preds = %54
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @COLLPROVIDER_ICU, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %99

63:                                               ; preds = %57, %51
  %64 = load i32, i32* @lower, align 4
  %65 = load i64, i64* %7, align 8
  %66 = load i32*, i32** %6, align 8
  %67 = call i32 @PointerGetDatum(i32* %66)
  %68 = call i32 @DirectFunctionCall1Coll(i32 %64, i64 %65, i32 %67)
  %69 = call i32* @DatumGetTextPP(i32 %68)
  store i32* %69, i32** %6, align 8
  %70 = load i32*, i32** %6, align 8
  %71 = call i8* @VARDATA_ANY(i32* %70)
  store i8* %71, i8** %9, align 8
  %72 = load i32*, i32** %6, align 8
  %73 = call i32 @VARSIZE_ANY_EXHDR(i32* %72)
  store i32 %73, i32* %11, align 4
  %74 = load i32, i32* @lower, align 4
  %75 = load i64, i64* %7, align 8
  %76 = load i32*, i32** %5, align 8
  %77 = call i32 @PointerGetDatum(i32* %76)
  %78 = call i32 @DirectFunctionCall1Coll(i32 %74, i64 %75, i32 %77)
  %79 = call i32* @DatumGetTextPP(i32 %78)
  store i32* %79, i32** %5, align 8
  %80 = load i32*, i32** %5, align 8
  %81 = call i8* @VARDATA_ANY(i32* %80)
  store i8* %81, i8** %8, align 8
  %82 = load i32*, i32** %5, align 8
  %83 = call i32 @VARSIZE_ANY_EXHDR(i32* %82)
  store i32 %83, i32* %10, align 4
  %84 = call i64 (...) @GetDatabaseEncoding()
  %85 = load i64, i64* @PG_UTF8, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %93

87:                                               ; preds = %63
  %88 = load i8*, i8** %8, align 8
  %89 = load i32, i32* %10, align 4
  %90 = load i8*, i8** %9, align 8
  %91 = load i32, i32* %11, align 4
  %92 = call i32 @UTF8_MatchText(i8* %88, i32 %89, i8* %90, i32 %91, i32 0, i32 1)
  store i32 %92, i32* %4, align 4
  br label %115

93:                                               ; preds = %63
  %94 = load i8*, i8** %8, align 8
  %95 = load i32, i32* %10, align 4
  %96 = load i8*, i8** %9, align 8
  %97 = load i32, i32* %11, align 4
  %98 = call i32 @MB_MatchText(i8* %94, i32 %95, i8* %96, i32 %97, i32 0, i32 1)
  store i32 %98, i32* %4, align 4
  br label %115

99:                                               ; preds = %57, %54
  %100 = load i32*, i32** %6, align 8
  %101 = call i8* @VARDATA_ANY(i32* %100)
  store i8* %101, i8** %9, align 8
  %102 = load i32*, i32** %6, align 8
  %103 = call i32 @VARSIZE_ANY_EXHDR(i32* %102)
  store i32 %103, i32* %11, align 4
  %104 = load i32*, i32** %5, align 8
  %105 = call i8* @VARDATA_ANY(i32* %104)
  store i8* %105, i8** %8, align 8
  %106 = load i32*, i32** %5, align 8
  %107 = call i32 @VARSIZE_ANY_EXHDR(i32* %106)
  store i32 %107, i32* %10, align 4
  %108 = load i8*, i8** %8, align 8
  %109 = load i32, i32* %10, align 4
  %110 = load i8*, i8** %9, align 8
  %111 = load i32, i32* %11, align 4
  %112 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %113 = load i32, i32* %13, align 4
  %114 = call i32 @SB_IMatchText(i8* %108, i32 %109, i8* %110, i32 %111, %struct.TYPE_4__* %112, i32 %113)
  store i32 %114, i32* %4, align 4
  br label %115

115:                                              ; preds = %99, %93, %87
  %116 = load i32, i32* %4, align 4
  ret i32 %116
}

declare dso_local i64 @lc_ctype_is_c(i64) #1

declare dso_local i32 @OidIsValid(i64) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local i32 @errhint(i8*) #1

declare dso_local %struct.TYPE_4__* @pg_newlocale_from_collation(i64) #1

declare dso_local i32 @pg_database_encoding_max_length(...) #1

declare dso_local i32* @DatumGetTextPP(i32) #1

declare dso_local i32 @DirectFunctionCall1Coll(i32, i64, i32) #1

declare dso_local i32 @PointerGetDatum(i32*) #1

declare dso_local i8* @VARDATA_ANY(i32*) #1

declare dso_local i32 @VARSIZE_ANY_EXHDR(i32*) #1

declare dso_local i64 @GetDatabaseEncoding(...) #1

declare dso_local i32 @UTF8_MatchText(i8*, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @MB_MatchText(i8*, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @SB_IMatchText(i8*, i32, i8*, i32, %struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
