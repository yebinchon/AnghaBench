; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/catalog/extr_aclchk.c_recordExtensionInitPrivWorker.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/catalog/extr_aclchk.c_recordExtensionInitPrivWorker.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }

@InitPrivsRelationId = common dso_local global i32 0, align 4
@RowExclusiveLock = common dso_local global i32 0, align 4
@Anum_pg_init_privs_objoid = common dso_local global i32 0, align 4
@BTEqualStrategyNumber = common dso_local global i32 0, align 4
@F_OIDEQ = common dso_local global i32 0, align 4
@Anum_pg_init_privs_classoid = common dso_local global i32 0, align 4
@Anum_pg_init_privs_objsubid = common dso_local global i32 0, align 4
@F_INT4EQ = common dso_local global i32 0, align 4
@InitPrivsObjIndexId = common dso_local global i32 0, align 4
@Natts_pg_init_privs = common dso_local global i32 0, align 4
@Anum_pg_init_privs_initprivs = common dso_local global i32 0, align 4
@INITPRIVS_EXTENSION = common dso_local global i32 0, align 4
@Anum_pg_init_privs_privtype = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i32*)* @recordExtensionInitPrivWorker to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @recordExtensionInitPrivWorker(i32 %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca [3 x i32], align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_9__*, align 8
  %13 = alloca %struct.TYPE_9__*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %21 = load i32, i32* @InitPrivsRelationId, align 4
  %22 = load i32, i32* @RowExclusiveLock, align 4
  %23 = call i32 @table_open(i32 %21, i32 %22)
  store i32 %23, i32* %9, align 4
  %24 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 0
  %25 = load i32, i32* @Anum_pg_init_privs_objoid, align 4
  %26 = load i32, i32* @BTEqualStrategyNumber, align 4
  %27 = load i32, i32* @F_OIDEQ, align 4
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @ObjectIdGetDatum(i32 %28)
  %30 = call i32 @ScanKeyInit(i32* %24, i32 %25, i32 %26, i32 %27, i32 %29)
  %31 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 1
  %32 = load i32, i32* @Anum_pg_init_privs_classoid, align 4
  %33 = load i32, i32* @BTEqualStrategyNumber, align 4
  %34 = load i32, i32* @F_OIDEQ, align 4
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @ObjectIdGetDatum(i32 %35)
  %37 = call i32 @ScanKeyInit(i32* %31, i32 %32, i32 %33, i32 %34, i32 %36)
  %38 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 2
  %39 = load i32, i32* @Anum_pg_init_privs_objsubid, align 4
  %40 = load i32, i32* @BTEqualStrategyNumber, align 4
  %41 = load i32, i32* @F_INT4EQ, align 4
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @Int32GetDatum(i32 %42)
  %44 = call i32 @ScanKeyInit(i32* %38, i32 %39, i32 %40, i32 %41, i32 %43)
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* @InitPrivsObjIndexId, align 4
  %47 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 0
  %48 = call i32 @systable_beginscan(i32 %45, i32 %46, i32 1, i32* null, i32 3, i32* %47)
  store i32 %48, i32* %11, align 4
  %49 = load i32, i32* %11, align 4
  %50 = call %struct.TYPE_9__* @systable_getnext(i32 %49)
  store %struct.TYPE_9__* %50, %struct.TYPE_9__** %13, align 8
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %52 = call i64 @HeapTupleIsValid(%struct.TYPE_9__* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %103

54:                                               ; preds = %4
  %55 = load i32, i32* @Natts_pg_init_privs, align 4
  %56 = zext i32 %55 to i64
  %57 = call i8* @llvm.stacksave()
  store i8* %57, i8** %14, align 8
  %58 = alloca i32, i64 %56, align 16
  store i64 %56, i64* %15, align 8
  %59 = load i32, i32* @Natts_pg_init_privs, align 4
  %60 = zext i32 %59 to i64
  %61 = alloca i32, i64 %60, align 16
  store i64 %60, i64* %16, align 8
  %62 = load i32, i32* @Natts_pg_init_privs, align 4
  %63 = zext i32 %62 to i64
  %64 = alloca i32, i64 %63, align 16
  store i64 %63, i64* %17, align 8
  %65 = load i32*, i32** %8, align 8
  %66 = icmp ne i32* %65, null
  br i1 %66, label %67, label %96

67:                                               ; preds = %54
  %68 = mul nuw i64 4, %56
  %69 = trunc i64 %68 to i32
  %70 = call i32 @MemSet(i32* %58, i32 0, i32 %69)
  %71 = mul nuw i64 4, %60
  %72 = trunc i64 %71 to i32
  %73 = call i32 @MemSet(i32* %61, i32 0, i32 %72)
  %74 = mul nuw i64 4, %63
  %75 = trunc i64 %74 to i32
  %76 = call i32 @MemSet(i32* %64, i32 0, i32 %75)
  %77 = load i32*, i32** %8, align 8
  %78 = call i32 @PointerGetDatum(i32* %77)
  %79 = load i32, i32* @Anum_pg_init_privs_initprivs, align 4
  %80 = sub nsw i32 %79, 1
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %58, i64 %81
  store i32 %78, i32* %82, align 4
  %83 = load i32, i32* @Anum_pg_init_privs_initprivs, align 4
  %84 = sub nsw i32 %83, 1
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %64, i64 %85
  store i32 1, i32* %86, align 4
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %88 = load i32, i32* %9, align 4
  %89 = call i32 @RelationGetDescr(i32 %88)
  %90 = call %struct.TYPE_9__* @heap_modify_tuple(%struct.TYPE_9__* %87, i32 %89, i32* %58, i32* %61, i32* %64)
  store %struct.TYPE_9__* %90, %struct.TYPE_9__** %13, align 8
  %91 = load i32, i32* %9, align 4
  %92 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 0
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %95 = call i32 @CatalogTupleUpdate(i32 %91, i32* %93, %struct.TYPE_9__* %94)
  br label %101

96:                                               ; preds = %54
  %97 = load i32, i32* %9, align 4
  %98 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 0
  %100 = call i32 @CatalogTupleDelete(i32 %97, i32* %99)
  br label %101

101:                                              ; preds = %96, %67
  %102 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %102)
  br label %155

103:                                              ; preds = %4
  %104 = load i32, i32* @Natts_pg_init_privs, align 4
  %105 = zext i32 %104 to i64
  %106 = call i8* @llvm.stacksave()
  store i8* %106, i8** %18, align 8
  %107 = alloca i32, i64 %105, align 16
  store i64 %105, i64* %19, align 8
  %108 = load i32, i32* @Natts_pg_init_privs, align 4
  %109 = zext i32 %108 to i64
  %110 = alloca i32, i64 %109, align 16
  store i64 %109, i64* %20, align 8
  %111 = load i32*, i32** %8, align 8
  %112 = icmp ne i32* %111, null
  br i1 %112, label %113, label %153

113:                                              ; preds = %103
  %114 = mul nuw i64 4, %109
  %115 = trunc i64 %114 to i32
  %116 = call i32 @MemSet(i32* %110, i32 0, i32 %115)
  %117 = load i32, i32* %5, align 4
  %118 = call i32 @ObjectIdGetDatum(i32 %117)
  %119 = load i32, i32* @Anum_pg_init_privs_objoid, align 4
  %120 = sub nsw i32 %119, 1
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %107, i64 %121
  store i32 %118, i32* %122, align 4
  %123 = load i32, i32* %6, align 4
  %124 = call i32 @ObjectIdGetDatum(i32 %123)
  %125 = load i32, i32* @Anum_pg_init_privs_classoid, align 4
  %126 = sub nsw i32 %125, 1
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32, i32* %107, i64 %127
  store i32 %124, i32* %128, align 4
  %129 = load i32, i32* %7, align 4
  %130 = call i32 @Int32GetDatum(i32 %129)
  %131 = load i32, i32* @Anum_pg_init_privs_objsubid, align 4
  %132 = sub nsw i32 %131, 1
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i32, i32* %107, i64 %133
  store i32 %130, i32* %134, align 4
  %135 = load i32, i32* @INITPRIVS_EXTENSION, align 4
  %136 = call i32 @CharGetDatum(i32 %135)
  %137 = load i32, i32* @Anum_pg_init_privs_privtype, align 4
  %138 = sub nsw i32 %137, 1
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i32, i32* %107, i64 %139
  store i32 %136, i32* %140, align 4
  %141 = load i32*, i32** %8, align 8
  %142 = call i32 @PointerGetDatum(i32* %141)
  %143 = load i32, i32* @Anum_pg_init_privs_initprivs, align 4
  %144 = sub nsw i32 %143, 1
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i32, i32* %107, i64 %145
  store i32 %142, i32* %146, align 4
  %147 = load i32, i32* %9, align 4
  %148 = call i32 @RelationGetDescr(i32 %147)
  %149 = call %struct.TYPE_9__* @heap_form_tuple(i32 %148, i32* %107, i32* %110)
  store %struct.TYPE_9__* %149, %struct.TYPE_9__** %12, align 8
  %150 = load i32, i32* %9, align 4
  %151 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %152 = call i32 @CatalogTupleInsert(i32 %150, %struct.TYPE_9__* %151)
  br label %153

153:                                              ; preds = %113, %103
  %154 = load i8*, i8** %18, align 8
  call void @llvm.stackrestore(i8* %154)
  br label %155

155:                                              ; preds = %153, %101
  %156 = load i32, i32* %11, align 4
  %157 = call i32 @systable_endscan(i32 %156)
  %158 = call i32 (...) @CommandCounterIncrement()
  %159 = load i32, i32* %9, align 4
  %160 = load i32, i32* @RowExclusiveLock, align 4
  %161 = call i32 @table_close(i32 %159, i32 %160)
  ret void
}

declare dso_local i32 @table_open(i32, i32) #1

declare dso_local i32 @ScanKeyInit(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i32) #1

declare dso_local i32 @Int32GetDatum(i32) #1

declare dso_local i32 @systable_beginscan(i32, i32, i32, i32*, i32, i32*) #1

declare dso_local %struct.TYPE_9__* @systable_getnext(i32) #1

declare dso_local i64 @HeapTupleIsValid(%struct.TYPE_9__*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @MemSet(i32*, i32, i32) #1

declare dso_local i32 @PointerGetDatum(i32*) #1

declare dso_local %struct.TYPE_9__* @heap_modify_tuple(%struct.TYPE_9__*, i32, i32*, i32*, i32*) #1

declare dso_local i32 @RelationGetDescr(i32) #1

declare dso_local i32 @CatalogTupleUpdate(i32, i32*, %struct.TYPE_9__*) #1

declare dso_local i32 @CatalogTupleDelete(i32, i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @CharGetDatum(i32) #1

declare dso_local %struct.TYPE_9__* @heap_form_tuple(i32, i32*, i32*) #1

declare dso_local i32 @CatalogTupleInsert(i32, %struct.TYPE_9__*) #1

declare dso_local i32 @systable_endscan(i32) #1

declare dso_local i32 @CommandCounterIncrement(...) #1

declare dso_local i32 @table_close(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
