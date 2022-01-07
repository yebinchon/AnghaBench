; ModuleID = '/home/carl/AnghaBench/php-src/ext/pdo_pgsql/extr_pgsql_statement.c_pgsql_stmt_get_col.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/pdo_pgsql/extr_pgsql_statement.c_pgsql_stmt_get_col.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, %struct.pdo_column_data*, i64 }
%struct.pdo_column_data = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_7__*, %struct.TYPE_6__*, i64, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32, i32 }

@OIDOID = common dso_local global i32 0, align 4
@INV_READ = common dso_local global i32 0, align 4
@TEMP_STREAM_READONLY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i32, i8**, i64*, i32*)* @pgsql_stmt_get_col to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pgsql_stmt_get_col(%struct.TYPE_8__* %0, i32 %1, i8** %2, i64* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8**, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_9__*, align 8
  %13 = alloca %struct.pdo_column_data*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8** %2, i8*** %9, align 8
  store i64* %3, i64** %10, align 8
  store i32* %4, i32** %11, align 8
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %22, %struct.TYPE_9__** %12, align 8
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 1
  %25 = load %struct.pdo_column_data*, %struct.pdo_column_data** %24, align 8
  store %struct.pdo_column_data* %25, %struct.pdo_column_data** %13, align 8
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %196

31:                                               ; preds = %5
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = sub nsw i64 %37, 1
  %39 = load i32, i32* %8, align 4
  %40 = call i64 @PQgetisnull(i32 %34, i64 %38, i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %31
  %43 = load i8**, i8*** %9, align 8
  store i8* null, i8** %43, align 8
  %44 = load i64*, i64** %10, align 8
  store i64 0, i64* %44, align 8
  br label %195

45:                                               ; preds = %31
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = sub nsw i64 %51, 1
  %53 = load i32, i32* %8, align 4
  %54 = call i8* @PQgetvalue(i32 %48, i64 %52, i32 %53)
  %55 = load i8**, i8*** %9, align 8
  store i8* %54, i8** %55, align 8
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = sub nsw i64 %61, 1
  %63 = load i32, i32* %8, align 4
  %64 = call i64 @PQgetlength(i32 %58, i64 %62, i32 %63)
  %65 = load i64*, i64** %10, align 8
  store i64 %64, i64* %65, align 8
  %66 = load %struct.pdo_column_data*, %struct.pdo_column_data** %13, align 8
  %67 = load i32, i32* %8, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.pdo_column_data, %struct.pdo_column_data* %66, i64 %68
  %70 = getelementptr inbounds %struct.pdo_column_data, %struct.pdo_column_data* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  switch i32 %71, label %193 [
    i32 133, label %72
    i32 135, label %94
    i32 132, label %118
    i32 131, label %192
    i32 129, label %192
    i32 130, label %192
    i32 134, label %192
    i32 128, label %192
  ]

72:                                               ; preds = %45
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 1
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %74, align 8
  %76 = load i32, i32* %8, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = load i8**, i8*** %9, align 8
  %82 = load i8*, i8** %81, align 8
  %83 = call i32 @ZEND_ATOL(i32 %80, i8* %82)
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 1
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %85, align 8
  %87 = load i32, i32* %8, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 2
  %91 = bitcast i32* %90 to i8*
  %92 = load i8**, i8*** %9, align 8
  store i8* %91, i8** %92, align 8
  %93 = load i64*, i64** %10, align 8
  store i64 4, i64* %93, align 8
  br label %194

94:                                               ; preds = %45
  %95 = load i8**, i8*** %9, align 8
  %96 = load i8*, i8** %95, align 8
  %97 = load i8, i8* %96, align 1
  %98 = sext i8 %97 to i32
  %99 = icmp eq i32 %98, 116
  %100 = zext i1 %99 to i32
  %101 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 1
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %102, align 8
  %104 = load i32, i32* %8, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 0
  store i32 %100, i32* %107, align 4
  %108 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i32 0, i32 1
  %110 = load %struct.TYPE_6__*, %struct.TYPE_6__** %109, align 8
  %111 = load i32, i32* %8, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 0
  %115 = bitcast i32* %114 to i8*
  %116 = load i8**, i8*** %9, align 8
  store i8* %115, i8** %116, align 8
  %117 = load i64*, i64** %10, align 8
  store i64 4, i64* %117, align 8
  br label %194

118:                                              ; preds = %45
  %119 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %120 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %119, i32 0, i32 1
  %121 = load %struct.TYPE_6__*, %struct.TYPE_6__** %120, align 8
  %122 = load i32, i32* %8, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* @OIDOID, align 4
  %128 = icmp eq i32 %126, %127
  br i1 %128, label %129, label %160

129:                                              ; preds = %118
  %130 = load i8**, i8*** %9, align 8
  %131 = load i8*, i8** %130, align 8
  %132 = call i32 @strtoul(i8* %131, i8** %15, i32 10)
  store i32 %132, i32* %16, align 4
  %133 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %134 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %133, i32 0, i32 0
  %135 = load %struct.TYPE_7__*, %struct.TYPE_7__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* %16, align 4
  %139 = load i32, i32* @INV_READ, align 4
  %140 = call i32 @lo_open(i32 %137, i32 %138, i32 %139)
  store i32 %140, i32* %17, align 4
  %141 = load i32, i32* %17, align 4
  %142 = icmp sge i32 %141, 0
  br i1 %142, label %143, label %157

143:                                              ; preds = %129
  %144 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %145 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %144, i32 0, i32 0
  %146 = load i32, i32* %17, align 4
  %147 = load i32, i32* %16, align 4
  %148 = call i64 @pdo_pgsql_create_lob_stream(i32* %145, i32 %146, i32 %147)
  %149 = inttoptr i64 %148 to i8*
  %150 = load i8**, i8*** %9, align 8
  store i8* %149, i8** %150, align 8
  %151 = load i64*, i64** %10, align 8
  store i64 0, i64* %151, align 8
  %152 = load i8**, i8*** %9, align 8
  %153 = load i8*, i8** %152, align 8
  %154 = icmp ne i8* %153, null
  %155 = zext i1 %154 to i64
  %156 = select i1 %154, i32 1, i32 0
  store i32 %156, i32* %6, align 4
  br label %196

157:                                              ; preds = %129
  %158 = load i8**, i8*** %9, align 8
  store i8* null, i8** %158, align 8
  %159 = load i64*, i64** %10, align 8
  store i64 0, i64* %159, align 8
  store i32 0, i32* %6, align 4
  br label %196

160:                                              ; preds = %118
  %161 = load i8**, i8*** %9, align 8
  %162 = load i8*, i8** %161, align 8
  %163 = call i64 @PQunescapeBytea(i8* %162, i64* %14)
  %164 = inttoptr i64 %163 to i8*
  store i8* %164, i8** %18, align 8
  %165 = load i8*, i8** %18, align 8
  %166 = icmp ne i8* %165, null
  br i1 %166, label %169, label %167

167:                                              ; preds = %160
  %168 = load i64*, i64** %10, align 8
  store i64 0, i64* %168, align 8
  store i32 0, i32* %6, align 4
  br label %196

169:                                              ; preds = %160
  %170 = load i64, i64* %14, align 8
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %180, label %172

172:                                              ; preds = %169
  %173 = load i32, i32* @TEMP_STREAM_READONLY, align 4
  %174 = call i64 @php_stream_memory_open(i32 %173, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 0)
  %175 = inttoptr i64 %174 to i8*
  %176 = load i8**, i8*** %9, align 8
  store i8* %175, i8** %176, align 8
  %177 = load i8*, i8** %18, align 8
  %178 = call i32 @PQfreemem(i8* %177)
  %179 = load i64*, i64** %10, align 8
  store i64 0, i64* %179, align 8
  br label %190

180:                                              ; preds = %169
  %181 = load i8*, i8** %18, align 8
  %182 = load i64, i64* %14, align 8
  %183 = call i8* @estrndup(i8* %181, i64 %182)
  %184 = load i8**, i8*** %9, align 8
  store i8* %183, i8** %184, align 8
  %185 = load i8*, i8** %18, align 8
  %186 = call i32 @PQfreemem(i8* %185)
  %187 = load i64, i64* %14, align 8
  %188 = load i64*, i64** %10, align 8
  store i64 %187, i64* %188, align 8
  %189 = load i32*, i32** %11, align 8
  store i32 1, i32* %189, align 4
  br label %190

190:                                              ; preds = %180, %172
  br label %191

191:                                              ; preds = %190
  br label %194

192:                                              ; preds = %45, %45, %45, %45, %45
  br label %193

193:                                              ; preds = %45, %192
  br label %194

194:                                              ; preds = %193, %191, %94, %72
  br label %195

195:                                              ; preds = %194, %42
  store i32 1, i32* %6, align 4
  br label %196

196:                                              ; preds = %195, %167, %157, %143, %30
  %197 = load i32, i32* %6, align 4
  ret i32 %197
}

declare dso_local i64 @PQgetisnull(i32, i64, i32) #1

declare dso_local i8* @PQgetvalue(i32, i64, i32) #1

declare dso_local i64 @PQgetlength(i32, i64, i32) #1

declare dso_local i32 @ZEND_ATOL(i32, i8*) #1

declare dso_local i32 @strtoul(i8*, i8**, i32) #1

declare dso_local i32 @lo_open(i32, i32, i32) #1

declare dso_local i64 @pdo_pgsql_create_lob_stream(i32*, i32, i32) #1

declare dso_local i64 @PQunescapeBytea(i8*, i64*) #1

declare dso_local i64 @php_stream_memory_open(i32, i8*, i32) #1

declare dso_local i32 @PQfreemem(i8*) #1

declare dso_local i8* @estrndup(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
