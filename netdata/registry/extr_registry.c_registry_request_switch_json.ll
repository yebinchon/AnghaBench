; ModuleID = '/home/carl/AnghaBench/netdata/registry/extr_registry.c_registry_request_switch_json.c'
source_filename = "/home/carl/AnghaBench/netdata/registry/extr_registry.c_registry_request_switch_json.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.web_client = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.registry_person_url_callback_verify_machine_exists_data = type { i64, i32, i32* }

@registry = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@.str = private unnamed_addr constant [7 x i8] c"switch\00", align 1
@REGISTRY_STATUS_FAILED = common dso_local global i32 0, align 4
@registry_person_url_callback_verify_machine_exists = common dso_local global i32 0, align 4
@REGISTRY_STATUS_OK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c",\0A\09\22person_guid\22: \22%s\22\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @registry_request_switch_json(i32* %0, %struct.web_client* %1, i8* %2, i8* %3, i8* %4, i8* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.web_client*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_7__*, align 8
  %17 = alloca %struct.TYPE_7__*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca %struct.registry_person_url_callback_verify_machine_exists_data, align 8
  store i32* %0, i32** %9, align 8
  store %struct.web_client* %1, %struct.web_client** %10, align 8
  store i8* %2, i8** %11, align 8
  store i8* %3, i8** %12, align 8
  store i8* %4, i8** %13, align 8
  store i8* %5, i8** %14, align 8
  store i32 %6, i32* %15, align 4
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @registry, i32 0, i32 0), align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %7
  %23 = load i32*, i32** %9, align 8
  %24 = load %struct.web_client*, %struct.web_client** %10, align 8
  %25 = call i32 @registry_json_disabled(i32* %23, %struct.web_client* %24, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i32 %25, i32* %8, align 4
  br label %125

26:                                               ; preds = %7
  %27 = load i8*, i8** %13, align 8
  %28 = load i32, i32* %15, align 4
  %29 = call i32 (...) @registry_lock()
  %30 = load i8*, i8** %11, align 8
  %31 = call %struct.TYPE_7__* @registry_person_find(i8* %30)
  store %struct.TYPE_7__* %31, %struct.TYPE_7__** %16, align 8
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %33 = icmp ne %struct.TYPE_7__* %32, null
  br i1 %33, label %42, label %34

34:                                               ; preds = %26
  %35 = load i32*, i32** %9, align 8
  %36 = load %struct.web_client*, %struct.web_client** %10, align 8
  %37 = load i32, i32* @REGISTRY_STATUS_FAILED, align 4
  %38 = call i32 @registry_json_header(i32* %35, %struct.web_client* %36, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %37)
  %39 = load %struct.web_client*, %struct.web_client** %10, align 8
  %40 = call i32 @registry_json_footer(%struct.web_client* %39)
  %41 = call i32 (...) @registry_unlock()
  store i32 430, i32* %8, align 4
  br label %125

42:                                               ; preds = %26
  %43 = load i8*, i8** %14, align 8
  %44 = call %struct.TYPE_7__* @registry_person_find(i8* %43)
  store %struct.TYPE_7__* %44, %struct.TYPE_7__** %17, align 8
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %46 = icmp ne %struct.TYPE_7__* %45, null
  br i1 %46, label %55, label %47

47:                                               ; preds = %42
  %48 = load i32*, i32** %9, align 8
  %49 = load %struct.web_client*, %struct.web_client** %10, align 8
  %50 = load i32, i32* @REGISTRY_STATUS_FAILED, align 4
  %51 = call i32 @registry_json_header(i32* %48, %struct.web_client* %49, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %50)
  %52 = load %struct.web_client*, %struct.web_client** %10, align 8
  %53 = call i32 @registry_json_footer(%struct.web_client* %52)
  %54 = call i32 (...) @registry_unlock()
  store i32 431, i32* %8, align 4
  br label %125

55:                                               ; preds = %42
  %56 = load i8*, i8** %12, align 8
  %57 = call i32* @registry_machine_find(i8* %56)
  store i32* %57, i32** %18, align 8
  %58 = load i32*, i32** %18, align 8
  %59 = icmp ne i32* %58, null
  br i1 %59, label %68, label %60

60:                                               ; preds = %55
  %61 = load i32*, i32** %9, align 8
  %62 = load %struct.web_client*, %struct.web_client** %10, align 8
  %63 = load i32, i32* @REGISTRY_STATUS_FAILED, align 4
  %64 = call i32 @registry_json_header(i32* %61, %struct.web_client* %62, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %63)
  %65 = load %struct.web_client*, %struct.web_client** %10, align 8
  %66 = call i32 @registry_json_footer(%struct.web_client* %65)
  %67 = call i32 (...) @registry_unlock()
  store i32 432, i32* %8, align 4
  br label %125

68:                                               ; preds = %55
  %69 = getelementptr inbounds %struct.registry_person_url_callback_verify_machine_exists_data, %struct.registry_person_url_callback_verify_machine_exists_data* %19, i32 0, i32 0
  %70 = load i32*, i32** %18, align 8
  %71 = ptrtoint i32* %70 to i64
  store i64 %71, i64* %69, align 8
  %72 = getelementptr inbounds %struct.registry_person_url_callback_verify_machine_exists_data, %struct.registry_person_url_callback_verify_machine_exists_data* %19, i32 0, i32 1
  store i32 0, i32* %72, align 8
  %73 = getelementptr inbounds %struct.registry_person_url_callback_verify_machine_exists_data, %struct.registry_person_url_callback_verify_machine_exists_data* %19, i32 0, i32 2
  store i32* null, i32** %73, align 8
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 1
  %76 = load i32, i32* @registry_person_url_callback_verify_machine_exists, align 4
  %77 = call i32 @avl_traverse(i32* %75, i32 %76, %struct.registry_person_url_callback_verify_machine_exists_data* %19)
  %78 = getelementptr inbounds %struct.registry_person_url_callback_verify_machine_exists_data, %struct.registry_person_url_callback_verify_machine_exists_data* %19, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %89, label %81

81:                                               ; preds = %68
  %82 = load i32*, i32** %9, align 8
  %83 = load %struct.web_client*, %struct.web_client** %10, align 8
  %84 = load i32, i32* @REGISTRY_STATUS_FAILED, align 4
  %85 = call i32 @registry_json_header(i32* %82, %struct.web_client* %83, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %84)
  %86 = load %struct.web_client*, %struct.web_client** %10, align 8
  %87 = call i32 @registry_json_footer(%struct.web_client* %86)
  %88 = call i32 (...) @registry_unlock()
  store i32 433, i32* %8, align 4
  br label %125

89:                                               ; preds = %68
  %90 = getelementptr inbounds %struct.registry_person_url_callback_verify_machine_exists_data, %struct.registry_person_url_callback_verify_machine_exists_data* %19, i32 0, i32 0
  store i64 0, i64* %90, align 8
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 1
  %93 = load i32, i32* @registry_person_url_callback_verify_machine_exists, align 4
  %94 = call i32 @avl_traverse(i32* %92, i32 %93, %struct.registry_person_url_callback_verify_machine_exists_data* %19)
  %95 = getelementptr inbounds %struct.registry_person_url_callback_verify_machine_exists_data, %struct.registry_person_url_callback_verify_machine_exists_data* %19, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %106, label %98

98:                                               ; preds = %89
  %99 = load i32*, i32** %9, align 8
  %100 = load %struct.web_client*, %struct.web_client** %10, align 8
  %101 = load i32, i32* @REGISTRY_STATUS_FAILED, align 4
  %102 = call i32 @registry_json_header(i32* %99, %struct.web_client* %100, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %101)
  %103 = load %struct.web_client*, %struct.web_client** %10, align 8
  %104 = call i32 @registry_json_footer(%struct.web_client* %103)
  %105 = call i32 (...) @registry_unlock()
  store i32 434, i32* %8, align 4
  br label %125

106:                                              ; preds = %89
  %107 = load %struct.web_client*, %struct.web_client** %10, align 8
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %109 = call i32 @registry_set_person_cookie(%struct.web_client* %107, %struct.TYPE_7__* %108)
  %110 = load i32*, i32** %9, align 8
  %111 = load %struct.web_client*, %struct.web_client** %10, align 8
  %112 = load i32, i32* @REGISTRY_STATUS_OK, align 4
  %113 = call i32 @registry_json_header(i32* %110, %struct.web_client* %111, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %112)
  %114 = load %struct.web_client*, %struct.web_client** %10, align 8
  %115 = getelementptr inbounds %struct.web_client, %struct.web_client* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @buffer_sprintf(i32 %117, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %120)
  %122 = load %struct.web_client*, %struct.web_client** %10, align 8
  %123 = call i32 @registry_json_footer(%struct.web_client* %122)
  %124 = call i32 (...) @registry_unlock()
  store i32 200, i32* %8, align 4
  br label %125

125:                                              ; preds = %106, %98, %81, %60, %47, %34, %22
  %126 = load i32, i32* %8, align 4
  ret i32 %126
}

declare dso_local i32 @registry_json_disabled(i32*, %struct.web_client*, i8*) #1

declare dso_local i32 @registry_lock(...) #1

declare dso_local %struct.TYPE_7__* @registry_person_find(i8*) #1

declare dso_local i32 @registry_json_header(i32*, %struct.web_client*, i8*, i32) #1

declare dso_local i32 @registry_json_footer(%struct.web_client*) #1

declare dso_local i32 @registry_unlock(...) #1

declare dso_local i32* @registry_machine_find(i8*) #1

declare dso_local i32 @avl_traverse(i32*, i32, %struct.registry_person_url_callback_verify_machine_exists_data*) #1

declare dso_local i32 @registry_set_person_cookie(%struct.web_client*, %struct.TYPE_7__*) #1

declare dso_local i32 @buffer_sprintf(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
