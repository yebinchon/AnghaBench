; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pg_upgrade/extr_server.c_get_db_conn.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pg_upgrade/extr_server.c_get_db_conn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i8* }
%struct.TYPE_11__ = type { i8*, i32 }
%struct.TYPE_10__ = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"dbname=\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c" user=\00", align 1
@os_info = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@.str.2 = private unnamed_addr constant [9 x i8] c" port=%d\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c" host=\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_11__*, i8*)* @get_db_conn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @get_db_conn(%struct.TYPE_11__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_10__, align 4
  %6 = alloca i32*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = call i32 @initPQExpBuffer(%struct.TYPE_10__* %5)
  %8 = call i32 @appendPQExpBufferStr(%struct.TYPE_10__* %5, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %9 = load i8*, i8** %4, align 8
  %10 = call i32 @appendConnStrVal(%struct.TYPE_10__* %5, i8* %9)
  %11 = call i32 @appendPQExpBufferStr(%struct.TYPE_10__* %5, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %12 = load i8*, i8** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @os_info, i32 0, i32 0), align 8
  %13 = call i32 @appendConnStrVal(%struct.TYPE_10__* %5, i8* %12)
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @appendPQExpBuffer(%struct.TYPE_10__* %5, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %16)
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %28

22:                                               ; preds = %2
  %23 = call i32 @appendPQExpBufferStr(%struct.TYPE_10__* %5, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = call i32 @appendConnStrVal(%struct.TYPE_10__* %5, i8* %26)
  br label %28

28:                                               ; preds = %22, %2
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32* @PQconnectdb(i32 %30)
  store i32* %31, i32** %6, align 8
  %32 = call i32 @termPQExpBuffer(%struct.TYPE_10__* %5)
  %33 = load i32*, i32** %6, align 8
  ret i32* %33
}

declare dso_local i32 @initPQExpBuffer(%struct.TYPE_10__*) #1

declare dso_local i32 @appendPQExpBufferStr(%struct.TYPE_10__*, i8*) #1

declare dso_local i32 @appendConnStrVal(%struct.TYPE_10__*, i8*) #1

declare dso_local i32 @appendPQExpBuffer(%struct.TYPE_10__*, i8*, i32) #1

declare dso_local i32* @PQconnectdb(i32) #1

declare dso_local i32 @termPQExpBuffer(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
