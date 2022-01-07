; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/scripts/extr_clusterdb.c_cluster_one_database.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/scripts/extr_clusterdb.c_cluster_one_database.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"CLUSTER\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c" VERBOSE\00", align 1
@.str.2 = private unnamed_addr constant [53 x i8] c"clustering of table \22%s\22 in database \22%s\22 failed: %s\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"clustering of database \22%s\22 failed: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i8*, i8*, i8*, i8*, i32, i8*, i32)* @cluster_one_database to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cluster_one_database(i8* %0, i32 %1, i8* %2, i8* %3, i8* %4, i8* %5, i32 %6, i8* %7, i32 %8) #0 {
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_7__, align 4
  %20 = alloca i32*, align 8
  store i8* %0, i8** %10, align 8
  store i32 %1, i32* %11, align 4
  store i8* %2, i8** %12, align 8
  store i8* %3, i8** %13, align 8
  store i8* %4, i8** %14, align 8
  store i8* %5, i8** %15, align 8
  store i32 %6, i32* %16, align 4
  store i8* %7, i8** %17, align 8
  store i32 %8, i32* %18, align 4
  %21 = load i8*, i8** %10, align 8
  %22 = load i8*, i8** %13, align 8
  %23 = load i8*, i8** %14, align 8
  %24 = load i8*, i8** %15, align 8
  %25 = load i32, i32* %16, align 4
  %26 = load i8*, i8** %17, align 8
  %27 = load i32, i32* %18, align 4
  %28 = call i32* @connectDatabase(i8* %21, i8* %22, i8* %23, i8* %24, i32 %25, i8* %26, i32 %27, i32 0, i32 0)
  store i32* %28, i32** %20, align 8
  %29 = call i32 @initPQExpBuffer(%struct.TYPE_7__* %19)
  %30 = call i32 @appendPQExpBufferStr(%struct.TYPE_7__* %19, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %31 = load i32, i32* %11, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %9
  %34 = call i32 @appendPQExpBufferStr(%struct.TYPE_7__* %19, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  br label %35

35:                                               ; preds = %33, %9
  %36 = load i8*, i8** %12, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %38, label %44

38:                                               ; preds = %35
  %39 = call i32 @appendPQExpBufferChar(%struct.TYPE_7__* %19, i8 signext 32)
  %40 = load i8*, i8** %12, align 8
  %41 = load i32*, i32** %20, align 8
  %42 = load i32, i32* %18, align 4
  %43 = call i32 @appendQualifiedRelation(%struct.TYPE_7__* %19, i8* %40, i32* %41, i32 %42)
  br label %44

44:                                               ; preds = %38, %35
  %45 = call i32 @appendPQExpBufferChar(%struct.TYPE_7__* %19, i8 signext 59)
  %46 = load i32*, i32** %20, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %18, align 4
  %50 = call i32 @executeMaintenanceCommand(i32* %46, i32 %48, i32 %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %74, label %52

52:                                               ; preds = %44
  %53 = load i8*, i8** %12, align 8
  %54 = icmp ne i8* %53, null
  br i1 %54, label %55, label %62

55:                                               ; preds = %52
  %56 = load i8*, i8** %12, align 8
  %57 = load i32*, i32** %20, align 8
  %58 = call i32 @PQdb(i32* %57)
  %59 = load i32*, i32** %20, align 8
  %60 = call i32 @PQerrorMessage(i32* %59)
  %61 = call i32 (i8*, i8*, i32, ...) @pg_log_error(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0), i8* %56, i32 %58, i32 %60)
  br label %70

62:                                               ; preds = %52
  %63 = load i32*, i32** %20, align 8
  %64 = call i32 @PQdb(i32* %63)
  %65 = sext i32 %64 to i64
  %66 = inttoptr i64 %65 to i8*
  %67 = load i32*, i32** %20, align 8
  %68 = call i32 @PQerrorMessage(i32* %67)
  %69 = call i32 (i8*, i8*, i32, ...) @pg_log_error(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i8* %66, i32 %68)
  br label %70

70:                                               ; preds = %62, %55
  %71 = load i32*, i32** %20, align 8
  %72 = call i32 @PQfinish(i32* %71)
  %73 = call i32 @exit(i32 1) #3
  unreachable

74:                                               ; preds = %44
  %75 = load i32*, i32** %20, align 8
  %76 = call i32 @PQfinish(i32* %75)
  %77 = call i32 @termPQExpBuffer(%struct.TYPE_7__* %19)
  ret void
}

declare dso_local i32* @connectDatabase(i8*, i8*, i8*, i8*, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @initPQExpBuffer(%struct.TYPE_7__*) #1

declare dso_local i32 @appendPQExpBufferStr(%struct.TYPE_7__*, i8*) #1

declare dso_local i32 @appendPQExpBufferChar(%struct.TYPE_7__*, i8 signext) #1

declare dso_local i32 @appendQualifiedRelation(%struct.TYPE_7__*, i8*, i32*, i32) #1

declare dso_local i32 @executeMaintenanceCommand(i32*, i32, i32) #1

declare dso_local i32 @pg_log_error(i8*, i8*, i32, ...) #1

declare dso_local i32 @PQdb(i32*) #1

declare dso_local i32 @PQerrorMessage(i32*) #1

declare dso_local i32 @PQfinish(i32*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @termPQExpBuffer(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
