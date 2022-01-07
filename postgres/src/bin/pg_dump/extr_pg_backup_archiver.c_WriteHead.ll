; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pg_dump/extr_pg_backup_archiver.c_WriteHead.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pg_dump/extr_pg_backup_archiver.c_WriteHead.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_13__, i32, i32, i32, i32, i32 (%struct.TYPE_14__*, i32)*, i32, i32, i32, i32 (%struct.TYPE_14__*, i8*, i32)* }
%struct.TYPE_13__ = type { i32 }
%struct.tm = type { i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [6 x i8] c"PGDMP\00", align 1
@PG_VERSION = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @WriteHead(%struct.TYPE_14__* %0) #0 {
  %2 = alloca %struct.TYPE_14__*, align 8
  %3 = alloca %struct.tm, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %2, align 8
  %4 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %4, i32 0, i32 9
  %6 = load i32 (%struct.TYPE_14__*, i8*, i32)*, i32 (%struct.TYPE_14__*, i8*, i32)** %5, align 8
  %7 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %8 = call i32 %6(%struct.TYPE_14__* %7, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 5)
  %9 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 5
  %11 = load i32 (%struct.TYPE_14__*, i32)*, i32 (%struct.TYPE_14__*, i32)** %10, align 8
  %12 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %13 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 8
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @ARCHIVE_MAJOR(i32 %15)
  %17 = call i32 %11(%struct.TYPE_14__* %12, i32 %16)
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 5
  %20 = load i32 (%struct.TYPE_14__*, i32)*, i32 (%struct.TYPE_14__*, i32)** %19, align 8
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %22 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %22, i32 0, i32 8
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @ARCHIVE_MINOR(i32 %24)
  %26 = call i32 %20(%struct.TYPE_14__* %21, i32 %25)
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 5
  %29 = load i32 (%struct.TYPE_14__*, i32)*, i32 (%struct.TYPE_14__*, i32)** %28, align 8
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %31 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %31, i32 0, i32 8
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @ARCHIVE_REV(i32 %33)
  %35 = call i32 %29(%struct.TYPE_14__* %30, i32 %34)
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %36, i32 0, i32 5
  %38 = load i32 (%struct.TYPE_14__*, i32)*, i32 (%struct.TYPE_14__*, i32)** %37, align 8
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %40, i32 0, i32 7
  %42 = load i32, i32* %41, align 4
  %43 = call i32 %38(%struct.TYPE_14__* %39, i32 %42)
  %44 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %45 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %44, i32 0, i32 5
  %46 = load i32 (%struct.TYPE_14__*, i32)*, i32 (%struct.TYPE_14__*, i32)** %45, align 8
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %49 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %48, i32 0, i32 6
  %50 = load i32, i32* %49, align 8
  %51 = call i32 %46(%struct.TYPE_14__* %47, i32 %50)
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i32 0, i32 5
  %54 = load i32 (%struct.TYPE_14__*, i32)*, i32 (%struct.TYPE_14__*, i32)** %53, align 8
  %55 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %57 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 8
  %59 = call i32 %54(%struct.TYPE_14__* %55, i32 %58)
  %60 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %61 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %62 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @WriteInt(%struct.TYPE_14__* %60, i32 %63)
  %65 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %66 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %65, i32 0, i32 2
  %67 = call %struct.tm* @localtime(i32* %66)
  %68 = bitcast %struct.tm* %3 to i8*
  %69 = bitcast %struct.tm* %67 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %68, i8* align 4 %69, i64 28, i1 false)
  %70 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %71 = getelementptr inbounds %struct.tm, %struct.tm* %3, i32 0, i32 6
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @WriteInt(%struct.TYPE_14__* %70, i32 %72)
  %74 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %75 = getelementptr inbounds %struct.tm, %struct.tm* %3, i32 0, i32 5
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @WriteInt(%struct.TYPE_14__* %74, i32 %76)
  %78 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %79 = getelementptr inbounds %struct.tm, %struct.tm* %3, i32 0, i32 4
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @WriteInt(%struct.TYPE_14__* %78, i32 %80)
  %82 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %83 = getelementptr inbounds %struct.tm, %struct.tm* %3, i32 0, i32 3
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @WriteInt(%struct.TYPE_14__* %82, i32 %84)
  %86 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %87 = getelementptr inbounds %struct.tm, %struct.tm* %3, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @WriteInt(%struct.TYPE_14__* %86, i32 %88)
  %90 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %91 = getelementptr inbounds %struct.tm, %struct.tm* %3, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @WriteInt(%struct.TYPE_14__* %90, i32 %92)
  %94 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %95 = getelementptr inbounds %struct.tm, %struct.tm* %3, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @WriteInt(%struct.TYPE_14__* %94, i32 %96)
  %98 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %99 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %100 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @PQdb(i32 %101)
  %103 = call i32 @WriteStr(%struct.TYPE_14__* %98, i32 %102)
  %104 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %105 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %106 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = call i32 @WriteStr(%struct.TYPE_14__* %104, i32 %108)
  %110 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %111 = load i32, i32* @PG_VERSION, align 4
  %112 = call i32 @WriteStr(%struct.TYPE_14__* %110, i32 %111)
  ret void
}

declare dso_local i32 @ARCHIVE_MAJOR(i32) #1

declare dso_local i32 @ARCHIVE_MINOR(i32) #1

declare dso_local i32 @ARCHIVE_REV(i32) #1

declare dso_local i32 @WriteInt(%struct.TYPE_14__*, i32) #1

declare dso_local %struct.tm* @localtime(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @WriteStr(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @PQdb(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
