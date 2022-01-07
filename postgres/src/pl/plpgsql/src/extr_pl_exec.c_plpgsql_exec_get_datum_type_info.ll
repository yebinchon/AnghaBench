; ModuleID = '/home/carl/AnghaBench/postgres/src/pl/plpgsql/src/extr_pl_exec.c_plpgsql_exec_get_datum_type_info.c'
source_filename = "/home/carl/AnghaBench/postgres/src/pl/plpgsql/src/extr_pl_exec.c_plpgsql_exec_get_datum_type_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i64* }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_16__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32, i32, i32 }
%struct.TYPE_18__ = type { %struct.TYPE_13__*, i32, i32 }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_17__ = type { i64, %struct.TYPE_14__, i32, i32 }
%struct.TYPE_14__ = type { i32, i32, i32 }

@RECORDOID = common dso_local global i32 0, align 4
@InvalidOid = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_UNDEFINED_COLUMN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"record \22%s\22 has no field \22%s\22\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"unrecognized dtype: %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @plpgsql_exec_get_datum_type_info(%struct.TYPE_19__* %0, %struct.TYPE_20__* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca %struct.TYPE_19__*, align 8
  %7 = alloca %struct.TYPE_20__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_16__*, align 8
  %12 = alloca %struct.TYPE_18__*, align 8
  %13 = alloca %struct.TYPE_17__*, align 8
  %14 = alloca %struct.TYPE_18__*, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %6, align 8
  store %struct.TYPE_20__* %1, %struct.TYPE_20__** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %15 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  switch i32 %17, label %149 [
    i32 128, label %18
    i32 131, label %18
    i32 130, label %39
    i32 129, label %69
  ]

18:                                               ; preds = %5, %5
  %19 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %20 = bitcast %struct.TYPE_20__* %19 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %20, %struct.TYPE_16__** %11, align 8
  %21 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %22 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_15__*, %struct.TYPE_15__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = load i32*, i32** %8, align 8
  store i32 %25, i32* %26, align 4
  %27 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %28 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_15__*, %struct.TYPE_15__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32*, i32** %9, align 8
  store i32 %31, i32* %32, align 4
  %33 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %34 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_15__*, %struct.TYPE_15__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32*, i32** %10, align 8
  store i32 %37, i32* %38, align 4
  br label %160

39:                                               ; preds = %5
  %40 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %41 = bitcast %struct.TYPE_20__* %40 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %41, %struct.TYPE_18__** %12, align 8
  %42 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %43 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %43, align 8
  %45 = icmp eq %struct.TYPE_13__* %44, null
  br i1 %45, label %52, label %46

46:                                               ; preds = %39
  %47 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %48 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @RECORDOID, align 4
  %51 = icmp ne i32 %49, %50
  br i1 %51, label %52, label %58

52:                                               ; preds = %46, %39
  %53 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %54 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = load i32*, i32** %8, align 8
  store i32 %55, i32* %56, align 4
  %57 = load i32*, i32** %9, align 8
  store i32 -1, i32* %57, align 4
  br label %66

58:                                               ; preds = %46
  %59 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %60 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load i32*, i32** %8, align 8
  store i32 %63, i32* %64, align 4
  %65 = load i32*, i32** %9, align 8
  store i32 -1, i32* %65, align 4
  br label %66

66:                                               ; preds = %58, %52
  %67 = load i32, i32* @InvalidOid, align 4
  %68 = load i32*, i32** %10, align 8
  store i32 %67, i32* %68, align 4
  br label %160

69:                                               ; preds = %5
  %70 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %71 = bitcast %struct.TYPE_20__* %70 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %71, %struct.TYPE_17__** %13, align 8
  %72 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %72, i32 0, i32 0
  %74 = load i64*, i64** %73, align 8
  %75 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %76 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = getelementptr inbounds i64, i64* %74, i64 %77
  %79 = load i64, i64* %78, align 8
  %80 = inttoptr i64 %79 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %80, %struct.TYPE_18__** %14, align 8
  %81 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %82 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %81, i32 0, i32 0
  %83 = load %struct.TYPE_13__*, %struct.TYPE_13__** %82, align 8
  %84 = icmp eq %struct.TYPE_13__* %83, null
  br i1 %84, label %85, label %89

85:                                               ; preds = %69
  %86 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %87 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %88 = call i32 @instantiate_empty_record_variable(%struct.TYPE_19__* %86, %struct.TYPE_18__* %87)
  br label %89

89:                                               ; preds = %85, %69
  %90 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %91 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %94 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %93, i32 0, i32 0
  %95 = load %struct.TYPE_13__*, %struct.TYPE_13__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = icmp ne i32 %92, %97
  %99 = zext i1 %98 to i32
  %100 = call i32 @unlikely(i32 %99)
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %133

102:                                              ; preds = %89
  %103 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %104 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %103, i32 0, i32 0
  %105 = load %struct.TYPE_13__*, %struct.TYPE_13__** %104, align 8
  %106 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %107 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %106, i32 0, i32 3
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %110 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %109, i32 0, i32 1
  %111 = call i32 @expanded_record_lookup_field(%struct.TYPE_13__* %105, i32 %108, %struct.TYPE_14__* %110)
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %125, label %113

113:                                              ; preds = %102
  %114 = load i32, i32* @ERROR, align 4
  %115 = load i32, i32* @ERRCODE_UNDEFINED_COLUMN, align 4
  %116 = call i32 @errcode(i32 %115)
  %117 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %118 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 8
  %120 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %121 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %120, i32 0, i32 3
  %122 = load i32, i32* %121, align 8
  %123 = call i32 @errmsg(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %119, i32 %122)
  %124 = call i32 @ereport(i32 %114, i32 %123)
  br label %125

125:                                              ; preds = %113, %102
  %126 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %127 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %126, i32 0, i32 0
  %128 = load %struct.TYPE_13__*, %struct.TYPE_13__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %132 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %131, i32 0, i32 2
  store i32 %130, i32* %132, align 4
  br label %133

133:                                              ; preds = %125, %89
  %134 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %135 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %134, i32 0, i32 1
  %136 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 8
  %138 = load i32*, i32** %8, align 8
  store i32 %137, i32* %138, align 4
  %139 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %140 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %139, i32 0, i32 1
  %141 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = load i32*, i32** %9, align 8
  store i32 %142, i32* %143, align 4
  %144 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %145 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %144, i32 0, i32 1
  %146 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = load i32*, i32** %10, align 8
  store i32 %147, i32* %148, align 4
  br label %160

149:                                              ; preds = %5
  %150 = load i32, i32* @ERROR, align 4
  %151 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %152 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = call i32 @elog(i32 %150, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %153)
  %155 = load i32, i32* @InvalidOid, align 4
  %156 = load i32*, i32** %8, align 8
  store i32 %155, i32* %156, align 4
  %157 = load i32*, i32** %9, align 8
  store i32 -1, i32* %157, align 4
  %158 = load i32, i32* @InvalidOid, align 4
  %159 = load i32*, i32** %10, align 8
  store i32 %158, i32* %159, align 4
  br label %160

160:                                              ; preds = %149, %133, %66, %18
  ret void
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
