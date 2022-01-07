; ModuleID = '/home/carl/AnghaBench/lwan/src/samples/techempower/extr_database.c_db_prepare_mysql.c'
source_filename = "/home/carl/AnghaBench/lwan/src/samples/techempower/extr_database.c_db_prepare_mysql.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.db_stmt = type { i32 }
%struct.db = type { i32 }
%struct.db_mysql = type { i32 }
%struct.db_stmt_mysql = type { i32, i32*, i32*, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }

@db_stmt_bind_mysql = common dso_local global i32 0, align 4
@db_stmt_step_mysql = common dso_local global i32 0, align 4
@db_stmt_finalize_mysql = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.db_stmt* (%struct.db*, i8*, i64)* @db_prepare_mysql to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.db_stmt* @db_prepare_mysql(%struct.db* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.db_stmt*, align 8
  %5 = alloca %struct.db*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.db_mysql*, align 8
  %9 = alloca %struct.db_stmt_mysql*, align 8
  store %struct.db* %0, %struct.db** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load %struct.db*, %struct.db** %5, align 8
  %11 = bitcast %struct.db* %10 to %struct.db_mysql*
  store %struct.db_mysql* %11, %struct.db_mysql** %8, align 8
  %12 = call %struct.db_stmt_mysql* @malloc(i32 40)
  store %struct.db_stmt_mysql* %12, %struct.db_stmt_mysql** %9, align 8
  %13 = load %struct.db_stmt_mysql*, %struct.db_stmt_mysql** %9, align 8
  %14 = icmp ne %struct.db_stmt_mysql* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %3
  store %struct.db_stmt* null, %struct.db_stmt** %4, align 8
  br label %66

16:                                               ; preds = %3
  %17 = load %struct.db_mysql*, %struct.db_mysql** %8, align 8
  %18 = getelementptr inbounds %struct.db_mysql, %struct.db_mysql* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @mysql_stmt_init(i32 %19)
  %21 = load %struct.db_stmt_mysql*, %struct.db_stmt_mysql** %9, align 8
  %22 = getelementptr inbounds %struct.db_stmt_mysql, %struct.db_stmt_mysql* %21, i32 0, i32 4
  store i32 %20, i32* %22, align 4
  %23 = load %struct.db_stmt_mysql*, %struct.db_stmt_mysql** %9, align 8
  %24 = getelementptr inbounds %struct.db_stmt_mysql, %struct.db_stmt_mysql* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %16
  %28 = load %struct.db_stmt_mysql*, %struct.db_stmt_mysql** %9, align 8
  %29 = call i32 @free(%struct.db_stmt_mysql* %28)
  store %struct.db_stmt* null, %struct.db_stmt** %4, align 8
  br label %66

30:                                               ; preds = %16
  %31 = load %struct.db_stmt_mysql*, %struct.db_stmt_mysql** %9, align 8
  %32 = getelementptr inbounds %struct.db_stmt_mysql, %struct.db_stmt_mysql* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 4
  %34 = load i8*, i8** %6, align 8
  %35 = load i64, i64* %7, align 8
  %36 = call i64 @mysql_stmt_prepare(i32 %33, i8* %34, i64 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %30
  %39 = load %struct.db_stmt_mysql*, %struct.db_stmt_mysql** %9, align 8
  %40 = getelementptr inbounds %struct.db_stmt_mysql, %struct.db_stmt_mysql* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @mysql_stmt_close(i32 %41)
  %43 = load %struct.db_stmt_mysql*, %struct.db_stmt_mysql** %9, align 8
  %44 = call i32 @free(%struct.db_stmt_mysql* %43)
  store %struct.db_stmt* null, %struct.db_stmt** %4, align 8
  br label %66

45:                                               ; preds = %30
  %46 = load i32, i32* @db_stmt_bind_mysql, align 4
  %47 = load %struct.db_stmt_mysql*, %struct.db_stmt_mysql** %9, align 8
  %48 = getelementptr inbounds %struct.db_stmt_mysql, %struct.db_stmt_mysql* %47, i32 0, i32 3
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 2
  store i32 %46, i32* %49, align 8
  %50 = load i32, i32* @db_stmt_step_mysql, align 4
  %51 = load %struct.db_stmt_mysql*, %struct.db_stmt_mysql** %9, align 8
  %52 = getelementptr inbounds %struct.db_stmt_mysql, %struct.db_stmt_mysql* %51, i32 0, i32 3
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  store i32 %50, i32* %53, align 4
  %54 = load i32, i32* @db_stmt_finalize_mysql, align 4
  %55 = load %struct.db_stmt_mysql*, %struct.db_stmt_mysql** %9, align 8
  %56 = getelementptr inbounds %struct.db_stmt_mysql, %struct.db_stmt_mysql* %55, i32 0, i32 3
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  store i32 %54, i32* %57, align 8
  %58 = load %struct.db_stmt_mysql*, %struct.db_stmt_mysql** %9, align 8
  %59 = getelementptr inbounds %struct.db_stmt_mysql, %struct.db_stmt_mysql* %58, i32 0, i32 2
  store i32* null, i32** %59, align 8
  %60 = load %struct.db_stmt_mysql*, %struct.db_stmt_mysql** %9, align 8
  %61 = getelementptr inbounds %struct.db_stmt_mysql, %struct.db_stmt_mysql* %60, i32 0, i32 1
  store i32* null, i32** %61, align 8
  %62 = load %struct.db_stmt_mysql*, %struct.db_stmt_mysql** %9, align 8
  %63 = getelementptr inbounds %struct.db_stmt_mysql, %struct.db_stmt_mysql* %62, i32 0, i32 0
  store i32 1, i32* %63, align 8
  %64 = load %struct.db_stmt_mysql*, %struct.db_stmt_mysql** %9, align 8
  %65 = bitcast %struct.db_stmt_mysql* %64 to %struct.db_stmt*
  store %struct.db_stmt* %65, %struct.db_stmt** %4, align 8
  br label %66

66:                                               ; preds = %45, %38, %27, %15
  %67 = load %struct.db_stmt*, %struct.db_stmt** %4, align 8
  ret %struct.db_stmt* %67
}

declare dso_local %struct.db_stmt_mysql* @malloc(i32) #1

declare dso_local i32 @mysql_stmt_init(i32) #1

declare dso_local i32 @free(%struct.db_stmt_mysql*) #1

declare dso_local i64 @mysql_stmt_prepare(i32, i8*, i64) #1

declare dso_local i32 @mysql_stmt_close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
