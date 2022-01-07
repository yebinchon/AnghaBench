; ModuleID = '/home/carl/AnghaBench/lwan/src/samples/techempower/extr_database.c_db_stmt_step_sqlite.c'
source_filename = "/home/carl/AnghaBench/lwan/src/samples/techempower/extr_database.c_db_stmt_step_sqlite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.db_stmt = type { i32 }
%struct.db_row = type { i8, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i32 }
%struct.db_stmt_sqlite = type { i32 }

@SQLITE_ROW = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.db_stmt*, %struct.db_row*)* @db_stmt_step_sqlite to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @db_stmt_step_sqlite(%struct.db_stmt* %0, %struct.db_row* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.db_stmt*, align 8
  %5 = alloca %struct.db_row*, align 8
  %6 = alloca %struct.db_stmt_sqlite*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.db_row*, align 8
  store %struct.db_stmt* %0, %struct.db_stmt** %4, align 8
  store %struct.db_row* %1, %struct.db_row** %5, align 8
  %9 = load %struct.db_stmt*, %struct.db_stmt** %4, align 8
  %10 = bitcast %struct.db_stmt* %9 to %struct.db_stmt_sqlite*
  store %struct.db_stmt_sqlite* %10, %struct.db_stmt_sqlite** %6, align 8
  %11 = load %struct.db_stmt_sqlite*, %struct.db_stmt_sqlite** %6, align 8
  %12 = getelementptr inbounds %struct.db_stmt_sqlite, %struct.db_stmt_sqlite* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i64 @sqlite3_step(i32 %13)
  %15 = load i64, i64* @SQLITE_ROW, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %66

18:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  %19 = load %struct.db_row*, %struct.db_row** %5, align 8
  store %struct.db_row* %19, %struct.db_row** %8, align 8
  br label %20

20:                                               ; preds = %60, %18
  %21 = load %struct.db_row*, %struct.db_row** %8, align 8
  %22 = getelementptr inbounds %struct.db_row, %struct.db_row* %21, i32 0, i32 0
  %23 = load i8, i8* %22, align 8
  %24 = sext i8 %23 to i32
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %65

26:                                               ; preds = %20
  %27 = load %struct.db_row*, %struct.db_row** %8, align 8
  %28 = getelementptr inbounds %struct.db_row, %struct.db_row* %27, i32 0, i32 0
  %29 = load i8, i8* %28, align 8
  %30 = sext i8 %29 to i32
  %31 = icmp eq i32 %30, 105
  br i1 %31, label %32, label %41

32:                                               ; preds = %26
  %33 = load %struct.db_stmt_sqlite*, %struct.db_stmt_sqlite** %6, align 8
  %34 = getelementptr inbounds %struct.db_stmt_sqlite, %struct.db_stmt_sqlite* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @sqlite3_column_int(i32 %35, i32 %36)
  %38 = load %struct.db_row*, %struct.db_row** %8, align 8
  %39 = getelementptr inbounds %struct.db_row, %struct.db_row* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  store i32 %37, i32* %40, align 8
  br label %59

41:                                               ; preds = %26
  %42 = load %struct.db_row*, %struct.db_row** %8, align 8
  %43 = getelementptr inbounds %struct.db_row, %struct.db_row* %42, i32 0, i32 0
  %44 = load i8, i8* %43, align 8
  %45 = sext i8 %44 to i32
  %46 = icmp eq i32 %45, 115
  br i1 %46, label %47, label %57

47:                                               ; preds = %41
  %48 = load %struct.db_stmt_sqlite*, %struct.db_stmt_sqlite** %6, align 8
  %49 = getelementptr inbounds %struct.db_stmt_sqlite, %struct.db_stmt_sqlite* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %7, align 4
  %52 = call i64 @sqlite3_column_text(i32 %50, i32 %51)
  %53 = inttoptr i64 %52 to i8*
  %54 = load %struct.db_row*, %struct.db_row** %8, align 8
  %55 = getelementptr inbounds %struct.db_row, %struct.db_row* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  store i8* %53, i8** %56, align 8
  br label %58

57:                                               ; preds = %41
  store i32 0, i32* %3, align 4
  br label %66

58:                                               ; preds = %47
  br label %59

59:                                               ; preds = %58, %32
  br label %60

60:                                               ; preds = %59
  %61 = load %struct.db_row*, %struct.db_row** %8, align 8
  %62 = getelementptr inbounds %struct.db_row, %struct.db_row* %61, i32 1
  store %struct.db_row* %62, %struct.db_row** %8, align 8
  %63 = load i32, i32* %7, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %7, align 4
  br label %20

65:                                               ; preds = %20
  store i32 1, i32* %3, align 4
  br label %66

66:                                               ; preds = %65, %57, %17
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local i64 @sqlite3_step(i32) #1

declare dso_local i32 @sqlite3_column_int(i32, i32) #1

declare dso_local i64 @sqlite3_column_text(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
