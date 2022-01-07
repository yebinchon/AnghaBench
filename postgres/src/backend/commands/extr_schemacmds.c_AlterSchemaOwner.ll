; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_schemacmds.c_AlterSchemaOwner.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_schemacmds.c_AlterSchemaOwner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@NamespaceRelationId = common dso_local global i32 0, align 4
@RowExclusiveLock = common dso_local global i32 0, align 4
@NAMESPACENAME = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_UNDEFINED_SCHEMA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"schema \22%s\22 does not exist\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @AlterSchemaOwner(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_2__*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load i32, i32* @NamespaceRelationId, align 4
  %11 = load i32, i32* @RowExclusiveLock, align 4
  %12 = call i32 @table_open(i32 %10, i32 %11)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* @NAMESPACENAME, align 4
  %14 = load i8*, i8** %3, align 8
  %15 = call i32 @CStringGetDatum(i8* %14)
  %16 = call i32 @SearchSysCache1(i32 %13, i32 %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @HeapTupleIsValid(i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %27, label %20

20:                                               ; preds = %2
  %21 = load i32, i32* @ERROR, align 4
  %22 = load i32, i32* @ERRCODE_UNDEFINED_SCHEMA, align 4
  %23 = call i32 @errcode(i32 %22)
  %24 = load i8*, i8** %3, align 8
  %25 = call i32 @errmsg(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i8* %24)
  %26 = call i32 @ereport(i32 %21, i32 %25)
  br label %27

27:                                               ; preds = %20, %2
  %28 = load i32, i32* %6, align 4
  %29 = call i64 @GETSTRUCT(i32 %28)
  %30 = inttoptr i64 %29 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %30, %struct.TYPE_2__** %9, align 8
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @AlterSchemaOwner_internal(i32 %34, i32 %35, i32 %36)
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* @NamespaceRelationId, align 4
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @ObjectAddressSet(i32 %38, i32 %39, i32 %40)
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @ReleaseSysCache(i32 %42)
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* @RowExclusiveLock, align 4
  %46 = call i32 @table_close(i32 %44, i32 %45)
  %47 = load i32, i32* %8, align 4
  ret i32 %47
}

declare dso_local i32 @table_open(i32, i32) #1

declare dso_local i32 @SearchSysCache1(i32, i32) #1

declare dso_local i32 @CStringGetDatum(i8*) #1

declare dso_local i32 @HeapTupleIsValid(i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i8*) #1

declare dso_local i64 @GETSTRUCT(i32) #1

declare dso_local i32 @AlterSchemaOwner_internal(i32, i32, i32) #1

declare dso_local i32 @ObjectAddressSet(i32, i32, i32) #1

declare dso_local i32 @ReleaseSysCache(i32) #1

declare dso_local i32 @table_close(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
