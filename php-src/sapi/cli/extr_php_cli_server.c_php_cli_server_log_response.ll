; ModuleID = '/home/carl/AnghaBench/php-src/sapi/cli/extr_php_cli_server.c_php_cli_server_log_response.c'
source_filename = "/home/carl/AnghaBench/php-src/sapi/cli/extr_php_cli_server.c_php_cli_server_log_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_7__ = type { i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@last_error_message = common dso_local global i32 0, align 4
@last_error_type = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"%s [%d]: %s %s\00", align 1
@request_info = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c" - %s\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c" - %s in %s on line %d\00", align 1
@last_error_file = common dso_local global i32 0, align 4
@last_error_lineno = common dso_local global i32 0, align 4
@PHP_CLI_SERVER_LOG_MESSAGE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [17 x i8] c"\1B[3%dm%s%s%s\1B[0m\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"%s%s%s\00", align 1
@OUTPUT_IS_TTY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, i32, i8*)* @php_cli_server_log_response to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @php_cli_server_log_response(%struct.TYPE_6__* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_7__, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  store i32 0, i32* %7, align 4
  %14 = load i32, i32* %5, align 4
  store i32 %14, i32* %8, align 4
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %10, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %11, align 8
  store i32 0, i32* %12, align 4
  %15 = load i32, i32* @last_error_message, align 4
  %16 = call i32 @PG(i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %27

18:                                               ; preds = %3
  %19 = load i32, i32* @last_error_type, align 4
  %20 = call i32 @PG(i32 %19)
  switch i32 %20, label %26 [
    i32 130, label %21
    i32 131, label %21
    i32 132, label %21
    i32 128, label %21
    i32 129, label %21
  ]

21:                                               ; preds = %18, %18, %18, %18, %18
  %22 = load i32, i32* %5, align 4
  %23 = icmp eq i32 %22, 200
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  store i32 500, i32* %8, align 4
  br label %25

25:                                               ; preds = %24, %21
  store i32 1, i32* %12, align 4
  br label %26

26:                                               ; preds = %18, %25
  br label %27

27:                                               ; preds = %26, %3
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @request_info, align 4
  %33 = call i32 @SG(i32 %32)
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  store i32 %33, i32* %34, align 4
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 (i8**, i32, i8*, ...) @spprintf(i8** %9, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %30, i32 %31, i32 %36, i32 %40)
  %42 = load i8*, i8** %9, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %27
  br label %110

45:                                               ; preds = %27
  %46 = load i8*, i8** %6, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %48, label %57

48:                                               ; preds = %45
  %49 = load i8*, i8** %6, align 8
  %50 = call i32 (i8**, i32, i8*, ...) @spprintf(i8** %10, i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* %49)
  %51 = load i8*, i8** %10, align 8
  %52 = icmp ne i8* %51, null
  br i1 %52, label %56, label %53

53:                                               ; preds = %48
  %54 = load i8*, i8** %9, align 8
  %55 = call i32 @efree(i8* %54)
  br label %110

56:                                               ; preds = %48
  br label %57

57:                                               ; preds = %56, %45
  %58 = load i32, i32* %12, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %80

60:                                               ; preds = %57
  %61 = load i32, i32* @last_error_message, align 4
  %62 = call i32 @PG(i32 %61)
  %63 = load i32, i32* @last_error_file, align 4
  %64 = call i32 @PG(i32 %63)
  %65 = load i32, i32* @last_error_lineno, align 4
  %66 = call i32 @PG(i32 %65)
  %67 = call i32 (i8**, i32, i8*, ...) @spprintf(i8** %11, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 %62, i32 %64, i32 %66)
  %68 = load i8*, i8** %11, align 8
  %69 = icmp ne i8* %68, null
  br i1 %69, label %79, label %70

70:                                               ; preds = %60
  %71 = load i8*, i8** %9, align 8
  %72 = call i32 @efree(i8* %71)
  %73 = load i8*, i8** %6, align 8
  %74 = icmp ne i8* %73, null
  br i1 %74, label %75, label %78

75:                                               ; preds = %70
  %76 = load i8*, i8** %10, align 8
  %77 = call i32 @efree(i8* %76)
  br label %78

78:                                               ; preds = %75, %70
  br label %110

79:                                               ; preds = %60
  br label %80

80:                                               ; preds = %79, %57
  %81 = load i32, i32* %7, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %90

83:                                               ; preds = %80
  %84 = load i32, i32* @PHP_CLI_SERVER_LOG_MESSAGE, align 4
  %85 = load i32, i32* %7, align 4
  %86 = load i8*, i8** %9, align 8
  %87 = load i8*, i8** %10, align 8
  %88 = load i8*, i8** %11, align 8
  %89 = call i32 (i32, i8*, ...) @php_cli_server_logf(i32 %84, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i32 %85, i8* %86, i8* %87, i8* %88)
  br label %96

90:                                               ; preds = %80
  %91 = load i32, i32* @PHP_CLI_SERVER_LOG_MESSAGE, align 4
  %92 = load i8*, i8** %9, align 8
  %93 = load i8*, i8** %10, align 8
  %94 = load i8*, i8** %11, align 8
  %95 = call i32 (i32, i8*, ...) @php_cli_server_logf(i32 %91, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* %92, i8* %93, i8* %94)
  br label %96

96:                                               ; preds = %90, %83
  %97 = load i8*, i8** %9, align 8
  %98 = call i32 @efree(i8* %97)
  %99 = load i8*, i8** %6, align 8
  %100 = icmp ne i8* %99, null
  br i1 %100, label %101, label %104

101:                                              ; preds = %96
  %102 = load i8*, i8** %10, align 8
  %103 = call i32 @efree(i8* %102)
  br label %104

104:                                              ; preds = %101, %96
  %105 = load i32, i32* %12, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %104
  %108 = load i8*, i8** %11, align 8
  %109 = call i32 @efree(i8* %108)
  br label %110

110:                                              ; preds = %44, %53, %78, %107, %104
  ret void
}

declare dso_local i32 @PG(i32) #1

declare dso_local i32 @spprintf(i8**, i32, i8*, ...) #1

declare dso_local i32 @SG(i32) #1

declare dso_local i32 @efree(i8*) #1

declare dso_local i32 @php_cli_server_logf(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
