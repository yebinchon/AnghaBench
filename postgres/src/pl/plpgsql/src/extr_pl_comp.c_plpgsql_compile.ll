; ModuleID = '/home/carl/AnghaBench/postgres/src/pl/plpgsql/src/extr_pl_comp.c_plpgsql_compile.c'
source_filename = "/home/carl/AnghaBench/postgres/src/pl/plpgsql/src/extr_pl_comp.c_plpgsql_compile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i64, i64, i32 }
%struct.TYPE_21__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i8*, i32 }
%struct.TYPE_20__ = type { i32, i32 }

@PROCOID = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"cache lookup failed for function %u\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_19__* @plpgsql_compile(%struct.TYPE_21__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_21__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_20__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_19__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %5, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %17 = load i32, i32* @PROCOID, align 4
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @ObjectIdGetDatum(i32 %18)
  %20 = call %struct.TYPE_20__* @SearchSysCache1(i32 %17, i32 %19)
  store %struct.TYPE_20__* %20, %struct.TYPE_20__** %6, align 8
  %21 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %22 = call i32 @HeapTupleIsValid(%struct.TYPE_20__* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %2
  %25 = load i32, i32* @ERROR, align 4
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @elog(i32 %25, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %26)
  br label %28

28:                                               ; preds = %24, %2
  %29 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %30 = call i64 @GETSTRUCT(%struct.TYPE_20__* %29)
  store i64 %30, i64* %7, align 8
  %31 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_18__*, %struct.TYPE_18__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = bitcast i8* %35 to %struct.TYPE_19__*
  store %struct.TYPE_19__* %36, %struct.TYPE_19__** %8, align 8
  br label %37

37:                                               ; preds = %76, %28
  %38 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %39 = icmp ne %struct.TYPE_19__* %38, null
  br i1 %39, label %46, label %40

40:                                               ; preds = %37
  %41 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %42 = load i64, i64* %7, align 8
  %43 = load i32, i32* %4, align 4
  %44 = call i32 @compute_function_hashkey(%struct.TYPE_21__* %41, i64 %42, i32* %9, i32 %43)
  store i32 1, i32* %11, align 4
  %45 = call %struct.TYPE_19__* @plpgsql_HashTableLookup(i32* %9)
  store %struct.TYPE_19__* %45, %struct.TYPE_19__** %8, align 8
  br label %46

46:                                               ; preds = %40, %37
  %47 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %48 = icmp ne %struct.TYPE_19__* %47, null
  br i1 %48, label %49, label %80

49:                                               ; preds = %46
  %50 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i64 @HeapTupleHeaderGetRawXmin(i32 %55)
  %57 = icmp eq i64 %52, %56
  br i1 %57, label %58, label %66

58:                                               ; preds = %49
  %59 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %59, i32 0, i32 2
  %61 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %61, i32 0, i32 0
  %63 = call i64 @ItemPointerEquals(i32* %60, i32* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %58
  store i32 1, i32* %10, align 4
  br label %79

66:                                               ; preds = %58, %49
  %67 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %68 = call i32 @delete_function(%struct.TYPE_19__* %67)
  %69 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %66
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %8, align 8
  %74 = load i32, i32* %11, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %77, label %76

76:                                               ; preds = %73
  br label %37

77:                                               ; preds = %73
  br label %78

78:                                               ; preds = %77, %66
  br label %79

79:                                               ; preds = %78, %65
  br label %80

80:                                               ; preds = %79, %46
  %81 = load i32, i32* %10, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %97, label %83

83:                                               ; preds = %80
  %84 = load i32, i32* %11, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %91, label %86

86:                                               ; preds = %83
  %87 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %88 = load i64, i64* %7, align 8
  %89 = load i32, i32* %4, align 4
  %90 = call i32 @compute_function_hashkey(%struct.TYPE_21__* %87, i64 %88, i32* %9, i32 %89)
  br label %91

91:                                               ; preds = %86, %83
  %92 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %93 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %94 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %95 = load i32, i32* %4, align 4
  %96 = call %struct.TYPE_19__* @do_compile(%struct.TYPE_21__* %92, %struct.TYPE_20__* %93, %struct.TYPE_19__* %94, i32* %9, i32 %95)
  store %struct.TYPE_19__* %96, %struct.TYPE_19__** %8, align 8
  br label %97

97:                                               ; preds = %91, %80
  %98 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %99 = call i32 @ReleaseSysCache(%struct.TYPE_20__* %98)
  %100 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %101 = bitcast %struct.TYPE_19__* %100 to i8*
  %102 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %103 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %102, i32 0, i32 0
  %104 = load %struct.TYPE_18__*, %struct.TYPE_18__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %104, i32 0, i32 0
  store i8* %101, i8** %105, align 8
  %106 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  ret %struct.TYPE_19__* %106
}

declare dso_local %struct.TYPE_20__* @SearchSysCache1(i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i32) #1

declare dso_local i32 @HeapTupleIsValid(%struct.TYPE_20__*) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

declare dso_local i64 @GETSTRUCT(%struct.TYPE_20__*) #1

declare dso_local i32 @compute_function_hashkey(%struct.TYPE_21__*, i64, i32*, i32) #1

declare dso_local %struct.TYPE_19__* @plpgsql_HashTableLookup(i32*) #1

declare dso_local i64 @HeapTupleHeaderGetRawXmin(i32) #1

declare dso_local i64 @ItemPointerEquals(i32*, i32*) #1

declare dso_local i32 @delete_function(%struct.TYPE_19__*) #1

declare dso_local %struct.TYPE_19__* @do_compile(%struct.TYPE_21__*, %struct.TYPE_20__*, %struct.TYPE_19__*, i32*, i32) #1

declare dso_local i32 @ReleaseSysCache(%struct.TYPE_20__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
