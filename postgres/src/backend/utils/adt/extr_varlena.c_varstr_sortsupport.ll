; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_varlena.c_varstr_sortsupport.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_varlena.c_varstr_sortsupport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32, double, i32, i32, i64, %struct.TYPE_6__*, i64, i8*, i8* }
%struct.TYPE_6__ = type { i64 }

@BPCHAROID = common dso_local global i64 0, align 8
@bpcharfastcmp_c = common dso_local global i32 0, align 4
@NAMEOID = common dso_local global i64 0, align 8
@namefastcmp_c = common dso_local global i32 0, align 4
@varstrfastcmp_c = common dso_local global i32 0, align 4
@DEFAULT_COLLATION_OID = common dso_local global i64 0, align 8
@namefastcmp_locale = common dso_local global i32 0, align 4
@varlenafastcmp_locale = common dso_local global i32 0, align 4
@COLLPROVIDER_ICU = common dso_local global i64 0, align 8
@TEXTBUFLEN = common dso_local global i32 0, align 4
@varstrcmp_abbrev = common dso_local global i32 0, align 4
@varstr_abbrev_convert = common dso_local global i32 0, align 4
@varstr_abbrev_abort = common dso_local global i32 0, align 4
@PG_UTF8 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @varstr_sortsupport(%struct.TYPE_8__* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %10, align 8
  %14 = load i64, i64* %6, align 8
  %15 = call i32 @check_collation_set(i64 %14)
  %16 = load i64, i64* %6, align 8
  %17 = call i64 @lc_collate_is_c(i64 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %41

19:                                               ; preds = %3
  %20 = load i64, i64* %5, align 8
  %21 = load i64, i64* @BPCHAROID, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %19
  %24 = load i32, i32* @bpcharfastcmp_c, align 4
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 3
  store i32 %24, i32* %26, align 4
  br label %40

27:                                               ; preds = %19
  %28 = load i64, i64* %5, align 8
  %29 = load i64, i64* @NAMEOID, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %27
  %32 = load i32, i32* @namefastcmp_c, align 4
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 3
  store i32 %32, i32* %34, align 4
  store i32 0, i32* %7, align 4
  br label %39

35:                                               ; preds = %27
  %36 = load i32, i32* @varstrfastcmp_c, align 4
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 3
  store i32 %36, i32* %38, align 4
  br label %39

39:                                               ; preds = %35, %31
  br label %40

40:                                               ; preds = %39, %23
  store i32 1, i32* %8, align 4
  br label %61

41:                                               ; preds = %3
  %42 = load i64, i64* %6, align 8
  %43 = load i64, i64* @DEFAULT_COLLATION_OID, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %41
  %46 = load i64, i64* %6, align 8
  %47 = call %struct.TYPE_6__* @pg_newlocale_from_collation(i64 %46)
  store %struct.TYPE_6__* %47, %struct.TYPE_6__** %10, align 8
  br label %48

48:                                               ; preds = %45, %41
  %49 = load i64, i64* %5, align 8
  %50 = load i64, i64* @NAMEOID, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %56

52:                                               ; preds = %48
  %53 = load i32, i32* @namefastcmp_locale, align 4
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 3
  store i32 %53, i32* %55, align 4
  store i32 0, i32* %7, align 4
  br label %60

56:                                               ; preds = %48
  %57 = load i32, i32* @varlenafastcmp_locale, align 4
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 3
  store i32 %57, i32* %59, align 4
  br label %60

60:                                               ; preds = %56, %52
  br label %61

61:                                               ; preds = %60, %40
  %62 = load i32, i32* %8, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %74, label %64

64:                                               ; preds = %61
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %66 = icmp ne %struct.TYPE_6__* %65, null
  br i1 %66, label %67, label %73

67:                                               ; preds = %64
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @COLLPROVIDER_ICU, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %74, label %73

73:                                               ; preds = %67, %64
  store i32 0, i32* %7, align 4
  br label %74

74:                                               ; preds = %73, %67, %61
  %75 = load i32, i32* %7, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %80, label %77

77:                                               ; preds = %74
  %78 = load i32, i32* %8, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %143, label %80

80:                                               ; preds = %77, %74
  %81 = call i8* @palloc(i32 80)
  %82 = bitcast i8* %81 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %82, %struct.TYPE_7__** %9, align 8
  %83 = load i32, i32* @TEXTBUFLEN, align 4
  %84 = call i8* @palloc(i32 %83)
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 13
  store i8* %84, i8** %86, align 8
  %87 = load i32, i32* @TEXTBUFLEN, align 4
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 0
  store i32 %87, i32* %89, align 8
  %90 = load i32, i32* @TEXTBUFLEN, align 4
  %91 = call i8* @palloc(i32 %90)
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 12
  store i8* %91, i8** %93, align 8
  %94 = load i32, i32* @TEXTBUFLEN, align 4
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 1
  store i32 %94, i32* %96, align 4
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 2
  store i32 -1, i32* %98, align 8
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 3
  store i32 -1, i32* %100, align 4
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 11
  store i64 0, i64* %102, align 8
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 10
  store %struct.TYPE_6__* %103, %struct.TYPE_6__** %105, align 8
  %106 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 4
  store i32 1, i32* %107, align 8
  %108 = load i32, i32* %8, align 4
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 5
  store i32 %108, i32* %110, align 4
  %111 = load i64, i64* %5, align 8
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 9
  store i64 %111, i64* %113, align 8
  %114 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %115 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 5
  store %struct.TYPE_7__* %114, %struct.TYPE_7__** %116, align 8
  %117 = load i32, i32* %7, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %142

119:                                              ; preds = %80
  %120 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 0, i32 6
  store double 2.000000e-01, double* %121, align 8
  %122 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i32 0, i32 8
  %124 = call i32 @initHyperLogLog(i32* %123, i32 10)
  %125 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i32 0, i32 7
  %127 = call i32 @initHyperLogLog(i32* %126, i32 10)
  %128 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i32 0, i32 3
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i32 0, i32 4
  store i32 %130, i32* %132, align 8
  %133 = load i32, i32* @varstrcmp_abbrev, align 4
  %134 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i32 0, i32 3
  store i32 %133, i32* %135, align 4
  %136 = load i32, i32* @varstr_abbrev_convert, align 4
  %137 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i32 0, i32 2
  store i32 %136, i32* %138, align 8
  %139 = load i32, i32* @varstr_abbrev_abort, align 4
  %140 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %140, i32 0, i32 1
  store i32 %139, i32* %141, align 4
  br label %142

142:                                              ; preds = %119, %80
  br label %143

143:                                              ; preds = %142, %77
  ret void
}

declare dso_local i32 @check_collation_set(i64) #1

declare dso_local i64 @lc_collate_is_c(i64) #1

declare dso_local %struct.TYPE_6__* @pg_newlocale_from_collation(i64) #1

declare dso_local i8* @palloc(i32) #1

declare dso_local i32 @initHyperLogLog(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
