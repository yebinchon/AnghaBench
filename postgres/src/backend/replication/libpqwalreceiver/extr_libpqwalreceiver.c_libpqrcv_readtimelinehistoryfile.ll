; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/replication/libpqwalreceiver/extr_libpqwalreceiver.c_libpqrcv_readtimelinehistoryfile.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/replication/libpqwalreceiver/extr_libpqwalreceiver.c_libpqrcv_readtimelinehistoryfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@.str = private unnamed_addr constant [20 x i8] c"TIMELINE_HISTORY %u\00", align 1
@PGRES_TUPLES_OK = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [68 x i8] c"could not receive timeline history file from the primary server: %s\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"invalid response from primary server\00", align 1
@.str.3 = private unnamed_addr constant [62 x i8] c"Expected 1 tuple with 2 fields, got %d tuples with %d fields.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i32, i8**, i8**, i32*)* @libpqrcv_readtimelinehistoryfile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @libpqrcv_readtimelinehistoryfile(%struct.TYPE_3__* %0, i32 %1, i8** %2, i8** %3, i32* %4) #0 {
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca [64 x i8], align 16
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8** %2, i8*** %8, align 8
  store i8** %3, i8*** %9, align 8
  store i32* %4, i32** %10, align 8
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = call i32 @Assert(i32 %20)
  %22 = getelementptr inbounds [64 x i8], [64 x i8]* %12, i64 0, i64 0
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @snprintf(i8* %22, i32 64, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = getelementptr inbounds [64 x i8], [64 x i8]* %12, i64 0, i64 0
  %29 = call i32* @libpqrcv_PQexec(i32 %27, i8* %28)
  store i32* %29, i32** %11, align 8
  %30 = load i32*, i32** %11, align 8
  %31 = call i64 @PQresultStatus(i32* %30)
  %32 = load i64, i64* @PGRES_TUPLES_OK, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %45

34:                                               ; preds = %5
  %35 = load i32*, i32** %11, align 8
  %36 = call i32 @PQclear(i32* %35)
  %37 = load i32, i32* @ERROR, align 4
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @PQerrorMessage(i32 %40)
  %42 = call i32 @pchomp(i32 %41)
  %43 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.1, i64 0, i64 0), i32 %42)
  %44 = call i32 @ereport(i32 %37, i32 %43)
  br label %45

45:                                               ; preds = %34, %5
  %46 = load i32*, i32** %11, align 8
  %47 = call i32 @PQnfields(i32* %46)
  %48 = icmp ne i32 %47, 2
  br i1 %48, label %53, label %49

49:                                               ; preds = %45
  %50 = load i32*, i32** %11, align 8
  %51 = call i32 @PQntuples(i32* %50)
  %52 = icmp ne i32 %51, 1
  br i1 %52, label %53, label %66

53:                                               ; preds = %49, %45
  %54 = load i32*, i32** %11, align 8
  %55 = call i32 @PQntuples(i32* %54)
  store i32 %55, i32* %13, align 4
  %56 = load i32*, i32** %11, align 8
  %57 = call i32 @PQnfields(i32* %56)
  store i32 %57, i32* %14, align 4
  %58 = load i32*, i32** %11, align 8
  %59 = call i32 @PQclear(i32* %58)
  %60 = load i32, i32* @ERROR, align 4
  %61 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  %62 = load i32, i32* %13, align 4
  %63 = load i32, i32* %14, align 4
  %64 = call i32 @errdetail(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.3, i64 0, i64 0), i32 %62, i32 %63)
  %65 = call i32 @ereport(i32 %60, i32 %64)
  br label %66

66:                                               ; preds = %53, %49
  %67 = load i32*, i32** %11, align 8
  %68 = call i32 @PQgetvalue(i32* %67, i32 0, i32 0)
  %69 = call i8* @pstrdup(i32 %68)
  %70 = load i8**, i8*** %8, align 8
  store i8* %69, i8** %70, align 8
  %71 = load i32*, i32** %11, align 8
  %72 = call i32 @PQgetlength(i32* %71, i32 0, i32 1)
  %73 = load i32*, i32** %10, align 8
  store i32 %72, i32* %73, align 4
  %74 = load i32*, i32** %10, align 8
  %75 = load i32, i32* %74, align 4
  %76 = call i8* @palloc(i32 %75)
  %77 = load i8**, i8*** %9, align 8
  store i8* %76, i8** %77, align 8
  %78 = load i8**, i8*** %9, align 8
  %79 = load i8*, i8** %78, align 8
  %80 = load i32*, i32** %11, align 8
  %81 = call i32 @PQgetvalue(i32* %80, i32 0, i32 1)
  %82 = load i32*, i32** %10, align 8
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @memcpy(i8* %79, i32 %81, i32 %83)
  %85 = load i32*, i32** %11, align 8
  %86 = call i32 @PQclear(i32* %85)
  ret void
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32* @libpqrcv_PQexec(i32, i8*) #1

declare dso_local i64 @PQresultStatus(i32*) #1

declare dso_local i32 @PQclear(i32*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errmsg(i8*, ...) #1

declare dso_local i32 @pchomp(i32) #1

declare dso_local i32 @PQerrorMessage(i32) #1

declare dso_local i32 @PQnfields(i32*) #1

declare dso_local i32 @PQntuples(i32*) #1

declare dso_local i32 @errdetail(i8*, i32, i32) #1

declare dso_local i8* @pstrdup(i32) #1

declare dso_local i32 @PQgetvalue(i32*, i32, i32) #1

declare dso_local i32 @PQgetlength(i32*, i32, i32) #1

declare dso_local i8* @palloc(i32) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
