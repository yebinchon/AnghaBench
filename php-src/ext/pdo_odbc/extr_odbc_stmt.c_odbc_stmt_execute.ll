; ModuleID = '/home/carl/AnghaBench/php-src/ext/pdo_odbc/extr_odbc_stmt.c_odbc_stmt_execute.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/pdo_odbc/extr_odbc_stmt.c_odbc_stmt_execute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i64, i64 }
%struct.TYPE_7__ = type { i8*, i64, i32, i32 }
%struct.pdo_bound_param_data = type { i32, i64 }
%struct.TYPE_8__ = type { i32 }

@SQL_NEED_DATA = common dso_local global i32 0, align 4
@IS_RESOURCE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"error converting input string\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"input LOB is no longer a stream\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"SQLExecute\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*)* @odbc_stmt_execute to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @odbc_stmt_execute(%struct.TYPE_6__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.pdo_bound_param_data*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_8__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 3
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %18, %struct.TYPE_7__** %5, align 8
  store i8* null, i8** %6, align 8
  store i32 -1, i32* %7, align 4
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %1
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @SQLCloseCursor(i32 %26)
  br label %28

28:                                               ; preds = %23, %1
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @SQLExecute(i32 %31)
  store i32 %32, i32* %4, align 4
  br label %33

33:                                               ; preds = %152, %111, %28
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* @SQL_NEED_DATA, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %153

37:                                               ; preds = %33
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = bitcast %struct.pdo_bound_param_data** %8 to i32*
  %42 = call i32 @SQLParamData(i32 %40, i32* %41)
  store i32 %42, i32* %4, align 4
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* @SQL_NEED_DATA, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %152

46:                                               ; preds = %37
  %47 = load %struct.pdo_bound_param_data*, %struct.pdo_bound_param_data** %8, align 8
  %48 = getelementptr inbounds %struct.pdo_bound_param_data, %struct.pdo_bound_param_data* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = inttoptr i64 %49 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %50, %struct.TYPE_8__** %11, align 8
  %51 = load %struct.pdo_bound_param_data*, %struct.pdo_bound_param_data** %8, align 8
  %52 = getelementptr inbounds %struct.pdo_bound_param_data, %struct.pdo_bound_param_data* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i64 @Z_ISREF(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %46
  %57 = load %struct.pdo_bound_param_data*, %struct.pdo_bound_param_data** %8, align 8
  %58 = getelementptr inbounds %struct.pdo_bound_param_data, %struct.pdo_bound_param_data* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i32* @Z_REFVAL(i32 %59)
  store i32* %60, i32** %12, align 8
  br label %64

61:                                               ; preds = %46
  %62 = load %struct.pdo_bound_param_data*, %struct.pdo_bound_param_data** %8, align 8
  %63 = getelementptr inbounds %struct.pdo_bound_param_data, %struct.pdo_bound_param_data* %62, i32 0, i32 0
  store i32* %63, i32** %12, align 8
  br label %64

64:                                               ; preds = %61, %56
  %65 = load i32*, i32** %12, align 8
  %66 = call i64 @Z_TYPE_P(i32* %65)
  %67 = load i64, i64* @IS_RESOURCE, align 8
  %68 = icmp ne i64 %66, %67
  br i1 %68, label %69, label %112

69:                                               ; preds = %64
  %70 = load i32*, i32** %12, align 8
  %71 = call i32 @convert_to_string(i32* %70)
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32*, i32** %12, align 8
  %77 = call i8* @Z_STRVAL_P(i32* %76)
  %78 = load i32*, i32** %12, align 8
  %79 = call i32 @Z_STRLEN_P(i32* %78)
  %80 = call i32 @pdo_odbc_utf82ucs2(%struct.TYPE_6__* %72, i32 %75, i8* %77, i32 %79, i32* %13)
  switch i32 %80, label %111 [
    i32 132, label %81
    i32 131, label %90
    i32 133, label %99
  ]

81:                                               ; preds = %69
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 4
  %85 = load i32*, i32** %12, align 8
  %86 = call i8* @Z_STRVAL_P(i32* %85)
  %87 = load i32*, i32** %12, align 8
  %88 = call i32 @Z_STRLEN_P(i32* %87)
  %89 = call i32 @SQLPutData(i32 %84, i8* %86, i32 %88)
  br label %111

90:                                               ; preds = %69
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 0
  %96 = load i8*, i8** %95, align 8
  %97 = load i32, i32* %13, align 4
  %98 = call i32 @SQLPutData(i32 %93, i8* %96, i32 %97)
  br label %111

99:                                               ; preds = %69
  %100 = call i32 @pdo_odbc_stmt_error(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @SQLCloseCursor(i32 %103)
  %105 = load i8*, i8** %6, align 8
  %106 = icmp ne i8* %105, null
  br i1 %106, label %107, label %110

107:                                              ; preds = %99
  %108 = load i8*, i8** %6, align 8
  %109 = call i32 @efree(i8* %108)
  br label %110

110:                                              ; preds = %107, %99
  store i32 0, i32* %2, align 4
  br label %194

111:                                              ; preds = %69, %90, %81
  br label %33

112:                                              ; preds = %64
  %113 = load i32*, i32** %9, align 8
  %114 = load i32*, i32** %12, align 8
  %115 = call i32 @php_stream_from_zval_no_verify(i32* %113, i32* %114)
  %116 = load i32*, i32** %9, align 8
  %117 = icmp ne i32* %116, null
  br i1 %117, label %130, label %118

118:                                              ; preds = %112
  %119 = call i32 @pdo_odbc_stmt_error(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %120 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 0, i32 3
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @SQLCloseCursor(i32 %122)
  %124 = load i8*, i8** %6, align 8
  %125 = icmp ne i8* %124, null
  br i1 %125, label %126, label %129

126:                                              ; preds = %118
  %127 = load i8*, i8** %6, align 8
  %128 = call i32 @efree(i8* %127)
  br label %129

129:                                              ; preds = %126, %118
  store i32 0, i32* %2, align 4
  br label %194

130:                                              ; preds = %112
  %131 = load i8*, i8** %6, align 8
  %132 = icmp eq i8* %131, null
  br i1 %132, label %133, label %135

133:                                              ; preds = %130
  %134 = call i8* @emalloc(i32 8192)
  store i8* %134, i8** %6, align 8
  br label %135

135:                                              ; preds = %133, %130
  br label %136

136:                                              ; preds = %150, %135
  %137 = load i32*, i32** %9, align 8
  %138 = load i8*, i8** %6, align 8
  %139 = call i32 @php_stream_read(i32* %137, i8* %138, i32 8192)
  store i32 %139, i32* %10, align 4
  %140 = load i32, i32* %10, align 4
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %142, label %143

142:                                              ; preds = %136
  br label %151

143:                                              ; preds = %136
  %144 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %145 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %144, i32 0, i32 3
  %146 = load i32, i32* %145, align 4
  %147 = load i8*, i8** %6, align 8
  %148 = load i32, i32* %10, align 4
  %149 = call i32 @SQLPutData(i32 %146, i8* %147, i32 %148)
  br label %150

150:                                              ; preds = %143
  br i1 true, label %136, label %151

151:                                              ; preds = %150, %142
  br label %152

152:                                              ; preds = %151, %37
  br label %33

153:                                              ; preds = %33
  %154 = load i8*, i8** %6, align 8
  %155 = icmp ne i8* %154, null
  br i1 %155, label %156, label %159

156:                                              ; preds = %153
  %157 = load i8*, i8** %6, align 8
  %158 = call i32 @efree(i8* %157)
  br label %159

159:                                              ; preds = %156, %153
  %160 = load i32, i32* %4, align 4
  switch i32 %160, label %164 [
    i32 129, label %161
    i32 130, label %162
    i32 128, label %162
  ]

161:                                              ; preds = %159
  br label %166

162:                                              ; preds = %159, %159
  %163 = call i32 @pdo_odbc_stmt_error(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  br label %166

164:                                              ; preds = %159
  %165 = call i32 @pdo_odbc_stmt_error(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %194

166:                                              ; preds = %162, %161
  %167 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %168 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %167, i32 0, i32 3
  %169 = load i32, i32* %168, align 4
  %170 = call i32 @SQLRowCount(i32 %169, i32* %7)
  %171 = load i32, i32* %7, align 4
  %172 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %173 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %172, i32 0, i32 0
  store i32 %171, i32* %173, align 8
  %174 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %175 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %174, i32 0, i32 2
  %176 = load i64, i64* %175, align 8
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %193, label %178

178:                                              ; preds = %166
  %179 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %180 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %179, i32 0, i32 3
  %181 = load i32, i32* %180, align 4
  %182 = call i32 @SQLNumResultCols(i32 %181, i64* %14)
  %183 = load i64, i64* %14, align 8
  %184 = trunc i64 %183 to i32
  %185 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %186 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %185, i32 0, i32 1
  store i32 %184, i32* %186, align 4
  %187 = load i64, i64* %14, align 8
  %188 = call i32 @ecalloc(i64 %187, i32 4)
  %189 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %190 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %189, i32 0, i32 2
  store i32 %188, i32* %190, align 8
  %191 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %192 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %191, i32 0, i32 1
  store i64 0, i64* %192, align 8
  br label %193

193:                                              ; preds = %178, %166
  store i32 1, i32* %2, align 4
  br label %194

194:                                              ; preds = %193, %164, %129, %110
  %195 = load i32, i32* %2, align 4
  ret i32 %195
}

declare dso_local i32 @SQLCloseCursor(i32) #1

declare dso_local i32 @SQLExecute(i32) #1

declare dso_local i32 @SQLParamData(i32, i32*) #1

declare dso_local i64 @Z_ISREF(i32) #1

declare dso_local i32* @Z_REFVAL(i32) #1

declare dso_local i64 @Z_TYPE_P(i32*) #1

declare dso_local i32 @convert_to_string(i32*) #1

declare dso_local i32 @pdo_odbc_utf82ucs2(%struct.TYPE_6__*, i32, i8*, i32, i32*) #1

declare dso_local i8* @Z_STRVAL_P(i32*) #1

declare dso_local i32 @Z_STRLEN_P(i32*) #1

declare dso_local i32 @SQLPutData(i32, i8*, i32) #1

declare dso_local i32 @pdo_odbc_stmt_error(i8*) #1

declare dso_local i32 @efree(i8*) #1

declare dso_local i32 @php_stream_from_zval_no_verify(i32*, i32*) #1

declare dso_local i8* @emalloc(i32) #1

declare dso_local i32 @php_stream_read(i32*, i8*, i32) #1

declare dso_local i32 @SQLRowCount(i32, i32*) #1

declare dso_local i32 @SQLNumResultCols(i32, i64*) #1

declare dso_local i32 @ecalloc(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
