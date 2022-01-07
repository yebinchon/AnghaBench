; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_seclabel.c_SetSharedSecurityLabel.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_seclabel.c_SetSharedSecurityLabel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_13__ = type { i32 }

@Natts_pg_shseclabel = common dso_local global i32 0, align 4
@Anum_pg_shseclabel_objoid = common dso_local global i32 0, align 4
@Anum_pg_shseclabel_classoid = common dso_local global i32 0, align 4
@Anum_pg_shseclabel_provider = common dso_local global i32 0, align 4
@Anum_pg_shseclabel_label = common dso_local global i32 0, align 4
@BTEqualStrategyNumber = common dso_local global i32 0, align 4
@F_OIDEQ = common dso_local global i32 0, align 4
@F_TEXTEQ = common dso_local global i32 0, align 4
@SharedSecLabelRelationId = common dso_local global i32 0, align 4
@RowExclusiveLock = common dso_local global i32 0, align 4
@SharedSecLabelObjectIndexId = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_12__*, i8*, i8*)* @SetSharedSecurityLabel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SetSharedSecurityLabel(%struct.TYPE_12__* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [4 x i32], align 16
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_13__*, align 8
  %11 = alloca %struct.TYPE_13__*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %11, align 8
  %16 = load i32, i32* @Natts_pg_shseclabel, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %12, align 8
  %19 = alloca i32, i64 %17, align 16
  store i64 %17, i64* %13, align 8
  %20 = load i32, i32* @Natts_pg_shseclabel, align 4
  %21 = zext i32 %20 to i64
  %22 = alloca i32, i64 %21, align 16
  store i64 %21, i64* %14, align 8
  %23 = load i32, i32* @Natts_pg_shseclabel, align 4
  %24 = zext i32 %23 to i64
  %25 = alloca i32, i64 %24, align 16
  store i64 %24, i64* %15, align 8
  %26 = mul nuw i64 4, %21
  %27 = trunc i64 %26 to i32
  %28 = call i32 @memset(i32* %22, i32 0, i32 %27)
  %29 = mul nuw i64 4, %24
  %30 = trunc i64 %29 to i32
  %31 = call i32 @memset(i32* %25, i32 0, i32 %30)
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @ObjectIdGetDatum(i32 %34)
  %36 = load i32, i32* @Anum_pg_shseclabel_objoid, align 4
  %37 = sub nsw i32 %36, 1
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %19, i64 %38
  store i32 %35, i32* %39, align 4
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @ObjectIdGetDatum(i32 %42)
  %44 = load i32, i32* @Anum_pg_shseclabel_classoid, align 4
  %45 = sub nsw i32 %44, 1
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %19, i64 %46
  store i32 %43, i32* %47, align 4
  %48 = load i8*, i8** %5, align 8
  %49 = call i32 @CStringGetTextDatum(i8* %48)
  %50 = load i32, i32* @Anum_pg_shseclabel_provider, align 4
  %51 = sub nsw i32 %50, 1
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %19, i64 %52
  store i32 %49, i32* %53, align 4
  %54 = load i8*, i8** %6, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %56, label %63

56:                                               ; preds = %3
  %57 = load i8*, i8** %6, align 8
  %58 = call i32 @CStringGetTextDatum(i8* %57)
  %59 = load i32, i32* @Anum_pg_shseclabel_label, align 4
  %60 = sub nsw i32 %59, 1
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %19, i64 %61
  store i32 %58, i32* %62, align 4
  br label %63

63:                                               ; preds = %56, %3
  %64 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %65 = load i32, i32* @Anum_pg_shseclabel_objoid, align 4
  %66 = load i32, i32* @BTEqualStrategyNumber, align 4
  %67 = load i32, i32* @F_OIDEQ, align 4
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @ObjectIdGetDatum(i32 %70)
  %72 = call i32 @ScanKeyInit(i32* %64, i32 %65, i32 %66, i32 %67, i32 %71)
  %73 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 1
  %74 = load i32, i32* @Anum_pg_shseclabel_classoid, align 4
  %75 = load i32, i32* @BTEqualStrategyNumber, align 4
  %76 = load i32, i32* @F_OIDEQ, align 4
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @ObjectIdGetDatum(i32 %79)
  %81 = call i32 @ScanKeyInit(i32* %73, i32 %74, i32 %75, i32 %76, i32 %80)
  %82 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 2
  %83 = load i32, i32* @Anum_pg_shseclabel_provider, align 4
  %84 = load i32, i32* @BTEqualStrategyNumber, align 4
  %85 = load i32, i32* @F_TEXTEQ, align 4
  %86 = load i8*, i8** %5, align 8
  %87 = call i32 @CStringGetTextDatum(i8* %86)
  %88 = call i32 @ScanKeyInit(i32* %82, i32 %83, i32 %84, i32 %85, i32 %87)
  %89 = load i32, i32* @SharedSecLabelRelationId, align 4
  %90 = load i32, i32* @RowExclusiveLock, align 4
  %91 = call i32 @table_open(i32 %89, i32 %90)
  store i32 %91, i32* %7, align 4
  %92 = load i32, i32* %7, align 4
  %93 = load i32, i32* @SharedSecLabelObjectIndexId, align 4
  %94 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %95 = call i32 @systable_beginscan(i32 %92, i32 %93, i32 1, i32* null, i32 3, i32* %94)
  store i32 %95, i32* %9, align 4
  %96 = load i32, i32* %9, align 4
  %97 = call %struct.TYPE_13__* @systable_getnext(i32 %96)
  store %struct.TYPE_13__* %97, %struct.TYPE_13__** %10, align 8
  %98 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %99 = call i64 @HeapTupleIsValid(%struct.TYPE_13__* %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %124

101:                                              ; preds = %63
  %102 = load i8*, i8** %6, align 8
  %103 = icmp eq i8* %102, null
  br i1 %103, label %104, label %109

104:                                              ; preds = %101
  %105 = load i32, i32* %7, align 4
  %106 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %107 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %106, i32 0, i32 0
  %108 = call i32 @CatalogTupleDelete(i32 %105, i32* %107)
  br label %123

109:                                              ; preds = %101
  %110 = load i32, i32* @Anum_pg_shseclabel_label, align 4
  %111 = sub nsw i32 %110, 1
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %25, i64 %112
  store i32 1, i32* %113, align 4
  %114 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %115 = load i32, i32* %7, align 4
  %116 = call i32 @RelationGetDescr(i32 %115)
  %117 = call %struct.TYPE_13__* @heap_modify_tuple(%struct.TYPE_13__* %114, i32 %116, i32* %19, i32* %22, i32* %25)
  store %struct.TYPE_13__* %117, %struct.TYPE_13__** %11, align 8
  %118 = load i32, i32* %7, align 4
  %119 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %120 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %119, i32 0, i32 0
  %121 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %122 = call i32 @CatalogTupleUpdate(i32 %118, i32* %120, %struct.TYPE_13__* %121)
  br label %123

123:                                              ; preds = %109, %104
  br label %124

124:                                              ; preds = %123, %63
  %125 = load i32, i32* %9, align 4
  %126 = call i32 @systable_endscan(i32 %125)
  %127 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %128 = icmp eq %struct.TYPE_13__* %127, null
  br i1 %128, label %129, label %139

129:                                              ; preds = %124
  %130 = load i8*, i8** %6, align 8
  %131 = icmp ne i8* %130, null
  br i1 %131, label %132, label %139

132:                                              ; preds = %129
  %133 = load i32, i32* %7, align 4
  %134 = call i32 @RelationGetDescr(i32 %133)
  %135 = call %struct.TYPE_13__* @heap_form_tuple(i32 %134, i32* %19, i32* %22)
  store %struct.TYPE_13__* %135, %struct.TYPE_13__** %11, align 8
  %136 = load i32, i32* %7, align 4
  %137 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %138 = call i32 @CatalogTupleInsert(i32 %136, %struct.TYPE_13__* %137)
  br label %139

139:                                              ; preds = %132, %129, %124
  %140 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %141 = icmp ne %struct.TYPE_13__* %140, null
  br i1 %141, label %142, label %145

142:                                              ; preds = %139
  %143 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %144 = call i32 @heap_freetuple(%struct.TYPE_13__* %143)
  br label %145

145:                                              ; preds = %142, %139
  %146 = load i32, i32* %7, align 4
  %147 = load i32, i32* @RowExclusiveLock, align 4
  %148 = call i32 @table_close(i32 %146, i32 %147)
  %149 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %149)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local i32 @ObjectIdGetDatum(i32) #2

declare dso_local i32 @CStringGetTextDatum(i8*) #2

declare dso_local i32 @ScanKeyInit(i32*, i32, i32, i32, i32) #2

declare dso_local i32 @table_open(i32, i32) #2

declare dso_local i32 @systable_beginscan(i32, i32, i32, i32*, i32, i32*) #2

declare dso_local %struct.TYPE_13__* @systable_getnext(i32) #2

declare dso_local i64 @HeapTupleIsValid(%struct.TYPE_13__*) #2

declare dso_local i32 @CatalogTupleDelete(i32, i32*) #2

declare dso_local %struct.TYPE_13__* @heap_modify_tuple(%struct.TYPE_13__*, i32, i32*, i32*, i32*) #2

declare dso_local i32 @RelationGetDescr(i32) #2

declare dso_local i32 @CatalogTupleUpdate(i32, i32*, %struct.TYPE_13__*) #2

declare dso_local i32 @systable_endscan(i32) #2

declare dso_local %struct.TYPE_13__* @heap_form_tuple(i32, i32*, i32*) #2

declare dso_local i32 @CatalogTupleInsert(i32, %struct.TYPE_13__*) #2

declare dso_local i32 @heap_freetuple(%struct.TYPE_13__*) #2

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
