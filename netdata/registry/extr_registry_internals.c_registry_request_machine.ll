; ModuleID = '/home/carl/AnghaBench/netdata/registry/extr_registry_internals.c_registry_request_machine.c'
source_filename = "/home/carl/AnghaBench/netdata/registry/extr_registry_internals.c_registry_request_machine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i8* }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }
%struct.machine_request_callback_data = type { i64, i32*, %struct.TYPE_13__* }

@GUID_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [112 x i8] c"Registry Machine URLs request: invalid machine GUID, person: '%s', machine '%s', url '%s', request machine '%s'\00", align 1
@.str.1 = private unnamed_addr constant [109 x i8] c"Registry Machine URLs request: machine not found, person: '%s', machine '%s', url '%s', request machine '%s'\00", align 1
@machine_request_callback = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_13__* @registry_request_machine(i8* %0, i8* %1, i8* %2, i8* %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_12__*, align 8
  %15 = alloca %struct.TYPE_13__*, align 8
  %16 = alloca %struct.TYPE_11__*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.machine_request_callback_data, align 8
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %19 = load i32, i32* %11, align 4
  %20 = load i32, i32* @GUID_LEN, align 4
  %21 = add nsw i32 %20, 1
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %12, align 8
  %24 = alloca i8, i64 %22, align 16
  store i64 %22, i64* %13, align 8
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %14, align 8
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %15, align 8
  %25 = load i8*, i8** %7, align 8
  %26 = load i8*, i8** %8, align 8
  %27 = load i8*, i8** %9, align 8
  %28 = call %struct.TYPE_11__* @registry_verify_request(i8* %25, i8* %26, i8* %27, %struct.TYPE_12__** %14, %struct.TYPE_13__** %15)
  store %struct.TYPE_11__* %28, %struct.TYPE_11__** %16, align 8
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %30 = icmp ne %struct.TYPE_11__* %29, null
  br i1 %30, label %31, label %37

31:                                               ; preds = %5
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %33 = icmp ne %struct.TYPE_12__* %32, null
  br i1 %33, label %34, label %37

34:                                               ; preds = %31
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %36 = icmp ne %struct.TYPE_13__* %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %34, %31, %5
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %6, align 8
  store i32 1, i32* %17, align 4
  br label %89

38:                                               ; preds = %34
  %39 = load i8*, i8** %10, align 8
  %40 = call i32 @regenerate_guid(i8* %39, i8* %24)
  %41 = icmp eq i32 %40, -1
  br i1 %41, label %42, label %56

42:                                               ; preds = %38
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i8*, i8** %10, align 8
  %55 = call i32 @info(i8* getelementptr inbounds ([112 x i8], [112 x i8]* @.str, i64 0, i64 0), i32 %45, i8* %48, i32 %53, i8* %54)
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %6, align 8
  store i32 1, i32* %17, align 4
  br label %89

56:                                               ; preds = %38
  store i8* %24, i8** %10, align 8
  %57 = load i8*, i8** %10, align 8
  %58 = call %struct.TYPE_13__* @registry_machine_find(i8* %57)
  store %struct.TYPE_13__* %58, %struct.TYPE_13__** %15, align 8
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %60 = icmp ne %struct.TYPE_13__* %59, null
  br i1 %60, label %73, label %61

61:                                               ; preds = %56
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load i8*, i8** %8, align 8
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i8*, i8** %10, align 8
  %72 = call i32 @info(i8* getelementptr inbounds ([109 x i8], [109 x i8]* @.str.1, i64 0, i64 0), i32 %64, i8* %65, i32 %70, i8* %71)
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %6, align 8
  store i32 1, i32* %17, align 4
  br label %89

73:                                               ; preds = %56
  %74 = getelementptr inbounds %struct.machine_request_callback_data, %struct.machine_request_callback_data* %18, i32 0, i32 0
  %75 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %76 = ptrtoint %struct.TYPE_13__* %75 to i64
  store i64 %76, i64* %74, align 8
  %77 = getelementptr inbounds %struct.machine_request_callback_data, %struct.machine_request_callback_data* %18, i32 0, i32 1
  store i32* null, i32** %77, align 8
  %78 = getelementptr inbounds %struct.machine_request_callback_data, %struct.machine_request_callback_data* %18, i32 0, i32 2
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %78, align 8
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 0, i32 0
  %81 = load i32, i32* @machine_request_callback, align 4
  %82 = call i32 @avl_traverse(i32* %80, i32 %81, %struct.machine_request_callback_data* %18)
  %83 = getelementptr inbounds %struct.machine_request_callback_data, %struct.machine_request_callback_data* %18, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %73
  %87 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  store %struct.TYPE_13__* %87, %struct.TYPE_13__** %6, align 8
  store i32 1, i32* %17, align 4
  br label %89

88:                                               ; preds = %73
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %6, align 8
  store i32 1, i32* %17, align 4
  br label %89

89:                                               ; preds = %88, %86, %61, %42, %37
  %90 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %90)
  %91 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  ret %struct.TYPE_13__* %91
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.TYPE_11__* @registry_verify_request(i8*, i8*, i8*, %struct.TYPE_12__**, %struct.TYPE_13__**) #2

declare dso_local i32 @regenerate_guid(i8*, i8*) #2

declare dso_local i32 @info(i8*, i32, i8*, i32, i8*) #2

declare dso_local %struct.TYPE_13__* @registry_machine_find(i8*) #2

declare dso_local i32 @avl_traverse(i32*, i32, %struct.machine_request_callback_data*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
