; ModuleID = '/home/carl/AnghaBench/lwan/src/samples/freegeoip/extr_freegeoip.c_main.c'
source_filename = "/home/carl/AnghaBench/lwan/src/samples/freegeoip/extr_freegeoip.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lwan = type { i32 }
%struct.template_mime = type { i32 }
%struct.lwan_url_map = type { i8*, i32, %struct.template_mime*, i32 }

@json_template_str = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"application/json; charset=UTF-8\00", align 1
@csv_template_str = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"application/csv; charset=UTF-8\00", align 1
@xml_template_str = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"text/plain; charset=UTF-8\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"./db/ipdb.sqlite\00", align 1
@db = common dso_local global i32 0, align 4
@SQLITE_OPEN_READONLY = common dso_local global i32 0, align 4
@SQLITE_OK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [28 x i8] c"Could not open database: %s\00", align 1
@create_ipinfo = common dso_local global i32 0, align 4
@destroy_ipinfo = common dso_local global i32 0, align 4
@cache = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [23 x i8] c"Rate-limiting disabled\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"/json/\00", align 1
@templated_output = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [6 x i8] c"/xml/\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"/csv/\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"./static\00", align 1
@QUERIES_PER_HOUR = common dso_local global i32 0, align 4
@create_query_limit = common dso_local global i32 0, align 4
@destroy_query_limit = common dso_local global i32 0, align 4
@query_limit = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.lwan, align 4
  %3 = alloca %struct.template_mime, align 4
  %4 = alloca %struct.template_mime, align 4
  %5 = alloca %struct.template_mime, align 4
  %6 = alloca i32, align 4
  %7 = alloca [5 x %struct.lwan_url_map], align 16
  store i32 0, i32* %1, align 4
  %8 = call i32 @lwan_init(%struct.lwan* %2)
  %9 = load i32, i32* @json_template_str, align 4
  %10 = call i32 @compile_template(i32 %9, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %11 = getelementptr inbounds %struct.template_mime, %struct.template_mime* %3, i32 0, i32 0
  store i32 %10, i32* %11, align 4
  %12 = load i32, i32* @csv_template_str, align 4
  %13 = call i32 @compile_template(i32 %12, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %14 = getelementptr inbounds %struct.template_mime, %struct.template_mime* %4, i32 0, i32 0
  store i32 %13, i32* %14, align 4
  %15 = load i32, i32* @xml_template_str, align 4
  %16 = call i32 @compile_template(i32 %15, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %17 = getelementptr inbounds %struct.template_mime, %struct.template_mime* %5, i32 0, i32 0
  store i32 %16, i32* %17, align 4
  %18 = load i32, i32* @SQLITE_OPEN_READONLY, align 4
  %19 = call i32 @sqlite3_open_v2(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32* @db, i32 %18, i32* null)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @SQLITE_OK, align 4
  %22 = icmp ne i32 %20, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %0
  %24 = load i32, i32* @db, align 4
  %25 = call i32 @sqlite3_errmsg(i32 %24)
  %26 = call i32 @lwan_status_critical(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i32 %25)
  br label %27

27:                                               ; preds = %23, %0
  %28 = load i32, i32* @create_ipinfo, align 4
  %29 = load i32, i32* @destroy_ipinfo, align 4
  %30 = call i32 @cache_create(i32 %28, i32 %29, i32* null, i32 10)
  store i32 %30, i32* @cache, align 4
  %31 = call i32 (i8*, ...) @lwan_status_info(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  %32 = getelementptr inbounds [5 x %struct.lwan_url_map], [5 x %struct.lwan_url_map]* %7, i64 0, i64 0
  %33 = getelementptr inbounds %struct.lwan_url_map, %struct.lwan_url_map* %32, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8** %33, align 16
  %34 = getelementptr inbounds %struct.lwan_url_map, %struct.lwan_url_map* %32, i32 0, i32 1
  store i32 0, i32* %34, align 8
  %35 = getelementptr inbounds %struct.lwan_url_map, %struct.lwan_url_map* %32, i32 0, i32 2
  store %struct.template_mime* %3, %struct.template_mime** %35, align 16
  %36 = getelementptr inbounds %struct.lwan_url_map, %struct.lwan_url_map* %32, i32 0, i32 3
  %37 = load i32, i32* @templated_output, align 4
  %38 = call i32 @LWAN_HANDLER_REF(i32 %37)
  store i32 %38, i32* %36, align 8
  %39 = getelementptr inbounds %struct.lwan_url_map, %struct.lwan_url_map* %32, i64 1
  %40 = getelementptr inbounds %struct.lwan_url_map, %struct.lwan_url_map* %39, i32 0, i32 0
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8** %40, align 16
  %41 = getelementptr inbounds %struct.lwan_url_map, %struct.lwan_url_map* %39, i32 0, i32 1
  store i32 0, i32* %41, align 8
  %42 = getelementptr inbounds %struct.lwan_url_map, %struct.lwan_url_map* %39, i32 0, i32 2
  store %struct.template_mime* %5, %struct.template_mime** %42, align 16
  %43 = getelementptr inbounds %struct.lwan_url_map, %struct.lwan_url_map* %39, i32 0, i32 3
  %44 = load i32, i32* @templated_output, align 4
  %45 = call i32 @LWAN_HANDLER_REF(i32 %44)
  store i32 %45, i32* %43, align 8
  %46 = getelementptr inbounds %struct.lwan_url_map, %struct.lwan_url_map* %39, i64 1
  %47 = getelementptr inbounds %struct.lwan_url_map, %struct.lwan_url_map* %46, i32 0, i32 0
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i8** %47, align 16
  %48 = getelementptr inbounds %struct.lwan_url_map, %struct.lwan_url_map* %46, i32 0, i32 1
  store i32 0, i32* %48, align 8
  %49 = getelementptr inbounds %struct.lwan_url_map, %struct.lwan_url_map* %46, i32 0, i32 2
  store %struct.template_mime* %4, %struct.template_mime** %49, align 16
  %50 = getelementptr inbounds %struct.lwan_url_map, %struct.lwan_url_map* %46, i32 0, i32 3
  %51 = load i32, i32* @templated_output, align 4
  %52 = call i32 @LWAN_HANDLER_REF(i32 %51)
  store i32 %52, i32* %50, align 8
  %53 = getelementptr inbounds %struct.lwan_url_map, %struct.lwan_url_map* %46, i64 1
  %54 = getelementptr inbounds %struct.lwan_url_map, %struct.lwan_url_map* %53, i32 0, i32 0
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0), i8** %54, align 16
  %55 = getelementptr inbounds %struct.lwan_url_map, %struct.lwan_url_map* %53, i32 0, i32 1
  %56 = call i32 @SERVE_FILES(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0))
  store i32 %56, i32* %55, align 8
  %57 = getelementptr inbounds %struct.lwan_url_map, %struct.lwan_url_map* %53, i32 0, i32 2
  store %struct.template_mime* null, %struct.template_mime** %57, align 16
  %58 = getelementptr inbounds %struct.lwan_url_map, %struct.lwan_url_map* %53, i32 0, i32 3
  store i32 0, i32* %58, align 8
  %59 = getelementptr inbounds %struct.lwan_url_map, %struct.lwan_url_map* %53, i64 1
  %60 = bitcast %struct.lwan_url_map* %59 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %60, i8 0, i64 32, i1 false)
  %61 = getelementptr inbounds [5 x %struct.lwan_url_map], [5 x %struct.lwan_url_map]* %7, i64 0, i64 0
  %62 = call i32 @lwan_set_url_map(%struct.lwan* %2, %struct.lwan_url_map* %61)
  %63 = call i32 @lwan_main_loop(%struct.lwan* %2)
  %64 = call i32 @lwan_shutdown(%struct.lwan* %2)
  %65 = getelementptr inbounds %struct.template_mime, %struct.template_mime* %3, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @lwan_tpl_free(i32 %66)
  %68 = getelementptr inbounds %struct.template_mime, %struct.template_mime* %5, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @lwan_tpl_free(i32 %69)
  %71 = getelementptr inbounds %struct.template_mime, %struct.template_mime* %4, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @lwan_tpl_free(i32 %72)
  %74 = load i32, i32* @cache, align 4
  %75 = call i32 @cache_destroy(i32 %74)
  %76 = load i32, i32* @db, align 4
  %77 = call i32 @sqlite3_close(i32 %76)
  ret i32 0
}

declare dso_local i32 @lwan_init(%struct.lwan*) #1

declare dso_local i32 @compile_template(i32, i8*) #1

declare dso_local i32 @sqlite3_open_v2(i8*, i32*, i32, i32*) #1

declare dso_local i32 @lwan_status_critical(i8*, i32) #1

declare dso_local i32 @sqlite3_errmsg(i32) #1

declare dso_local i32 @cache_create(i32, i32, i32*, i32) #1

declare dso_local i32 @lwan_status_info(i8*, ...) #1

declare dso_local i32 @LWAN_HANDLER_REF(i32) #1

declare dso_local i32 @SERVE_FILES(i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @lwan_set_url_map(%struct.lwan*, %struct.lwan_url_map*) #1

declare dso_local i32 @lwan_main_loop(%struct.lwan*) #1

declare dso_local i32 @lwan_shutdown(%struct.lwan*) #1

declare dso_local i32 @lwan_tpl_free(i32) #1

declare dso_local i32 @cache_destroy(i32) #1

declare dso_local i32 @sqlite3_close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
