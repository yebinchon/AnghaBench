; ModuleID = '/home/carl/AnghaBench/lwan/src/samples/techempower/extr_database.c_db_prepare_sqlite.c'
source_filename = "/home/carl/AnghaBench/lwan/src/samples/techempower/extr_database.c_db_prepare_sqlite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.db_stmt = type { i32 }
%struct.db = type { i32 }
%struct.db_sqlite = type { i32 }
%struct.db_stmt_sqlite = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }

@SQLITE_OK = common dso_local global i32 0, align 4
@db_stmt_bind_sqlite = common dso_local global i32 0, align 4
@db_stmt_step_sqlite = common dso_local global i32 0, align 4
@db_stmt_finalize_sqlite = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.db_stmt* (%struct.db*, i8*, i64)* @db_prepare_sqlite to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.db_stmt* @db_prepare_sqlite(%struct.db* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.db_stmt*, align 8
  %5 = alloca %struct.db*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.db_sqlite*, align 8
  %9 = alloca %struct.db_stmt_sqlite*, align 8
  %10 = alloca i32, align 4
  store %struct.db* %0, %struct.db** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load %struct.db*, %struct.db** %5, align 8
  %12 = bitcast %struct.db* %11 to %struct.db_sqlite*
  store %struct.db_sqlite* %12, %struct.db_sqlite** %8, align 8
  %13 = call %struct.db_stmt_sqlite* @malloc(i32 16)
  store %struct.db_stmt_sqlite* %13, %struct.db_stmt_sqlite** %9, align 8
  %14 = load %struct.db_stmt_sqlite*, %struct.db_stmt_sqlite** %9, align 8
  %15 = icmp ne %struct.db_stmt_sqlite* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %3
  store %struct.db_stmt* null, %struct.db_stmt** %4, align 8
  br label %48

17:                                               ; preds = %3
  %18 = load %struct.db_sqlite*, %struct.db_sqlite** %8, align 8
  %19 = getelementptr inbounds %struct.db_sqlite, %struct.db_sqlite* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i8*, i8** %6, align 8
  %22 = load i64, i64* %7, align 8
  %23 = trunc i64 %22 to i32
  %24 = load %struct.db_stmt_sqlite*, %struct.db_stmt_sqlite** %9, align 8
  %25 = getelementptr inbounds %struct.db_stmt_sqlite, %struct.db_stmt_sqlite* %24, i32 0, i32 1
  %26 = call i32 @sqlite3_prepare(i32 %20, i8* %21, i32 %23, i32* %25, i32* null)
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %10, align 4
  %28 = load i32, i32* @SQLITE_OK, align 4
  %29 = icmp ne i32 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %17
  %31 = load %struct.db_stmt_sqlite*, %struct.db_stmt_sqlite** %9, align 8
  %32 = call i32 @free(%struct.db_stmt_sqlite* %31)
  store %struct.db_stmt* null, %struct.db_stmt** %4, align 8
  br label %48

33:                                               ; preds = %17
  %34 = load i32, i32* @db_stmt_bind_sqlite, align 4
  %35 = load %struct.db_stmt_sqlite*, %struct.db_stmt_sqlite** %9, align 8
  %36 = getelementptr inbounds %struct.db_stmt_sqlite, %struct.db_stmt_sqlite* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 2
  store i32 %34, i32* %37, align 4
  %38 = load i32, i32* @db_stmt_step_sqlite, align 4
  %39 = load %struct.db_stmt_sqlite*, %struct.db_stmt_sqlite** %9, align 8
  %40 = getelementptr inbounds %struct.db_stmt_sqlite, %struct.db_stmt_sqlite* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  store i32 %38, i32* %41, align 4
  %42 = load i32, i32* @db_stmt_finalize_sqlite, align 4
  %43 = load %struct.db_stmt_sqlite*, %struct.db_stmt_sqlite** %9, align 8
  %44 = getelementptr inbounds %struct.db_stmt_sqlite, %struct.db_stmt_sqlite* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  store i32 %42, i32* %45, align 4
  %46 = load %struct.db_stmt_sqlite*, %struct.db_stmt_sqlite** %9, align 8
  %47 = bitcast %struct.db_stmt_sqlite* %46 to %struct.db_stmt*
  store %struct.db_stmt* %47, %struct.db_stmt** %4, align 8
  br label %48

48:                                               ; preds = %33, %30, %16
  %49 = load %struct.db_stmt*, %struct.db_stmt** %4, align 8
  ret %struct.db_stmt* %49
}

declare dso_local %struct.db_stmt_sqlite* @malloc(i32) #1

declare dso_local i32 @sqlite3_prepare(i32, i8*, i32, i32*, i32*) #1

declare dso_local i32 @free(%struct.db_stmt_sqlite*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
