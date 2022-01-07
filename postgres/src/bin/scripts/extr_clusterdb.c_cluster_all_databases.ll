; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/scripts/extr_clusterdb.c_cluster_all_databases.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/scripts/extr_clusterdb.c_cluster_all_databases.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }

@.str = private unnamed_addr constant [63 x i8] c"SELECT datname FROM pg_database WHERE datallowconn ORDER BY 1;\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"%s: clustering database \22%s\22\0A\00", align 1
@stdout = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"dbname=\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*, i8*, i8*, i8*, i32, i8*, i32, i32)* @cluster_all_databases to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cluster_all_databases(i32 %0, i8* %1, i8* %2, i8* %3, i8* %4, i32 %5, i8* %6, i32 %7, i32 %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca %struct.TYPE_7__, align 4
  %22 = alloca i32, align 4
  %23 = alloca i8*, align 8
  store i32 %0, i32* %10, align 4
  store i8* %1, i8** %11, align 8
  store i8* %2, i8** %12, align 8
  store i8* %3, i8** %13, align 8
  store i8* %4, i8** %14, align 8
  store i32 %5, i32* %15, align 4
  store i8* %6, i8** %16, align 8
  store i32 %7, i32* %17, align 4
  store i32 %8, i32* %18, align 4
  %24 = load i8*, i8** %11, align 8
  %25 = load i8*, i8** %12, align 8
  %26 = load i8*, i8** %13, align 8
  %27 = load i8*, i8** %14, align 8
  %28 = load i32, i32* %15, align 4
  %29 = load i8*, i8** %16, align 8
  %30 = load i32, i32* %17, align 4
  %31 = call i32* @connectMaintenanceDatabase(i8* %24, i8* %25, i8* %26, i8* %27, i32 %28, i8* %29, i32 %30)
  store i32* %31, i32** %19, align 8
  %32 = load i32*, i32** %19, align 8
  %33 = load i32, i32* %17, align 4
  %34 = call i32* @executeQuery(i32* %32, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0), i32 %33)
  store i32* %34, i32** %20, align 8
  %35 = load i32*, i32** %19, align 8
  %36 = call i32 @PQfinish(i32* %35)
  %37 = call i32 @initPQExpBuffer(%struct.TYPE_7__* %21)
  store i32 0, i32* %22, align 4
  br label %38

38:                                               ; preds = %71, %9
  %39 = load i32, i32* %22, align 4
  %40 = load i32*, i32** %20, align 8
  %41 = call i32 @PQntuples(i32* %40)
  %42 = icmp slt i32 %39, %41
  br i1 %42, label %43, label %74

43:                                               ; preds = %38
  %44 = load i32*, i32** %20, align 8
  %45 = load i32, i32* %22, align 4
  %46 = call i8* @PQgetvalue(i32* %44, i32 %45, i32 0)
  store i8* %46, i8** %23, align 8
  %47 = load i32, i32* %18, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %56, label %49

49:                                               ; preds = %43
  %50 = call i8* @_(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %51 = load i8*, i8** %16, align 8
  %52 = load i8*, i8** %23, align 8
  %53 = call i32 @printf(i8* %50, i8* %51, i8* %52)
  %54 = load i32, i32* @stdout, align 4
  %55 = call i32 @fflush(i32 %54)
  br label %56

56:                                               ; preds = %49, %43
  %57 = call i32 @resetPQExpBuffer(%struct.TYPE_7__* %21)
  %58 = call i32 @appendPQExpBufferStr(%struct.TYPE_7__* %21, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %59 = load i8*, i8** %23, align 8
  %60 = call i32 @appendConnStrVal(%struct.TYPE_7__* %21, i8* %59)
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %10, align 4
  %64 = load i8*, i8** %12, align 8
  %65 = load i8*, i8** %13, align 8
  %66 = load i8*, i8** %14, align 8
  %67 = load i32, i32* %15, align 4
  %68 = load i8*, i8** %16, align 8
  %69 = load i32, i32* %17, align 4
  %70 = call i32 @cluster_one_database(i32 %62, i32 %63, i32* null, i8* %64, i8* %65, i8* %66, i32 %67, i8* %68, i32 %69)
  br label %71

71:                                               ; preds = %56
  %72 = load i32, i32* %22, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %22, align 4
  br label %38

74:                                               ; preds = %38
  %75 = call i32 @termPQExpBuffer(%struct.TYPE_7__* %21)
  %76 = load i32*, i32** %20, align 8
  %77 = call i32 @PQclear(i32* %76)
  ret void
}

declare dso_local i32* @connectMaintenanceDatabase(i8*, i8*, i8*, i8*, i32, i8*, i32) #1

declare dso_local i32* @executeQuery(i32*, i8*, i32) #1

declare dso_local i32 @PQfinish(i32*) #1

declare dso_local i32 @initPQExpBuffer(%struct.TYPE_7__*) #1

declare dso_local i32 @PQntuples(i32*) #1

declare dso_local i8* @PQgetvalue(i32*, i32, i32) #1

declare dso_local i32 @printf(i8*, i8*, i8*) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i32 @resetPQExpBuffer(%struct.TYPE_7__*) #1

declare dso_local i32 @appendPQExpBufferStr(%struct.TYPE_7__*, i8*) #1

declare dso_local i32 @appendConnStrVal(%struct.TYPE_7__*, i8*) #1

declare dso_local i32 @cluster_one_database(i32, i32, i32*, i8*, i8*, i8*, i32, i8*, i32) #1

declare dso_local i32 @termPQExpBuffer(%struct.TYPE_7__*) #1

declare dso_local i32 @PQclear(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
