; ModuleID = '/home/carl/AnghaBench/php-src/ext/pdo_odbc/extr_odbc_driver.c_pdo_odbc_handle_factory.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/pdo_odbc/extr_odbc_driver.c_pdo_odbc_handle_factory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8*, i32, i32*, i32, i64*, i32, i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32 }

@SQL_HANDLE_ENV = common dso_local global i32 0, align 4
@SQL_NULL_HANDLE = common dso_local global i32 0, align 4
@SQL_ATTR_ODBC_VERSION = common dso_local global i32 0, align 4
@SQL_OV_ODBC3 = common dso_local global i64 0, align 8
@SQL_SUCCESS = common dso_local global i64 0, align 8
@SQL_SUCCESS_WITH_INFO = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"SQLSetEnvAttr: ODBC3\00", align 1
@SQL_HANDLE_DBC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"SQLAllocHandle (DBC)\00", align 1
@SQL_ATTR_AUTOCOMMIT = common dso_local global i32 0, align 4
@SQL_AUTOCOMMIT_ON = common dso_local global i64 0, align 8
@SQL_AUTOCOMMIT_OFF = common dso_local global i64 0, align 8
@SQL_IS_INTEGER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"SQLSetConnectAttr AUTOCOMMIT\00", align 1
@PDO_ODBC_ATTR_USE_CURSOR_LIBRARY = common dso_local global i32 0, align 4
@SQL_CUR_USE_IF_NEEDED = common dso_local global i64 0, align 8
@SQL_ODBC_CURSORS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"SQLSetConnectAttr SQL_ODBC_CURSORS\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"uid\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"UID\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"%s;UID=%s;PWD=%s\00", align 1
@SQL_DRIVER_NOPROMPT = common dso_local global i32 0, align 4
@SQL_NTS = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [17 x i8] c"SQLDriverConnect\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"SQLConnect\00", align 1
@odbc_methods = common dso_local global i32 0, align 4
@SQL_ATTR_CP_MATCH = common dso_local global i32 0, align 4
@SQL_CP_OFF = common dso_local global i64 0, align 8
@pdo_odbc_pool_mode = common dso_local global i64 0, align 8
@pdo_odbc_pool_on = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32*)* @pdo_odbc_handle_factory to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pdo_odbc_handle_factory(%struct.TYPE_6__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca [1024 x i8], align 16
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %8, align 4
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 5
  %15 = load i32, i32* %14, align 8
  %16 = call %struct.TYPE_5__* @pecalloc(i32 1, i32 8, i32 %15)
  store %struct.TYPE_5__* %16, %struct.TYPE_5__** %6, align 8
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 7
  store %struct.TYPE_5__* %17, %struct.TYPE_5__** %19, align 8
  %20 = load i32, i32* @SQL_HANDLE_ENV, align 4
  %21 = load i32, i32* @SQL_NULL_HANDLE, align 4
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 1
  %24 = call i64 @SQLAllocHandle(i32 %20, i32 %21, i32* %23)
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @SQL_ATTR_ODBC_VERSION, align 4
  %29 = load i64, i64* @SQL_OV_ODBC3, align 8
  %30 = inttoptr i64 %29 to i8*
  %31 = call i64 @SQLSetEnvAttr(i32 %27, i32 %28, i8* %30, i32 0)
  store i64 %31, i64* %7, align 8
  %32 = load i64, i64* %7, align 8
  %33 = load i64, i64* @SQL_SUCCESS, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %41

35:                                               ; preds = %2
  %36 = load i64, i64* %7, align 8
  %37 = load i64, i64* @SQL_SUCCESS_WITH_INFO, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %35
  %40 = call i32 @pdo_odbc_drv_error(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %206

41:                                               ; preds = %35, %2
  %42 = load i32, i32* @SQL_HANDLE_DBC, align 4
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = call i64 @SQLAllocHandle(i32 %42, i32 %45, i32* %47)
  store i64 %48, i64* %7, align 8
  %49 = load i64, i64* %7, align 8
  %50 = load i64, i64* @SQL_SUCCESS, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %58

52:                                               ; preds = %41
  %53 = load i64, i64* %7, align 8
  %54 = load i64, i64* @SQL_SUCCESS_WITH_INFO, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %52
  %57 = call i32 @pdo_odbc_drv_error(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %206

58:                                               ; preds = %52, %41
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @SQL_ATTR_AUTOCOMMIT, align 4
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 6
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %58
  %68 = load i64, i64* @SQL_AUTOCOMMIT_ON, align 8
  br label %71

69:                                               ; preds = %58
  %70 = load i64, i64* @SQL_AUTOCOMMIT_OFF, align 8
  br label %71

71:                                               ; preds = %69, %67
  %72 = phi i64 [ %68, %67 ], [ %70, %69 ]
  %73 = inttoptr i64 %72 to i8*
  %74 = load i32, i32* @SQL_IS_INTEGER, align 4
  %75 = call i64 @SQLSetConnectAttr(i32 %61, i32 %62, i8* %73, i32 %74)
  store i64 %75, i64* %7, align 8
  %76 = load i64, i64* %7, align 8
  %77 = load i64, i64* @SQL_SUCCESS, align 8
  %78 = icmp ne i64 %76, %77
  br i1 %78, label %79, label %81

79:                                               ; preds = %71
  %80 = call i32 @pdo_odbc_drv_error(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  br label %206

81:                                               ; preds = %71
  %82 = load i32*, i32** %5, align 8
  %83 = load i32, i32* @PDO_ODBC_ATTR_USE_CURSOR_LIBRARY, align 4
  %84 = load i64, i64* @SQL_CUR_USE_IF_NEEDED, align 8
  %85 = call i64 @pdo_attr_lval(i32* %82, i32 %83, i64 %84)
  store i64 %85, i64* %9, align 8
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @SQL_ODBC_CURSORS, align 4
  %90 = load i64, i64* %9, align 8
  %91 = inttoptr i64 %90 to i8*
  %92 = load i32, i32* @SQL_IS_INTEGER, align 4
  %93 = call i64 @SQLSetConnectAttr(i32 %88, i32 %89, i8* %91, i32 %92)
  store i64 %93, i64* %7, align 8
  %94 = load i64, i64* %7, align 8
  %95 = load i64, i64* @SQL_SUCCESS, align 8
  %96 = icmp ne i64 %94, %95
  br i1 %96, label %97, label %103

97:                                               ; preds = %81
  %98 = load i64, i64* %9, align 8
  %99 = load i64, i64* @SQL_CUR_USE_IF_NEEDED, align 8
  %100 = icmp ne i64 %98, %99
  br i1 %100, label %101, label %103

101:                                              ; preds = %97
  %102 = call i32 @pdo_odbc_drv_error(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  br label %206

103:                                              ; preds = %97, %81
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 0
  %106 = load i8*, i8** %105, align 8
  %107 = call i64 @strchr(i8* %106, i8 signext 59)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %167

109:                                              ; preds = %103
  store i32 1, i32* %8, align 4
  %110 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 4
  %112 = load i64*, i64** %111, align 8
  %113 = icmp ne i64* %112, null
  br i1 %113, label %114, label %153

114:                                              ; preds = %109
  %115 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 4
  %117 = load i64*, i64** %116, align 8
  %118 = load i64, i64* %117, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %153

120:                                              ; preds = %114
  %121 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 0
  %123 = load i8*, i8** %122, align 8
  %124 = call i32 @strstr(i8* %123, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %153, label %126

126:                                              ; preds = %120
  %127 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 0
  %129 = load i8*, i8** %128, align 8
  %130 = call i32 @strstr(i8* %129, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %153, label %132

132:                                              ; preds = %126
  %133 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 0
  %135 = load i8*, i8** %134, align 8
  %136 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 4
  %138 = load i64*, i64** %137, align 8
  %139 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 3
  %141 = load i32, i32* %140, align 8
  %142 = call i32 @spprintf(i8** %12, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* %135, i64* %138, i32 %141)
  %143 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i32 0, i32 0
  %145 = load i8*, i8** %144, align 8
  %146 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 5
  %148 = load i32, i32* %147, align 8
  %149 = call i32 @pefree(i8* %145, i32 %148)
  %150 = load i8*, i8** %12, align 8
  %151 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i32 0, i32 0
  store i8* %150, i8** %152, align 8
  br label %153

153:                                              ; preds = %132, %126, %120, %114, %109
  %154 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %155 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %158 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %157, i32 0, i32 0
  %159 = load i8*, i8** %158, align 8
  %160 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %161 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %160, i32 0, i32 0
  %162 = load i8*, i8** %161, align 8
  %163 = call i32 @strlen(i8* %162)
  %164 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %165 = load i32, i32* @SQL_DRIVER_NOPROMPT, align 4
  %166 = call i64 @SQLDriverConnect(i32 %156, i32* null, i8* %159, i32 %163, i8* %164, i32 1023, i32* %11, i32 %165)
  store i64 %166, i64* %7, align 8
  br label %167

167:                                              ; preds = %153, %103
  %168 = load i32, i32* %8, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %187, label %170

170:                                              ; preds = %167
  %171 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %172 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %175 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %174, i32 0, i32 0
  %176 = load i8*, i8** %175, align 8
  %177 = load i32, i32* @SQL_NTS, align 4
  %178 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %179 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %178, i32 0, i32 4
  %180 = load i64*, i64** %179, align 8
  %181 = load i32, i32* @SQL_NTS, align 4
  %182 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %183 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %182, i32 0, i32 3
  %184 = load i32, i32* %183, align 8
  %185 = load i32, i32* @SQL_NTS, align 4
  %186 = call i64 @SQLConnect(i32 %173, i8* %176, i32 %177, i64* %180, i32 %181, i32 %184, i32 %185)
  store i64 %186, i64* %7, align 8
  br label %187

187:                                              ; preds = %170, %167
  %188 = load i64, i64* %7, align 8
  %189 = load i64, i64* @SQL_SUCCESS, align 8
  %190 = icmp ne i64 %188, %189
  br i1 %190, label %191, label %201

191:                                              ; preds = %187
  %192 = load i64, i64* %7, align 8
  %193 = load i64, i64* @SQL_SUCCESS_WITH_INFO, align 8
  %194 = icmp ne i64 %192, %193
  br i1 %194, label %195, label %201

195:                                              ; preds = %191
  %196 = load i32, i32* %8, align 4
  %197 = icmp ne i32 %196, 0
  %198 = zext i1 %197 to i64
  %199 = select i1 %197, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0)
  %200 = call i32 @pdo_odbc_drv_error(i8* %199)
  br label %206

201:                                              ; preds = %191, %187
  %202 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %203 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %202, i32 0, i32 2
  store i32* @odbc_methods, i32** %203, align 8
  %204 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %205 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %204, i32 0, i32 1
  store i32 1, i32* %205, align 8
  store i32 1, i32* %3, align 4
  br label %209

206:                                              ; preds = %195, %101, %79, %56, %39
  %207 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %208 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %207, i32 0, i32 2
  store i32* @odbc_methods, i32** %208, align 8
  store i32 0, i32* %3, align 4
  br label %209

209:                                              ; preds = %206, %201
  %210 = load i32, i32* %3, align 4
  ret i32 %210
}

declare dso_local %struct.TYPE_5__* @pecalloc(i32, i32, i32) #1

declare dso_local i64 @SQLAllocHandle(i32, i32, i32*) #1

declare dso_local i64 @SQLSetEnvAttr(i32, i32, i8*, i32) #1

declare dso_local i32 @pdo_odbc_drv_error(i8*) #1

declare dso_local i64 @SQLSetConnectAttr(i32, i32, i8*, i32) #1

declare dso_local i64 @pdo_attr_lval(i32*, i32, i64) #1

declare dso_local i64 @strchr(i8*, i8 signext) #1

declare dso_local i32 @strstr(i8*, i8*) #1

declare dso_local i32 @spprintf(i8**, i32, i8*, i8*, i64*, i32) #1

declare dso_local i32 @pefree(i8*, i32) #1

declare dso_local i64 @SQLDriverConnect(i32, i32*, i8*, i32, i8*, i32, i32*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @SQLConnect(i32, i8*, i32, i64*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
