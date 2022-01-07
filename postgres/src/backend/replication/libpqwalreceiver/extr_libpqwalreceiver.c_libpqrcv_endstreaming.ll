; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/replication/libpqwalreceiver/extr_libpqwalreceiver.c_libpqrcv_endstreaming.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/replication/libpqwalreceiver/extr_libpqwalreceiver.c_libpqrcv_endstreaming.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"could not send end-of-streaming message to primary: %s\00", align 1
@PGRES_TUPLES_OK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [45 x i8] c"unexpected result set after end-of-streaming\00", align 1
@PGRES_COPY_OUT = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [45 x i8] c"error while shutting down streaming COPY: %s\00", align 1
@PGRES_COMMAND_OK = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [46 x i8] c"error reading result of streaming command: %s\00", align 1
@.str.4 = private unnamed_addr constant [44 x i8] c"unexpected result after CommandComplete: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i64*)* @libpqrcv_endstreaming to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @libpqrcv_endstreaming(%struct.TYPE_3__* %0, i64* %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i64* %1, i64** %4, align 8
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i64 @PQputCopyEnd(i32 %8, i32* null)
  %10 = icmp sle i64 %9, 0
  br i1 %10, label %17, label %11

11:                                               ; preds = %2
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i64 @PQflush(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %26

17:                                               ; preds = %11, %2
  %18 = load i32, i32* @ERROR, align 4
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @PQerrorMessage(i32 %21)
  %23 = call i32 @pchomp(i32 %22)
  %24 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = call i32 @ereport(i32 %18, i32 %24)
  br label %26

26:                                               ; preds = %17, %11
  %27 = load i64*, i64** %4, align 8
  store i64 0, i64* %27, align 8
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32* @libpqrcv_PQgetResult(i32 %30)
  store i32* %31, i32** %5, align 8
  %32 = load i32*, i32** %5, align 8
  %33 = call i64 @PQresultStatus(i32* %32)
  %34 = load i64, i64* @PGRES_TUPLES_OK, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %59

36:                                               ; preds = %26
  %37 = load i32*, i32** %5, align 8
  %38 = call i32 @PQnfields(i32* %37)
  %39 = icmp slt i32 %38, 2
  br i1 %39, label %44, label %40

40:                                               ; preds = %36
  %41 = load i32*, i32** %5, align 8
  %42 = call i32 @PQntuples(i32* %41)
  %43 = icmp ne i32 %42, 1
  br i1 %43, label %44, label %48

44:                                               ; preds = %40, %36
  %45 = load i32, i32* @ERROR, align 4
  %46 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  %47 = call i32 @ereport(i32 %45, i32 %46)
  br label %48

48:                                               ; preds = %44, %40
  %49 = load i32*, i32** %5, align 8
  %50 = call i32 @PQgetvalue(i32* %49, i32 0, i32 0)
  %51 = call i64 @pg_strtoint32(i32 %50)
  %52 = load i64*, i64** %4, align 8
  store i64 %51, i64* %52, align 8
  %53 = load i32*, i32** %5, align 8
  %54 = call i32 @PQclear(i32* %53)
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32* @libpqrcv_PQgetResult(i32 %57)
  store i32* %58, i32** %5, align 8
  br label %87

59:                                               ; preds = %26
  %60 = load i32*, i32** %5, align 8
  %61 = call i64 @PQresultStatus(i32* %60)
  %62 = load i64, i64* @PGRES_COPY_OUT, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %86

64:                                               ; preds = %59
  %65 = load i32*, i32** %5, align 8
  %66 = call i32 @PQclear(i32* %65)
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i64 @PQendcopy(i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %81

72:                                               ; preds = %64
  %73 = load i32, i32* @ERROR, align 4
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @PQerrorMessage(i32 %76)
  %78 = call i32 @pchomp(i32 %77)
  %79 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i32 %78)
  %80 = call i32 @ereport(i32 %73, i32 %79)
  br label %81

81:                                               ; preds = %72, %64
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32* @libpqrcv_PQgetResult(i32 %84)
  store i32* %85, i32** %5, align 8
  br label %86

86:                                               ; preds = %81, %59
  br label %87

87:                                               ; preds = %86, %48
  %88 = load i32*, i32** %5, align 8
  %89 = call i64 @PQresultStatus(i32* %88)
  %90 = load i64, i64* @PGRES_COMMAND_OK, align 8
  %91 = icmp ne i64 %89, %90
  br i1 %91, label %92, label %101

92:                                               ; preds = %87
  %93 = load i32, i32* @ERROR, align 4
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @PQerrorMessage(i32 %96)
  %98 = call i32 @pchomp(i32 %97)
  %99 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0), i32 %98)
  %100 = call i32 @ereport(i32 %93, i32 %99)
  br label %101

101:                                              ; preds = %92, %87
  %102 = load i32*, i32** %5, align 8
  %103 = call i32 @PQclear(i32* %102)
  %104 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = call i32* @libpqrcv_PQgetResult(i32 %106)
  store i32* %107, i32** %5, align 8
  %108 = load i32*, i32** %5, align 8
  %109 = icmp ne i32* %108, null
  br i1 %109, label %110, label %119

110:                                              ; preds = %101
  %111 = load i32, i32* @ERROR, align 4
  %112 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @PQerrorMessage(i32 %114)
  %116 = call i32 @pchomp(i32 %115)
  %117 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0), i32 %116)
  %118 = call i32 @ereport(i32 %111, i32 %117)
  br label %119

119:                                              ; preds = %110, %101
  ret void
}

declare dso_local i64 @PQputCopyEnd(i32, i32*) #1

declare dso_local i64 @PQflush(i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errmsg(i8*, ...) #1

declare dso_local i32 @pchomp(i32) #1

declare dso_local i32 @PQerrorMessage(i32) #1

declare dso_local i32* @libpqrcv_PQgetResult(i32) #1

declare dso_local i64 @PQresultStatus(i32*) #1

declare dso_local i32 @PQnfields(i32*) #1

declare dso_local i32 @PQntuples(i32*) #1

declare dso_local i64 @pg_strtoint32(i32) #1

declare dso_local i32 @PQgetvalue(i32*, i32, i32) #1

declare dso_local i32 @PQclear(i32*) #1

declare dso_local i64 @PQendcopy(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
