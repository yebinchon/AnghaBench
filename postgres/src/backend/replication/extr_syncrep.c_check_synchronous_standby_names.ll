; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/replication/extr_syncrep.c_check_synchronous_standby_names.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/replication/extr_syncrep.c_check_synchronous_standby_names.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32 }

@syncrep_parse_result = common dso_local global %struct.TYPE_3__* null, align 8
@syncrep_parse_error_msg = common dso_local global i32* null, align 8
@ERRCODE_SYNTAX_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"synchronous_standby_names parser failed\00", align 1
@.str.2 = private unnamed_addr constant [62 x i8] c"number of synchronous standbys (%d) must be greater than zero\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @check_synchronous_standby_names(i8** %0, i8** %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store i8** %0, i8*** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i8**, i8*** %5, align 8
  %11 = load i8*, i8** %10, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %13, label %71

13:                                               ; preds = %3
  %14 = load i8**, i8*** %5, align 8
  %15 = load i8*, i8** %14, align 8
  %16 = getelementptr inbounds i8, i8* %15, i64 0
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %71

20:                                               ; preds = %13
  store %struct.TYPE_3__* null, %struct.TYPE_3__** @syncrep_parse_result, align 8
  store i32* null, i32** @syncrep_parse_error_msg, align 8
  %21 = load i8**, i8*** %5, align 8
  %22 = load i8*, i8** %21, align 8
  %23 = call i32 @syncrep_scanner_init(i8* %22)
  %24 = call i32 (...) @syncrep_yyparse()
  store i32 %24, i32* %8, align 4
  %25 = call i32 (...) @syncrep_scanner_finish()
  %26 = load i32, i32* %8, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %20
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** @syncrep_parse_result, align 8
  %30 = icmp eq %struct.TYPE_3__* %29, null
  br i1 %30, label %31, label %42

31:                                               ; preds = %28, %20
  %32 = load i32, i32* @ERRCODE_SYNTAX_ERROR, align 4
  %33 = call i32 @GUC_check_errcode(i32 %32)
  %34 = load i32*, i32** @syncrep_parse_error_msg, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = load i32*, i32** @syncrep_parse_error_msg, align 8
  %38 = call i32 (i8*, ...) @GUC_check_errdetail(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %37)
  br label %41

39:                                               ; preds = %31
  %40 = call i32 (i8*, ...) @GUC_check_errdetail(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  br label %41

41:                                               ; preds = %39, %36
  store i32 0, i32* %4, align 4
  br label %74

42:                                               ; preds = %28
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** @syncrep_parse_result, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp sle i64 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %42
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** @syncrep_parse_result, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = call i32 @GUC_check_errmsg(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.2, i64 0, i64 0), i64 %50)
  store i32 0, i32* %4, align 4
  br label %74

52:                                               ; preds = %42
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** @syncrep_parse_result, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = call i64 @malloc(i32 %55)
  %57 = inttoptr i64 %56 to i32*
  store i32* %57, i32** %9, align 8
  %58 = load i32*, i32** %9, align 8
  %59 = icmp eq i32* %58, null
  br i1 %59, label %60, label %61

60:                                               ; preds = %52
  store i32 0, i32* %4, align 4
  br label %74

61:                                               ; preds = %52
  %62 = load i32*, i32** %9, align 8
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** @syncrep_parse_result, align 8
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** @syncrep_parse_result, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @memcpy(i32* %62, %struct.TYPE_3__* %63, i32 %66)
  %68 = load i32*, i32** %9, align 8
  %69 = bitcast i32* %68 to i8*
  %70 = load i8**, i8*** %6, align 8
  store i8* %69, i8** %70, align 8
  br label %73

71:                                               ; preds = %13, %3
  %72 = load i8**, i8*** %6, align 8
  store i8* null, i8** %72, align 8
  br label %73

73:                                               ; preds = %71, %61
  store i32 1, i32* %4, align 4
  br label %74

74:                                               ; preds = %73, %60, %47, %41
  %75 = load i32, i32* %4, align 4
  ret i32 %75
}

declare dso_local i32 @syncrep_scanner_init(i8*) #1

declare dso_local i32 @syncrep_yyparse(...) #1

declare dso_local i32 @syncrep_scanner_finish(...) #1

declare dso_local i32 @GUC_check_errcode(i32) #1

declare dso_local i32 @GUC_check_errdetail(i8*, ...) #1

declare dso_local i32 @GUC_check_errmsg(i8*, i64) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @memcpy(i32*, %struct.TYPE_3__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
