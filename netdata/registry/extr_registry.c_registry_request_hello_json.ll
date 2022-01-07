; ModuleID = '/home/carl/AnghaBench/netdata/registry/extr_registry.c_registry_request_hello_json.c'
source_filename = "/home/carl/AnghaBench/netdata/registry/extr_registry.c_registry_request_hello_json.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.web_client = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"hello\00", align 1
@REGISTRY_STATUS_OK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [74 x i8] c",\0A\09\22registry\22: \22%s\22,\0A\09\22cloud_base_url\22: \22%s\22,\0A\09\22anonymous_statistics\22: %s\00", align 1
@registry = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@netdata_anonymous_statistics_enabled = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"false\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @registry_request_hello_json(i32* %0, %struct.web_client* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.web_client*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.web_client* %1, %struct.web_client** %4, align 8
  %5 = load i32*, i32** %3, align 8
  %6 = load %struct.web_client*, %struct.web_client** %4, align 8
  %7 = load i32, i32* @REGISTRY_STATUS_OK, align 4
  %8 = call i32 @registry_json_header(i32* %5, %struct.web_client* %6, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %7)
  %9 = load %struct.web_client*, %struct.web_client** %4, align 8
  %10 = getelementptr inbounds %struct.web_client, %struct.web_client* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @registry, i32 0, i32 1), align 4
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @registry, i32 0, i32 0), align 4
  %15 = load i64, i64* @netdata_anonymous_statistics_enabled, align 8
  %16 = icmp ne i64 %15, 0
  %17 = zext i1 %16 to i64
  %18 = select i1 %16, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0)
  %19 = call i32 @buffer_sprintf(i32 %12, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0), i32 %13, i32 %14, i8* %18)
  %20 = load %struct.web_client*, %struct.web_client** %4, align 8
  %21 = call i32 @registry_json_footer(%struct.web_client* %20)
  ret i32 200
}

declare dso_local i32 @registry_json_header(i32*, %struct.web_client*, i8*, i32) #1

declare dso_local i32 @buffer_sprintf(i32, i8*, i32, i32, i8*) #1

declare dso_local i32 @registry_json_footer(%struct.web_client*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
