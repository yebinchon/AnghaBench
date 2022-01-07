; ModuleID = '/home/carl/AnghaBench/php-src/ext/pdo_pgsql/extr_pgsql_driver.c_pdo_pgsql_get_attribute.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/pdo_pgsql/extr_pgsql_driver.c_pdo_pgsql_get_attribute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i32, i32, i32 }

@PG_VERSION = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [15 x i8] c"server_version\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"SELECT VERSION()\00", align 1
@PGRES_TUPLES_OK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"Waiting for connection to be made.\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"Connection OK; waiting to send.\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"Waiting for a response from the server.\00", align 1
@.str.5 = private unnamed_addr constant [65 x i8] c"Received authentication; waiting for backend start-up to finish.\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"Negotiating SSL encryption.\00", align 1
@.str.7 = private unnamed_addr constant [51 x i8] c"Negotiating environment-driven parameter settings.\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"Bad connection.\00", align 1
@.str.9 = private unnamed_addr constant [90 x i8] c"PID: %d; Client Encoding: %s; Is Superuser: %s; Session Authorization: %s; Date Style: %s\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"client_encoding\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"is_superuser\00", align 1
@.str.12 = private unnamed_addr constant [22 x i8] c"session_authorization\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"DateStyle\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32, i32*)* @pdo_pgsql_get_attribute to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pdo_pgsql_get_attribute(%struct.TYPE_5__* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %15, %struct.TYPE_4__** %8, align 8
  %16 = load i32, i32* %6, align 4
  switch i32 %16, label %131 [
    i32 131, label %17
    i32 128, label %23
    i32 133, label %29
    i32 129, label %33
    i32 132, label %73
    i32 130, label %101
  ]

17:                                               ; preds = %3
  %18 = load i32*, i32** %7, align 8
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @ZVAL_BOOL(i32* %18, i32 %21)
  br label %132

23:                                               ; preds = %3
  %24 = load i32*, i32** %7, align 8
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @ZVAL_BOOL(i32* %24, i32 %27)
  br label %132

29:                                               ; preds = %3
  %30 = load i32*, i32** %7, align 8
  %31 = load i8*, i8** @PG_VERSION, align 8
  %32 = call i32 @ZVAL_STRING(i32* %30, i8* %31)
  br label %132

33:                                               ; preds = %3
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @PQprotocolVersion(i32 %36)
  %38 = icmp sge i32 %37, 3
  br i1 %38, label %39, label %47

39:                                               ; preds = %33
  %40 = load i32*, i32** %7, align 8
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i64 @PQparameterStatus(i32 %43, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %45 = inttoptr i64 %44 to i8*
  %46 = call i32 @ZVAL_STRING(i32* %40, i8* %45)
  br label %72

47:                                               ; preds = %33
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32* @PQexec(i32 %50, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  store i32* %51, i32** %9, align 8
  %52 = load i32*, i32** %9, align 8
  %53 = icmp ne i32* %52, null
  br i1 %53, label %54, label %65

54:                                               ; preds = %47
  %55 = load i32*, i32** %9, align 8
  %56 = call i32 @PQresultStatus(i32* %55)
  %57 = load i32, i32* @PGRES_TUPLES_OK, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %65

59:                                               ; preds = %54
  %60 = load i32*, i32** %7, align 8
  %61 = load i32*, i32** %9, align 8
  %62 = call i64 @PQgetvalue(i32* %61, i32 0, i32 0)
  %63 = inttoptr i64 %62 to i8*
  %64 = call i32 @ZVAL_STRING(i32* %60, i8* %63)
  br label %65

65:                                               ; preds = %59, %54, %47
  %66 = load i32*, i32** %9, align 8
  %67 = icmp ne i32* %66, null
  br i1 %67, label %68, label %71

68:                                               ; preds = %65
  %69 = load i32*, i32** %9, align 8
  %70 = call i32 @PQclear(i32* %69)
  br label %71

71:                                               ; preds = %68, %65
  br label %72

72:                                               ; preds = %71, %39
  br label %132

73:                                               ; preds = %3
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @PQstatus(i32 %76)
  switch i32 %77, label %97 [
    i32 134, label %78
    i32 138, label %81
    i32 137, label %81
    i32 140, label %84
    i32 141, label %87
    i32 135, label %90
    i32 136, label %93
    i32 139, label %96
  ]

78:                                               ; preds = %73
  %79 = load i32*, i32** %7, align 8
  %80 = call i32 @ZVAL_STRINGL(i32* %79, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 34)
  br label %100

81:                                               ; preds = %73, %73
  %82 = load i32*, i32** %7, align 8
  %83 = call i32 @ZVAL_STRINGL(i32* %82, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 31)
  br label %100

84:                                               ; preds = %73
  %85 = load i32*, i32** %7, align 8
  %86 = call i32 @ZVAL_STRINGL(i32* %85, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0), i32 39)
  br label %100

87:                                               ; preds = %73
  %88 = load i32*, i32** %7, align 8
  %89 = call i32 @ZVAL_STRINGL(i32* %88, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.5, i64 0, i64 0), i32 64)
  br label %100

90:                                               ; preds = %73
  %91 = load i32*, i32** %7, align 8
  %92 = call i32 @ZVAL_STRINGL(i32* %91, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0), i32 27)
  br label %100

93:                                               ; preds = %73
  %94 = load i32*, i32** %7, align 8
  %95 = call i32 @ZVAL_STRINGL(i32* %94, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.7, i64 0, i64 0), i32 50)
  br label %100

96:                                               ; preds = %73
  br label %97

97:                                               ; preds = %73, %96
  %98 = load i32*, i32** %7, align 8
  %99 = call i32 @ZVAL_STRINGL(i32* %98, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0), i32 15)
  br label %100

100:                                              ; preds = %97, %93, %90, %87, %84, %81, %78
  br label %132

101:                                              ; preds = %3
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @PQbackendPID(i32 %104)
  store i32 %105, i32* %10, align 4
  %106 = load i32, i32* %10, align 4
  %107 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = call i64 @PQparameterStatus(i32 %109, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0))
  %111 = inttoptr i64 %110 to i8*
  %112 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = call i64 @PQparameterStatus(i32 %114, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i64 0, i64 0))
  %116 = inttoptr i64 %115 to i8*
  %117 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = call i64 @PQparameterStatus(i32 %119, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.12, i64 0, i64 0))
  %121 = inttoptr i64 %120 to i8*
  %122 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = call i64 @PQparameterStatus(i32 %124, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0))
  %126 = inttoptr i64 %125 to i8*
  %127 = call i32* @strpprintf(i32 0, i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.9, i64 0, i64 0), i32 %106, i8* %111, i8* %116, i8* %121, i8* %126)
  store i32* %127, i32** %11, align 8
  %128 = load i32*, i32** %7, align 8
  %129 = load i32*, i32** %11, align 8
  %130 = call i32 @ZVAL_STR(i32* %128, i32* %129)
  br label %132

131:                                              ; preds = %3
  store i32 0, i32* %4, align 4
  br label %133

132:                                              ; preds = %101, %100, %72, %29, %23, %17
  store i32 1, i32* %4, align 4
  br label %133

133:                                              ; preds = %132, %131
  %134 = load i32, i32* %4, align 4
  ret i32 %134
}

declare dso_local i32 @ZVAL_BOOL(i32*, i32) #1

declare dso_local i32 @ZVAL_STRING(i32*, i8*) #1

declare dso_local i32 @PQprotocolVersion(i32) #1

declare dso_local i64 @PQparameterStatus(i32, i8*) #1

declare dso_local i32* @PQexec(i32, i8*) #1

declare dso_local i32 @PQresultStatus(i32*) #1

declare dso_local i64 @PQgetvalue(i32*, i32, i32) #1

declare dso_local i32 @PQclear(i32*) #1

declare dso_local i32 @PQstatus(i32) #1

declare dso_local i32 @ZVAL_STRINGL(i32*, i8*, i32) #1

declare dso_local i32 @PQbackendPID(i32) #1

declare dso_local i32* @strpprintf(i32, i8*, i32, i8*, i8*, i8*, i8*) #1

declare dso_local i32 @ZVAL_STR(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
