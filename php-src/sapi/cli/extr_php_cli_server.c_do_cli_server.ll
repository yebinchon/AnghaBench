; ModuleID = '/home/carl/AnghaBench/php-src/sapi/cli/extr_php_cli_server.c_do_cli_server.c'
source_filename = "/home/carl/AnghaBench/php-src/sapi/cli/extr_php_cli_server.c_do_cli_server.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i32 }

@MAXPATHLEN = common dso_local global i32 0, align 4
@OPTIONS = external dso_local constant [0 x i32], align 4
@php_cli_server_log_level = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Directory %s does not exist.\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"%s is not a directory.\0A\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c".\00", align 1
@FAILURE = common dso_local global i64 0, align 8
@server = common dso_local global i32 0, align 4
@sapi_module = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@PHP_CLI_SERVER_LOG_PROCESS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [46 x i8] c"PHP %s Development Server (http://%s) started\00", align 1
@PHP_VERSION = common dso_local global i32 0, align 4
@SIGINT = common dso_local global i32 0, align 4
@SIGPIPE = common dso_local global i32 0, align 4
@SIG_IGN = common dso_local global i32 0, align 4
@php_cli_server_sigint_handler = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_cli_server(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_4__, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* null, i8** %6, align 8
  store i32 1, i32* %7, align 4
  store i8* null, i8** %9, align 8
  store i8* null, i8** %10, align 8
  store i8* null, i8** %11, align 8
  %17 = load i32, i32* @MAXPATHLEN, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %12, align 8
  %20 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %13, align 8
  br label %21

21:                                               ; preds = %39, %2
  %22 = load i32, i32* %4, align 4
  %23 = load i8**, i8*** %5, align 8
  %24 = call i32 @php_getopt(i32 %22, i8** %23, i32* getelementptr inbounds ([0 x i32], [0 x i32]* @OPTIONS, i64 0, i64 0), i8** %6, i32* %7, i32 0, i32 2)
  store i32 %24, i32* %8, align 4
  %25 = icmp ne i32 %24, -1
  br i1 %25, label %26, label %40

26:                                               ; preds = %21
  %27 = load i32, i32* %8, align 4
  switch i32 %27, label %39 [
    i32 83, label %28
    i32 116, label %30
    i32 113, label %32
  ]

28:                                               ; preds = %26
  %29 = load i8*, i8** %6, align 8
  store i8* %29, i8** %9, align 8
  br label %39

30:                                               ; preds = %26
  %31 = load i8*, i8** %6, align 8
  store i8* %31, i8** %10, align 8
  br label %39

32:                                               ; preds = %26
  %33 = load i32, i32* @php_cli_server_log_level, align 4
  %34 = icmp sgt i32 %33, 1
  br i1 %34, label %35, label %38

35:                                               ; preds = %32
  %36 = load i32, i32* @php_cli_server_log_level, align 4
  %37 = add nsw i32 %36, -1
  store i32 %37, i32* @php_cli_server_log_level, align 4
  br label %38

38:                                               ; preds = %35, %32
  br label %39

39:                                               ; preds = %26, %38, %30, %28
  br label %21

40:                                               ; preds = %21
  %41 = load i8*, i8** %10, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %43, label %66

43:                                               ; preds = %40
  %44 = load i8*, i8** %10, align 8
  %45 = call i64 @php_sys_stat(i8* %44, %struct.TYPE_4__* %14)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %43
  %48 = load i32, i32* @stderr, align 4
  %49 = load i8*, i8** %10, align 8
  %50 = call i32 (i32, i8*, ...) @fprintf(i32 %48, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i8* %49)
  store i32 1, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %99

51:                                               ; preds = %43
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @S_ISDIR(i32 %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %60, label %56

56:                                               ; preds = %51
  %57 = load i32, i32* @stderr, align 4
  %58 = load i8*, i8** %10, align 8
  %59 = call i32 (i32, i8*, ...) @fprintf(i32 %57, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i8* %58)
  store i32 1, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %99

60:                                               ; preds = %51
  %61 = load i8*, i8** %10, align 8
  %62 = call i64 @VCWD_REALPATH(i8* %61, i8* %20)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %60
  store i8* %20, i8** %10, align 8
  br label %65

65:                                               ; preds = %64, %60
  br label %73

66:                                               ; preds = %40
  store i8* null, i8** %16, align 8
  %67 = load i8*, i8** %16, align 8
  %68 = icmp ne i8* %67, null
  br i1 %68, label %69, label %70

69:                                               ; preds = %66
  br label %71

70:                                               ; preds = %66
  br label %71

71:                                               ; preds = %70, %69
  %72 = phi i8* [ %20, %69 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), %70 ]
  store i8* %72, i8** %10, align 8
  br label %73

73:                                               ; preds = %71, %65
  %74 = load i32, i32* %4, align 4
  %75 = load i32, i32* %7, align 4
  %76 = icmp sgt i32 %74, %75
  br i1 %76, label %77, label %83

77:                                               ; preds = %73
  %78 = load i8**, i8*** %5, align 8
  %79 = load i32, i32* %7, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i8*, i8** %78, i64 %80
  %82 = load i8*, i8** %81, align 8
  store i8* %82, i8** %11, align 8
  br label %83

83:                                               ; preds = %77, %73
  %84 = load i64, i64* @FAILURE, align 8
  %85 = load i8*, i8** %9, align 8
  %86 = load i8*, i8** %10, align 8
  %87 = load i8*, i8** %11, align 8
  %88 = call i64 @php_cli_server_ctor(i32* @server, i8* %85, i8* %86, i8* %87)
  %89 = icmp eq i64 %84, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %83
  store i32 1, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %99

91:                                               ; preds = %83
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @sapi_module, i32 0, i32 0), align 8
  %92 = load i32, i32* @PHP_CLI_SERVER_LOG_PROCESS, align 4
  %93 = load i32, i32* @PHP_VERSION, align 4
  %94 = load i8*, i8** %9, align 8
  %95 = call i32 @php_cli_server_logf(i32 %92, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0), i32 %93, i8* %94)
  %96 = call i32 (...) @zend_signal_init()
  %97 = call i32 @php_cli_server_do_event_loop(i32* @server)
  %98 = call i32 @php_cli_server_dtor(i32* @server)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %99

99:                                               ; preds = %91, %90, %56, %47
  %100 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %100)
  %101 = load i32, i32* %3, align 4
  ret i32 %101
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @php_getopt(i32, i8**, i32*, i8**, i32*, i32, i32) #2

declare dso_local i64 @php_sys_stat(i8*, %struct.TYPE_4__*) #2

declare dso_local i32 @fprintf(i32, i8*, ...) #2

declare dso_local i32 @S_ISDIR(i32) #2

declare dso_local i64 @VCWD_REALPATH(i8*, i8*) #2

declare dso_local i64 @php_cli_server_ctor(i32*, i8*, i8*, i8*) #2

declare dso_local i32 @php_cli_server_logf(i32, i8*, i32, i8*) #2

declare dso_local i32 @zend_signal_init(...) #2

declare dso_local i32 @php_cli_server_do_event_loop(i32*) #2

declare dso_local i32 @php_cli_server_dtor(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
