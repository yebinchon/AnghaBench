; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_seclabel.c_GetSharedSecurityLabel.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_seclabel.c_GetSharedSecurityLabel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@Anum_pg_shseclabel_objoid = common dso_local global i32 0, align 4
@BTEqualStrategyNumber = common dso_local global i32 0, align 4
@F_OIDEQ = common dso_local global i32 0, align 4
@Anum_pg_shseclabel_classoid = common dso_local global i32 0, align 4
@Anum_pg_shseclabel_provider = common dso_local global i32 0, align 4
@F_TEXTEQ = common dso_local global i32 0, align 4
@SharedSecLabelRelationId = common dso_local global i32 0, align 4
@AccessShareLock = common dso_local global i32 0, align 4
@SharedSecLabelObjectIndexId = common dso_local global i32 0, align 4
@Anum_pg_shseclabel_label = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_3__*, i8*)* @GetSharedSecurityLabel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @GetSharedSecurityLabel(%struct.TYPE_3__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [3 x i32], align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i8* %1, i8** %4, align 8
  store i8* null, i8** %11, align 8
  %12 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 0
  %13 = load i32, i32* @Anum_pg_shseclabel_objoid, align 4
  %14 = load i32, i32* @BTEqualStrategyNumber, align 4
  %15 = load i32, i32* @F_OIDEQ, align 4
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @ObjectIdGetDatum(i32 %18)
  %20 = call i32 @ScanKeyInit(i32* %12, i32 %13, i32 %14, i32 %15, i32 %19)
  %21 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 1
  %22 = load i32, i32* @Anum_pg_shseclabel_classoid, align 4
  %23 = load i32, i32* @BTEqualStrategyNumber, align 4
  %24 = load i32, i32* @F_OIDEQ, align 4
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @ObjectIdGetDatum(i32 %27)
  %29 = call i32 @ScanKeyInit(i32* %21, i32 %22, i32 %23, i32 %24, i32 %28)
  %30 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 2
  %31 = load i32, i32* @Anum_pg_shseclabel_provider, align 4
  %32 = load i32, i32* @BTEqualStrategyNumber, align 4
  %33 = load i32, i32* @F_TEXTEQ, align 4
  %34 = load i8*, i8** %4, align 8
  %35 = call i32 @CStringGetTextDatum(i8* %34)
  %36 = call i32 @ScanKeyInit(i32* %30, i32 %31, i32 %32, i32 %33, i32 %35)
  %37 = load i32, i32* @SharedSecLabelRelationId, align 4
  %38 = load i32, i32* @AccessShareLock, align 4
  %39 = call i32 @table_open(i32 %37, i32 %38)
  store i32 %39, i32* %5, align 4
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* @SharedSecLabelObjectIndexId, align 4
  %42 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 0
  %43 = call i32 @systable_beginscan(i32 %40, i32 %41, i32 1, i32* null, i32 3, i32* %42)
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* %7, align 4
  %45 = call i32 @systable_getnext(i32 %44)
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %8, align 4
  %47 = call i64 @HeapTupleIsValid(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %61

49:                                               ; preds = %2
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* @Anum_pg_shseclabel_label, align 4
  %52 = load i32, i32* %5, align 4
  %53 = call i32 @RelationGetDescr(i32 %52)
  %54 = call i32 @heap_getattr(i32 %50, i32 %51, i32 %53, i32* %10)
  store i32 %54, i32* %9, align 4
  %55 = load i32, i32* %10, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %60, label %57

57:                                               ; preds = %49
  %58 = load i32, i32* %9, align 4
  %59 = call i8* @TextDatumGetCString(i32 %58)
  store i8* %59, i8** %11, align 8
  br label %60

60:                                               ; preds = %57, %49
  br label %61

61:                                               ; preds = %60, %2
  %62 = load i32, i32* %7, align 4
  %63 = call i32 @systable_endscan(i32 %62)
  %64 = load i32, i32* %5, align 4
  %65 = load i32, i32* @AccessShareLock, align 4
  %66 = call i32 @table_close(i32 %64, i32 %65)
  %67 = load i8*, i8** %11, align 8
  ret i8* %67
}

declare dso_local i32 @ScanKeyInit(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i32) #1

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
