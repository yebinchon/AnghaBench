; ModuleID = '/home/carl/AnghaBench/lwan/src/samples/techempower/extr_database.c_db_stmt_bind_sqlite.c'
source_filename = "/home/carl/AnghaBench/lwan/src/samples/techempower/extr_database.c_db_stmt_bind_sqlite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.db_stmt = type { i32 }
%struct.db_row = type { i8, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.db_stmt_sqlite = type { i32 }

@SQLITE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.db_stmt*, %struct.db_row*, i64)* @db_stmt_bind_sqlite to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @db_stmt_bind_sqlite(%struct.db_stmt* %0, %struct.db_row* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.db_stmt*, align 8
  %6 = alloca %struct.db_row*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.db_stmt_sqlite*, align 8
  %9 = alloca %struct.db_row*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.db_row*, align 8
  store %struct.db_stmt* %0, %struct.db_stmt** %5, align 8
  store %struct.db_row* %1, %struct.db_row** %6, align 8
  store i64 %2, i64* %7, align 8
  %13 = load %struct.db_stmt*, %struct.db_stmt** %5, align 8
  %14 = bitcast %struct.db_stmt* %13 to %struct.db_stmt_sqlite*
  store %struct.db_stmt_sqlite* %14, %struct.db_stmt_sqlite** %8, align 8
  %15 = load %struct.db_row*, %struct.db_row** %6, align 8
  %16 = getelementptr inbounds %struct.db_row, %struct.db_row* %15, i64 -1
  store %struct.db_row* %16, %struct.db_row** %9, align 8
  %17 = load %struct.db_stmt_sqlite*, %struct.db_stmt_sqlite** %8, align 8
  %18 = getelementptr inbounds %struct.db_stmt_sqlite, %struct.db_stmt_sqlite* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @sqlite3_reset(i32 %19)
  %21 = load %struct.db_stmt_sqlite*, %struct.db_stmt_sqlite** %8, align 8
  %22 = getelementptr inbounds %struct.db_stmt_sqlite, %struct.db_stmt_sqlite* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @sqlite3_clear_bindings(i32 %23)
  store i64 1, i64* %11, align 8
  br label %25

25:                                               ; preds = %86, %3
  %26 = load i64, i64* %11, align 8
  %27 = load i64, i64* %7, align 8
  %28 = icmp ule i64 %26, %27
  br i1 %28, label %29, label %89

29:                                               ; preds = %25
  %30 = load %struct.db_row*, %struct.db_row** %9, align 8
  %31 = load i64, i64* %11, align 8
  %32 = getelementptr inbounds %struct.db_row, %struct.db_row* %30, i64 %31
  store %struct.db_row* %32, %struct.db_row** %12, align 8
  %33 = load %struct.db_row*, %struct.db_row** %12, align 8
  %34 = getelementptr inbounds %struct.db_row, %struct.db_row* %33, i32 0, i32 0
  %35 = load i8, i8* %34, align 4
  %36 = sext i8 %35 to i32
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %29
  br label %89

39:                                               ; preds = %29
  %40 = load %struct.db_row*, %struct.db_row** %12, align 8
  %41 = getelementptr inbounds %struct.db_row, %struct.db_row* %40, i32 0, i32 0
  %42 = load i8, i8* %41, align 4
  %43 = sext i8 %42 to i32
  %44 = icmp eq i32 %43, 115
  br i1 %44, label %45, label %61

45:                                               ; preds = %39
  %46 = load %struct.db_stmt_sqlite*, %struct.db_stmt_sqlite** %8, align 8
  %47 = getelementptr inbounds %struct.db_stmt_sqlite, %struct.db_stmt_sqlite* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i64, i64* %11, align 8
  %50 = trunc i64 %49 to i32
  %51 = load %struct.db_row*, %struct.db_row** %12, align 8
  %52 = getelementptr inbounds %struct.db_row, %struct.db_row* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @sqlite3_bind_text(i32 %48, i32 %50, i32 %54, i32 -1, i32* null)
  store i32 %55, i32* %10, align 4
  %56 = load i32, i32* %10, align 4
  %57 = load i32, i32* @SQLITE_OK, align 4
  %58 = icmp ne i32 %56, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %45
  store i32 0, i32* %4, align 4
  br label %90

60:                                               ; preds = %45
  br label %85

61:                                               ; preds = %39
  %62 = load %struct.db_row*, %struct.db_row** %12, align 8
  %63 = getelementptr inbounds %struct.db_row, %struct.db_row* %62, i32 0, i32 0
  %64 = load i8, i8* %63, align 4
  %65 = sext i8 %64 to i32
  %66 = icmp eq i32 %65, 105
  br i1 %66, label %67, label %83

67:                                               ; preds = %61
  %68 = load %struct.db_stmt_sqlite*, %struct.db_stmt_sqlite** %8, align 8
  %69 = getelementptr inbounds %struct.db_stmt_sqlite, %struct.db_stmt_sqlite* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i64, i64* %11, align 8
  %72 = trunc i64 %71 to i32
  %73 = load %struct.db_row*, %struct.db_row** %12, align 8
  %74 = getelementptr inbounds %struct.db_row, %struct.db_row* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @sqlite3_bind_int(i32 %70, i32 %72, i32 %76)
  store i32 %77, i32* %10, align 4
  %78 = load i32, i32* %10, align 4
  %79 = load i32, i32* @SQLITE_OK, align 4
  %80 = icmp ne i32 %78, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %67
  store i32 0, i32* %4, align 4
  br label %90

82:                                               ; preds = %67
  br label %84

83:                                               ; preds = %61
  store i32 0, i32* %4, align 4
  br label %90

84:                                               ; preds = %82
  br label %85

85:                                               ; preds = %84, %60
  br label %86

86:                                               ; preds = %85
  %87 = load i64, i64* %11, align 8
  %88 = add i64 %87, 1
  store i64 %88, i64* %11, align 8
  br label %25

89:                                               ; preds = %38, %25
  store i32 1, i32* %4, align 4
  br label %90

90:                                               ; preds = %89, %83, %81, %59
  %91 = load i32, i32* %4, align 4
  ret i32 %91
}

declare dso_local i32 @sqlite3_reset(i32) #1

declare dso_local i32 @sqlite3_clear_bindings(i32) #1

declare dso_local i32 @sqlite3_bind_text(i32, i32, i32, i32, i32*) #1

declare dso_local i32 @sqlite3_bind_int(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
