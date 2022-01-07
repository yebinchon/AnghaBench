; ModuleID = '/home/carl/AnghaBench/netdata/registry/extr_registry.c_registry_request_search_json.c'
source_filename = "/home/carl/AnghaBench/netdata/registry/extr_registry.c_registry_request_search_json.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.web_client = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.registry_json_walk_person_urls_callback = type { i32, %struct.web_client*, %struct.TYPE_6__*, i32* }

@registry = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@.str = private unnamed_addr constant [7 x i8] c"search\00", align 1
@REGISTRY_STATUS_FAILED = common dso_local global i32 0, align 4
@REGISTRY_STATUS_OK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c",\0A\09\22urls\22: [\00", align 1
@registry_json_machine_url_callback = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"\0A\09]\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @registry_request_search_json(i32* %0, %struct.web_client* %1, i8* %2, i8* %3, i8* %4, i8* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.web_client*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_6__*, align 8
  %17 = alloca %struct.registry_json_walk_person_urls_callback, align 8
  store i32* %0, i32** %9, align 8
  store %struct.web_client* %1, %struct.web_client** %10, align 8
  store i8* %2, i8** %11, align 8
  store i8* %3, i8** %12, align 8
  store i8* %4, i8** %13, align 8
  store i8* %5, i8** %14, align 8
  store i32 %6, i32* %15, align 4
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @registry, i32 0, i32 0), align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %7
  %21 = load i32*, i32** %9, align 8
  %22 = load %struct.web_client*, %struct.web_client** %10, align 8
  %23 = call i32 @registry_json_disabled(i32* %21, %struct.web_client* %22, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i32 %23, i32* %8, align 4
  br label %73

24:                                               ; preds = %7
  %25 = call i32 (...) @registry_lock()
  %26 = load i8*, i8** %11, align 8
  %27 = load i8*, i8** %12, align 8
  %28 = load i8*, i8** %13, align 8
  %29 = load i8*, i8** %14, align 8
  %30 = load i32, i32* %15, align 4
  %31 = call %struct.TYPE_6__* @registry_request_machine(i8* %26, i8* %27, i8* %28, i8* %29, i32 %30)
  store %struct.TYPE_6__* %31, %struct.TYPE_6__** %16, align 8
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %33 = icmp ne %struct.TYPE_6__* %32, null
  br i1 %33, label %42, label %34

34:                                               ; preds = %24
  %35 = load i32*, i32** %9, align 8
  %36 = load %struct.web_client*, %struct.web_client** %10, align 8
  %37 = load i32, i32* @REGISTRY_STATUS_FAILED, align 4
  %38 = call i32 @registry_json_header(i32* %35, %struct.web_client* %36, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %37)
  %39 = load %struct.web_client*, %struct.web_client** %10, align 8
  %40 = call i32 @registry_json_footer(%struct.web_client* %39)
  %41 = call i32 (...) @registry_unlock()
  store i32 404, i32* %8, align 4
  br label %73

42:                                               ; preds = %24
  %43 = load i32*, i32** %9, align 8
  %44 = load %struct.web_client*, %struct.web_client** %10, align 8
  %45 = load i32, i32* @REGISTRY_STATUS_OK, align 4
  %46 = call i32 @registry_json_header(i32* %43, %struct.web_client* %44, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %45)
  %47 = load %struct.web_client*, %struct.web_client** %10, align 8
  %48 = getelementptr inbounds %struct.web_client, %struct.web_client* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @buffer_strcat(i32 %50, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %52 = getelementptr inbounds %struct.registry_json_walk_person_urls_callback, %struct.registry_json_walk_person_urls_callback* %17, i32 0, i32 0
  store i32 0, i32* %52, align 8
  %53 = getelementptr inbounds %struct.registry_json_walk_person_urls_callback, %struct.registry_json_walk_person_urls_callback* %17, i32 0, i32 1
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %55 = bitcast %struct.TYPE_6__* %54 to %struct.web_client*
  store %struct.web_client* %55, %struct.web_client** %53, align 8
  %56 = getelementptr inbounds %struct.registry_json_walk_person_urls_callback, %struct.registry_json_walk_person_urls_callback* %17, i32 0, i32 2
  %57 = load %struct.web_client*, %struct.web_client** %10, align 8
  %58 = bitcast %struct.web_client* %57 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %58, %struct.TYPE_6__** %56, align 8
  %59 = getelementptr inbounds %struct.registry_json_walk_person_urls_callback, %struct.registry_json_walk_person_urls_callback* %17, i32 0, i32 3
  store i32* null, i32** %59, align 8
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @registry_json_machine_url_callback, align 4
  %64 = call i32 @dictionary_get_all(i32 %62, i32 %63, %struct.registry_json_walk_person_urls_callback* %17)
  %65 = load %struct.web_client*, %struct.web_client** %10, align 8
  %66 = getelementptr inbounds %struct.web_client, %struct.web_client* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @buffer_strcat(i32 %68, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %70 = load %struct.web_client*, %struct.web_client** %10, align 8
  %71 = call i32 @registry_json_footer(%struct.web_client* %70)
  %72 = call i32 (...) @registry_unlock()
  store i32 200, i32* %8, align 4
  br label %73

73:                                               ; preds = %42, %34, %20
  %74 = load i32, i32* %8, align 4
  ret i32 %74
}

declare dso_local i32 @registry_json_disabled(i32*, %struct.web_client*, i8*) #1

declare dso_local i32 @registry_lock(...) #1

declare dso_local %struct.TYPE_6__* @registry_request_machine(i8*, i8*, i8*, i8*, i32) #1

declare dso_local i32 @registry_json_header(i32*, %struct.web_client*, i8*, i32) #1

declare dso_local i32 @registry_json_footer(%struct.web_client*) #1

declare dso_local i32 @registry_unlock(...) #1

declare dso_local i32 @buffer_strcat(i32, i8*) #1

declare dso_local i32 @dictionary_get_all(i32, i32, %struct.registry_json_walk_person_urls_callback*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
