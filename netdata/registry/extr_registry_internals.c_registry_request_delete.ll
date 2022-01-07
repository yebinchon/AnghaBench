; ModuleID = '/home/carl/AnghaBench/netdata/registry/extr_registry_internals.c_registry_request_delete.c'
source_filename = "/home/carl/AnghaBench/netdata/registry/extr_registry_internals.c_registry_request_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32 }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_16__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32 }

@.str = private unnamed_addr constant [97 x i8] c"Registry Delete Request: URL not found for person: '%s', machine '%s', url '%s', delete url '%s'\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_17__* @registry_request_delete(i8* %0, i8* %1, i8* %2, i8* %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_17__*, align 8
  %13 = alloca %struct.TYPE_18__*, align 8
  %14 = alloca %struct.TYPE_16__*, align 8
  %15 = alloca %struct.TYPE_16__*, align 8
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %16 = load i32, i32* %11, align 4
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %12, align 8
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %13, align 8
  %17 = load i8*, i8** %7, align 8
  %18 = load i8*, i8** %8, align 8
  %19 = load i8*, i8** %9, align 8
  %20 = call %struct.TYPE_16__* @registry_verify_request(i8* %17, i8* %18, i8* %19, %struct.TYPE_17__** %12, %struct.TYPE_18__** %13)
  store %struct.TYPE_16__* %20, %struct.TYPE_16__** %14, align 8
  %21 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %22 = icmp ne %struct.TYPE_16__* %21, null
  br i1 %22, label %23, label %29

23:                                               ; preds = %5
  %24 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %25 = icmp ne %struct.TYPE_17__* %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %23
  %27 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %28 = icmp ne %struct.TYPE_18__* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %26, %23, %5
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %6, align 8
  br label %68

30:                                               ; preds = %26
  %31 = load i8*, i8** %10, align 8
  %32 = call i8* @registry_fix_url(i8* %31, i32* null)
  store i8* %32, i8** %10, align 8
  %33 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %34 = load i8*, i8** %10, align 8
  %35 = call %struct.TYPE_16__* @registry_person_url_index_find(%struct.TYPE_17__* %33, i8* %34)
  store %struct.TYPE_16__* %35, %struct.TYPE_16__** %15, align 8
  %36 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %37 = icmp ne %struct.TYPE_16__* %36, null
  br i1 %37, label %52, label %38

38:                                               ; preds = %30
  %39 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %40 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %43 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %46 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_15__*, %struct.TYPE_15__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i8*, i8** %10, align 8
  %51 = call i32 @info(i8* getelementptr inbounds ([97 x i8], [97 x i8]* @.str, i64 0, i64 0), i32 %41, i32 %44, i32 %49, i8* %50)
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %6, align 8
  br label %68

52:                                               ; preds = %30
  %53 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %54 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %55 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %56 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_15__*, %struct.TYPE_15__** %56, align 8
  %58 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %59 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_15__*, %struct.TYPE_15__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @registry_log(i8 signext 68, %struct.TYPE_17__* %53, %struct.TYPE_18__* %54, %struct.TYPE_15__* %57, i32 %62)
  %64 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %65 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %66 = call i32 @registry_person_unlink_from_url(%struct.TYPE_17__* %64, %struct.TYPE_16__* %65)
  %67 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  store %struct.TYPE_17__* %67, %struct.TYPE_17__** %6, align 8
  br label %68

68:                                               ; preds = %52, %38, %29
  %69 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  ret %struct.TYPE_17__* %69
}

declare dso_local %struct.TYPE_16__* @registry_verify_request(i8*, i8*, i8*, %struct.TYPE_17__**, %struct.TYPE_18__**) #1

declare dso_local i8* @registry_fix_url(i8*, i32*) #1

declare dso_local %struct.TYPE_16__* @registry_person_url_index_find(%struct.TYPE_17__*, i8*) #1

declare dso_local i32 @info(i8*, i32, i32, i32, i8*) #1

declare dso_local i32 @registry_log(i8 signext, %struct.TYPE_17__*, %struct.TYPE_18__*, %struct.TYPE_15__*, i32) #1

declare dso_local i32 @registry_person_unlink_from_url(%struct.TYPE_17__*, %struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
