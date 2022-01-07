; ModuleID = '/home/carl/AnghaBench/php-src/sapi/litespeed/extr_lsapi_main.c_main.c'
source_filename = "/home/carl/AnghaBench/php-src/sapi/litespeed/extr_lsapi_main.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i8*, i32, i8*, i32 }
%struct.timeval = type { i64, i32 }

@lsapi_sapi_module = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@ignore_php_ini = common dso_local global i64 0, align 8
@sapi_lsapi_ini_defaults = common dso_local global i32 0, align 4
@litespeed_module_entry = common dso_local global i32 0, align 4
@FAILURE = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Failed to bind socket [%s]: %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@lsapi_mode = common dso_local global i32 0, align 4
@lsapi_atexit = common dso_local global i32 0, align 4
@g_req = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"%d/%b/%Y:%H:%M:%S\00", align 1
@.str.2 = private unnamed_addr constant [74 x i8] c"[%s] Slow PHP script: %d ms\0A  URL: %s %s\0A  Query String: %s\0A  Script: %s\0A\00", align 1
@SIGPIPE = common dso_local global i32 0, align 4
@SIG_IGN = common dso_local global i32 0, align 4
@compiler_globals = common dso_local global i8* null, align 8
@compiler_globals_id = common dso_local global i32 0, align 4
@core_globals = common dso_local global i8* null, align 8
@core_globals_id = common dso_local global i32 0, align 4
@executor_globals = common dso_local global i8* null, align 8
@executor_globals_id = common dso_local global i32 0, align 4
@request_info = common dso_local global i32 0, align 4
@sapi_globals = common dso_local global i8* null, align 8
@sapi_globals_id = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.timeval, align 8
  %13 = alloca %struct.timeval, align 8
  %14 = alloca i32, align 4
  %15 = alloca [40 x i8], align 16
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* null, i8** %8, align 8
  store i8* null, i8** %9, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %14, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp sgt i32 %18, 1
  br i1 %19, label %20, label %27

20:                                               ; preds = %2
  %21 = load i32, i32* %4, align 4
  %22 = load i8**, i8*** %5, align 8
  %23 = call i32 @parse_opt(i32 %21, i8** %22, i32* %11, i8** %8, i8** %9)
  %24 = icmp eq i32 %23, -1
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  store i32 1, i32* %3, align 4
  br label %165

26:                                               ; preds = %20
  br label %27

27:                                               ; preds = %26, %2
  %28 = load i32, i32* %11, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %27
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @lsapi_sapi_module, i32 0, i32 0), align 8
  br label %35

31:                                               ; preds = %27
  %32 = load i32, i32* %4, align 4
  %33 = load i8**, i8*** %5, align 8
  %34 = call i32 @setArgv0(i32 %32, i8** %33)
  br label %35

35:                                               ; preds = %31, %30
  %36 = call i32 @sapi_startup(%struct.TYPE_6__* @lsapi_sapi_module)
  %37 = load i8**, i8*** %5, align 8
  %38 = getelementptr inbounds i8*, i8** %37, i64 0
  %39 = load i8*, i8** %38, align 8
  store i8* %39, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @lsapi_sapi_module, i32 0, i32 1), align 8
  %40 = call i32 @init_sapi_from_env(%struct.TYPE_6__* @lsapi_sapi_module)
  %41 = load i64, i64* @ignore_php_ini, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %35
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @lsapi_sapi_module, i32 0, i32 2), align 8
  br label %44

44:                                               ; preds = %43, %35
  %45 = load i8*, i8** %8, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %47, label %49

47:                                               ; preds = %44
  %48 = load i8*, i8** %8, align 8
  store i8* %48, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @lsapi_sapi_module, i32 0, i32 3), align 8
  br label %49

49:                                               ; preds = %47, %44
  %50 = load i32, i32* @sapi_lsapi_ini_defaults, align 4
  store i32 %50, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @lsapi_sapi_module, i32 0, i32 4), align 8
  %51 = call i64 @php_module_startup(%struct.TYPE_6__* @lsapi_sapi_module, i32* @litespeed_module_entry, i32 1)
  %52 = load i64, i64* @FAILURE, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %49
  %55 = load i64, i64* @FAILURE, align 8
  %56 = trunc i64 %55 to i32
  store i32 %56, i32* %3, align 4
  br label %165

57:                                               ; preds = %49
  %58 = load i32, i32* %11, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %57
  %61 = load i32, i32* %4, align 4
  %62 = load i8**, i8*** %5, align 8
  %63 = call i32 @cli_main(i32 %61, i8** %62)
  store i32 %63, i32* %3, align 4
  br label %165

64:                                               ; preds = %57
  %65 = load i8*, i8** %9, align 8
  %66 = icmp ne i8* %65, null
  br i1 %66, label %67, label %88

67:                                               ; preds = %64
  %68 = load i8*, i8** %9, align 8
  %69 = call i32 @LSAPI_CreateListenSock(i8* %68, i32 10)
  store i32 %69, i32* %7, align 4
  %70 = load i32, i32* %7, align 4
  %71 = icmp eq i32 %70, -1
  br i1 %71, label %72, label %79

72:                                               ; preds = %67
  %73 = load i32, i32* @stderr, align 4
  %74 = load i8*, i8** %9, align 8
  %75 = load i32, i32* @errno, align 4
  %76 = call i8* @strerror(i32 %75)
  %77 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %73, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i8* %74, i8* %76)
  %78 = call i32 @exit(i32 2) #3
  unreachable

79:                                               ; preds = %67
  %80 = load i32, i32* %7, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %79
  %83 = load i32, i32* %7, align 4
  %84 = call i32 @dup2(i32 %83, i32 0)
  %85 = load i32, i32* %7, align 4
  %86 = call i32 @close(i32 %85)
  br label %87

87:                                               ; preds = %82, %79
  br label %88

88:                                               ; preds = %87, %64
  %89 = call i32 (...) @LSAPI_Init()
  %90 = call i32 (...) @LSCRIU_Init()
  store i32 %90, i32* %16, align 4
  %91 = call i32 @LSAPI_Init_Env_Parameters(i32* null)
  store i32 1, i32* @lsapi_mode, align 4
  %92 = call i32 (...) @LSAPI_Get_Slow_Req_Msecs()
  store i32 %92, i32* %14, align 4
  %93 = load i8*, i8** %9, align 8
  %94 = icmp ne i8* %93, null
  br i1 %94, label %95, label %99

95:                                               ; preds = %88
  %96 = call i32 (...) @LSAPI_No_Check_ppid()
  %97 = load i8*, i8** %9, align 8
  %98 = call i32 @free(i8* %97)
  store i8* null, i8** %9, align 8
  br label %99

99:                                               ; preds = %95, %88
  %100 = load i32, i32* @lsapi_atexit, align 4
  %101 = call i32 @atexit(i32 %100)
  br label %102

102:                                              ; preds = %161, %99
  %103 = call i32 @LSAPI_Prefork_Accept_r(i32* @g_req)
  store i32 %103, i32* %17, align 4
  %104 = icmp sge i32 %103, 0
  br i1 %104, label %105, label %162

105:                                              ; preds = %102
  %106 = load i32, i32* %16, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %113

108:                                              ; preds = %105
  %109 = load i32, i32* %17, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %113, label %111

111:                                              ; preds = %108
  %112 = call i32 (...) @LSCRIU_inc_req_procssed()
  br label %113

113:                                              ; preds = %111, %108, %105
  %114 = load i32, i32* %14, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %113
  %117 = call i32 @gettimeofday(%struct.timeval* %12, i32* null)
  br label %118

118:                                              ; preds = %116, %113
  %119 = call i32 (...) @processReq()
  store i32 %119, i32* %6, align 4
  %120 = load i32, i32* %14, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %156

122:                                              ; preds = %118
  %123 = call i32 @gettimeofday(%struct.timeval* %13, i32* null)
  %124 = getelementptr inbounds %struct.timeval, %struct.timeval* %13, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = getelementptr inbounds %struct.timeval, %struct.timeval* %12, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = sub nsw i64 %125, %127
  %129 = mul nsw i64 %128, 1000
  %130 = getelementptr inbounds %struct.timeval, %struct.timeval* %13, i32 0, i32 1
  %131 = load i32, i32* %130, align 8
  %132 = getelementptr inbounds %struct.timeval, %struct.timeval* %12, i32 0, i32 1
  %133 = load i32, i32* %132, align 8
  %134 = sub nsw i32 %131, %133
  %135 = sdiv i32 %134, 1000
  %136 = sext i32 %135 to i64
  %137 = add nsw i64 %129, %136
  %138 = trunc i64 %137 to i32
  store i32 %138, i32* %10, align 4
  %139 = load i32, i32* %10, align 4
  %140 = load i32, i32* %14, align 4
  %141 = icmp sgt i32 %139, %140
  br i1 %141, label %142, label %155

142:                                              ; preds = %122
  %143 = getelementptr inbounds [40 x i8], [40 x i8]* %15, i64 0, i64 0
  %144 = getelementptr inbounds %struct.timeval, %struct.timeval* %13, i32 0, i32 0
  %145 = call i32 @localtime(i64* %144)
  %146 = call i32 @strftime(i8* %143, i32 30, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %145)
  %147 = load i32, i32* @stderr, align 4
  %148 = getelementptr inbounds [40 x i8], [40 x i8]* %15, i64 0, i64 0
  %149 = load i32, i32* %10, align 4
  %150 = call i8* (...) @LSAPI_GetRequestMethod()
  %151 = call i8* (...) @LSAPI_GetScriptName()
  %152 = call i8* (...) @LSAPI_GetQueryString()
  %153 = call i8* (...) @LSAPI_GetScriptFileName()
  %154 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %147, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.2, i64 0, i64 0), i8* %148, i32 %149, i8* %150, i8* %151, i8* %152, i8* %153)
  br label %155

155:                                              ; preds = %142, %122
  br label %156

156:                                              ; preds = %155, %118
  %157 = call i32 (...) @LSAPI_Finish()
  %158 = load i32, i32* %6, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %161

160:                                              ; preds = %156
  br label %162

161:                                              ; preds = %156
  br label %102

162:                                              ; preds = %160, %102
  %163 = call i32 (...) @php_module_shutdown()
  %164 = load i32, i32* %6, align 4
  store i32 %164, i32* %3, align 4
  br label %165

165:                                              ; preds = %162, %60, %54, %25
  %166 = load i32, i32* %3, align 4
  ret i32 %166
}

declare dso_local i32 @parse_opt(i32, i8**, i32*, i8**, i8**) #1

declare dso_local i32 @setArgv0(i32, i8**) #1

declare dso_local i32 @sapi_startup(%struct.TYPE_6__*) #1

declare dso_local i32 @init_sapi_from_env(%struct.TYPE_6__*) #1

declare dso_local i64 @php_module_startup(%struct.TYPE_6__*, i32*, i32) #1

declare dso_local i32 @cli_main(i32, i8**) #1

declare dso_local i32 @LSAPI_CreateListenSock(i8*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, ...) #1

declare dso_local i8* @strerror(i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @dup2(i32, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @LSAPI_Init(...) #1

declare dso_local i32 @LSCRIU_Init(...) #1

declare dso_local i32 @LSAPI_Init_Env_Parameters(i32*) #1

declare dso_local i32 @LSAPI_Get_Slow_Req_Msecs(...) #1

declare dso_local i32 @LSAPI_No_Check_ppid(...) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @atexit(i32) #1

declare dso_local i32 @LSAPI_Prefork_Accept_r(i32*) #1

declare dso_local i32 @LSCRIU_inc_req_procssed(...) #1

declare dso_local i32 @gettimeofday(%struct.timeval*, i32*) #1

declare dso_local i32 @processReq(...) #1

declare dso_local i32 @strftime(i8*, i32, i8*, i32) #1

declare dso_local i32 @localtime(i64*) #1

declare dso_local i8* @LSAPI_GetRequestMethod(...) #1

declare dso_local i8* @LSAPI_GetScriptName(...) #1

declare dso_local i8* @LSAPI_GetQueryString(...) #1

declare dso_local i8* @LSAPI_GetScriptFileName(...) #1

declare dso_local i32 @LSAPI_Finish(...) #1

declare dso_local i32 @php_module_shutdown(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
