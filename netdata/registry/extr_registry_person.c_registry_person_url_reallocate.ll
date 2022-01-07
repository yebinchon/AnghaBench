; ModuleID = '/home/carl/AnghaBench/netdata/registry/extr_registry_person.c_registry_person_url_reallocate.c'
source_filename = "/home/carl/AnghaBench/netdata/registry/extr_registry_person.c_registry_person_url_reallocate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32 }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_17__ = type { i8*, i32, i32, i32, i32, i32 }

@D_REGISTRY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [71 x i8] c"registry_person_url_reallocate('%s', '%s', '%s'): allocating %zu bytes\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_17__* @registry_person_url_reallocate(%struct.TYPE_18__* %0, %struct.TYPE_19__* %1, %struct.TYPE_16__* %2, i8* %3, i64 %4, i32 %5, %struct.TYPE_17__* %6) #0 {
  %8 = alloca %struct.TYPE_18__*, align 8
  %9 = alloca %struct.TYPE_19__*, align 8
  %10 = alloca %struct.TYPE_16__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_17__*, align 8
  %15 = alloca %struct.TYPE_17__, align 8
  %16 = alloca %struct.TYPE_17__*, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %8, align 8
  store %struct.TYPE_19__* %1, %struct.TYPE_19__** %9, align 8
  store %struct.TYPE_16__* %2, %struct.TYPE_16__** %10, align 8
  store i8* %3, i8** %11, align 8
  store i64 %4, i64* %12, align 8
  store i32 %5, i32* %13, align 4
  store %struct.TYPE_17__* %6, %struct.TYPE_17__** %14, align 8
  %17 = load i32, i32* @D_REGISTRY, align 4
  %18 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %22 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %25 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i64, i64* %12, align 8
  %28 = add i64 32, %27
  %29 = trunc i64 %28 to i32
  %30 = call i32 @debug(i32 %17, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str, i64 0, i64 0), i32 %20, i32 %23, i32 %26, i32 %29)
  %31 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %15, i32 0, i32 0
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8** %31, align 8
  %32 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %15, i32 0, i32 1
  %33 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %34 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  store i32 %35, i32* %32, align 8
  %36 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %15, i32 0, i32 2
  %37 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %38 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %36, align 4
  %40 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %15, i32 0, i32 3
  %41 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %42 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 8
  store i32 %43, i32* %40, align 8
  %44 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %15, i32 0, i32 4
  %45 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %46 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %44, align 4
  %48 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %15, i32 0, i32 5
  %49 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %50 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %49, i32 0, i32 5
  %51 = load i32, i32* %50, align 8
  store i32 %51, i32* %48, align 8
  %52 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %53 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %54 = call i32 @registry_person_url_free(%struct.TYPE_18__* %52, %struct.TYPE_17__* %53)
  store %struct.TYPE_17__* %15, %struct.TYPE_17__** %14, align 8
  %55 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %56 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %57 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %58 = load i8*, i8** %11, align 8
  %59 = load i64, i64* %12, align 8
  %60 = load i32, i32* %13, align 4
  %61 = call %struct.TYPE_17__* @registry_person_url_allocate(%struct.TYPE_18__* %55, %struct.TYPE_19__* %56, %struct.TYPE_16__* %57, i8* %58, i64 %59, i32 %60)
  store %struct.TYPE_17__* %61, %struct.TYPE_17__** %16, align 8
  %62 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %63 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %62, i32 0, i32 4
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %66 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %65, i32 0, i32 4
  store i32 %64, i32* %66, align 4
  %67 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %68 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %71 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %70, i32 0, i32 3
  store i32 %69, i32* %71, align 8
  %72 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %73 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %76 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %75, i32 0, i32 2
  store i32 %74, i32* %76, align 4
  %77 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %78 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %81 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %80, i32 0, i32 1
  store i32 %79, i32* %81, align 8
  %82 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  ret %struct.TYPE_17__* %82
}

declare dso_local i32 @debug(i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @registry_person_url_free(%struct.TYPE_18__*, %struct.TYPE_17__*) #1

declare dso_local %struct.TYPE_17__* @registry_person_url_allocate(%struct.TYPE_18__*, %struct.TYPE_19__*, %struct.TYPE_16__*, i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
