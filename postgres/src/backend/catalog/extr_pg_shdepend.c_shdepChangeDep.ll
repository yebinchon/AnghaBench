; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/catalog/extr_pg_shdepend.c_shdepChangeDep.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/catalog/extr_pg_shdepend.c_shdepChangeDep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.TYPE_12__ = type { i64, i8*, i8* }

@Anum_pg_shdepend_dbid = common dso_local global i32 0, align 4
@BTEqualStrategyNumber = common dso_local global i32 0, align 4
@F_OIDEQ = common dso_local global i32 0, align 4
@Anum_pg_shdepend_classid = common dso_local global i32 0, align 4
@Anum_pg_shdepend_objid = common dso_local global i32 0, align 4
@Anum_pg_shdepend_objsubid = common dso_local global i32 0, align 4
@F_INT4EQ = common dso_local global i32 0, align 4
@SharedDependDependerIndexId = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"multiple pg_shdepend entries for object %u/%u/%d deptype %c\00", align 1
@Natts_pg_shdepend = common dso_local global i32 0, align 4
@Anum_pg_shdepend_refclassid = common dso_local global i32 0, align 4
@Anum_pg_shdepend_refobjid = common dso_local global i32 0, align 4
@Anum_pg_shdepend_deptype = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*, i8*, i32, i8*, i8*, i64)* @shdepChangeDep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @shdepChangeDep(i32 %0, i8* %1, i8* %2, i32 %3, i8* %4, i8* %5, i64 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca %struct.TYPE_11__*, align 8
  %17 = alloca %struct.TYPE_11__*, align 8
  %18 = alloca [4 x i32], align 16
  %19 = alloca i32, align 4
  %20 = alloca %struct.TYPE_12__*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  store i32 %0, i32* %8, align 4
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i8* %4, i8** %12, align 8
  store i8* %5, i8** %13, align 8
  store i64 %6, i64* %14, align 8
  %24 = load i8*, i8** %9, align 8
  %25 = call i8* @classIdGetDbId(i8* %24)
  store i8* %25, i8** %15, align 8
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %16, align 8
  %26 = load i8*, i8** %12, align 8
  %27 = load i8*, i8** %13, align 8
  %28 = call i32 @shdepLockAndCheckObject(i8* %26, i8* %27)
  %29 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i64 0, i64 0
  %30 = load i32, i32* @Anum_pg_shdepend_dbid, align 4
  %31 = load i32, i32* @BTEqualStrategyNumber, align 4
  %32 = load i32, i32* @F_OIDEQ, align 4
  %33 = load i8*, i8** %15, align 8
  %34 = call i32 @ObjectIdGetDatum(i8* %33)
  %35 = call i32 @ScanKeyInit(i32* %29, i32 %30, i32 %31, i32 %32, i32 %34)
  %36 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i64 0, i64 1
  %37 = load i32, i32* @Anum_pg_shdepend_classid, align 4
  %38 = load i32, i32* @BTEqualStrategyNumber, align 4
  %39 = load i32, i32* @F_OIDEQ, align 4
  %40 = load i8*, i8** %9, align 8
  %41 = call i32 @ObjectIdGetDatum(i8* %40)
  %42 = call i32 @ScanKeyInit(i32* %36, i32 %37, i32 %38, i32 %39, i32 %41)
  %43 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i64 0, i64 2
  %44 = load i32, i32* @Anum_pg_shdepend_objid, align 4
  %45 = load i32, i32* @BTEqualStrategyNumber, align 4
  %46 = load i32, i32* @F_OIDEQ, align 4
  %47 = load i8*, i8** %10, align 8
  %48 = call i32 @ObjectIdGetDatum(i8* %47)
  %49 = call i32 @ScanKeyInit(i32* %43, i32 %44, i32 %45, i32 %46, i32 %48)
  %50 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i64 0, i64 3
  %51 = load i32, i32* @Anum_pg_shdepend_objsubid, align 4
  %52 = load i32, i32* @BTEqualStrategyNumber, align 4
  %53 = load i32, i32* @F_INT4EQ, align 4
  %54 = load i32, i32* %11, align 4
  %55 = call i32 @Int32GetDatum(i32 %54)
  %56 = call i32 @ScanKeyInit(i32* %50, i32 %51, i32 %52, i32 %53, i32 %55)
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* @SharedDependDependerIndexId, align 4
  %59 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i64 0, i64 0
  %60 = call i32 @systable_beginscan(i32 %57, i32 %58, i32 1, i32* null, i32 4, i32* %59)
  store i32 %60, i32* %19, align 4
  br label %61

61:                                               ; preds = %84, %73, %7
  %62 = load i32, i32* %19, align 4
  %63 = call %struct.TYPE_11__* @systable_getnext(i32 %62)
  store %struct.TYPE_11__* %63, %struct.TYPE_11__** %17, align 8
  %64 = icmp ne %struct.TYPE_11__* %63, null
  br i1 %64, label %65, label %87

65:                                               ; preds = %61
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %67 = call i64 @GETSTRUCT(%struct.TYPE_11__* %66)
  %68 = inttoptr i64 %67 to %struct.TYPE_12__*
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* %14, align 8
  %72 = icmp ne i64 %70, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %65
  br label %61

74:                                               ; preds = %65
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %76 = icmp ne %struct.TYPE_11__* %75, null
  br i1 %76, label %77, label %84

77:                                               ; preds = %74
  %78 = load i32, i32* @ERROR, align 4
  %79 = load i8*, i8** %9, align 8
  %80 = load i8*, i8** %10, align 8
  %81 = load i32, i32* %11, align 4
  %82 = load i64, i64* %14, align 8
  %83 = call i32 @elog(i32 %78, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i8* %79, i8* %80, i32 %81, i64 %82)
  br label %84

84:                                               ; preds = %77, %74
  %85 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %86 = call %struct.TYPE_11__* @heap_copytuple(%struct.TYPE_11__* %85)
  store %struct.TYPE_11__* %86, %struct.TYPE_11__** %16, align 8
  br label %61

87:                                               ; preds = %61
  %88 = load i32, i32* %19, align 4
  %89 = call i32 @systable_endscan(i32 %88)
  %90 = load i8*, i8** %12, align 8
  %91 = load i8*, i8** %13, align 8
  %92 = load i32, i32* %8, align 4
  %93 = call i64 @isSharedObjectPinned(i8* %90, i8* %91, i32 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %104

95:                                               ; preds = %87
  %96 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %97 = icmp ne %struct.TYPE_11__* %96, null
  br i1 %97, label %98, label %103

98:                                               ; preds = %95
  %99 = load i32, i32* %8, align 4
  %100 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %101 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %100, i32 0, i32 0
  %102 = call i32 @CatalogTupleDelete(i32 %99, i32* %101)
  br label %103

103:                                              ; preds = %98, %95
  br label %183

104:                                              ; preds = %87
  %105 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %106 = icmp ne %struct.TYPE_11__* %105, null
  br i1 %106, label %107, label %122

107:                                              ; preds = %104
  %108 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %109 = call i64 @GETSTRUCT(%struct.TYPE_11__* %108)
  %110 = inttoptr i64 %109 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %110, %struct.TYPE_12__** %20, align 8
  %111 = load i8*, i8** %12, align 8
  %112 = load %struct.TYPE_12__*, %struct.TYPE_12__** %20, align 8
  %113 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %112, i32 0, i32 2
  store i8* %111, i8** %113, align 8
  %114 = load i8*, i8** %13, align 8
  %115 = load %struct.TYPE_12__*, %struct.TYPE_12__** %20, align 8
  %116 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %115, i32 0, i32 1
  store i8* %114, i8** %116, align 8
  %117 = load i32, i32* %8, align 4
  %118 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %119 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %118, i32 0, i32 0
  %120 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %121 = call i32 @CatalogTupleUpdate(i32 %117, i32* %119, %struct.TYPE_11__* %120)
  br label %182

122:                                              ; preds = %104
  %123 = load i32, i32* @Natts_pg_shdepend, align 4
  %124 = zext i32 %123 to i64
  %125 = call i8* @llvm.stacksave()
  store i8* %125, i8** %21, align 8
  %126 = alloca i32, i64 %124, align 16
  store i64 %124, i64* %22, align 8
  %127 = load i32, i32* @Natts_pg_shdepend, align 4
  %128 = zext i32 %127 to i64
  %129 = alloca i32, i64 %128, align 16
  store i64 %128, i64* %23, align 8
  %130 = mul nuw i64 4, %128
  %131 = trunc i64 %130 to i32
  %132 = call i32 @memset(i32* %129, i32 0, i32 %131)
  %133 = load i8*, i8** %15, align 8
  %134 = call i32 @ObjectIdGetDatum(i8* %133)
  %135 = load i32, i32* @Anum_pg_shdepend_dbid, align 4
  %136 = sub nsw i32 %135, 1
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i32, i32* %126, i64 %137
  store i32 %134, i32* %138, align 4
  %139 = load i8*, i8** %9, align 8
  %140 = call i32 @ObjectIdGetDatum(i8* %139)
  %141 = load i32, i32* @Anum_pg_shdepend_classid, align 4
  %142 = sub nsw i32 %141, 1
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i32, i32* %126, i64 %143
  store i32 %140, i32* %144, align 4
  %145 = load i8*, i8** %10, align 8
  %146 = call i32 @ObjectIdGetDatum(i8* %145)
  %147 = load i32, i32* @Anum_pg_shdepend_objid, align 4
  %148 = sub nsw i32 %147, 1
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i32, i32* %126, i64 %149
  store i32 %146, i32* %150, align 4
  %151 = load i32, i32* %11, align 4
  %152 = call i32 @Int32GetDatum(i32 %151)
  %153 = load i32, i32* @Anum_pg_shdepend_objsubid, align 4
  %154 = sub nsw i32 %153, 1
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i32, i32* %126, i64 %155
  store i32 %152, i32* %156, align 4
  %157 = load i8*, i8** %12, align 8
  %158 = call i32 @ObjectIdGetDatum(i8* %157)
  %159 = load i32, i32* @Anum_pg_shdepend_refclassid, align 4
  %160 = sub nsw i32 %159, 1
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i32, i32* %126, i64 %161
  store i32 %158, i32* %162, align 4
  %163 = load i8*, i8** %13, align 8
  %164 = call i32 @ObjectIdGetDatum(i8* %163)
  %165 = load i32, i32* @Anum_pg_shdepend_refobjid, align 4
  %166 = sub nsw i32 %165, 1
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i32, i32* %126, i64 %167
  store i32 %164, i32* %168, align 4
  %169 = load i64, i64* %14, align 8
  %170 = call i32 @CharGetDatum(i64 %169)
  %171 = load i32, i32* @Anum_pg_shdepend_deptype, align 4
  %172 = sub nsw i32 %171, 1
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i32, i32* %126, i64 %173
  store i32 %170, i32* %174, align 4
  %175 = load i32, i32* %8, align 4
  %176 = call i32 @RelationGetDescr(i32 %175)
  %177 = call %struct.TYPE_11__* @heap_form_tuple(i32 %176, i32* %126, i32* %129)
  store %struct.TYPE_11__* %177, %struct.TYPE_11__** %16, align 8
  %178 = load i32, i32* %8, align 4
  %179 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %180 = call i32 @CatalogTupleInsert(i32 %178, %struct.TYPE_11__* %179)
  %181 = load i8*, i8** %21, align 8
  call void @llvm.stackrestore(i8* %181)
  br label %182

182:                                              ; preds = %122, %107
  br label %183

183:                                              ; preds = %182, %103
  %184 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %185 = icmp ne %struct.TYPE_11__* %184, null
  br i1 %185, label %186, label %189

186:                                              ; preds = %183
  %187 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %188 = call i32 @heap_freetuple(%struct.TYPE_11__* %187)
  br label %189

189:                                              ; preds = %186, %183
  ret void
}

declare dso_local i8* @classIdGetDbId(i8*) #1

declare dso_local i32 @shdepLockAndCheckObject(i8*, i8*) #1

declare dso_local i32 @ScanKeyInit(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i8*) #1

declare dso_local i32 @Int32GetDatum(i32) #1

declare dso_local i32 @systable_beginscan(i32, i32, i32, i32*, i32, i32*) #1

declare dso_local %struct.TYPE_11__* @systable_getnext(i32) #1

declare dso_local i64 @GETSTRUCT(%struct.TYPE_11__*) #1

declare dso_local i32 @elog(i32, i8*, i8*, i8*, i32, i64) #1

declare dso_local %struct.TYPE_11__* @heap_copytuple(%struct.TYPE_11__*) #1

declare dso_local i32 @systable_endscan(i32) #1

declare dso_local i64 @isSharedObjectPinned(i8*, i8*, i32) #1

declare dso_local i32 @CatalogTupleDelete(i32, i32*) #1

declare dso_local i32 @CatalogTupleUpdate(i32, i32*, %struct.TYPE_11__*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @CharGetDatum(i64) #1

declare dso_local %struct.TYPE_11__* @heap_form_tuple(i32, i32*, i32*) #1

declare dso_local i32 @RelationGetDescr(i32) #1

declare dso_local i32 @CatalogTupleInsert(i32, %struct.TYPE_11__*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @heap_freetuple(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
