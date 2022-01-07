; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_event_trigger.c_insert_event_trigger_tuple.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_event_trigger.c_insert_event_trigger_tuple.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_11__ = type { i64, i8*, i32 }

@Natts_pg_trigger = common dso_local global i32 0, align 4
@EventTriggerRelationId = common dso_local global i32 0, align 4
@RowExclusiveLock = common dso_local global i32 0, align 4
@EventTriggerOidIndexId = common dso_local global i32 0, align 4
@Anum_pg_event_trigger_oid = common dso_local global i32 0, align 4
@Anum_pg_event_trigger_evtname = common dso_local global i32 0, align 4
@Anum_pg_event_trigger_evtevent = common dso_local global i32 0, align 4
@Anum_pg_event_trigger_evtowner = common dso_local global i32 0, align 4
@Anum_pg_event_trigger_evtfoid = common dso_local global i32 0, align 4
@TRIGGER_FIRES_ON_ORIGIN = common dso_local global i32 0, align 4
@Anum_pg_event_trigger_evtenabled = common dso_local global i32 0, align 4
@NIL = common dso_local global i32* null, align 8
@Anum_pg_event_trigger_evttags = common dso_local global i32 0, align 4
@ProcedureRelationId = common dso_local global i32 0, align 4
@DEPENDENCY_NORMAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i8*, i8*, i8*, i32*)* @insert_event_trigger_tuple to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @insert_event_trigger_tuple(i8* %0, i8* %1, i8* %2, i8* %3, i32* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_10__*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_11__, align 8
  %20 = alloca %struct.TYPE_11__, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32* %4, i32** %10, align 8
  %21 = load i32, i32* @Natts_pg_trigger, align 4
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %14, align 8
  %24 = alloca i32, i64 %22, align 16
  store i64 %22, i64* %15, align 8
  %25 = load i32, i32* @Natts_pg_trigger, align 4
  %26 = zext i32 %25 to i64
  %27 = alloca i32, i64 %26, align 16
  store i64 %26, i64* %16, align 8
  %28 = load i32, i32* @EventTriggerRelationId, align 4
  %29 = load i32, i32* @RowExclusiveLock, align 4
  %30 = call %struct.TYPE_10__* @table_open(i32 %28, i32 %29)
  store %struct.TYPE_10__* %30, %struct.TYPE_10__** %11, align 8
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %32 = load i32, i32* @EventTriggerOidIndexId, align 4
  %33 = load i32, i32* @Anum_pg_event_trigger_oid, align 4
  %34 = call i8* @GetNewOidWithIndex(%struct.TYPE_10__* %31, i32 %32, i32 %33)
  store i8* %34, i8** %12, align 8
  %35 = load i8*, i8** %12, align 8
  %36 = call i32 @ObjectIdGetDatum(i8* %35)
  %37 = load i32, i32* @Anum_pg_event_trigger_oid, align 4
  %38 = sub nsw i32 %37, 1
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %24, i64 %39
  store i32 %36, i32* %40, align 4
  %41 = mul nuw i64 4, %26
  %42 = trunc i64 %41 to i32
  %43 = call i32 @memset(i32* %27, i32 0, i32 %42)
  %44 = load i8*, i8** %6, align 8
  %45 = call i32 @namestrcpy(i32* %17, i8* %44)
  %46 = call i32 @NameGetDatum(i32* %17)
  %47 = load i32, i32* @Anum_pg_event_trigger_evtname, align 4
  %48 = sub nsw i32 %47, 1
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %24, i64 %49
  store i32 %46, i32* %50, align 4
  %51 = load i8*, i8** %7, align 8
  %52 = call i32 @namestrcpy(i32* %18, i8* %51)
  %53 = call i32 @NameGetDatum(i32* %18)
  %54 = load i32, i32* @Anum_pg_event_trigger_evtevent, align 4
  %55 = sub nsw i32 %54, 1
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %24, i64 %56
  store i32 %53, i32* %57, align 4
  %58 = load i8*, i8** %8, align 8
  %59 = call i32 @ObjectIdGetDatum(i8* %58)
  %60 = load i32, i32* @Anum_pg_event_trigger_evtowner, align 4
  %61 = sub nsw i32 %60, 1
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %24, i64 %62
  store i32 %59, i32* %63, align 4
  %64 = load i8*, i8** %9, align 8
  %65 = call i32 @ObjectIdGetDatum(i8* %64)
  %66 = load i32, i32* @Anum_pg_event_trigger_evtfoid, align 4
  %67 = sub nsw i32 %66, 1
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %24, i64 %68
  store i32 %65, i32* %69, align 4
  %70 = load i32, i32* @TRIGGER_FIRES_ON_ORIGIN, align 4
  %71 = call i32 @CharGetDatum(i32 %70)
  %72 = load i32, i32* @Anum_pg_event_trigger_evtenabled, align 4
  %73 = sub nsw i32 %72, 1
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %24, i64 %74
  store i32 %71, i32* %75, align 4
  %76 = load i32*, i32** %10, align 8
  %77 = load i32*, i32** @NIL, align 8
  %78 = icmp eq i32* %76, %77
  br i1 %78, label %79, label %84

79:                                               ; preds = %5
  %80 = load i32, i32* @Anum_pg_event_trigger_evttags, align 4
  %81 = sub nsw i32 %80, 1
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %27, i64 %82
  store i32 1, i32* %83, align 4
  br label %91

84:                                               ; preds = %5
  %85 = load i32*, i32** %10, align 8
  %86 = call i32 @filter_list_to_array(i32* %85)
  %87 = load i32, i32* @Anum_pg_event_trigger_evttags, align 4
  %88 = sub nsw i32 %87, 1
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %24, i64 %89
  store i32 %86, i32* %90, align 4
  br label %91

91:                                               ; preds = %84, %79
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @heap_form_tuple(i32 %94, i32* %24, i32* %27)
  store i32 %95, i32* %13, align 4
  %96 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %97 = load i32, i32* %13, align 4
  %98 = call i32 @CatalogTupleInsert(%struct.TYPE_10__* %96, i32 %97)
  %99 = load i32, i32* %13, align 4
  %100 = call i32 @heap_freetuple(i32 %99)
  %101 = load i32, i32* @EventTriggerRelationId, align 4
  %102 = load i8*, i8** %12, align 8
  %103 = load i8*, i8** %8, align 8
  %104 = call i32 @recordDependencyOnOwner(i32 %101, i8* %102, i8* %103)
  %105 = load i32, i32* @EventTriggerRelationId, align 4
  %106 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 2
  store i32 %105, i32* %106, align 8
  %107 = load i8*, i8** %12, align 8
  %108 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 1
  store i8* %107, i8** %108, align 8
  %109 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 0
  store i64 0, i64* %109, align 8
  %110 = load i32, i32* @ProcedureRelationId, align 4
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 2
  store i32 %110, i32* %111, align 8
  %112 = load i8*, i8** %9, align 8
  %113 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 1
  store i8* %112, i8** %113, align 8
  %114 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 0
  store i64 0, i64* %114, align 8
  %115 = load i32, i32* @DEPENDENCY_NORMAL, align 4
  %116 = call i32 @recordDependencyOn(%struct.TYPE_11__* %19, %struct.TYPE_11__* %20, i32 %115)
  %117 = call i32 @recordDependencyOnCurrentExtension(%struct.TYPE_11__* %19, i32 0)
  %118 = load i32, i32* @EventTriggerRelationId, align 4
  %119 = load i8*, i8** %12, align 8
  %120 = call i32 @InvokeObjectPostCreateHook(i32 %118, i8* %119, i32 0)
  %121 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %122 = load i32, i32* @RowExclusiveLock, align 4
  %123 = call i32 @table_close(%struct.TYPE_10__* %121, i32 %122)
  %124 = load i8*, i8** %12, align 8
  %125 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %125)
  ret i8* %124
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.TYPE_10__* @table_open(i32, i32) #2

declare dso_local i8* @GetNewOidWithIndex(%struct.TYPE_10__*, i32, i32) #2

declare dso_local i32 @ObjectIdGetDatum(i8*) #2

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local i32 @namestrcpy(i32*, i8*) #2

declare dso_local i32 @NameGetDatum(i32*) #2

declare dso_local i32 @CharGetDatum(i32) #2

declare dso_local i32 @filter_list_to_array(i32*) #2

declare dso_local i32 @heap_form_tuple(i32, i32*, i32*) #2

declare dso_local i32 @CatalogTupleInsert(%struct.TYPE_10__*, i32) #2

declare dso_local i32 @heap_freetuple(i32) #2

declare dso_local i32 @recordDependencyOnOwner(i32, i8*, i8*) #2

declare dso_local i32 @recordDependencyOn(%struct.TYPE_11__*, %struct.TYPE_11__*, i32) #2

declare dso_local i32 @recordDependencyOnCurrentExtension(%struct.TYPE_11__*, i32) #2

declare dso_local i32 @InvokeObjectPostCreateHook(i32, i8*, i32) #2

declare dso_local i32 @table_close(%struct.TYPE_10__*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
