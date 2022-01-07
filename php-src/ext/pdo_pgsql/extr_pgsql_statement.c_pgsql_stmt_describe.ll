; ModuleID = '/home/carl/AnghaBench/php-src/ext/pdo_pgsql/extr_pgsql_statement.c_pgsql_stmt_describe.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/pdo_pgsql/extr_pgsql_statement.c_pgsql_stmt_describe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.pdo_column_data*, i64 }
%struct.pdo_column_data = type { i8*, i32, i32, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.pdo_bound_param_data = type { i32 }

@PDO_PARAM_BOOL = common dso_local global i8* null, align 8
@PDO_PARAM_LOB = common dso_local global i8* null, align 8
@PDO_PARAM_INT = common dso_local global i8* null, align 8
@PDO_PARAM_STR = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32)* @pgsql_stmt_describe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pgsql_stmt_describe(%struct.TYPE_6__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca %struct.pdo_column_data*, align 8
  %8 = alloca %struct.pdo_bound_param_data*, align 8
  %9 = alloca i8*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %13, %struct.TYPE_7__** %6, align 8
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 1
  %16 = load %struct.pdo_column_data*, %struct.pdo_column_data** %15, align 8
  store %struct.pdo_column_data* %16, %struct.pdo_column_data** %7, align 8
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %159

22:                                               ; preds = %2
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* %5, align 4
  %27 = call i8* @PQfname(i32 %25, i32 %26)
  store i8* %27, i8** %9, align 8
  %28 = load i8*, i8** %9, align 8
  %29 = load i8*, i8** %9, align 8
  %30 = call i32 @strlen(i8* %29)
  %31 = call i32 @zend_string_init(i8* %28, i32 %30, i32 0)
  %32 = load %struct.pdo_column_data*, %struct.pdo_column_data** %7, align 8
  %33 = load i32, i32* %5, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.pdo_column_data, %struct.pdo_column_data* %32, i64 %34
  %36 = getelementptr inbounds %struct.pdo_column_data, %struct.pdo_column_data* %35, i32 0, i32 1
  store i32 %31, i32* %36, align 8
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @PQfsize(i32 %39, i32 %40)
  %42 = load %struct.pdo_column_data*, %struct.pdo_column_data** %7, align 8
  %43 = load i32, i32* %5, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.pdo_column_data, %struct.pdo_column_data* %42, i64 %44
  %46 = getelementptr inbounds %struct.pdo_column_data, %struct.pdo_column_data* %45, i32 0, i32 3
  store i32 %41, i32* %46, align 8
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* %5, align 4
  %51 = call i32 @PQfmod(i32 %49, i32 %50)
  %52 = load %struct.pdo_column_data*, %struct.pdo_column_data** %7, align 8
  %53 = load i32, i32* %5, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.pdo_column_data, %struct.pdo_column_data* %52, i64 %54
  %56 = getelementptr inbounds %struct.pdo_column_data, %struct.pdo_column_data* %55, i32 0, i32 2
  store i32 %51, i32* %56, align 4
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* %5, align 4
  %61 = call i32 @PQftype(i32 %59, i32 %60)
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %63, align 8
  %65 = load i32, i32* %5, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  store i32 %61, i32* %68, align 4
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %70, align 8
  %72 = load i32, i32* %5, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  switch i32 %76, label %151 [
    i32 133, label %77
    i32 128, label %84
    i32 131, label %130
    i32 130, label %130
    i32 129, label %137
    i32 132, label %144
  ]

77:                                               ; preds = %22
  %78 = load i8*, i8** @PDO_PARAM_BOOL, align 8
  %79 = load %struct.pdo_column_data*, %struct.pdo_column_data** %7, align 8
  %80 = load i32, i32* %5, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.pdo_column_data, %struct.pdo_column_data* %79, i64 %81
  %83 = getelementptr inbounds %struct.pdo_column_data, %struct.pdo_column_data* %82, i32 0, i32 0
  store i8* %78, i8** %83, align 8
  br label %158

84:                                               ; preds = %22
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %123

89:                                               ; preds = %84
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* %5, align 4
  %94 = call %struct.pdo_bound_param_data* @zend_hash_index_find_ptr(i32 %92, i32 %93)
  store %struct.pdo_bound_param_data* %94, %struct.pdo_bound_param_data** %8, align 8
  %95 = icmp ne %struct.pdo_bound_param_data* %94, null
  br i1 %95, label %108, label %96

96:                                               ; preds = %89
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.pdo_column_data*, %struct.pdo_column_data** %7, align 8
  %101 = load i32, i32* %5, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.pdo_column_data, %struct.pdo_column_data* %100, i64 %102
  %104 = getelementptr inbounds %struct.pdo_column_data, %struct.pdo_column_data* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  %106 = call %struct.pdo_bound_param_data* @zend_hash_find_ptr(i32 %99, i32 %105)
  store %struct.pdo_bound_param_data* %106, %struct.pdo_bound_param_data** %8, align 8
  %107 = icmp ne %struct.pdo_bound_param_data* %106, null
  br i1 %107, label %108, label %123

108:                                              ; preds = %96, %89
  %109 = load %struct.pdo_bound_param_data*, %struct.pdo_bound_param_data** %8, align 8
  %110 = getelementptr inbounds %struct.pdo_bound_param_data, %struct.pdo_bound_param_data* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = call i8* @PDO_PARAM_TYPE(i32 %111)
  %113 = load i8*, i8** @PDO_PARAM_LOB, align 8
  %114 = icmp eq i8* %112, %113
  br i1 %114, label %115, label %122

115:                                              ; preds = %108
  %116 = load i8*, i8** @PDO_PARAM_LOB, align 8
  %117 = load %struct.pdo_column_data*, %struct.pdo_column_data** %7, align 8
  %118 = load i32, i32* %5, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.pdo_column_data, %struct.pdo_column_data* %117, i64 %119
  %121 = getelementptr inbounds %struct.pdo_column_data, %struct.pdo_column_data* %120, i32 0, i32 0
  store i8* %116, i8** %121, align 8
  br label %158

122:                                              ; preds = %108
  br label %123

123:                                              ; preds = %122, %96, %84
  %124 = load i8*, i8** @PDO_PARAM_INT, align 8
  %125 = load %struct.pdo_column_data*, %struct.pdo_column_data** %7, align 8
  %126 = load i32, i32* %5, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.pdo_column_data, %struct.pdo_column_data* %125, i64 %127
  %129 = getelementptr inbounds %struct.pdo_column_data, %struct.pdo_column_data* %128, i32 0, i32 0
  store i8* %124, i8** %129, align 8
  br label %158

130:                                              ; preds = %22, %22
  %131 = load i8*, i8** @PDO_PARAM_INT, align 8
  %132 = load %struct.pdo_column_data*, %struct.pdo_column_data** %7, align 8
  %133 = load i32, i32* %5, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.pdo_column_data, %struct.pdo_column_data* %132, i64 %134
  %136 = getelementptr inbounds %struct.pdo_column_data, %struct.pdo_column_data* %135, i32 0, i32 0
  store i8* %131, i8** %136, align 8
  br label %158

137:                                              ; preds = %22
  %138 = load i8*, i8** @PDO_PARAM_STR, align 8
  %139 = load %struct.pdo_column_data*, %struct.pdo_column_data** %7, align 8
  %140 = load i32, i32* %5, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.pdo_column_data, %struct.pdo_column_data* %139, i64 %141
  %143 = getelementptr inbounds %struct.pdo_column_data, %struct.pdo_column_data* %142, i32 0, i32 0
  store i8* %138, i8** %143, align 8
  br label %158

144:                                              ; preds = %22
  %145 = load i8*, i8** @PDO_PARAM_LOB, align 8
  %146 = load %struct.pdo_column_data*, %struct.pdo_column_data** %7, align 8
  %147 = load i32, i32* %5, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds %struct.pdo_column_data, %struct.pdo_column_data* %146, i64 %148
  %150 = getelementptr inbounds %struct.pdo_column_data, %struct.pdo_column_data* %149, i32 0, i32 0
  store i8* %145, i8** %150, align 8
  br label %158

151:                                              ; preds = %22
  %152 = load i8*, i8** @PDO_PARAM_STR, align 8
  %153 = load %struct.pdo_column_data*, %struct.pdo_column_data** %7, align 8
  %154 = load i32, i32* %5, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds %struct.pdo_column_data, %struct.pdo_column_data* %153, i64 %155
  %157 = getelementptr inbounds %struct.pdo_column_data, %struct.pdo_column_data* %156, i32 0, i32 0
  store i8* %152, i8** %157, align 8
  br label %158

158:                                              ; preds = %151, %144, %137, %130, %123, %115, %77
  store i32 1, i32* %3, align 4
  br label %159

159:                                              ; preds = %158, %21
  %160 = load i32, i32* %3, align 4
  ret i32 %160
}

declare dso_local i8* @PQfname(i32, i32) #1

declare dso_local i32 @zend_string_init(i8*, i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @PQfsize(i32, i32) #1

declare dso_local i32 @PQfmod(i32, i32) #1

declare dso_local i32 @PQftype(i32, i32) #1

declare dso_local %struct.pdo_bound_param_data* @zend_hash_index_find_ptr(i32, i32) #1

declare dso_local %struct.pdo_bound_param_data* @zend_hash_find_ptr(i32, i32) #1

declare dso_local i8* @PDO_PARAM_TYPE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
