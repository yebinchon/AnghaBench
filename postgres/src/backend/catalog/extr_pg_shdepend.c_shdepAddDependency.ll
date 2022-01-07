; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/catalog/extr_pg_shdepend.c_shdepAddDependency.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/catalog/extr_pg_shdepend.c_shdepAddDependency.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@Natts_pg_shdepend = common dso_local global i32 0, align 4
@Anum_pg_shdepend_dbid = common dso_local global i32 0, align 4
@Anum_pg_shdepend_classid = common dso_local global i32 0, align 4
@Anum_pg_shdepend_objid = common dso_local global i32 0, align 4
@Anum_pg_shdepend_objsubid = common dso_local global i32 0, align 4
@Anum_pg_shdepend_refclassid = common dso_local global i32 0, align 4
@Anum_pg_shdepend_refobjid = common dso_local global i32 0, align 4
@Anum_pg_shdepend_deptype = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, i32, i32, i32, i32, i32, i32)* @shdepAddDependency to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @shdepAddDependency(%struct.TYPE_4__* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %19 = load i32, i32* @Natts_pg_shdepend, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %16, align 8
  %22 = alloca i32, i64 %20, align 16
  store i64 %20, i64* %17, align 8
  %23 = load i32, i32* @Natts_pg_shdepend, align 4
  %24 = zext i32 %23 to i64
  %25 = alloca i32, i64 %24, align 16
  store i64 %24, i64* %18, align 8
  %26 = load i32, i32* %12, align 4
  %27 = load i32, i32* %13, align 4
  %28 = call i32 @shdepLockAndCheckObject(i32 %26, i32 %27)
  %29 = mul nuw i64 4, %24
  %30 = trunc i64 %29 to i32
  %31 = call i32 @memset(i32* %25, i32 0, i32 %30)
  %32 = load i32, i32* %9, align 4
  %33 = call i32 @classIdGetDbId(i32 %32)
  %34 = call i32 @ObjectIdGetDatum(i32 %33)
  %35 = load i32, i32* @Anum_pg_shdepend_dbid, align 4
  %36 = sub nsw i32 %35, 1
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %22, i64 %37
  store i32 %34, i32* %38, align 4
  %39 = load i32, i32* %9, align 4
  %40 = call i32 @ObjectIdGetDatum(i32 %39)
  %41 = load i32, i32* @Anum_pg_shdepend_classid, align 4
  %42 = sub nsw i32 %41, 1
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %22, i64 %43
  store i32 %40, i32* %44, align 4
  %45 = load i32, i32* %10, align 4
  %46 = call i32 @ObjectIdGetDatum(i32 %45)
  %47 = load i32, i32* @Anum_pg_shdepend_objid, align 4
  %48 = sub nsw i32 %47, 1
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %22, i64 %49
  store i32 %46, i32* %50, align 4
  %51 = load i32, i32* %11, align 4
  %52 = call i32 @Int32GetDatum(i32 %51)
  %53 = load i32, i32* @Anum_pg_shdepend_objsubid, align 4
  %54 = sub nsw i32 %53, 1
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %22, i64 %55
  store i32 %52, i32* %56, align 4
  %57 = load i32, i32* %12, align 4
  %58 = call i32 @ObjectIdGetDatum(i32 %57)
  %59 = load i32, i32* @Anum_pg_shdepend_refclassid, align 4
  %60 = sub nsw i32 %59, 1
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %22, i64 %61
  store i32 %58, i32* %62, align 4
  %63 = load i32, i32* %13, align 4
  %64 = call i32 @ObjectIdGetDatum(i32 %63)
  %65 = load i32, i32* @Anum_pg_shdepend_refobjid, align 4
  %66 = sub nsw i32 %65, 1
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %22, i64 %67
  store i32 %64, i32* %68, align 4
  %69 = load i32, i32* %14, align 4
  %70 = call i32 @CharGetDatum(i32 %69)
  %71 = load i32, i32* @Anum_pg_shdepend_deptype, align 4
  %72 = sub nsw i32 %71, 1
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %22, i64 %73
  store i32 %70, i32* %74, align 4
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @heap_form_tuple(i32 %77, i32* %22, i32* %25)
  store i32 %78, i32* %15, align 4
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %80 = load i32, i32* %15, align 4
  %81 = call i32 @CatalogTupleInsert(%struct.TYPE_4__* %79, i32 %80)
  %82 = load i32, i32* %15, align 4
  %83 = call i32 @heap_freetuple(i32 %82)
  %84 = load i8*, i8** %16, align 8
  call void @llvm.stackrestore(i8* %84)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @shdepLockAndCheckObject(i32, i32) #2

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local i32 @ObjectIdGetDatum(i32) #2

declare dso_local i32 @classIdGetDbId(i32) #2

declare dso_local i32 @Int32GetDatum(i32) #2

declare dso_local i32 @CharGetDatum(i32) #2

declare dso_local i32 @heap_form_tuple(i32, i32*, i32*) #2

declare dso_local i32 @CatalogTupleInsert(%struct.TYPE_4__*, i32) #2

declare dso_local i32 @heap_freetuple(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
