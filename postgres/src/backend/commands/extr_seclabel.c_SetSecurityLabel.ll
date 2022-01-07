; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_seclabel.c_SetSecurityLabel.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_seclabel.c_SetSecurityLabel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32, i32 }
%struct.TYPE_14__ = type { i32 }

@Natts_pg_seclabel = common dso_local global i32 0, align 4
@Anum_pg_seclabel_objoid = common dso_local global i32 0, align 4
@Anum_pg_seclabel_classoid = common dso_local global i32 0, align 4
@Anum_pg_seclabel_objsubid = common dso_local global i32 0, align 4
@Anum_pg_seclabel_provider = common dso_local global i32 0, align 4
@Anum_pg_seclabel_label = common dso_local global i32 0, align 4
@BTEqualStrategyNumber = common dso_local global i32 0, align 4
@F_OIDEQ = common dso_local global i32 0, align 4
@F_INT4EQ = common dso_local global i32 0, align 4
@F_TEXTEQ = common dso_local global i32 0, align 4
@SecLabelRelationId = common dso_local global i32 0, align 4
@RowExclusiveLock = common dso_local global i32 0, align 4
@SecLabelObjectIndexId = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SetSecurityLabel(%struct.TYPE_13__* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [4 x i32], align 16
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_14__*, align 8
  %11 = alloca %struct.TYPE_14__*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %11, align 8
  %17 = load i32, i32* @Natts_pg_seclabel, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %12, align 8
  %20 = alloca i32, i64 %18, align 16
  store i64 %18, i64* %13, align 8
  %21 = load i32, i32* @Natts_pg_seclabel, align 4
  %22 = zext i32 %21 to i64
  %23 = alloca i32, i64 %22, align 16
  store i64 %22, i64* %14, align 8
  %24 = load i32, i32* @Natts_pg_seclabel, align 4
  %25 = zext i32 %24 to i64
  %26 = alloca i32, i64 %25, align 16
  store i64 %25, i64* %15, align 8
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @IsSharedRelation(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %3
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %34 = load i8*, i8** %5, align 8
  %35 = load i8*, i8** %6, align 8
  %36 = call i32 @SetSharedSecurityLabel(%struct.TYPE_13__* %33, i8* %34, i8* %35)
  store i32 1, i32* %16, align 4
  br label %178

37:                                               ; preds = %3
  %38 = mul nuw i64 4, %22
  %39 = trunc i64 %38 to i32
  %40 = call i32 @memset(i32* %23, i32 0, i32 %39)
  %41 = mul nuw i64 4, %25
  %42 = trunc i64 %41 to i32
  %43 = call i32 @memset(i32* %26, i32 0, i32 %42)
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @ObjectIdGetDatum(i32 %46)
  %48 = load i32, i32* @Anum_pg_seclabel_objoid, align 4
  %49 = sub nsw i32 %48, 1
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %20, i64 %50
  store i32 %47, i32* %51, align 4
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @ObjectIdGetDatum(i32 %54)
  %56 = load i32, i32* @Anum_pg_seclabel_classoid, align 4
  %57 = sub nsw i32 %56, 1
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %20, i64 %58
  store i32 %55, i32* %59, align 4
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @Int32GetDatum(i32 %62)
  %64 = load i32, i32* @Anum_pg_seclabel_objsubid, align 4
  %65 = sub nsw i32 %64, 1
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %20, i64 %66
  store i32 %63, i32* %67, align 4
  %68 = load i8*, i8** %5, align 8
  %69 = call i32 @CStringGetTextDatum(i8* %68)
  %70 = load i32, i32* @Anum_pg_seclabel_provider, align 4
  %71 = sub nsw i32 %70, 1
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %20, i64 %72
  store i32 %69, i32* %73, align 4
  %74 = load i8*, i8** %6, align 8
  %75 = icmp ne i8* %74, null
  br i1 %75, label %76, label %83

76:                                               ; preds = %37
  %77 = load i8*, i8** %6, align 8
  %78 = call i32 @CStringGetTextDatum(i8* %77)
  %79 = load i32, i32* @Anum_pg_seclabel_label, align 4
  %80 = sub nsw i32 %79, 1
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %20, i64 %81
  store i32 %78, i32* %82, align 4
  br label %83

83:                                               ; preds = %76, %37
  %84 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %85 = load i32, i32* @Anum_pg_seclabel_objoid, align 4
  %86 = load i32, i32* @BTEqualStrategyNumber, align 4
  %87 = load i32, i32* @F_OIDEQ, align 4
  %88 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @ObjectIdGetDatum(i32 %90)
  %92 = call i32 @ScanKeyInit(i32* %84, i32 %85, i32 %86, i32 %87, i32 %91)
  %93 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 1
  %94 = load i32, i32* @Anum_pg_seclabel_classoid, align 4
  %95 = load i32, i32* @BTEqualStrategyNumber, align 4
  %96 = load i32, i32* @F_OIDEQ, align 4
  %97 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @ObjectIdGetDatum(i32 %99)
  %101 = call i32 @ScanKeyInit(i32* %93, i32 %94, i32 %95, i32 %96, i32 %100)
  %102 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 2
  %103 = load i32, i32* @Anum_pg_seclabel_objsubid, align 4
  %104 = load i32, i32* @BTEqualStrategyNumber, align 4
  %105 = load i32, i32* @F_INT4EQ, align 4
  %106 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @Int32GetDatum(i32 %108)
  %110 = call i32 @ScanKeyInit(i32* %102, i32 %103, i32 %104, i32 %105, i32 %109)
  %111 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 3
  %112 = load i32, i32* @Anum_pg_seclabel_provider, align 4
  %113 = load i32, i32* @BTEqualStrategyNumber, align 4
  %114 = load i32, i32* @F_TEXTEQ, align 4
  %115 = load i8*, i8** %5, align 8
  %116 = call i32 @CStringGetTextDatum(i8* %115)
  %117 = call i32 @ScanKeyInit(i32* %111, i32 %112, i32 %113, i32 %114, i32 %116)
  %118 = load i32, i32* @SecLabelRelationId, align 4
  %119 = load i32, i32* @RowExclusiveLock, align 4
  %120 = call i32 @table_open(i32 %118, i32 %119)
  store i32 %120, i32* %7, align 4
  %121 = load i32, i32* %7, align 4
  %122 = load i32, i32* @SecLabelObjectIndexId, align 4
  %123 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %124 = call i32 @systable_beginscan(i32 %121, i32 %122, i32 1, i32* null, i32 4, i32* %123)
  store i32 %124, i32* %9, align 4
  %125 = load i32, i32* %9, align 4
  %126 = call %struct.TYPE_14__* @systable_getnext(i32 %125)
  store %struct.TYPE_14__* %126, %struct.TYPE_14__** %10, align 8
  %127 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %128 = call i64 @HeapTupleIsValid(%struct.TYPE_14__* %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %153

130:                                              ; preds = %83
  %131 = load i8*, i8** %6, align 8
  %132 = icmp eq i8* %131, null
  br i1 %132, label %133, label %138

133:                                              ; preds = %130
  %134 = load i32, i32* %7, align 4
  %135 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %136 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %135, i32 0, i32 0
  %137 = call i32 @CatalogTupleDelete(i32 %134, i32* %136)
  br label %152

138:                                              ; preds = %130
  %139 = load i32, i32* @Anum_pg_seclabel_label, align 4
  %140 = sub nsw i32 %139, 1
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i32, i32* %26, i64 %141
  store i32 1, i32* %142, align 4
  %143 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %144 = load i32, i32* %7, align 4
  %145 = call i32 @RelationGetDescr(i32 %144)
  %146 = call %struct.TYPE_14__* @heap_modify_tuple(%struct.TYPE_14__* %143, i32 %145, i32* %20, i32* %23, i32* %26)
  store %struct.TYPE_14__* %146, %struct.TYPE_14__** %11, align 8
  %147 = load i32, i32* %7, align 4
  %148 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %149 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %148, i32 0, i32 0
  %150 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %151 = call i32 @CatalogTupleUpdate(i32 %147, i32* %149, %struct.TYPE_14__* %150)
  br label %152

152:                                              ; preds = %138, %133
  br label %153

153:                                              ; preds = %152, %83
  %154 = load i32, i32* %9, align 4
  %155 = call i32 @systable_endscan(i32 %154)
  %156 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %157 = icmp eq %struct.TYPE_14__* %156, null
  br i1 %157, label %158, label %168

158:                                              ; preds = %153
  %159 = load i8*, i8** %6, align 8
  %160 = icmp ne i8* %159, null
  br i1 %160, label %161, label %168

161:                                              ; preds = %158
  %162 = load i32, i32* %7, align 4
  %163 = call i32 @RelationGetDescr(i32 %162)
  %164 = call %struct.TYPE_14__* @heap_form_tuple(i32 %163, i32* %20, i32* %23)
  store %struct.TYPE_14__* %164, %struct.TYPE_14__** %11, align 8
  %165 = load i32, i32* %7, align 4
  %166 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %167 = call i32 @CatalogTupleInsert(i32 %165, %struct.TYPE_14__* %166)
  br label %168

168:                                              ; preds = %161, %158, %153
  %169 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %170 = icmp ne %struct.TYPE_14__* %169, null
  br i1 %170, label %171, label %174

171:                                              ; preds = %168
  %172 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %173 = call i32 @heap_freetuple(%struct.TYPE_14__* %172)
  br label %174

174:                                              ; preds = %171, %168
  %175 = load i32, i32* %7, align 4
  %176 = load i32, i32* @RowExclusiveLock, align 4
  %177 = call i32 @table_close(i32 %175, i32 %176)
  store i32 0, i32* %16, align 4
  br label %178

178:                                              ; preds = %174, %32
  %179 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %179)
  %180 = load i32, i32* %16, align 4
  switch i32 %180, label %182 [
    i32 0, label %181
    i32 1, label %181
  ]

181:                                              ; preds = %178, %178
  ret void

182:                                              ; preds = %178
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @IsSharedRelation(i32) #2

declare dso_local i32 @SetSharedSecurityLabel(%struct.TYPE_13__*, i8*, i8*) #2

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local i32 @ObjectIdGetDatum(i32) #2

declare dso_local i32 @Int32GetDatum(i32) #2

declare dso_local i32 @CStringGetTextDatum(i8*) #2

declare dso_local i32 @ScanKeyInit(i32*, i32, i32, i32, i32) #2

declare dso_local i32 @table_open(i32, i32) #2

declare dso_local i32 @systable_beginscan(i32, i32, i32, i32*, i32, i32*) #2

declare dso_local %struct.TYPE_14__* @systable_getnext(i32) #2

declare dso_local i64 @HeapTupleIsValid(%struct.TYPE_14__*) #2

declare dso_local i32 @CatalogTupleDelete(i32, i32*) #2

declare dso_local %struct.TYPE_14__* @heap_modify_tuple(%struct.TYPE_14__*, i32, i32*, i32*, i32*) #2

declare dso_local i32 @RelationGetDescr(i32) #2

declare dso_local i32 @CatalogTupleUpdate(i32, i32*, %struct.TYPE_14__*) #2

declare dso_local i32 @systable_endscan(i32) #2

declare dso_local %struct.TYPE_14__* @heap_form_tuple(i32, i32*, i32*) #2

declare dso_local i32 @CatalogTupleInsert(i32, %struct.TYPE_14__*) #2

declare dso_local i32 @heap_freetuple(%struct.TYPE_14__*) #2

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
