; ModuleID = '/home/carl/AnghaBench/php-src/ext/mysqli/extr_mysqli_nonapi.c_mysqli_begin_transaction_libmysql.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/mysqli/extr_mysqli_nonapi.c_mysqli_begin_transaction_libmysql.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32 }

@FALSE = common dso_local global i64 0, align 8
@TRANS_START_WITH_CONSISTENT_SNAPSHOT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"WITH CONSISTENT SNAPSHOT\00", align 1
@TRANS_START_READ_WRITE = common dso_local global i32 0, align 4
@TRANS_START_READ_ONLY = common dso_local global i32 0, align 4
@E_WARNING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [92 x i8] c"This server version doesn't support 'READ WRITE' and 'READ ONLY'. Minimum 5.6.5 is required\00", align 1
@TRUE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [11 x i8] c"READ WRITE\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"READ ONLY\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"START TRANSACTION%s %s\00", align 1
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i8*)* @mysqli_begin_transaction_libmysql to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mysqli_begin_transaction_libmysql(i32* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_5__, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %13 = load i64, i64* @FALSE, align 8
  store i64 %13, i64* %8, align 8
  %14 = bitcast %struct.TYPE_5__* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %14, i8 0, i64 16, i1 false)
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @TRANS_START_WITH_CONSISTENT_SNAPSHOT, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %3
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = call i32 @smart_str_appendl(%struct.TYPE_5__* %9, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 2)
  br label %25

25:                                               ; preds = %23, %19
  %26 = call i32 @smart_str_appendl(%struct.TYPE_5__* %9, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 24)
  br label %27

27:                                               ; preds = %25, %3
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @TRANS_START_READ_WRITE, align 4
  %30 = load i32, i32* @TRANS_START_READ_ONLY, align 4
  %31 = or i32 %29, %30
  %32 = and i32 %28, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %71

34:                                               ; preds = %27
  %35 = load i32*, i32** %4, align 8
  %36 = call i64 @mysql_get_server_version(i32* %35)
  %37 = icmp slt i64 %36, 50605
  br i1 %37, label %38, label %42

38:                                               ; preds = %34
  %39 = load i32, i32* @E_WARNING, align 4
  %40 = call i32 @php_error_docref(i32* null, i32 %39, i8* getelementptr inbounds ([92 x i8], [92 x i8]* @.str.2, i64 0, i64 0))
  %41 = load i64, i64* @TRUE, align 8
  store i64 %41, i64* %8, align 8
  br label %70

42:                                               ; preds = %34
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* @TRANS_START_READ_WRITE, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %55

47:                                               ; preds = %42
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %47
  %52 = call i32 @smart_str_appendl(%struct.TYPE_5__* %9, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 2)
  br label %53

53:                                               ; preds = %51, %47
  %54 = call i32 @smart_str_appendl(%struct.TYPE_5__* %9, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 10)
  br label %69

55:                                               ; preds = %42
  %56 = load i32, i32* %5, align 4
  %57 = load i32, i32* @TRANS_START_READ_ONLY, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %68

60:                                               ; preds = %55
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %60
  %65 = call i32 @smart_str_appendl(%struct.TYPE_5__* %9, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 2)
  br label %66

66:                                               ; preds = %64, %60
  %67 = call i32 @smart_str_appendl(%struct.TYPE_5__* %9, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 9)
  br label %68

68:                                               ; preds = %66, %55
  br label %69

69:                                               ; preds = %68, %53
  br label %70

70:                                               ; preds = %69, %38
  br label %71

71:                                               ; preds = %70, %27
  %72 = call i32 @smart_str_0(%struct.TYPE_5__* %9)
  %73 = load i64, i64* %8, align 8
  %74 = load i64, i64* @FALSE, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %110

76:                                               ; preds = %71
  %77 = load i8*, i8** %6, align 8
  %78 = call i8* @mysqli_escape_string_for_tx_name_in_comment(i8* %77)
  store i8* %78, i8** %10, align 8
  %79 = load i8*, i8** %10, align 8
  %80 = icmp ne i8* %79, null
  br i1 %80, label %81, label %83

81:                                               ; preds = %76
  %82 = load i8*, i8** %10, align 8
  br label %84

83:                                               ; preds = %76
  br label %84

84:                                               ; preds = %83, %81
  %85 = phi i8* [ %82, %81 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0), %83 ]
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %84
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = call i8* @ZSTR_VAL(i64 %91)
  br label %94

93:                                               ; preds = %84
  br label %94

94:                                               ; preds = %93, %89
  %95 = phi i8* [ %92, %89 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0), %93 ]
  %96 = call i32 @spprintf(i8** %11, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i8* %85, i8* %95)
  store i32 %96, i32* %12, align 4
  %97 = call i32 @smart_str_free(%struct.TYPE_5__* %9)
  %98 = load i8*, i8** %10, align 8
  %99 = icmp ne i8* %98, null
  br i1 %99, label %100, label %103

100:                                              ; preds = %94
  %101 = load i8*, i8** %10, align 8
  %102 = call i32 @efree(i8* %101)
  br label %103

103:                                              ; preds = %100, %94
  %104 = load i32*, i32** %4, align 8
  %105 = load i8*, i8** %11, align 8
  %106 = load i32, i32* %12, align 4
  %107 = call i32 @mysql_real_query(i32* %104, i8* %105, i32 %106)
  store i32 %107, i32* %7, align 4
  %108 = load i8*, i8** %11, align 8
  %109 = call i32 @efree(i8* %108)
  br label %110

110:                                              ; preds = %103, %71
  %111 = load i32, i32* %7, align 4
  ret i32 %111
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @smart_str_appendl(%struct.TYPE_5__*, i8*, i32) #2

declare dso_local i64 @mysql_get_server_version(i32*) #2

declare dso_local i32 @php_error_docref(i32*, i32, i8*) #2

declare dso_local i32 @smart_str_0(%struct.TYPE_5__*) #2

declare dso_local i8* @mysqli_escape_string_for_tx_name_in_comment(i8*) #2

declare dso_local i32 @spprintf(i8**, i32, i8*, i8*, i8*) #2

declare dso_local i8* @ZSTR_VAL(i64) #2

declare dso_local i32 @smart_str_free(%struct.TYPE_5__*) #2

declare dso_local i32 @efree(i8*) #2

declare dso_local i32 @mysql_real_query(i32*, i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
