; ModuleID = '/home/carl/AnghaBench/php-src/sapi/cli/extr_php_cli_server.c_php_cli_server_begin_send_static.c'
source_filename = "/home/carl/AnghaBench/php-src/sapi/cli/extr_php_cli_server.c_php_cli_server_begin_send_static.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { i32 }
%struct.TYPE_24__ = type { i32, i32, i32, %struct.TYPE_20__, %struct.TYPE_22__ }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_22__ = type { i8*, i32, %struct.TYPE_21__, i32, i32, i32 }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_23__ = type { i32, i32 }

@O_RDONLY = common dso_local global i32 0, align 4
@FAILURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"Content-Type: \00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"text/\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"; charset=UTF-8\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"Content-Length: \00", align 1
@POLLOUT = common dso_local global i32 0, align 4
@SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_25__*, %struct.TYPE_24__*)* @php_cli_server_begin_send_static to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @php_cli_server_begin_send_static(%struct.TYPE_25__* %0, %struct.TYPE_24__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_25__*, align 8
  %5 = alloca %struct.TYPE_24__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_23__, align 4
  %10 = alloca i8*, align 8
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %4, align 8
  store %struct.TYPE_24__* %1, %struct.TYPE_24__** %5, align 8
  store i32 200, i32* %7, align 4
  %11 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %11, i32 0, i32 4
  %13 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %12, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %31

16:                                               ; preds = %2
  %17 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %17, i32 0, i32 4
  %19 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  %21 = call i32 @strlen(i8* %20)
  %22 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %22, i32 0, i32 4
  %24 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %21, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %16
  %28 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %29 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %30 = call i32 @php_cli_server_send_error_page(%struct.TYPE_25__* %28, %struct.TYPE_24__* %29, i32 400)
  store i32 %30, i32* %3, align 4
  br label %144

31:                                               ; preds = %16, %2
  %32 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %32, i32 0, i32 4
  %34 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %37, label %44

37:                                               ; preds = %31
  %38 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %38, i32 0, i32 4
  %40 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  %42 = load i32, i32* @O_RDONLY, align 4
  %43 = call i32 @open(i8* %41, i32 %42)
  br label %45

44:                                               ; preds = %31
  br label %45

45:                                               ; preds = %44, %37
  %46 = phi i32 [ %43, %37 ], [ -1, %44 ]
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %6, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %45
  %50 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %51 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %52 = call i32 @php_cli_server_send_error_page(%struct.TYPE_25__* %50, %struct.TYPE_24__* %51, i32 404)
  store i32 %52, i32* %3, align 4
  br label %144

53:                                               ; preds = %45
  %54 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %54, i32 0, i32 3
  %56 = call i32 @php_cli_server_content_sender_ctor(%struct.TYPE_20__* %55)
  %57 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %57, i32 0, i32 0
  store i32 1, i32* %58, align 8
  %59 = load i32, i32* %6, align 4
  %60 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 4
  %62 = bitcast %struct.TYPE_23__* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %62, i8 0, i64 8, i1 false)
  %63 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %64 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %64, i32 0, i32 4
  %66 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %65, i32 0, i32 5
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %68, i32 0, i32 4
  %70 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %69, i32 0, i32 4
  %71 = load i32, i32* %70, align 4
  %72 = call i8* @get_mime_type(%struct.TYPE_25__* %63, i32 %67, i32 %71)
  store i8* %72, i8** %10, align 8
  %73 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %73, i32 0, i32 4
  %75 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* %7, align 4
  %78 = call i32 @append_http_status_line(%struct.TYPE_23__* %9, i32 %76, i32 %77, i32 1)
  %79 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %9, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %86, label %82

82:                                               ; preds = %53
  %83 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %84 = call i32 @php_cli_server_log_response(%struct.TYPE_24__* %83, i32 500, i32* null)
  %85 = load i32, i32* @FAILURE, align 4
  store i32 %85, i32* %3, align 4
  br label %144

86:                                               ; preds = %53
  %87 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %88 = call i32 @append_essential_headers(%struct.TYPE_23__* %9, %struct.TYPE_24__* %87, i32 1)
  %89 = load i8*, i8** %10, align 8
  %90 = icmp ne i8* %89, null
  br i1 %90, label %91, label %102

91:                                               ; preds = %86
  %92 = call i32 @smart_str_appendl_ex(%struct.TYPE_23__* %9, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 14, i32 1)
  %93 = load i8*, i8** %10, align 8
  %94 = call i32 @smart_str_appends_ex(%struct.TYPE_23__* %9, i8* %93, i32 1)
  %95 = load i8*, i8** %10, align 8
  %96 = call i64 @strncmp(i8* %95, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 5)
  %97 = icmp eq i64 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %91
  %99 = call i32 @smart_str_appends_ex(%struct.TYPE_23__* %9, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 1)
  br label %100

100:                                              ; preds = %98, %91
  %101 = call i32 @smart_str_appendl_ex(%struct.TYPE_23__* %9, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 2, i32 1)
  br label %102

102:                                              ; preds = %100, %86
  %103 = call i32 @smart_str_appends_ex(%struct.TYPE_23__* %9, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i32 1)
  %104 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %104, i32 0, i32 4
  %106 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %105, i32 0, i32 2
  %107 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @smart_str_append_unsigned_ex(%struct.TYPE_23__* %9, i32 %108, i32 1)
  %110 = call i32 @smart_str_appendl_ex(%struct.TYPE_23__* %9, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 2, i32 1)
  %111 = call i32 @smart_str_appendl_ex(%struct.TYPE_23__* %9, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 2, i32 1)
  %112 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %9, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %9, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @ZSTR_VAL(i32 %115)
  %117 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %9, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @ZSTR_LEN(i32 %118)
  %120 = call i32* @php_cli_server_chunk_heap_new(i32 %113, i32 %116, i32 %119)
  store i32* %120, i32** %8, align 8
  %121 = load i32*, i32** %8, align 8
  %122 = icmp ne i32* %121, null
  br i1 %122, label %128, label %123

123:                                              ; preds = %102
  %124 = call i32 @smart_str_free_ex(%struct.TYPE_23__* %9, i32 1)
  %125 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %126 = call i32 @php_cli_server_log_response(%struct.TYPE_24__* %125, i32 500, i32* null)
  %127 = load i32, i32* @FAILURE, align 4
  store i32 %127, i32* %3, align 4
  br label %144

128:                                              ; preds = %102
  %129 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %130 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %129, i32 0, i32 3
  %131 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %130, i32 0, i32 0
  %132 = load i32*, i32** %8, align 8
  %133 = call i32 @php_cli_server_buffer_append(i32* %131, i32* %132)
  %134 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %135 = call i32 @php_cli_server_log_response(%struct.TYPE_24__* %134, i32 200, i32* null)
  %136 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %137 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %136, i32 0, i32 0
  %138 = load i32, i32* @POLLOUT, align 4
  %139 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %140 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 8
  %142 = call i32 @php_cli_server_poller_add(i32* %137, i32 %138, i32 %141)
  %143 = load i32, i32* @SUCCESS, align 4
  store i32 %143, i32* %3, align 4
  br label %144

144:                                              ; preds = %128, %123, %82, %49, %27
  %145 = load i32, i32* %3, align 4
  ret i32 %145
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @php_cli_server_send_error_page(%struct.TYPE_25__*, %struct.TYPE_24__*, i32) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @php_cli_server_content_sender_ctor(%struct.TYPE_20__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i8* @get_mime_type(%struct.TYPE_25__*, i32, i32) #1

declare dso_local i32 @append_http_status_line(%struct.TYPE_23__*, i32, i32, i32) #1

declare dso_local i32 @php_cli_server_log_response(%struct.TYPE_24__*, i32, i32*) #1

declare dso_local i32 @append_essential_headers(%struct.TYPE_23__*, %struct.TYPE_24__*, i32) #1

declare dso_local i32 @smart_str_appendl_ex(%struct.TYPE_23__*, i8*, i32, i32) #1

declare dso_local i32 @smart_str_appends_ex(%struct.TYPE_23__*, i8*, i32) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @smart_str_append_unsigned_ex(%struct.TYPE_23__*, i32, i32) #1

declare dso_local i32* @php_cli_server_chunk_heap_new(i32, i32, i32) #1

declare dso_local i32 @ZSTR_VAL(i32) #1

declare dso_local i32 @ZSTR_LEN(i32) #1

declare dso_local i32 @smart_str_free_ex(%struct.TYPE_23__*, i32) #1

declare dso_local i32 @php_cli_server_buffer_append(i32*, i32*) #1

declare dso_local i32 @php_cli_server_poller_add(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
