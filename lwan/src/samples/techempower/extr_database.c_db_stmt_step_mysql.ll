; ModuleID = '/home/carl/AnghaBench/lwan/src/samples/techempower/extr_database.c_db_stmt_step_mysql.c'
source_filename = "/home/carl/AnghaBench/lwan/src/samples/techempower/extr_database.c_db_stmt_step_mysql.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.db_stmt = type { i32 }
%struct.db_row = type { i8, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32* }
%struct.db_stmt_mysql = type { i32, i32, %struct.TYPE_6__*, i8* }
%struct.TYPE_6__ = type { i32, i32, i32*, i32 }

@MYSQL_TYPE_STRING = common dso_local global i32 0, align 4
@MYSQL_TYPE_LONG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.db_stmt*, %struct.db_row*)* @db_stmt_step_mysql to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @db_stmt_step_mysql(%struct.db_stmt* %0, %struct.db_row* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.db_stmt*, align 8
  %5 = alloca %struct.db_row*, align 8
  %6 = alloca %struct.db_stmt_mysql*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.db_row*, align 8
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca i64, align 8
  store %struct.db_stmt* %0, %struct.db_stmt** %4, align 8
  store %struct.db_row* %1, %struct.db_row** %5, align 8
  %11 = load %struct.db_stmt*, %struct.db_stmt** %4, align 8
  %12 = bitcast %struct.db_stmt* %11 to %struct.db_stmt_mysql*
  store %struct.db_stmt_mysql* %12, %struct.db_stmt_mysql** %6, align 8
  %13 = load %struct.db_stmt_mysql*, %struct.db_stmt_mysql** %6, align 8
  %14 = getelementptr inbounds %struct.db_stmt_mysql, %struct.db_stmt_mysql* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %27

17:                                               ; preds = %2
  %18 = load %struct.db_stmt_mysql*, %struct.db_stmt_mysql** %6, align 8
  %19 = getelementptr inbounds %struct.db_stmt_mysql, %struct.db_stmt_mysql* %18, i32 0, i32 0
  store i32 0, i32* %19, align 8
  %20 = load %struct.db_stmt_mysql*, %struct.db_stmt_mysql** %6, align 8
  %21 = getelementptr inbounds %struct.db_stmt_mysql, %struct.db_stmt_mysql* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @mysql_stmt_execute(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %17
  store i32 0, i32* %3, align 4
  br label %165

26:                                               ; preds = %17
  br label %27

27:                                               ; preds = %26, %2
  %28 = load %struct.db_stmt_mysql*, %struct.db_stmt_mysql** %6, align 8
  %29 = getelementptr inbounds %struct.db_stmt_mysql, %struct.db_stmt_mysql* %28, i32 0, i32 2
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  %31 = icmp ne %struct.TYPE_6__* %30, null
  br i1 %31, label %158, label %32

32:                                               ; preds = %27
  store i64 0, i64* %7, align 8
  %33 = load %struct.db_row*, %struct.db_row** %5, align 8
  store %struct.db_row* %33, %struct.db_row** %8, align 8
  br label %34

34:                                               ; preds = %43, %32
  %35 = load %struct.db_row*, %struct.db_row** %8, align 8
  %36 = getelementptr inbounds %struct.db_row, %struct.db_row* %35, i32 0, i32 0
  %37 = load i8, i8* %36, align 8
  %38 = sext i8 %37 to i32
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %34
  %41 = load i64, i64* %7, align 8
  %42 = add i64 %41, 1
  store i64 %42, i64* %7, align 8
  br label %43

43:                                               ; preds = %40
  %44 = load %struct.db_row*, %struct.db_row** %8, align 8
  %45 = getelementptr inbounds %struct.db_row, %struct.db_row* %44, i32 1
  store %struct.db_row* %45, %struct.db_row** %8, align 8
  br label %34

46:                                               ; preds = %34
  %47 = load i64, i64* %7, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %46
  store i32 0, i32* %3, align 4
  br label %165

50:                                               ; preds = %46
  %51 = load i64, i64* %7, align 8
  %52 = call i8* @calloc(i64 %51, i32 24)
  %53 = bitcast i8* %52 to %struct.TYPE_6__*
  %54 = load %struct.db_stmt_mysql*, %struct.db_stmt_mysql** %6, align 8
  %55 = getelementptr inbounds %struct.db_stmt_mysql, %struct.db_stmt_mysql* %54, i32 0, i32 2
  store %struct.TYPE_6__* %53, %struct.TYPE_6__** %55, align 8
  %56 = load %struct.db_stmt_mysql*, %struct.db_stmt_mysql** %6, align 8
  %57 = getelementptr inbounds %struct.db_stmt_mysql, %struct.db_stmt_mysql* %56, i32 0, i32 2
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %57, align 8
  %59 = icmp ne %struct.TYPE_6__* %58, null
  br i1 %59, label %61, label %60

60:                                               ; preds = %50
  store i32 0, i32* %3, align 4
  br label %165

61:                                               ; preds = %50
  %62 = load i64, i64* %7, align 8
  %63 = call i8* @calloc(i64 %62, i32 1)
  %64 = load %struct.db_stmt_mysql*, %struct.db_stmt_mysql** %6, align 8
  %65 = getelementptr inbounds %struct.db_stmt_mysql, %struct.db_stmt_mysql* %64, i32 0, i32 3
  store i8* %63, i8** %65, align 8
  %66 = load %struct.db_stmt_mysql*, %struct.db_stmt_mysql** %6, align 8
  %67 = getelementptr inbounds %struct.db_stmt_mysql, %struct.db_stmt_mysql* %66, i32 0, i32 3
  %68 = load i8*, i8** %67, align 8
  %69 = icmp ne i8* %68, null
  br i1 %69, label %75, label %70

70:                                               ; preds = %61
  %71 = load %struct.db_stmt_mysql*, %struct.db_stmt_mysql** %6, align 8
  %72 = getelementptr inbounds %struct.db_stmt_mysql, %struct.db_stmt_mysql* %71, i32 0, i32 2
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %72, align 8
  %74 = call i32 @free(%struct.TYPE_6__* %73)
  store i32 0, i32* %3, align 4
  br label %165

75:                                               ; preds = %61
  %76 = load %struct.db_stmt_mysql*, %struct.db_stmt_mysql** %6, align 8
  %77 = getelementptr inbounds %struct.db_stmt_mysql, %struct.db_stmt_mysql* %76, i32 0, i32 2
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %77, align 8
  store %struct.TYPE_6__* %78, %struct.TYPE_6__** %9, align 8
  store i64 0, i64* %10, align 8
  br label %79

79:                                               ; preds = %146, %75
  %80 = load i64, i64* %10, align 8
  %81 = load i64, i64* %7, align 8
  %82 = icmp ult i64 %80, %81
  br i1 %82, label %83, label %149

83:                                               ; preds = %79
  %84 = load %struct.db_row*, %struct.db_row** %5, align 8
  %85 = load i64, i64* %10, align 8
  %86 = getelementptr inbounds %struct.db_row, %struct.db_row* %84, i64 %85
  %87 = getelementptr inbounds %struct.db_row, %struct.db_row* %86, i32 0, i32 0
  %88 = load i8, i8* %87, align 8
  %89 = sext i8 %88 to i32
  %90 = icmp eq i32 %89, 115
  br i1 %90, label %91, label %107

91:                                               ; preds = %83
  %92 = load i32, i32* @MYSQL_TYPE_STRING, align 4
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %94 = load i64, i64* %10, align 8
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 3
  store i32 %92, i32* %96, align 8
  %97 = load %struct.db_row*, %struct.db_row** %5, align 8
  %98 = load i64, i64* %10, align 8
  %99 = getelementptr inbounds %struct.db_row, %struct.db_row* %97, i64 %98
  %100 = getelementptr inbounds %struct.db_row, %struct.db_row* %99, i32 0, i32 2
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 1
  %102 = load i32*, i32** %101, align 8
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %104 = load i64, i64* %10, align 8
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 2
  store i32* %102, i32** %106, align 8
  br label %132

107:                                              ; preds = %83
  %108 = load %struct.db_row*, %struct.db_row** %5, align 8
  %109 = load i64, i64* %10, align 8
  %110 = getelementptr inbounds %struct.db_row, %struct.db_row* %108, i64 %109
  %111 = getelementptr inbounds %struct.db_row, %struct.db_row* %110, i32 0, i32 0
  %112 = load i8, i8* %111, align 8
  %113 = sext i8 %112 to i32
  %114 = icmp eq i32 %113, 105
  br i1 %114, label %115, label %130

115:                                              ; preds = %107
  %116 = load i32, i32* @MYSQL_TYPE_LONG, align 4
  %117 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %118 = load i64, i64* %10, align 8
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 3
  store i32 %116, i32* %120, align 8
  %121 = load %struct.db_row*, %struct.db_row** %5, align 8
  %122 = load i64, i64* %10, align 8
  %123 = getelementptr inbounds %struct.db_row, %struct.db_row* %121, i64 %122
  %124 = getelementptr inbounds %struct.db_row, %struct.db_row* %123, i32 0, i32 2
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i32 0, i32 0
  %126 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %127 = load i64, i64* %10, align 8
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i64 %127
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 2
  store i32* %125, i32** %129, align 8
  br label %131

130:                                              ; preds = %107
  store i32 0, i32* %3, align 4
  br label %165

131:                                              ; preds = %115
  br label %132

132:                                              ; preds = %131, %91
  %133 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %134 = load i64, i64* %10, align 8
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i64 %134
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i32 0, i32 0
  store i32 0, i32* %136, align 8
  %137 = load %struct.db_row*, %struct.db_row** %5, align 8
  %138 = load i64, i64* %10, align 8
  %139 = getelementptr inbounds %struct.db_row, %struct.db_row* %137, i64 %138
  %140 = getelementptr inbounds %struct.db_row, %struct.db_row* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %143 = load i64, i64* %10, align 8
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %142, i64 %143
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i32 0, i32 1
  store i32 %141, i32* %145, align 4
  br label %146

146:                                              ; preds = %132
  %147 = load i64, i64* %10, align 8
  %148 = add i64 %147, 1
  store i64 %148, i64* %10, align 8
  br label %79

149:                                              ; preds = %79
  %150 = load %struct.db_stmt_mysql*, %struct.db_stmt_mysql** %6, align 8
  %151 = getelementptr inbounds %struct.db_stmt_mysql, %struct.db_stmt_mysql* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %154 = call i64 @mysql_stmt_bind_result(i32 %152, %struct.TYPE_6__* %153)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %157

156:                                              ; preds = %149
  store i32 0, i32* %3, align 4
  br label %165

157:                                              ; preds = %149
  br label %158

158:                                              ; preds = %157, %27
  %159 = load %struct.db_stmt_mysql*, %struct.db_stmt_mysql** %6, align 8
  %160 = getelementptr inbounds %struct.db_stmt_mysql, %struct.db_stmt_mysql* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = call i64 @mysql_stmt_fetch(i32 %161)
  %163 = icmp eq i64 %162, 0
  %164 = zext i1 %163 to i32
  store i32 %164, i32* %3, align 4
  br label %165

165:                                              ; preds = %158, %156, %130, %70, %60, %49, %25
  %166 = load i32, i32* %3, align 4
  ret i32 %166
}

declare dso_local i64 @mysql_stmt_execute(i32) #1

declare dso_local i8* @calloc(i64, i32) #1

declare dso_local i32 @free(%struct.TYPE_6__*) #1

declare dso_local i64 @mysql_stmt_bind_result(i32, %struct.TYPE_6__*) #1

declare dso_local i64 @mysql_stmt_fetch(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
