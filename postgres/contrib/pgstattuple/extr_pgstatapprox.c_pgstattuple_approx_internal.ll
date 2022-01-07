; ModuleID = '/home/carl/AnghaBench/postgres/contrib/pgstattuple/extr_pgstatapprox.c_pgstattuple_approx_internal.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/pgstattuple/extr_pgstatapprox.c_pgstattuple_approx_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i64, i64 }
%struct.TYPE_14__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_15__ = type { i32 }

@NUM_OUTPUT_COLUMNS = common dso_local global i32 0, align 4
@TYPEFUNC_COMPOSITE = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"return type must be a row type\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"incorrect number of output arguments\00", align 1
@AccessShareLock = common dso_local global i32 0, align 4
@ERRCODE_FEATURE_NOT_SUPPORTED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [49 x i8] c"cannot access temporary tables of other sessions\00", align 1
@RELKIND_RELATION = common dso_local global i64 0, align 8
@RELKIND_MATVIEW = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [41 x i8] c"\22%s\22 is not a table or materialized view\00", align 1
@HEAP_TABLE_AM_OID = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [26 x i8] c"only heap AM is supported\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pgstattuple_approx_internal(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca %struct.TYPE_14__, align 4
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %13 = bitcast %struct.TYPE_14__* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %13, i8 0, i64 44, i1 false)
  %14 = load i32, i32* @NUM_OUTPUT_COLUMNS, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %8, align 8
  %17 = alloca i32, i64 %15, align 16
  store i64 %15, i64* %9, align 8
  %18 = load i32, i32* @NUM_OUTPUT_COLUMNS, align 4
  %19 = zext i32 %18 to i64
  %20 = alloca i32, i64 %19, align 16
  store i64 %19, i64* %10, align 8
  store i32 0, i32* %12, align 4
  %21 = load i32, i32* %4, align 4
  %22 = call i64 @get_call_result_type(i32 %21, i32* null, %struct.TYPE_15__** %7)
  %23 = load i64, i64* @TYPEFUNC_COMPOSITE, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %2
  %26 = load i32, i32* @ERROR, align 4
  %27 = call i32 @elog(i32 %26, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %28

28:                                               ; preds = %25, %2
  %29 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @NUM_OUTPUT_COLUMNS, align 4
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %28
  %35 = load i32, i32* @ERROR, align 4
  %36 = call i32 @elog(i32 %35, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  br label %37

37:                                               ; preds = %34, %28
  %38 = load i32, i32* %3, align 4
  %39 = load i32, i32* @AccessShareLock, align 4
  %40 = call %struct.TYPE_16__* @relation_open(i32 %38, i32 %39)
  store %struct.TYPE_16__* %40, %struct.TYPE_16__** %5, align 8
  %41 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %42 = call i64 @RELATION_IS_OTHER_TEMP(%struct.TYPE_16__* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %37
  %45 = load i32, i32* @ERROR, align 4
  %46 = load i32, i32* @ERRCODE_FEATURE_NOT_SUPPORTED, align 4
  %47 = call i32 @errcode(i32 %46)
  %48 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0))
  %49 = call i32 @ereport(i32 %45, i32 %48)
  br label %50

50:                                               ; preds = %44, %37
  %51 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @RELKIND_RELATION, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %74, label %58

58:                                               ; preds = %50
  %59 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @RELKIND_MATVIEW, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %74, label %66

66:                                               ; preds = %58
  %67 = load i32, i32* @ERROR, align 4
  %68 = load i32, i32* @ERRCODE_FEATURE_NOT_SUPPORTED, align 4
  %69 = call i32 @errcode(i32 %68)
  %70 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %71 = call i32 @RelationGetRelationName(%struct.TYPE_16__* %70)
  %72 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i32 %71)
  %73 = call i32 @ereport(i32 %67, i32 %72)
  br label %74

74:                                               ; preds = %66, %58, %50
  %75 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_13__*, %struct.TYPE_13__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @HEAP_TABLE_AM_OID, align 8
  %81 = icmp ne i64 %79, %80
  br i1 %81, label %82, label %88

82:                                               ; preds = %74
  %83 = load i32, i32* @ERROR, align 4
  %84 = load i32, i32* @ERRCODE_FEATURE_NOT_SUPPORTED, align 4
  %85 = call i32 @errcode(i32 %84)
  %86 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  %87 = call i32 @ereport(i32 %83, i32 %86)
  br label %88

88:                                               ; preds = %82, %74
  %89 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %90 = call i32 @statapprox_heap(%struct.TYPE_16__* %89, %struct.TYPE_14__* %6)
  %91 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %92 = load i32, i32* @AccessShareLock, align 4
  %93 = call i32 @relation_close(%struct.TYPE_16__* %91, i32 %92)
  %94 = mul nuw i64 4, %15
  %95 = trunc i64 %94 to i32
  %96 = call i32 @memset(i32* %17, i32 0, i32 %95)
  %97 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %6, i32 0, i32 9
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @Int64GetDatum(i32 %98)
  %100 = load i32, i32* %12, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %12, align 4
  %102 = sext i32 %100 to i64
  %103 = getelementptr inbounds i32, i32* %20, i64 %102
  store i32 %99, i32* %103, align 4
  %104 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %6, i32 0, i32 8
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @Float8GetDatum(i32 %105)
  %107 = load i32, i32* %12, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %12, align 4
  %109 = sext i32 %107 to i64
  %110 = getelementptr inbounds i32, i32* %20, i64 %109
  store i32 %106, i32* %110, align 4
  %111 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %6, i32 0, i32 7
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @Int64GetDatum(i32 %112)
  %114 = load i32, i32* %12, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %12, align 4
  %116 = sext i32 %114 to i64
  %117 = getelementptr inbounds i32, i32* %20, i64 %116
  store i32 %113, i32* %117, align 4
  %118 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %6, i32 0, i32 6
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @Int64GetDatum(i32 %119)
  %121 = load i32, i32* %12, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %12, align 4
  %123 = sext i32 %121 to i64
  %124 = getelementptr inbounds i32, i32* %20, i64 %123
  store i32 %120, i32* %124, align 4
  %125 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %6, i32 0, i32 5
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @Float8GetDatum(i32 %126)
  %128 = load i32, i32* %12, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %12, align 4
  %130 = sext i32 %128 to i64
  %131 = getelementptr inbounds i32, i32* %20, i64 %130
  store i32 %127, i32* %131, align 4
  %132 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %6, i32 0, i32 4
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @Int64GetDatum(i32 %133)
  %135 = load i32, i32* %12, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %12, align 4
  %137 = sext i32 %135 to i64
  %138 = getelementptr inbounds i32, i32* %20, i64 %137
  store i32 %134, i32* %138, align 4
  %139 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %6, i32 0, i32 3
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @Int64GetDatum(i32 %140)
  %142 = load i32, i32* %12, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %12, align 4
  %144 = sext i32 %142 to i64
  %145 = getelementptr inbounds i32, i32* %20, i64 %144
  store i32 %141, i32* %145, align 4
  %146 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %6, i32 0, i32 2
  %147 = load i32, i32* %146, align 4
  %148 = call i32 @Float8GetDatum(i32 %147)
  %149 = load i32, i32* %12, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %12, align 4
  %151 = sext i32 %149 to i64
  %152 = getelementptr inbounds i32, i32* %20, i64 %151
  store i32 %148, i32* %152, align 4
  %153 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %6, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = call i32 @Int64GetDatum(i32 %154)
  %156 = load i32, i32* %12, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %12, align 4
  %158 = sext i32 %156 to i64
  %159 = getelementptr inbounds i32, i32* %20, i64 %158
  store i32 %155, i32* %159, align 4
  %160 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %6, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = call i32 @Float8GetDatum(i32 %161)
  %163 = load i32, i32* %12, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %12, align 4
  %165 = sext i32 %163 to i64
  %166 = getelementptr inbounds i32, i32* %20, i64 %165
  store i32 %162, i32* %166, align 4
  %167 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %168 = call i32 @heap_form_tuple(%struct.TYPE_15__* %167, i32* %20, i32* %17)
  store i32 %168, i32* %11, align 4
  %169 = load i32, i32* %11, align 4
  %170 = call i32 @HeapTupleGetDatum(i32 %169)
  %171 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %171)
  ret i32 %170
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i64 @get_call_result_type(i32, i32*, %struct.TYPE_15__**) #3

declare dso_local i32 @elog(i32, i8*) #3

declare dso_local %struct.TYPE_16__* @relation_open(i32, i32) #3

declare dso_local i64 @RELATION_IS_OTHER_TEMP(%struct.TYPE_16__*) #3

declare dso_local i32 @ereport(i32, i32) #3

declare dso_local i32 @errcode(i32) #3

declare dso_local i32 @errmsg(i8*, ...) #3

declare dso_local i32 @RelationGetRelationName(%struct.TYPE_16__*) #3

declare dso_local i32 @statapprox_heap(%struct.TYPE_16__*, %struct.TYPE_14__*) #3

declare dso_local i32 @relation_close(%struct.TYPE_16__*, i32) #3

declare dso_local i32 @memset(i32*, i32, i32) #3

declare dso_local i32 @Int64GetDatum(i32) #3

declare dso_local i32 @Float8GetDatum(i32) #3

declare dso_local i32 @heap_form_tuple(%struct.TYPE_15__*, i32*, i32*) #3

declare dso_local i32 @HeapTupleGetDatum(i32) #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nounwind }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
