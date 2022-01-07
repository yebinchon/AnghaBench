; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pg_dump/extr_pg_dump.c_createBoundaryObjects.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pg_dump/extr_pg_dump.c_createBoundaryObjects.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i8*, i32 }

@DO_PRE_DATA_BOUNDARY = common dso_local global i32 0, align 4
@nilCatalogId = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [18 x i8] c"PRE-DATA BOUNDARY\00", align 1
@DO_POST_DATA_BOUNDARY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"POST-DATA BOUNDARY\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_4__* ()* @createBoundaryObjects to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_4__* @createBoundaryObjects() #0 {
  %1 = alloca %struct.TYPE_4__*, align 8
  %2 = call i64 @pg_malloc(i32 48)
  %3 = inttoptr i64 %2 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %3, %struct.TYPE_4__** %1, align 8
  %4 = load i32, i32* @DO_PRE_DATA_BOUNDARY, align 4
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i64 0
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 2
  store i32 %4, i32* %7, align 8
  %8 = load i8*, i8** @nilCatalogId, align 8
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i64 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 1
  store i8* %8, i8** %11, align 8
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i64 0
  %14 = call i32 @AssignDumpId(%struct.TYPE_4__* %13)
  %15 = call i8* @pg_strdup(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i64 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  store i8* %15, i8** %18, align 8
  %19 = load i32, i32* @DO_POST_DATA_BOUNDARY, align 4
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i64 1
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 2
  store i32 %19, i32* %22, align 8
  %23 = load i8*, i8** @nilCatalogId, align 8
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i64 1
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  store i8* %23, i8** %26, align 8
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i64 1
  %29 = call i32 @AssignDumpId(%struct.TYPE_4__* %28)
  %30 = call i8* @pg_strdup(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i64 1
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  store i8* %30, i8** %33, align 8
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  ret %struct.TYPE_4__* %34
}

declare dso_local i64 @pg_malloc(i32) #1

declare dso_local i32 @AssignDumpId(%struct.TYPE_4__*) #1

declare dso_local i8* @pg_strdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
