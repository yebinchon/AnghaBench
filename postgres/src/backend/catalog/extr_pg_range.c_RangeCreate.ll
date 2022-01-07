; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/catalog/extr_pg_range.c_RangeCreate.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/catalog/extr_pg_range.c_RangeCreate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i8*, i8* }

@Natts_pg_range = common dso_local global i32 0, align 4
@RangeRelationId = common dso_local global i32 0, align 4
@RowExclusiveLock = common dso_local global i32 0, align 4
@Anum_pg_range_rngtypid = common dso_local global i32 0, align 4
@Anum_pg_range_rngsubtype = common dso_local global i32 0, align 4
@Anum_pg_range_rngcollation = common dso_local global i32 0, align 4
@Anum_pg_range_rngsubopc = common dso_local global i32 0, align 4
@Anum_pg_range_rngcanonical = common dso_local global i32 0, align 4
@Anum_pg_range_rngsubdiff = common dso_local global i32 0, align 4
@TypeRelationId = common dso_local global i8* null, align 8
@DEPENDENCY_NORMAL = common dso_local global i32 0, align 4
@OperatorClassRelationId = common dso_local global i8* null, align 8
@CollationRelationId = common dso_local global i8* null, align 8
@ProcedureRelationId = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @RangeCreate(i8* %0, i8* %1, i8* %2, i8* %3, i8* %4, i8* %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_4__, align 8
  %19 = alloca %struct.TYPE_4__, align 8
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  store i8* %5, i8** %12, align 8
  %20 = load i32, i32* @Natts_pg_range, align 4
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %14, align 8
  %23 = alloca i32, i64 %21, align 16
  store i64 %21, i64* %15, align 8
  %24 = load i32, i32* @Natts_pg_range, align 4
  %25 = zext i32 %24 to i64
  %26 = alloca i32, i64 %25, align 16
  store i64 %25, i64* %16, align 8
  %27 = load i32, i32* @RangeRelationId, align 4
  %28 = load i32, i32* @RowExclusiveLock, align 4
  %29 = call i32 @table_open(i32 %27, i32 %28)
  store i32 %29, i32* %13, align 4
  %30 = mul nuw i64 4, %25
  %31 = trunc i64 %30 to i32
  %32 = call i32 @memset(i32* %26, i32 0, i32 %31)
  %33 = load i8*, i8** %7, align 8
  %34 = call i32 @ObjectIdGetDatum(i8* %33)
  %35 = load i32, i32* @Anum_pg_range_rngtypid, align 4
  %36 = sub nsw i32 %35, 1
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %23, i64 %37
  store i32 %34, i32* %38, align 4
  %39 = load i8*, i8** %8, align 8
  %40 = call i32 @ObjectIdGetDatum(i8* %39)
  %41 = load i32, i32* @Anum_pg_range_rngsubtype, align 4
  %42 = sub nsw i32 %41, 1
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %23, i64 %43
  store i32 %40, i32* %44, align 4
  %45 = load i8*, i8** %9, align 8
  %46 = call i32 @ObjectIdGetDatum(i8* %45)
  %47 = load i32, i32* @Anum_pg_range_rngcollation, align 4
  %48 = sub nsw i32 %47, 1
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %23, i64 %49
  store i32 %46, i32* %50, align 4
  %51 = load i8*, i8** %10, align 8
  %52 = call i32 @ObjectIdGetDatum(i8* %51)
  %53 = load i32, i32* @Anum_pg_range_rngsubopc, align 4
  %54 = sub nsw i32 %53, 1
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %23, i64 %55
  store i32 %52, i32* %56, align 4
  %57 = load i8*, i8** %11, align 8
  %58 = call i32 @ObjectIdGetDatum(i8* %57)
  %59 = load i32, i32* @Anum_pg_range_rngcanonical, align 4
  %60 = sub nsw i32 %59, 1
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %23, i64 %61
  store i32 %58, i32* %62, align 4
  %63 = load i8*, i8** %12, align 8
  %64 = call i32 @ObjectIdGetDatum(i8* %63)
  %65 = load i32, i32* @Anum_pg_range_rngsubdiff, align 4
  %66 = sub nsw i32 %65, 1
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %23, i64 %67
  store i32 %64, i32* %68, align 4
  %69 = load i32, i32* %13, align 4
  %70 = call i32 @RelationGetDescr(i32 %69)
  %71 = call i32 @heap_form_tuple(i32 %70, i32* %23, i32* %26)
  store i32 %71, i32* %17, align 4
  %72 = load i32, i32* %13, align 4
  %73 = load i32, i32* %17, align 4
  %74 = call i32 @CatalogTupleInsert(i32 %72, i32 %73)
  %75 = load i32, i32* %17, align 4
  %76 = call i32 @heap_freetuple(i32 %75)
  %77 = load i8*, i8** @TypeRelationId, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 2
  store i8* %77, i8** %78, align 8
  %79 = load i8*, i8** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  store i8* %79, i8** %80, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  store i64 0, i64* %81, align 8
  %82 = load i8*, i8** @TypeRelationId, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 2
  store i8* %82, i8** %83, align 8
  %84 = load i8*, i8** %8, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  store i8* %84, i8** %85, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  store i64 0, i64* %86, align 8
  %87 = load i32, i32* @DEPENDENCY_NORMAL, align 4
  %88 = call i32 @recordDependencyOn(%struct.TYPE_4__* %18, %struct.TYPE_4__* %19, i32 %87)
  %89 = load i8*, i8** @OperatorClassRelationId, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 2
  store i8* %89, i8** %90, align 8
  %91 = load i8*, i8** %10, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  store i8* %91, i8** %92, align 8
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  store i64 0, i64* %93, align 8
  %94 = load i32, i32* @DEPENDENCY_NORMAL, align 4
  %95 = call i32 @recordDependencyOn(%struct.TYPE_4__* %18, %struct.TYPE_4__* %19, i32 %94)
  %96 = load i8*, i8** %9, align 8
  %97 = call i64 @OidIsValid(i8* %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %107

99:                                               ; preds = %6
  %100 = load i8*, i8** @CollationRelationId, align 8
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 2
  store i8* %100, i8** %101, align 8
  %102 = load i8*, i8** %9, align 8
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  store i8* %102, i8** %103, align 8
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  store i64 0, i64* %104, align 8
  %105 = load i32, i32* @DEPENDENCY_NORMAL, align 4
  %106 = call i32 @recordDependencyOn(%struct.TYPE_4__* %18, %struct.TYPE_4__* %19, i32 %105)
  br label %107

107:                                              ; preds = %99, %6
  %108 = load i8*, i8** %11, align 8
  %109 = call i64 @OidIsValid(i8* %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %119

111:                                              ; preds = %107
  %112 = load i8*, i8** @ProcedureRelationId, align 8
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 2
  store i8* %112, i8** %113, align 8
  %114 = load i8*, i8** %11, align 8
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  store i8* %114, i8** %115, align 8
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  store i64 0, i64* %116, align 8
  %117 = load i32, i32* @DEPENDENCY_NORMAL, align 4
  %118 = call i32 @recordDependencyOn(%struct.TYPE_4__* %18, %struct.TYPE_4__* %19, i32 %117)
  br label %119

119:                                              ; preds = %111, %107
  %120 = load i8*, i8** %12, align 8
  %121 = call i64 @OidIsValid(i8* %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %131

123:                                              ; preds = %119
  %124 = load i8*, i8** @ProcedureRelationId, align 8
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 2
  store i8* %124, i8** %125, align 8
  %126 = load i8*, i8** %12, align 8
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  store i8* %126, i8** %127, align 8
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  store i64 0, i64* %128, align 8
  %129 = load i32, i32* @DEPENDENCY_NORMAL, align 4
  %130 = call i32 @recordDependencyOn(%struct.TYPE_4__* %18, %struct.TYPE_4__* %19, i32 %129)
  br label %131

131:                                              ; preds = %123, %119
  %132 = load i32, i32* %13, align 4
  %133 = load i32, i32* @RowExclusiveLock, align 4
  %134 = call i32 @table_close(i32 %132, i32 %133)
  %135 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %135)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @table_open(i32, i32) #2

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local i32 @ObjectIdGetDatum(i8*) #2

declare dso_local i32 @heap_form_tuple(i32, i32*, i32*) #2

declare dso_local i32 @RelationGetDescr(i32) #2

declare dso_local i32 @CatalogTupleInsert(i32, i32) #2

declare dso_local i32 @heap_freetuple(i32) #2

declare dso_local i32 @recordDependencyOn(%struct.TYPE_4__*, %struct.TYPE_4__*, i32) #2

declare dso_local i64 @OidIsValid(i8*) #2

declare dso_local i32 @table_close(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
