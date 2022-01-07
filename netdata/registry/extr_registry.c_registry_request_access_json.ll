; ModuleID = '/home/carl/AnghaBench/netdata/registry/extr_registry.c_registry_request_access_json.c'
source_filename = "/home/carl/AnghaBench/netdata/registry/extr_registry.c_registry_request_access_json.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i32, i32 }
%struct.web_client = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.registry_json_walk_person_urls_callback = type { i32, %struct.web_client*, i32*, %struct.TYPE_10__* }

@registry = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@.str = private unnamed_addr constant [7 x i8] c"access\00", align 1
@REGISTRY_VERIFY_COOKIES_GUID = common dso_local global i32 0, align 4
@CT_APPLICATION_JSON = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"{ \22status\22: \22redirect\22, \22registry\22: \22%s\22 }\00", align 1
@REGISTRY_STATUS_FAILED = common dso_local global i32 0, align 4
@REGISTRY_STATUS_OK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c",\0A\09\22person_guid\22: \22%s\22,\0A\09\22urls\22: [\00", align 1
@registry_json_person_url_callback = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"\0A\09]\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @registry_request_access_json(i32* %0, %struct.web_client* %1, i8* %2, i8* %3, i8* %4, i8* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.web_client*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_10__*, align 8
  %17 = alloca %struct.registry_json_walk_person_urls_callback, align 8
  store i32* %0, i32** %9, align 8
  store %struct.web_client* %1, %struct.web_client** %10, align 8
  store i8* %2, i8** %11, align 8
  store i8* %3, i8** %12, align 8
  store i8* %4, i8** %13, align 8
  store i8* %5, i8** %14, align 8
  store i32 %6, i32* %15, align 4
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @registry, i32 0, i32 2), align 4
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  %22 = call i64 @unlikely(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %7
  %25 = load i32*, i32** %9, align 8
  %26 = load %struct.web_client*, %struct.web_client** %10, align 8
  %27 = call i32 @registry_json_disabled(i32* %25, %struct.web_client* %26, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i32 %27, i32* %8, align 4
  br label %131

28:                                               ; preds = %7
  %29 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @registry, i32 0, i32 0), align 8
  %30 = icmp sgt i64 %29, 0
  br i1 %30, label %31, label %57

31:                                               ; preds = %28
  %32 = load i8*, i8** %11, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 0
  %34 = load i8, i8* %33, align 1
  %35 = icmp ne i8 %34, 0
  br i1 %35, label %57, label %36

36:                                               ; preds = %31
  %37 = load %struct.web_client*, %struct.web_client** %10, align 8
  %38 = getelementptr inbounds %struct.web_client, %struct.web_client* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %39, align 8
  %41 = call i32 @buffer_flush(%struct.TYPE_12__* %40)
  %42 = load %struct.web_client*, %struct.web_client** %10, align 8
  %43 = load i32, i32* @REGISTRY_VERIFY_COOKIES_GUID, align 4
  %44 = call i32 @registry_set_cookie(%struct.web_client* %42, i32 %43)
  %45 = load i32, i32* @CT_APPLICATION_JSON, align 4
  %46 = load %struct.web_client*, %struct.web_client** %10, align 8
  %47 = getelementptr inbounds %struct.web_client, %struct.web_client* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 0
  store i32 %45, i32* %50, align 4
  %51 = load %struct.web_client*, %struct.web_client** %10, align 8
  %52 = getelementptr inbounds %struct.web_client, %struct.web_client* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %53, align 8
  %55 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @registry, i32 0, i32 1), align 8
  %56 = call i32 @buffer_sprintf(%struct.TYPE_12__* %54, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %55)
  store i32 200, i32* %8, align 4
  br label %131

57:                                               ; preds = %31, %28
  %58 = load i8*, i8** %11, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 0
  %60 = load i8, i8* %59, align 1
  %61 = sext i8 %60 to i32
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %57
  %64 = load i8*, i8** %11, align 8
  %65 = load i32, i32* @REGISTRY_VERIFY_COOKIES_GUID, align 4
  %66 = call i32 @strcmp(i8* %64, i32 %65)
  %67 = icmp ne i32 %66, 0
  %68 = xor i1 %67, true
  br label %69

69:                                               ; preds = %63, %57
  %70 = phi i1 [ false, %57 ], [ %68, %63 ]
  %71 = zext i1 %70 to i32
  %72 = call i64 @unlikely(i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %69
  %75 = load i8*, i8** %11, align 8
  %76 = getelementptr inbounds i8, i8* %75, i64 0
  store i8 0, i8* %76, align 1
  br label %77

77:                                               ; preds = %74, %69
  %78 = call i32 (...) @registry_lock()
  %79 = load i8*, i8** %11, align 8
  %80 = load i8*, i8** %12, align 8
  %81 = load i8*, i8** %13, align 8
  %82 = load i8*, i8** %14, align 8
  %83 = load i32, i32* %15, align 4
  %84 = call %struct.TYPE_10__* @registry_request_access(i8* %79, i8* %80, i8* %81, i8* %82, i32 %83)
  store %struct.TYPE_10__* %84, %struct.TYPE_10__** %16, align 8
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %86 = icmp ne %struct.TYPE_10__* %85, null
  br i1 %86, label %95, label %87

87:                                               ; preds = %77
  %88 = load i32*, i32** %9, align 8
  %89 = load %struct.web_client*, %struct.web_client** %10, align 8
  %90 = load i32, i32* @REGISTRY_STATUS_FAILED, align 4
  %91 = call i32 @registry_json_header(i32* %88, %struct.web_client* %89, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %90)
  %92 = load %struct.web_client*, %struct.web_client** %10, align 8
  %93 = call i32 @registry_json_footer(%struct.web_client* %92)
  %94 = call i32 (...) @registry_unlock()
  store i32 412, i32* %8, align 4
  br label %131

95:                                               ; preds = %77
  %96 = load %struct.web_client*, %struct.web_client** %10, align 8
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %98 = call i32 @registry_set_person_cookie(%struct.web_client* %96, %struct.TYPE_10__* %97)
  %99 = load i32*, i32** %9, align 8
  %100 = load %struct.web_client*, %struct.web_client** %10, align 8
  %101 = load i32, i32* @REGISTRY_STATUS_OK, align 4
  %102 = call i32 @registry_json_header(i32* %99, %struct.web_client* %100, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %101)
  %103 = load %struct.web_client*, %struct.web_client** %10, align 8
  %104 = getelementptr inbounds %struct.web_client, %struct.web_client* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i32 0, i32 0
  %106 = load %struct.TYPE_12__*, %struct.TYPE_12__** %105, align 8
  %107 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @buffer_sprintf(%struct.TYPE_12__* %106, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %109)
  %111 = getelementptr inbounds %struct.registry_json_walk_person_urls_callback, %struct.registry_json_walk_person_urls_callback* %17, i32 0, i32 0
  %112 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %113 = ptrtoint %struct.TYPE_10__* %112 to i32
  store i32 %113, i32* %111, align 8
  %114 = getelementptr inbounds %struct.registry_json_walk_person_urls_callback, %struct.registry_json_walk_person_urls_callback* %17, i32 0, i32 1
  store %struct.web_client* null, %struct.web_client** %114, align 8
  %115 = getelementptr inbounds %struct.registry_json_walk_person_urls_callback, %struct.registry_json_walk_person_urls_callback* %17, i32 0, i32 2
  %116 = load %struct.web_client*, %struct.web_client** %10, align 8
  %117 = bitcast %struct.web_client* %116 to i32*
  store i32* %117, i32** %115, align 8
  %118 = getelementptr inbounds %struct.registry_json_walk_person_urls_callback, %struct.registry_json_walk_person_urls_callback* %17, i32 0, i32 3
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %118, align 8
  %119 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %120 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %119, i32 0, i32 0
  %121 = load i32, i32* @registry_json_person_url_callback, align 4
  %122 = call i32 @avl_traverse(i32* %120, i32 %121, %struct.registry_json_walk_person_urls_callback* %17)
  %123 = load %struct.web_client*, %struct.web_client** %10, align 8
  %124 = getelementptr inbounds %struct.web_client, %struct.web_client* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %124, i32 0, i32 0
  %126 = load %struct.TYPE_12__*, %struct.TYPE_12__** %125, align 8
  %127 = call i32 @buffer_strcat(%struct.TYPE_12__* %126, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %128 = load %struct.web_client*, %struct.web_client** %10, align 8
  %129 = call i32 @registry_json_footer(%struct.web_client* %128)
  %130 = call i32 (...) @registry_unlock()
  store i32 200, i32* %8, align 4
  br label %131

131:                                              ; preds = %95, %87, %36, %24
  %132 = load i32, i32* %8, align 4
  ret i32 %132
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @registry_json_disabled(i32*, %struct.web_client*, i8*) #1

declare dso_local i32 @buffer_flush(%struct.TYPE_12__*) #1

declare dso_local i32 @registry_set_cookie(%struct.web_client*, i32) #1

declare dso_local i32 @buffer_sprintf(%struct.TYPE_12__*, i8*, i32) #1

declare dso_local i32 @strcmp(i8*, i32) #1

declare dso_local i32 @registry_lock(...) #1

declare dso_local %struct.TYPE_10__* @registry_request_access(i8*, i8*, i8*, i8*, i32) #1

declare dso_local i32 @registry_json_header(i32*, %struct.web_client*, i8*, i32) #1

declare dso_local i32 @registry_json_footer(%struct.web_client*) #1

declare dso_local i32 @registry_unlock(...) #1

declare dso_local i32 @registry_set_person_cookie(%struct.web_client*, %struct.TYPE_10__*) #1

declare dso_local i32 @avl_traverse(i32*, i32, %struct.registry_json_walk_person_urls_callback*) #1

declare dso_local i32 @buffer_strcat(%struct.TYPE_12__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
