; ModuleID = '/home/carl/AnghaBench/lwan/src/samples/techempower/extr_database.c_db_stmt_bind_mysql.c'
source_filename = "/home/carl/AnghaBench/lwan/src/samples/techempower/extr_database.c_db_stmt_bind_mysql.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.db_stmt = type { i32 }
%struct.db_row = type { i8, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32* }
%struct.db_stmt_mysql = type { i32, %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i32, i64, i32*, i32 }

@MYSQL_TYPE_STRING = common dso_local global i32 0, align 4
@MYSQL_TYPE_LONG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.db_stmt*, %struct.db_row*, i64)* @db_stmt_bind_mysql to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @db_stmt_bind_mysql(%struct.db_stmt* %0, %struct.db_row* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.db_stmt*, align 8
  %6 = alloca %struct.db_row*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.db_stmt_mysql*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_6__*, align 8
  store %struct.db_stmt* %0, %struct.db_stmt** %5, align 8
  store %struct.db_row* %1, %struct.db_row** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load %struct.db_stmt*, %struct.db_stmt** %5, align 8
  %12 = bitcast %struct.db_stmt* %11 to %struct.db_stmt_mysql*
  store %struct.db_stmt_mysql* %12, %struct.db_stmt_mysql** %8, align 8
  %13 = load %struct.db_stmt_mysql*, %struct.db_stmt_mysql** %8, align 8
  %14 = getelementptr inbounds %struct.db_stmt_mysql, %struct.db_stmt_mysql* %13, i32 0, i32 0
  store i32 1, i32* %14, align 8
  %15 = load %struct.db_stmt_mysql*, %struct.db_stmt_mysql** %8, align 8
  %16 = getelementptr inbounds %struct.db_stmt_mysql, %struct.db_stmt_mysql* %15, i32 0, i32 1
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %18 = icmp ne %struct.TYPE_6__* %17, null
  br i1 %18, label %30, label %19

19:                                               ; preds = %3
  %20 = load i64, i64* %7, align 8
  %21 = call %struct.TYPE_6__* @calloc(i64 %20, i32 32)
  %22 = load %struct.db_stmt_mysql*, %struct.db_stmt_mysql** %8, align 8
  %23 = getelementptr inbounds %struct.db_stmt_mysql, %struct.db_stmt_mysql* %22, i32 0, i32 1
  store %struct.TYPE_6__* %21, %struct.TYPE_6__** %23, align 8
  %24 = load %struct.db_stmt_mysql*, %struct.db_stmt_mysql** %8, align 8
  %25 = getelementptr inbounds %struct.db_stmt_mysql, %struct.db_stmt_mysql* %24, i32 0, i32 1
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %27 = icmp ne %struct.TYPE_6__* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %19
  store i32 0, i32* %4, align 4
  br label %113

29:                                               ; preds = %19
  br label %35

30:                                               ; preds = %3
  %31 = load %struct.db_stmt_mysql*, %struct.db_stmt_mysql** %8, align 8
  %32 = getelementptr inbounds %struct.db_stmt_mysql, %struct.db_stmt_mysql* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @mysql_stmt_reset(i32 %33)
  br label %35

35:                                               ; preds = %30, %29
  store i64 0, i64* %9, align 8
  br label %36

36:                                               ; preds = %99, %35
  %37 = load i64, i64* %9, align 8
  %38 = load i64, i64* %7, align 8
  %39 = icmp ult i64 %37, %38
  br i1 %39, label %40, label %102

40:                                               ; preds = %36
  %41 = load %struct.db_row*, %struct.db_row** %6, align 8
  %42 = load i64, i64* %9, align 8
  %43 = getelementptr inbounds %struct.db_row, %struct.db_row* %41, i64 %42
  %44 = getelementptr inbounds %struct.db_row, %struct.db_row* %43, i32 0, i32 0
  %45 = load i8, i8* %44, align 8
  %46 = sext i8 %45 to i32
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %40
  br label %102

49:                                               ; preds = %40
  %50 = load %struct.db_stmt_mysql*, %struct.db_stmt_mysql** %8, align 8
  %51 = getelementptr inbounds %struct.db_stmt_mysql, %struct.db_stmt_mysql* %50, i32 0, i32 1
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %51, align 8
  %53 = load i64, i64* %9, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i64 %53
  store %struct.TYPE_6__* %54, %struct.TYPE_6__** %10, align 8
  %55 = load %struct.db_row*, %struct.db_row** %6, align 8
  %56 = load i64, i64* %9, align 8
  %57 = getelementptr inbounds %struct.db_row, %struct.db_row* %55, i64 %56
  %58 = getelementptr inbounds %struct.db_row, %struct.db_row* %57, i32 0, i32 0
  %59 = load i8, i8* %58, align 8
  %60 = sext i8 %59 to i32
  %61 = icmp eq i32 %60, 115
  br i1 %61, label %62, label %74

62:                                               ; preds = %49
  %63 = load i32, i32* @MYSQL_TYPE_STRING, align 4
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 3
  store i32 %63, i32* %65, align 8
  %66 = load %struct.db_row*, %struct.db_row** %6, align 8
  %67 = load i64, i64* %9, align 8
  %68 = getelementptr inbounds %struct.db_row, %struct.db_row* %66, i64 %67
  %69 = getelementptr inbounds %struct.db_row, %struct.db_row* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 1
  %71 = load i32*, i32** %70, align 8
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 2
  store i32* %71, i32** %73, align 8
  br label %94

74:                                               ; preds = %49
  %75 = load %struct.db_row*, %struct.db_row** %6, align 8
  %76 = load i64, i64* %9, align 8
  %77 = getelementptr inbounds %struct.db_row, %struct.db_row* %75, i64 %76
  %78 = getelementptr inbounds %struct.db_row, %struct.db_row* %77, i32 0, i32 0
  %79 = load i8, i8* %78, align 8
  %80 = sext i8 %79 to i32
  %81 = icmp eq i32 %80, 105
  br i1 %81, label %82, label %93

82:                                               ; preds = %74
  %83 = load i32, i32* @MYSQL_TYPE_LONG, align 4
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 3
  store i32 %83, i32* %85, align 8
  %86 = load %struct.db_row*, %struct.db_row** %6, align 8
  %87 = load i64, i64* %9, align 8
  %88 = getelementptr inbounds %struct.db_row, %struct.db_row* %86, i64 %87
  %89 = getelementptr inbounds %struct.db_row, %struct.db_row* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 0
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 2
  store i32* %90, i32** %92, align 8
  br label %93

93:                                               ; preds = %82, %74
  br label %94

94:                                               ; preds = %93, %62
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 0
  store i32 0, i32* %96, align 8
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 1
  store i64 0, i64* %98, align 8
  br label %99

99:                                               ; preds = %94
  %100 = load i64, i64* %9, align 8
  %101 = add i64 %100, 1
  store i64 %101, i64* %9, align 8
  br label %36

102:                                              ; preds = %48, %36
  %103 = load %struct.db_stmt_mysql*, %struct.db_stmt_mysql** %8, align 8
  %104 = getelementptr inbounds %struct.db_stmt_mysql, %struct.db_stmt_mysql* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.db_stmt_mysql*, %struct.db_stmt_mysql** %8, align 8
  %107 = getelementptr inbounds %struct.db_stmt_mysql, %struct.db_stmt_mysql* %106, i32 0, i32 1
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %107, align 8
  %109 = call i32 @mysql_stmt_bind_param(i32 %105, %struct.TYPE_6__* %108)
  %110 = icmp ne i32 %109, 0
  %111 = xor i1 %110, true
  %112 = zext i1 %111 to i32
  store i32 %112, i32* %4, align 4
  br label %113

113:                                              ; preds = %102, %28
  %114 = load i32, i32* %4, align 4
  ret i32 %114
}

declare dso_local %struct.TYPE_6__* @calloc(i64, i32) #1

declare dso_local i32 @mysql_stmt_reset(i32) #1

declare dso_local i32 @mysql_stmt_bind_param(i32, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
