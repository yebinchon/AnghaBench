; ModuleID = '/home/carl/AnghaBench/netdata/registry/extr_registry.c_registry_request_delete_json.c'
source_filename = "/home/carl/AnghaBench/netdata/registry/extr_registry.c_registry_request_delete_json.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.web_client = type { i32 }

@registry = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str = private unnamed_addr constant [7 x i8] c"delete\00", align 1
@REGISTRY_STATUS_FAILED = common dso_local global i32 0, align 4
@REGISTRY_STATUS_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @registry_request_delete_json(i32* %0, %struct.web_client* %1, i8* %2, i8* %3, i8* %4, i8* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.web_client*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  store i32* %0, i32** %9, align 8
  store %struct.web_client* %1, %struct.web_client** %10, align 8
  store i8* %2, i8** %11, align 8
  store i8* %3, i8** %12, align 8
  store i8* %4, i8** %13, align 8
  store i8* %5, i8** %14, align 8
  store i32 %6, i32* %15, align 4
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @registry, i32 0, i32 0), align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %7
  %20 = load i32*, i32** %9, align 8
  %21 = load %struct.web_client*, %struct.web_client** %10, align 8
  %22 = call i32 @registry_json_disabled(i32* %20, %struct.web_client* %21, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i32 %22, i32* %8, align 4
  br label %49

23:                                               ; preds = %7
  %24 = call i32 (...) @registry_lock()
  %25 = load i8*, i8** %11, align 8
  %26 = load i8*, i8** %12, align 8
  %27 = load i8*, i8** %13, align 8
  %28 = load i8*, i8** %14, align 8
  %29 = load i32, i32* %15, align 4
  %30 = call i32* @registry_request_delete(i8* %25, i8* %26, i8* %27, i8* %28, i32 %29)
  store i32* %30, i32** %16, align 8
  %31 = load i32*, i32** %16, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %41, label %33

33:                                               ; preds = %23
  %34 = load i32*, i32** %9, align 8
  %35 = load %struct.web_client*, %struct.web_client** %10, align 8
  %36 = load i32, i32* @REGISTRY_STATUS_FAILED, align 4
  %37 = call i32 @registry_json_header(i32* %34, %struct.web_client* %35, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %36)
  %38 = load %struct.web_client*, %struct.web_client** %10, align 8
  %39 = call i32 @registry_json_footer(%struct.web_client* %38)
  %40 = call i32 (...) @registry_unlock()
  store i32 412, i32* %8, align 4
  br label %49

41:                                               ; preds = %23
  %42 = load i32*, i32** %9, align 8
  %43 = load %struct.web_client*, %struct.web_client** %10, align 8
  %44 = load i32, i32* @REGISTRY_STATUS_OK, align 4
  %45 = call i32 @registry_json_header(i32* %42, %struct.web_client* %43, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %44)
  %46 = load %struct.web_client*, %struct.web_client** %10, align 8
  %47 = call i32 @registry_json_footer(%struct.web_client* %46)
  %48 = call i32 (...) @registry_unlock()
  store i32 200, i32* %8, align 4
  br label %49

49:                                               ; preds = %41, %33, %19
  %50 = load i32, i32* %8, align 4
  ret i32 %50
}

declare dso_local i32 @registry_json_disabled(i32*, %struct.web_client*, i8*) #1

declare dso_local i32 @registry_lock(...) #1

declare dso_local i32* @registry_request_delete(i8*, i8*, i8*, i8*, i32) #1

declare dso_local i32 @registry_json_header(i32*, %struct.web_client*, i8*, i32) #1

declare dso_local i32 @registry_json_footer(%struct.web_client*) #1

declare dso_local i32 @registry_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
