; ModuleID = '/home/carl/AnghaBench/postgres/src/pl/plpgsql/src/extr_pl_exec.c_plpgsql_exec_get_datum_type.c'
source_filename = "/home/carl/AnghaBench/postgres/src/pl/plpgsql/src/extr_pl_exec.c_plpgsql_exec_get_datum_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i64* }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_16__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_18__ = type { %struct.TYPE_13__*, i32, i32 }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_17__ = type { i64, %struct.TYPE_14__, i32, i32 }
%struct.TYPE_14__ = type { i32 }

@RECORDOID = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_UNDEFINED_COLUMN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"record \22%s\22 has no field \22%s\22\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"unrecognized dtype: %d\00", align 1
@InvalidOid = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @plpgsql_exec_get_datum_type(%struct.TYPE_19__* %0, %struct.TYPE_20__* %1) #0 {
  %3 = alloca %struct.TYPE_19__*, align 8
  %4 = alloca %struct.TYPE_20__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca %struct.TYPE_18__*, align 8
  %8 = alloca %struct.TYPE_17__*, align 8
  %9 = alloca %struct.TYPE_18__*, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %3, align 8
  store %struct.TYPE_20__* %1, %struct.TYPE_20__** %4, align 8
  %10 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %114 [
    i32 128, label %13
    i32 131, label %13
    i32 130, label %21
    i32 129, label %45
  ]

13:                                               ; preds = %2, %2
  %14 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %15 = bitcast %struct.TYPE_20__* %14 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %15, %struct.TYPE_16__** %6, align 8
  %16 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %5, align 4
  br label %121

21:                                               ; preds = %2
  %22 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %23 = bitcast %struct.TYPE_20__* %22 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %23, %struct.TYPE_18__** %7, align 8
  %24 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %25, align 8
  %27 = icmp eq %struct.TYPE_13__* %26, null
  br i1 %27, label %34, label %28

28:                                               ; preds = %21
  %29 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @RECORDOID, align 4
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %28, %21
  %35 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %5, align 4
  br label %44

38:                                               ; preds = %28
  %39 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %5, align 4
  br label %44

44:                                               ; preds = %38, %34
  br label %121

45:                                               ; preds = %2
  %46 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %47 = bitcast %struct.TYPE_20__* %46 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %47, %struct.TYPE_17__** %8, align 8
  %48 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %48, i32 0, i32 0
  %50 = load i64*, i64** %49, align 8
  %51 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = getelementptr inbounds i64, i64* %50, i64 %53
  %55 = load i64, i64* %54, align 8
  %56 = inttoptr i64 %55 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %56, %struct.TYPE_18__** %9, align 8
  %57 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %58 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %58, align 8
  %60 = icmp eq %struct.TYPE_13__* %59, null
  br i1 %60, label %61, label %65

61:                                               ; preds = %45
  %62 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %63 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %64 = call i32 @instantiate_empty_record_variable(%struct.TYPE_19__* %62, %struct.TYPE_18__* %63)
  br label %65

65:                                               ; preds = %61, %45
  %66 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %70 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_13__*, %struct.TYPE_13__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = icmp ne i32 %68, %73
  %75 = zext i1 %74 to i32
  %76 = call i32 @unlikely(i32 %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %109

78:                                               ; preds = %65
  %79 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %80 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_13__*, %struct.TYPE_13__** %80, align 8
  %82 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %83 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %86 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %85, i32 0, i32 1
  %87 = call i32 @expanded_record_lookup_field(%struct.TYPE_13__* %81, i32 %84, %struct.TYPE_14__* %86)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %101, label %89

89:                                               ; preds = %78
  %90 = load i32, i32* @ERROR, align 4
  %91 = load i32, i32* @ERRCODE_UNDEFINED_COLUMN, align 4
  %92 = call i32 @errcode(i32 %91)
  %93 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %94 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %97 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @errmsg(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %95, i32 %98)
  %100 = call i32 @ereport(i32 %90, i32 %99)
  br label %101

101:                                              ; preds = %89, %78
  %102 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %103 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %102, i32 0, i32 0
  %104 = load %struct.TYPE_13__*, %struct.TYPE_13__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %108 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %107, i32 0, i32 2
  store i32 %106, i32* %108, align 4
  br label %109

109:                                              ; preds = %101, %65
  %110 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %111 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  store i32 %113, i32* %5, align 4
  br label %121

114:                                              ; preds = %2
  %115 = load i32, i32* @ERROR, align 4
  %116 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @elog(i32 %115, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %118)
  %120 = load i32, i32* @InvalidOid, align 4
  store i32 %120, i32* %5, align 4
  br label %121

121:                                              ; preds = %114, %109, %44, %13
  %122 = load i32, i32* %5, align 4
  ret i32 %122
}

declare dso_local i32 @instantiate_empty_record_variable(%struct.TYPE_19__*, %struct.TYPE_18__*) #1

declare dso_local i32 @unlikely(i32) #1

declare dso_local i32 @expanded_record_lookup_field(%struct.TYPE_13__*, i32, %struct.TYPE_14__*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i32, i32) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
