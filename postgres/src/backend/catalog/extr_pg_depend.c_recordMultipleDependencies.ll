; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/catalog/extr_pg_depend.c_recordMultipleDependencies.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/catalog/extr_pg_depend.c_recordMultipleDependencies.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, i32 }
%struct.TYPE_11__ = type { i32 }

@Natts_pg_depend = common dso_local global i32 0, align 4
@DependRelationId = common dso_local global i32 0, align 4
@RowExclusiveLock = common dso_local global i32 0, align 4
@Anum_pg_depend_classid = common dso_local global i32 0, align 4
@Anum_pg_depend_objid = common dso_local global i32 0, align 4
@Anum_pg_depend_objsubid = common dso_local global i32 0, align 4
@Anum_pg_depend_refclassid = common dso_local global i32 0, align 4
@Anum_pg_depend_refobjid = common dso_local global i32 0, align 4
@Anum_pg_depend_refobjsubid = common dso_local global i32 0, align 4
@Anum_pg_depend_deptype = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @recordMultipleDependencies(%struct.TYPE_12__* %0, %struct.TYPE_12__* %1, i32 %2, i64 %3) #0 {
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_11__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %5, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  %17 = load i32, i32* @Natts_pg_depend, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %13, align 8
  %20 = alloca i32, i64 %18, align 16
  store i64 %18, i64* %14, align 8
  %21 = load i32, i32* @Natts_pg_depend, align 4
  %22 = zext i32 %21 to i64
  %23 = alloca i32, i64 %22, align 16
  store i64 %22, i64* %15, align 8
  %24 = load i32, i32* %7, align 4
  %25 = icmp sle i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %4
  store i32 1, i32* %16, align 4
  br label %135

27:                                               ; preds = %4
  %28 = call i64 (...) @IsBootstrapProcessingMode()
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %27
  store i32 1, i32* %16, align 4
  br label %135

31:                                               ; preds = %27
  %32 = load i32, i32* @DependRelationId, align 4
  %33 = load i32, i32* @RowExclusiveLock, align 4
  %34 = call %struct.TYPE_11__* @table_open(i32 %32, i32 %33)
  store %struct.TYPE_11__* %34, %struct.TYPE_11__** %9, align 8
  store i32* null, i32** %10, align 8
  %35 = mul nuw i64 4, %18
  %36 = trunc i64 %35 to i32
  %37 = call i32 @memset(i32* %20, i32 0, i32 %36)
  store i32 0, i32* %12, align 4
  br label %38

38:                                               ; preds = %120, %31
  %39 = load i32, i32* %12, align 4
  %40 = load i32, i32* %7, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %125

42:                                               ; preds = %38
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %45 = call i32 @isObjectPinned(%struct.TYPE_12__* %43, %struct.TYPE_11__* %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %119, label %47

47:                                               ; preds = %42
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @ObjectIdGetDatum(i32 %50)
  %52 = load i32, i32* @Anum_pg_depend_classid, align 4
  %53 = sub nsw i32 %52, 1
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %23, i64 %54
  store i32 %51, i32* %55, align 4
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @ObjectIdGetDatum(i32 %58)
  %60 = load i32, i32* @Anum_pg_depend_objid, align 4
  %61 = sub nsw i32 %60, 1
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %23, i64 %62
  store i32 %59, i32* %63, align 4
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @Int32GetDatum(i32 %66)
  %68 = load i32, i32* @Anum_pg_depend_objsubid, align 4
  %69 = sub nsw i32 %68, 1
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %23, i64 %70
  store i32 %67, i32* %71, align 4
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @ObjectIdGetDatum(i32 %74)
  %76 = load i32, i32* @Anum_pg_depend_refclassid, align 4
  %77 = sub nsw i32 %76, 1
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %23, i64 %78
  store i32 %75, i32* %79, align 4
  %80 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @ObjectIdGetDatum(i32 %82)
  %84 = load i32, i32* @Anum_pg_depend_refobjid, align 4
  %85 = sub nsw i32 %84, 1
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %23, i64 %86
  store i32 %83, i32* %87, align 4
  %88 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @Int32GetDatum(i32 %90)
  %92 = load i32, i32* @Anum_pg_depend_refobjsubid, align 4
  %93 = sub nsw i32 %92, 1
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %23, i64 %94
  store i32 %91, i32* %95, align 4
  %96 = load i64, i64* %8, align 8
  %97 = trunc i64 %96 to i8
  %98 = call i32 @CharGetDatum(i8 signext %97)
  %99 = load i32, i32* @Anum_pg_depend_deptype, align 4
  %100 = sub nsw i32 %99, 1
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %23, i64 %101
  store i32 %98, i32* %102, align 4
  %103 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %104 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @heap_form_tuple(i32 %105, i32* %23, i32* %20)
  store i32 %106, i32* %11, align 4
  %107 = load i32*, i32** %10, align 8
  %108 = icmp eq i32* %107, null
  br i1 %108, label %109, label %112

109:                                              ; preds = %47
  %110 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %111 = call i32* @CatalogOpenIndexes(%struct.TYPE_11__* %110)
  store i32* %111, i32** %10, align 8
  br label %112

112:                                              ; preds = %109, %47
  %113 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %114 = load i32, i32* %11, align 4
  %115 = load i32*, i32** %10, align 8
  %116 = call i32 @CatalogTupleInsertWithInfo(%struct.TYPE_11__* %113, i32 %114, i32* %115)
  %117 = load i32, i32* %11, align 4
  %118 = call i32 @heap_freetuple(i32 %117)
  br label %119

119:                                              ; preds = %112, %42
  br label %120

120:                                              ; preds = %119
  %121 = load i32, i32* %12, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %12, align 4
  %123 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %124 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %123, i32 1
  store %struct.TYPE_12__* %124, %struct.TYPE_12__** %6, align 8
  br label %38

125:                                              ; preds = %38
  %126 = load i32*, i32** %10, align 8
  %127 = icmp ne i32* %126, null
  br i1 %127, label %128, label %131

128:                                              ; preds = %125
  %129 = load i32*, i32** %10, align 8
  %130 = call i32 @CatalogCloseIndexes(i32* %129)
  br label %131

131:                                              ; preds = %128, %125
  %132 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %133 = load i32, i32* @RowExclusiveLock, align 4
  %134 = call i32 @table_close(%struct.TYPE_11__* %132, i32 %133)
  store i32 0, i32* %16, align 4
  br label %135

135:                                              ; preds = %131, %30, %26
  %136 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %136)
  %137 = load i32, i32* %16, align 4
  switch i32 %137, label %139 [
    i32 0, label %138
    i32 1, label %138
  ]

138:                                              ; preds = %135, %135
  ret void

139:                                              ; preds = %135
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @IsBootstrapProcessingMode(...) #2

declare dso_local %struct.TYPE_11__* @table_open(i32, i32) #2

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local i32 @isObjectPinned(%struct.TYPE_12__*, %struct.TYPE_11__*) #2

declare dso_local i32 @ObjectIdGetDatum(i32) #2

declare dso_local i32 @Int32GetDatum(i32) #2

declare dso_local i32 @CharGetDatum(i8 signext) #2

declare dso_local i32 @heap_form_tuple(i32, i32*, i32*) #2

declare dso_local i32* @CatalogOpenIndexes(%struct.TYPE_11__*) #2

declare dso_local i32 @CatalogTupleInsertWithInfo(%struct.TYPE_11__*, i32, i32*) #2

declare dso_local i32 @heap_freetuple(i32) #2

declare dso_local i32 @CatalogCloseIndexes(i32*) #2

declare dso_local i32 @table_close(%struct.TYPE_11__*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
