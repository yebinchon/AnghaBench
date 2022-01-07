; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/catalog/extr_pg_conversion.c_ConversionCreate.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/catalog/extr_pg_conversion.c_ConversionCreate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64, i8*, i32 }
%struct.TYPE_11__ = type { i32 }

@Natts_pg_conversion = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"no conversion name supplied\00", align 1
@CONNAMENSP = common dso_local global i32 0, align 4
@ERRCODE_DUPLICATE_OBJECT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"conversion \22%s\22 already exists\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"default conversion for %s to %s already exists\00", align 1
@ConversionRelationId = common dso_local global i32 0, align 4
@RowExclusiveLock = common dso_local global i32 0, align 4
@ConversionOidIndexId = common dso_local global i32 0, align 4
@Anum_pg_conversion_oid = common dso_local global i32 0, align 4
@Anum_pg_conversion_conname = common dso_local global i32 0, align 4
@Anum_pg_conversion_connamespace = common dso_local global i32 0, align 4
@Anum_pg_conversion_conowner = common dso_local global i32 0, align 4
@Anum_pg_conversion_conforencoding = common dso_local global i32 0, align 4
@Anum_pg_conversion_contoencoding = common dso_local global i32 0, align 4
@Anum_pg_conversion_conproc = common dso_local global i32 0, align 4
@Anum_pg_conversion_condefault = common dso_local global i32 0, align 4
@ProcedureRelationId = common dso_local global i32 0, align 4
@DEPENDENCY_NORMAL = common dso_local global i32 0, align 4
@NamespaceRelationId = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ConversionCreate(%struct.TYPE_12__* noalias sret %0, i8* %1, i8* %2, i8* %3, i32 %4, i32 %5, i8* %6, i32 %7) #0 {
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_11__*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i32, align 4
  %25 = alloca %struct.TYPE_12__, align 8
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i8* %6, i8** %14, align 8
  store i32 %7, i32* %15, align 4
  %26 = load i32, i32* @Natts_pg_conversion, align 4
  %27 = zext i32 %26 to i64
  %28 = call i8* @llvm.stacksave()
  store i8* %28, i8** %21, align 8
  %29 = alloca i32, i64 %27, align 16
  store i64 %27, i64* %22, align 8
  %30 = load i32, i32* @Natts_pg_conversion, align 4
  %31 = zext i32 %30 to i64
  %32 = alloca i64, i64 %31, align 16
  store i64 %31, i64* %23, align 8
  %33 = load i8*, i8** %9, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %8
  %36 = load i32, i32* @ERROR, align 4
  %37 = call i32 @elog(i32 %36, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %38

38:                                               ; preds = %35, %8
  %39 = load i32, i32* @CONNAMENSP, align 4
  %40 = load i8*, i8** %9, align 8
  %41 = call i32 @PointerGetDatum(i8* %40)
  %42 = load i8*, i8** %10, align 8
  %43 = call i64 @ObjectIdGetDatum(i8* %42)
  %44 = call i64 @SearchSysCacheExists2(i32 %39, i32 %41, i64 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %38
  %47 = load i32, i32* @ERROR, align 4
  %48 = load i32, i32* @ERRCODE_DUPLICATE_OBJECT, align 4
  %49 = call i32 @errcode(i32 %48)
  %50 = load i8*, i8** %9, align 8
  %51 = call i32 (i8*, i8*, ...) @errmsg(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i8* %50)
  %52 = call i32 @ereport(i32 %47, i32 %51)
  br label %53

53:                                               ; preds = %46, %38
  %54 = load i32, i32* %15, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %75

56:                                               ; preds = %53
  %57 = load i8*, i8** %10, align 8
  %58 = load i32, i32* %12, align 4
  %59 = load i32, i32* %13, align 4
  %60 = call i64 @FindDefaultConversion(i8* %57, i32 %58, i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %74

62:                                               ; preds = %56
  %63 = load i32, i32* @ERROR, align 4
  %64 = load i32, i32* @ERRCODE_DUPLICATE_OBJECT, align 4
  %65 = call i32 @errcode(i32 %64)
  %66 = load i32, i32* %12, align 4
  %67 = call i32 @pg_encoding_to_char(i32 %66)
  %68 = sext i32 %67 to i64
  %69 = inttoptr i64 %68 to i8*
  %70 = load i32, i32* %13, align 4
  %71 = call i32 @pg_encoding_to_char(i32 %70)
  %72 = call i32 (i8*, i8*, ...) @errmsg(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i8* %69, i32 %71)
  %73 = call i32 @ereport(i32 %63, i32 %72)
  br label %74

74:                                               ; preds = %62, %56
  br label %75

75:                                               ; preds = %74, %53
  %76 = load i32, i32* @ConversionRelationId, align 4
  %77 = load i32, i32* @RowExclusiveLock, align 4
  %78 = call %struct.TYPE_11__* @table_open(i32 %76, i32 %77)
  store %struct.TYPE_11__* %78, %struct.TYPE_11__** %17, align 8
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  store i32 %81, i32* %18, align 4
  store i32 0, i32* %16, align 4
  br label %82

82:                                               ; preds = %93, %75
  %83 = load i32, i32* %16, align 4
  %84 = load i32, i32* @Natts_pg_conversion, align 4
  %85 = icmp slt i32 %83, %84
  br i1 %85, label %86, label %96

86:                                               ; preds = %82
  %87 = load i32, i32* %16, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %29, i64 %88
  store i32 0, i32* %89, align 4
  %90 = load i32, i32* %16, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i64, i64* %32, i64 %91
  store i64 0, i64* %92, align 8
  br label %93

93:                                               ; preds = %86
  %94 = load i32, i32* %16, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %16, align 4
  br label %82

96:                                               ; preds = %82
  %97 = load i8*, i8** %9, align 8
  %98 = call i32 @namestrcpy(i32* %24, i8* %97)
  %99 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %100 = load i32, i32* @ConversionOidIndexId, align 4
  %101 = load i32, i32* @Anum_pg_conversion_oid, align 4
  %102 = call i8* @GetNewOidWithIndex(%struct.TYPE_11__* %99, i32 %100, i32 %101)
  store i8* %102, i8** %20, align 8
  %103 = load i8*, i8** %20, align 8
  %104 = call i64 @ObjectIdGetDatum(i8* %103)
  %105 = load i32, i32* @Anum_pg_conversion_oid, align 4
  %106 = sub nsw i32 %105, 1
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i64, i64* %32, i64 %107
  store i64 %104, i64* %108, align 8
  %109 = call i64 @NameGetDatum(i32* %24)
  %110 = load i32, i32* @Anum_pg_conversion_conname, align 4
  %111 = sub nsw i32 %110, 1
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i64, i64* %32, i64 %112
  store i64 %109, i64* %113, align 8
  %114 = load i8*, i8** %10, align 8
  %115 = call i64 @ObjectIdGetDatum(i8* %114)
  %116 = load i32, i32* @Anum_pg_conversion_connamespace, align 4
  %117 = sub nsw i32 %116, 1
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i64, i64* %32, i64 %118
  store i64 %115, i64* %119, align 8
  %120 = load i8*, i8** %11, align 8
  %121 = call i64 @ObjectIdGetDatum(i8* %120)
  %122 = load i32, i32* @Anum_pg_conversion_conowner, align 4
  %123 = sub nsw i32 %122, 1
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i64, i64* %32, i64 %124
  store i64 %121, i64* %125, align 8
  %126 = load i32, i32* %12, align 4
  %127 = call i64 @Int32GetDatum(i32 %126)
  %128 = load i32, i32* @Anum_pg_conversion_conforencoding, align 4
  %129 = sub nsw i32 %128, 1
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i64, i64* %32, i64 %130
  store i64 %127, i64* %131, align 8
  %132 = load i32, i32* %13, align 4
  %133 = call i64 @Int32GetDatum(i32 %132)
  %134 = load i32, i32* @Anum_pg_conversion_contoencoding, align 4
  %135 = sub nsw i32 %134, 1
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i64, i64* %32, i64 %136
  store i64 %133, i64* %137, align 8
  %138 = load i8*, i8** %14, align 8
  %139 = call i64 @ObjectIdGetDatum(i8* %138)
  %140 = load i32, i32* @Anum_pg_conversion_conproc, align 4
  %141 = sub nsw i32 %140, 1
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i64, i64* %32, i64 %142
  store i64 %139, i64* %143, align 8
  %144 = load i32, i32* %15, align 4
  %145 = call i64 @BoolGetDatum(i32 %144)
  %146 = load i32, i32* @Anum_pg_conversion_condefault, align 4
  %147 = sub nsw i32 %146, 1
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i64, i64* %32, i64 %148
  store i64 %145, i64* %149, align 8
  %150 = load i32, i32* %18, align 4
  %151 = call i32 @heap_form_tuple(i32 %150, i64* %32, i32* %29)
  store i32 %151, i32* %19, align 4
  %152 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %153 = load i32, i32* %19, align 4
  %154 = call i32 @CatalogTupleInsert(%struct.TYPE_11__* %152, i32 %153)
  %155 = load i32, i32* @ConversionRelationId, align 4
  %156 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %0, i32 0, i32 2
  store i32 %155, i32* %156, align 8
  %157 = load i8*, i8** %20, align 8
  %158 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %0, i32 0, i32 1
  store i8* %157, i8** %158, align 8
  %159 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %0, i32 0, i32 0
  store i64 0, i64* %159, align 8
  %160 = load i32, i32* @ProcedureRelationId, align 4
  %161 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 2
  store i32 %160, i32* %161, align 8
  %162 = load i8*, i8** %14, align 8
  %163 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 1
  store i8* %162, i8** %163, align 8
  %164 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 0
  store i64 0, i64* %164, align 8
  %165 = load i32, i32* @DEPENDENCY_NORMAL, align 4
  %166 = call i32 @recordDependencyOn(%struct.TYPE_12__* %0, %struct.TYPE_12__* %25, i32 %165)
  %167 = load i32, i32* @NamespaceRelationId, align 4
  %168 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 2
  store i32 %167, i32* %168, align 8
  %169 = load i8*, i8** %10, align 8
  %170 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 1
  store i8* %169, i8** %170, align 8
  %171 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 0
  store i64 0, i64* %171, align 8
  %172 = load i32, i32* @DEPENDENCY_NORMAL, align 4
  %173 = call i32 @recordDependencyOn(%struct.TYPE_12__* %0, %struct.TYPE_12__* %25, i32 %172)
  %174 = load i32, i32* @ConversionRelationId, align 4
  %175 = load i8*, i8** %20, align 8
  %176 = load i8*, i8** %11, align 8
  %177 = call i32 @recordDependencyOnOwner(i32 %174, i8* %175, i8* %176)
  %178 = call i32 @recordDependencyOnCurrentExtension(%struct.TYPE_12__* %0, i32 0)
  %179 = load i32, i32* @ConversionRelationId, align 4
  %180 = load i8*, i8** %20, align 8
  %181 = call i32 @InvokeObjectPostCreateHook(i32 %179, i8* %180, i32 0)
  %182 = load i32, i32* %19, align 4
  %183 = call i32 @heap_freetuple(i32 %182)
  %184 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %185 = load i32, i32* @RowExclusiveLock, align 4
  %186 = call i32 @table_close(%struct.TYPE_11__* %184, i32 %185)
  %187 = load i8*, i8** %21, align 8
  call void @llvm.stackrestore(i8* %187)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @elog(i32, i8*) #2

declare dso_local i64 @SearchSysCacheExists2(i32, i32, i64) #2

declare dso_local i32 @PointerGetDatum(i8*) #2

declare dso_local i64 @ObjectIdGetDatum(i8*) #2

declare dso_local i32 @ereport(i32, i32) #2

declare dso_local i32 @errcode(i32) #2

declare dso_local i32 @errmsg(i8*, i8*, ...) #2

declare dso_local i64 @FindDefaultConversion(i8*, i32, i32) #2

declare dso_local i32 @pg_encoding_to_char(i32) #2

declare dso_local %struct.TYPE_11__* @table_open(i32, i32) #2

declare dso_local i32 @namestrcpy(i32*, i8*) #2

declare dso_local i8* @GetNewOidWithIndex(%struct.TYPE_11__*, i32, i32) #2

declare dso_local i64 @NameGetDatum(i32*) #2

declare dso_local i64 @Int32GetDatum(i32) #2

declare dso_local i64 @BoolGetDatum(i32) #2

declare dso_local i32 @heap_form_tuple(i32, i64*, i32*) #2

declare dso_local i32 @CatalogTupleInsert(%struct.TYPE_11__*, i32) #2

declare dso_local i32 @recordDependencyOn(%struct.TYPE_12__*, %struct.TYPE_12__*, i32) #2

declare dso_local i32 @recordDependencyOnOwner(i32, i8*, i8*) #2

declare dso_local i32 @recordDependencyOnCurrentExtension(%struct.TYPE_12__*, i32) #2

declare dso_local i32 @InvokeObjectPostCreateHook(i32, i8*, i32) #2

declare dso_local i32 @heap_freetuple(i32) #2

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
