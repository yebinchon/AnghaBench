; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_seclabel.c_GetSecurityLabel.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_seclabel.c_GetSecurityLabel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32 }

@Anum_pg_seclabel_objoid = common dso_local global i32 0, align 4
@BTEqualStrategyNumber = common dso_local global i32 0, align 4
@F_OIDEQ = common dso_local global i32 0, align 4
@Anum_pg_seclabel_classoid = common dso_local global i32 0, align 4
@Anum_pg_seclabel_objsubid = common dso_local global i32 0, align 4
@F_INT4EQ = common dso_local global i32 0, align 4
@Anum_pg_seclabel_provider = common dso_local global i32 0, align 4
@F_TEXTEQ = common dso_local global i32 0, align 4
@SecLabelRelationId = common dso_local global i32 0, align 4
@AccessShareLock = common dso_local global i32 0, align 4
@SecLabelObjectIndexId = common dso_local global i32 0, align 4
@Anum_pg_seclabel_label = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @GetSecurityLabel(%struct.TYPE_4__* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [4 x i32], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* null, i8** %12, align 8
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @IsSharedRelation(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %2
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %20 = load i8*, i8** %5, align 8
  %21 = call i8* @GetSharedSecurityLabel(%struct.TYPE_4__* %19, i8* %20)
  store i8* %21, i8** %3, align 8
  br label %88

22:                                               ; preds = %2
  %23 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %24 = load i32, i32* @Anum_pg_seclabel_objoid, align 4
  %25 = load i32, i32* @BTEqualStrategyNumber, align 4
  %26 = load i32, i32* @F_OIDEQ, align 4
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @ObjectIdGetDatum(i32 %29)
  %31 = call i32 @ScanKeyInit(i32* %23, i32 %24, i32 %25, i32 %26, i32 %30)
  %32 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 1
  %33 = load i32, i32* @Anum_pg_seclabel_classoid, align 4
  %34 = load i32, i32* @BTEqualStrategyNumber, align 4
  %35 = load i32, i32* @F_OIDEQ, align 4
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @ObjectIdGetDatum(i32 %38)
  %40 = call i32 @ScanKeyInit(i32* %32, i32 %33, i32 %34, i32 %35, i32 %39)
  %41 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 2
  %42 = load i32, i32* @Anum_pg_seclabel_objsubid, align 4
  %43 = load i32, i32* @BTEqualStrategyNumber, align 4
  %44 = load i32, i32* @F_INT4EQ, align 4
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @Int32GetDatum(i32 %47)
  %49 = call i32 @ScanKeyInit(i32* %41, i32 %42, i32 %43, i32 %44, i32 %48)
  %50 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 3
  %51 = load i32, i32* @Anum_pg_seclabel_provider, align 4
  %52 = load i32, i32* @BTEqualStrategyNumber, align 4
  %53 = load i32, i32* @F_TEXTEQ, align 4
  %54 = load i8*, i8** %5, align 8
  %55 = call i32 @CStringGetTextDatum(i8* %54)
  %56 = call i32 @ScanKeyInit(i32* %50, i32 %51, i32 %52, i32 %53, i32 %55)
  %57 = load i32, i32* @SecLabelRelationId, align 4
  %58 = load i32, i32* @AccessShareLock, align 4
  %59 = call i32 @table_open(i32 %57, i32 %58)
  store i32 %59, i32* %6, align 4
  %60 = load i32, i32* %6, align 4
  %61 = load i32, i32* @SecLabelObjectIndexId, align 4
  %62 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %63 = call i32 @systable_beginscan(i32 %60, i32 %61, i32 1, i32* null, i32 4, i32* %62)
  store i32 %63, i32* %8, align 4
  %64 = load i32, i32* %8, align 4
  %65 = call i32 @systable_getnext(i32 %64)
  store i32 %65, i32* %9, align 4
  %66 = load i32, i32* %9, align 4
  %67 = call i64 @HeapTupleIsValid(i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %81

69:                                               ; preds = %22
  %70 = load i32, i32* %9, align 4
  %71 = load i32, i32* @Anum_pg_seclabel_label, align 4
  %72 = load i32, i32* %6, align 4
  %73 = call i32 @RelationGetDescr(i32 %72)
  %74 = call i32 @heap_getattr(i32 %70, i32 %71, i32 %73, i32* %11)
  store i32 %74, i32* %10, align 4
  %75 = load i32, i32* %11, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %80, label %77

77:                                               ; preds = %69
  %78 = load i32, i32* %10, align 4
  %79 = call i8* @TextDatumGetCString(i32 %78)
  store i8* %79, i8** %12, align 8
  br label %80

80:                                               ; preds = %77, %69
  br label %81

81:                                               ; preds = %80, %22
  %82 = load i32, i32* %8, align 4
  %83 = call i32 @systable_endscan(i32 %82)
  %84 = load i32, i32* %6, align 4
  %85 = load i32, i32* @AccessShareLock, align 4
  %86 = call i32 @table_close(i32 %84, i32 %85)
  %87 = load i8*, i8** %12, align 8
  store i8* %87, i8** %3, align 8
  br label %88

88:                                               ; preds = %81, %18
  %89 = load i8*, i8** %3, align 8
  ret i8* %89
}

declare dso_local i64 @IsSharedRelation(i32) #1

declare dso_local i8* @GetSharedSecurityLabel(%struct.TYPE_4__*, i8*) #1

declare dso_local i32 @ScanKeyInit(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i32) #1

declare dso_local i32 @Int32GetDatum(i32) #1

declare dso_local i32 @CStringGetTextDatum(i8*) #1

declare dso_local i32 @table_open(i32, i32) #1

declare dso_local i32 @systable_beginscan(i32, i32, i32, i32*, i32, i32*) #1

declare dso_local i32 @systable_getnext(i32) #1

declare dso_local i64 @HeapTupleIsValid(i32) #1

declare dso_local i32 @heap_getattr(i32, i32, i32, i32*) #1

declare dso_local i32 @RelationGetDescr(i32) #1

declare dso_local i8* @TextDatumGetCString(i32) #1

declare dso_local i32 @systable_endscan(i32) #1

declare dso_local i32 @table_close(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
