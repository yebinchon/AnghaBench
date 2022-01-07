; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pg_dump/extr_pg_dump.c_dumpBlobs.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pg_dump/extr_pg_dump.c_dumpBlobs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }

@LOBBUFSIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"saving large objects\00", align 1
@.str.1 = private unnamed_addr constant [78 x i8] c"DECLARE bloboid CURSOR FOR SELECT oid FROM pg_largeobject_metadata ORDER BY 1\00", align 1
@.str.2 = private unnamed_addr constant [79 x i8] c"DECLARE bloboid CURSOR FOR SELECT DISTINCT loid FROM pg_largeobject ORDER BY 1\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"FETCH 1000 IN bloboid\00", align 1
@PGRES_TUPLES_OK = common dso_local global i32 0, align 4
@INV_READ = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [35 x i8] c"could not open large object %u: %s\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"error reading large object %u: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i8*)* @dumpBlobs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dumpBlobs(%struct.TYPE_9__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  store i8* %1, i8** %4, align 8
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %17 = call i32* @GetConnection(%struct.TYPE_9__* %16)
  store i32* %17, i32** %7, align 8
  %18 = load i32, i32* @LOBBUFSIZE, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %9, align 8
  %21 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %10, align 8
  %22 = call i32 @pg_log_info(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp sge i32 %25, 90000
  br i1 %26, label %27, label %28

27:                                               ; preds = %2
  store i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.1, i64 0, i64 0), i8** %5, align 8
  br label %29

28:                                               ; preds = %2
  store i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.2, i64 0, i64 0), i8** %5, align 8
  br label %29

29:                                               ; preds = %28, %27
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %31 = load i8*, i8** %5, align 8
  %32 = call i32 @ExecuteSqlStatement(%struct.TYPE_9__* %30, i8* %31)
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i8** %6, align 8
  br label %33

33:                                               ; preds = %96, %29
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %35 = load i8*, i8** %6, align 8
  %36 = load i32, i32* @PGRES_TUPLES_OK, align 4
  %37 = call i32* @ExecuteSqlQuery(%struct.TYPE_9__* %34, i8* %35, i32 %36)
  store i32* %37, i32** %8, align 8
  %38 = load i32*, i32** %8, align 8
  %39 = call i32 @PQntuples(i32* %38)
  store i32 %39, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %40

40:                                               ; preds = %90, %33
  %41 = load i32, i32* %12, align 4
  %42 = load i32, i32* %11, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %93

44:                                               ; preds = %40
  %45 = load i32*, i32** %8, align 8
  %46 = load i32, i32* %12, align 4
  %47 = call i32 @PQgetvalue(i32* %45, i32 %46, i32 0)
  %48 = call i32 @atooid(i32 %47)
  store i32 %48, i32* %14, align 4
  %49 = load i32*, i32** %7, align 8
  %50 = load i32, i32* %14, align 4
  %51 = load i32, i32* @INV_READ, align 4
  %52 = call i32 @lo_open(i32* %49, i32 %50, i32 %51)
  store i32 %52, i32* %15, align 4
  %53 = load i32, i32* %15, align 4
  %54 = icmp eq i32 %53, -1
  br i1 %54, label %55, label %60

55:                                               ; preds = %44
  %56 = load i32, i32* %14, align 4
  %57 = load i32*, i32** %7, align 8
  %58 = call i32 @PQerrorMessage(i32* %57)
  %59 = call i32 @fatal(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i32 %56, i32 %58)
  br label %60

60:                                               ; preds = %55, %44
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %62 = load i32, i32* %14, align 4
  %63 = call i32 @StartBlob(%struct.TYPE_9__* %61, i32 %62)
  br label %64

64:                                               ; preds = %80, %60
  %65 = load i32*, i32** %7, align 8
  %66 = load i32, i32* %15, align 4
  %67 = load i32, i32* @LOBBUFSIZE, align 4
  %68 = call i32 @lo_read(i32* %65, i32 %66, i8* %21, i32 %67)
  store i32 %68, i32* %13, align 4
  %69 = load i32, i32* %13, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %64
  %72 = load i32, i32* %14, align 4
  %73 = load i32*, i32** %7, align 8
  %74 = call i32 @PQerrorMessage(i32* %73)
  %75 = call i32 @fatal(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0), i32 %72, i32 %74)
  br label %76

76:                                               ; preds = %71, %64
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %78 = load i32, i32* %13, align 4
  %79 = call i32 @WriteData(%struct.TYPE_9__* %77, i8* %21, i32 %78)
  br label %80

80:                                               ; preds = %76
  %81 = load i32, i32* %13, align 4
  %82 = icmp sgt i32 %81, 0
  br i1 %82, label %64, label %83

83:                                               ; preds = %80
  %84 = load i32*, i32** %7, align 8
  %85 = load i32, i32* %15, align 4
  %86 = call i32 @lo_close(i32* %84, i32 %85)
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %88 = load i32, i32* %14, align 4
  %89 = call i32 @EndBlob(%struct.TYPE_9__* %87, i32 %88)
  br label %90

90:                                               ; preds = %83
  %91 = load i32, i32* %12, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %12, align 4
  br label %40

93:                                               ; preds = %40
  %94 = load i32*, i32** %8, align 8
  %95 = call i32 @PQclear(i32* %94)
  br label %96

96:                                               ; preds = %93
  %97 = load i32, i32* %11, align 4
  %98 = icmp sgt i32 %97, 0
  br i1 %98, label %33, label %99

99:                                               ; preds = %96
  %100 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %100)
  ret i32 1
}

declare dso_local i32* @GetConnection(%struct.TYPE_9__*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @pg_log_info(i8*) #1

declare dso_local i32 @ExecuteSqlStatement(%struct.TYPE_9__*, i8*) #1

declare dso_local i32* @ExecuteSqlQuery(%struct.TYPE_9__*, i8*, i32) #1

declare dso_local i32 @PQntuples(i32*) #1

declare dso_local i32 @atooid(i32) #1

declare dso_local i32 @PQgetvalue(i32*, i32, i32) #1

declare dso_local i32 @lo_open(i32*, i32, i32) #1

declare dso_local i32 @fatal(i8*, i32, i32) #1

declare dso_local i32 @PQerrorMessage(i32*) #1

declare dso_local i32 @StartBlob(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @lo_read(i32*, i32, i8*, i32) #1

declare dso_local i32 @WriteData(%struct.TYPE_9__*, i8*, i32) #1

declare dso_local i32 @lo_close(i32*, i32) #1

declare dso_local i32 @EndBlob(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @PQclear(i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
