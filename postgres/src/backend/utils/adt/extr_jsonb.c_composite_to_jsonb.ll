; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_jsonb.c_composite_to_jsonb.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_jsonb.c_composite_to_jsonb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32, i8* }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_22__ = type { i32, i32 }
%struct.TYPE_20__ = type { %struct.TYPE_18__, i32 }
%struct.TYPE_18__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i8*, i32 }
%struct.TYPE_23__ = type { i32, i32, i64 }

@WJB_BEGIN_OBJECT = common dso_local global i32 0, align 4
@jbvString = common dso_local global i32 0, align 4
@WJB_KEY = common dso_local global i32 0, align 4
@JSONBTYPE_NULL = common dso_local global i32 0, align 4
@InvalidOid = common dso_local global i32 0, align 4
@WJB_END_OBJECT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.TYPE_21__*)* @composite_to_jsonb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @composite_to_jsonb(i32 %0, %struct.TYPE_21__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_21__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_19__*, align 8
  %9 = alloca %struct.TYPE_22__, align 4
  %10 = alloca %struct.TYPE_22__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_20__, align 8
  %18 = alloca %struct.TYPE_23__*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_21__* %1, %struct.TYPE_21__** %4, align 8
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @DatumGetHeapTupleHeader(i32 %19)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @HeapTupleHeaderGetTypeId(i32 %21)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @HeapTupleHeaderGetTypMod(i32 %23)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* %7, align 4
  %27 = call %struct.TYPE_19__* @lookup_rowtype_tupdesc(i32 %25, i32 %26)
  store %struct.TYPE_19__* %27, %struct.TYPE_19__** %8, align 8
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @HeapTupleHeaderGetDatumLength(i32 %28)
  %30 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %9, i32 0, i32 1
  store i32 %29, i32* %30, align 4
  %31 = load i32, i32* %5, align 4
  %32 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %9, i32 0, i32 0
  store i32 %31, i32* %32, align 4
  store %struct.TYPE_22__* %9, %struct.TYPE_22__** %10, align 8
  %33 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %33, i32 0, i32 0
  %35 = load i32, i32* @WJB_BEGIN_OBJECT, align 4
  %36 = call i8* @pushJsonbValue(i32* %34, i32 %35, %struct.TYPE_20__* null)
  %37 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %37, i32 0, i32 1
  store i8* %36, i8** %38, align 8
  store i32 0, i32* %11, align 4
  br label %39

39:                                               ; preds = %98, %2
  %40 = load i32, i32* %11, align 4
  %41 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp slt i32 %40, %43
  br i1 %44, label %45, label %101

45:                                               ; preds = %39
  %46 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %47 = load i32, i32* %11, align 4
  %48 = call %struct.TYPE_23__* @TupleDescAttr(%struct.TYPE_19__* %46, i32 %47)
  store %struct.TYPE_23__* %48, %struct.TYPE_23__** %18, align 8
  %49 = load %struct.TYPE_23__*, %struct.TYPE_23__** %18, align 8
  %50 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %45
  br label %98

54:                                               ; preds = %45
  %55 = load %struct.TYPE_23__*, %struct.TYPE_23__** %18, align 8
  %56 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i8* @NameStr(i32 %57)
  store i8* %58, i8** %14, align 8
  %59 = load i32, i32* @jbvString, align 4
  %60 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %17, i32 0, i32 1
  store i32 %59, i32* %60, align 8
  %61 = load i8*, i8** %14, align 8
  %62 = call i32 @strlen(i8* %61)
  %63 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %17, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %64, i32 0, i32 1
  store i32 %62, i32* %65, align 8
  %66 = load i8*, i8** %14, align 8
  %67 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %17, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %68, i32 0, i32 0
  store i8* %66, i8** %69, align 8
  %70 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %70, i32 0, i32 0
  %72 = load i32, i32* @WJB_KEY, align 4
  %73 = call i8* @pushJsonbValue(i32* %71, i32 %72, %struct.TYPE_20__* %17)
  %74 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %74, i32 0, i32 1
  store i8* %73, i8** %75, align 8
  %76 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %77 = load i32, i32* %11, align 4
  %78 = add nsw i32 %77, 1
  %79 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %80 = call i32 @heap_getattr(%struct.TYPE_22__* %76, i32 %78, %struct.TYPE_19__* %79, i32* %13)
  store i32 %80, i32* %12, align 4
  %81 = load i32, i32* %13, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %54
  %84 = load i32, i32* @JSONBTYPE_NULL, align 4
  store i32 %84, i32* %15, align 4
  %85 = load i32, i32* @InvalidOid, align 4
  store i32 %85, i32* %16, align 4
  br label %91

86:                                               ; preds = %54
  %87 = load %struct.TYPE_23__*, %struct.TYPE_23__** %18, align 8
  %88 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @jsonb_categorize_type(i32 %89, i32* %15, i32* %16)
  br label %91

91:                                               ; preds = %86, %83
  %92 = load i32, i32* %12, align 4
  %93 = load i32, i32* %13, align 4
  %94 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %95 = load i32, i32* %15, align 4
  %96 = load i32, i32* %16, align 4
  %97 = call i32 @datum_to_jsonb(i32 %92, i32 %93, %struct.TYPE_21__* %94, i32 %95, i32 %96, i32 0)
  br label %98

98:                                               ; preds = %91, %53
  %99 = load i32, i32* %11, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %11, align 4
  br label %39

101:                                              ; preds = %39
  %102 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %102, i32 0, i32 0
  %104 = load i32, i32* @WJB_END_OBJECT, align 4
  %105 = call i8* @pushJsonbValue(i32* %103, i32 %104, %struct.TYPE_20__* null)
  %106 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %106, i32 0, i32 1
  store i8* %105, i8** %107, align 8
  %108 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %109 = call i32 @ReleaseTupleDesc(%struct.TYPE_19__* %108)
  ret void
}

declare dso_local i32 @DatumGetHeapTupleHeader(i32) #1

declare dso_local i32 @HeapTupleHeaderGetTypeId(i32) #1

declare dso_local i32 @HeapTupleHeaderGetTypMod(i32) #1

declare dso_local %struct.TYPE_19__* @lookup_rowtype_tupdesc(i32, i32) #1

declare dso_local i32 @HeapTupleHeaderGetDatumLength(i32) #1

declare dso_local i8* @pushJsonbValue(i32*, i32, %struct.TYPE_20__*) #1

declare dso_local %struct.TYPE_23__* @TupleDescAttr(%struct.TYPE_19__*, i32) #1

declare dso_local i8* @NameStr(i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @heap_getattr(%struct.TYPE_22__*, i32, %struct.TYPE_19__*, i32*) #1

declare dso_local i32 @jsonb_categorize_type(i32, i32*, i32*) #1

declare dso_local i32 @datum_to_jsonb(i32, i32, %struct.TYPE_21__*, i32, i32, i32) #1

declare dso_local i32 @ReleaseTupleDesc(%struct.TYPE_19__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
