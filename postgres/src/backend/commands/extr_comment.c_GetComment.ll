; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_comment.c_GetComment.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_comment.c_GetComment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Anum_pg_description_objoid = common dso_local global i32 0, align 4
@BTEqualStrategyNumber = common dso_local global i32 0, align 4
@F_OIDEQ = common dso_local global i32 0, align 4
@Anum_pg_description_classoid = common dso_local global i32 0, align 4
@Anum_pg_description_objsubid = common dso_local global i32 0, align 4
@F_INT4EQ = common dso_local global i32 0, align 4
@DescriptionRelationId = common dso_local global i32 0, align 4
@AccessShareLock = common dso_local global i32 0, align 4
@DescriptionObjIndexId = common dso_local global i32 0, align 4
@Anum_pg_description_description = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @GetComment(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [3 x i32], align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %15 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 0
  %16 = load i32, i32* @Anum_pg_description_objoid, align 4
  %17 = load i32, i32* @BTEqualStrategyNumber, align 4
  %18 = load i32, i32* @F_OIDEQ, align 4
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @ObjectIdGetDatum(i32 %19)
  %21 = call i32 @ScanKeyInit(i32* %15, i32 %16, i32 %17, i32 %18, i32 %20)
  %22 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 1
  %23 = load i32, i32* @Anum_pg_description_classoid, align 4
  %24 = load i32, i32* @BTEqualStrategyNumber, align 4
  %25 = load i32, i32* @F_OIDEQ, align 4
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @ObjectIdGetDatum(i32 %26)
  %28 = call i32 @ScanKeyInit(i32* %22, i32 %23, i32 %24, i32 %25, i32 %27)
  %29 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 2
  %30 = load i32, i32* @Anum_pg_description_objsubid, align 4
  %31 = load i32, i32* @BTEqualStrategyNumber, align 4
  %32 = load i32, i32* @F_INT4EQ, align 4
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @Int32GetDatum(i32 %33)
  %35 = call i32 @ScanKeyInit(i32* %29, i32 %30, i32 %31, i32 %32, i32 %34)
  %36 = load i32, i32* @DescriptionRelationId, align 4
  %37 = load i32, i32* @AccessShareLock, align 4
  %38 = call i32 @table_open(i32 %36, i32 %37)
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @RelationGetDescr(i32 %39)
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* @DescriptionObjIndexId, align 4
  %43 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 0
  %44 = call i32 @systable_beginscan(i32 %41, i32 %42, i32 1, i32* null, i32 3, i32* %43)
  store i32 %44, i32* %9, align 4
  store i8* null, i8** %12, align 8
  br label %45

45:                                               ; preds = %3
  %46 = load i32, i32* %9, align 4
  %47 = call i32* @systable_getnext(i32 %46)
  store i32* %47, i32** %11, align 8
  %48 = icmp ne i32* %47, null
  br i1 %48, label %49, label %60

49:                                               ; preds = %45
  %50 = load i32*, i32** %11, align 8
  %51 = load i32, i32* @Anum_pg_description_description, align 4
  %52 = load i32, i32* %10, align 4
  %53 = call i32 @heap_getattr(i32* %50, i32 %51, i32 %52, i32* %14)
  store i32 %53, i32* %13, align 4
  %54 = load i32, i32* %14, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %49
  %57 = load i32, i32* %13, align 4
  %58 = call i8* @TextDatumGetCString(i32 %57)
  store i8* %58, i8** %12, align 8
  br label %59

59:                                               ; preds = %56, %49
  br label %60

60:                                               ; preds = %59, %45
  %61 = load i32, i32* %9, align 4
  %62 = call i32 @systable_endscan(i32 %61)
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* @AccessShareLock, align 4
  %65 = call i32 @table_close(i32 %63, i32 %64)
  %66 = load i8*, i8** %12, align 8
  ret i8* %66
}

declare dso_local i32 @ScanKeyInit(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i32) #1

declare dso_local i32 @Int32GetDatum(i32) #1

declare dso_local i32 @table_open(i32, i32) #1

declare dso_local i32 @RelationGetDescr(i32) #1

declare dso_local i32 @systable_beginscan(i32, i32, i32, i32*, i32, i32*) #1

declare dso_local i32* @systable_getnext(i32) #1

declare dso_local i32 @heap_getattr(i32*, i32, i32, i32*) #1

declare dso_local i8* @TextDatumGetCString(i32) #1

declare dso_local i32 @systable_endscan(i32) #1

declare dso_local i32 @table_close(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
