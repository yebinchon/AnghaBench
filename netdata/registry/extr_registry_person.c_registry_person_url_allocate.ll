; ModuleID = '/home/carl/AnghaBench/netdata/registry/extr_registry_person.c_registry_person_url_allocate.c'
source_filename = "/home/carl/AnghaBench/netdata/registry/extr_registry_person.c_registry_person_url_allocate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i64, i32 }
%struct.TYPE_18__ = type { i32, i32, %struct.TYPE_17__*, i64, i64, %struct.TYPE_20__*, i32 }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_20__ = type { i32, i32 }
%struct.TYPE_17__ = type { i32 }

@D_REGISTRY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [69 x i8] c"registry_person_url_allocate('%s', '%s', '%s'): allocating %zu bytes\00", align 1
@registry = common dso_local global %struct.TYPE_16__ zeroinitializer, align 8
@REGISTRY_URL_FLAGS_DEFAULT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [71 x i8] c"registry_person_url_allocate('%s', '%s', '%s'): indexing URL in person\00", align 1
@.str.2 = private unnamed_addr constant [83 x i8] c"Registry: Attempted to add duplicate person url '%s' with name '%s' to person '%s'\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_18__* @registry_person_url_allocate(%struct.TYPE_19__* %0, %struct.TYPE_20__* %1, %struct.TYPE_17__* %2, i8* %3, i64 %4, i64 %5) #0 {
  %7 = alloca %struct.TYPE_19__*, align 8
  %8 = alloca %struct.TYPE_20__*, align 8
  %9 = alloca %struct.TYPE_17__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_18__*, align 8
  %14 = alloca %struct.TYPE_18__*, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %7, align 8
  store %struct.TYPE_20__* %1, %struct.TYPE_20__** %8, align 8
  store %struct.TYPE_17__* %2, %struct.TYPE_17__** %9, align 8
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  store i64 %5, i64* %12, align 8
  %15 = load i32, i32* @D_REGISTRY, align 4
  %16 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %23 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i64, i64* %11, align 8
  %26 = add i64 48, %25
  %27 = call i32 (i32, i8*, i32, i32, i32, ...) @debug(i32 %15, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %21, i32 %24, i64 %26)
  %28 = load i64, i64* %11, align 8
  %29 = load i64, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @registry, i32 0, i32 0), align 8
  %30 = icmp ugt i64 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %6
  %32 = load i64, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @registry, i32 0, i32 0), align 8
  store i64 %32, i64* %11, align 8
  br label %33

33:                                               ; preds = %31, %6
  %34 = load i64, i64* %11, align 8
  %35 = add i64 48, %34
  %36 = trunc i64 %35 to i32
  %37 = call %struct.TYPE_18__* @mallocz(i32 %36)
  store %struct.TYPE_18__* %37, %struct.TYPE_18__** %13, align 8
  %38 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %39 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %38, i32 0, i32 6
  %40 = load i32, i32* %39, align 8
  %41 = load i8*, i8** %10, align 8
  %42 = load i64, i64* %11, align 8
  %43 = call i32 @strncpyz(i32 %40, i8* %41, i64 %42)
  %44 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %45 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %46 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %45, i32 0, i32 5
  store %struct.TYPE_20__* %44, %struct.TYPE_20__** %46, align 8
  %47 = load i64, i64* %12, align 8
  %48 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %49 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %48, i32 0, i32 3
  store i64 %47, i64* %49, align 8
  %50 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %51 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %50, i32 0, i32 4
  store i64 %47, i64* %51, align 8
  %52 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %53 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %52, i32 0, i32 0
  store i32 1, i32* %53, align 8
  %54 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %55 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %56 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %55, i32 0, i32 2
  store %struct.TYPE_17__* %54, %struct.TYPE_17__** %56, align 8
  %57 = load i32, i32* @REGISTRY_URL_FLAGS_DEFAULT, align 4
  %58 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %59 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %58, i32 0, i32 1
  store i32 %57, i32* %59, align 4
  %60 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %61, align 4
  %64 = load i64, i64* %11, align 8
  %65 = add i64 48, %64
  %66 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @registry, i32 0, i32 1), align 8
  %67 = sext i32 %66 to i64
  %68 = add i64 %67, %65
  %69 = trunc i64 %68 to i32
  store i32 %69, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @registry, i32 0, i32 1), align 8
  %70 = load i32, i32* @D_REGISTRY, align 4
  %71 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %78 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 (i32, i8*, i32, i32, i32, ...) @debug(i32 %70, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.1, i64 0, i64 0), i32 %73, i32 %76, i32 %79)
  %81 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %82 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %83 = call %struct.TYPE_18__* @registry_person_url_index_add(%struct.TYPE_19__* %81, %struct.TYPE_18__* %82)
  store %struct.TYPE_18__* %83, %struct.TYPE_18__** %14, align 8
  %84 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %85 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %86 = icmp ne %struct.TYPE_18__* %84, %85
  br i1 %86, label %87, label %99

87:                                               ; preds = %33
  %88 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %89 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i8*, i8** %10, align 8
  %92 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %93 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @error(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.2, i64 0, i64 0), i32 %90, i8* %91, i32 %94)
  %96 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %97 = call i32 @freez(%struct.TYPE_18__* %96)
  %98 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  store %struct.TYPE_18__* %98, %struct.TYPE_18__** %13, align 8
  br label %102

99:                                               ; preds = %33
  %100 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %101 = call i32 @registry_url_link(%struct.TYPE_17__* %100)
  br label %102

102:                                              ; preds = %99, %87
  %103 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  ret %struct.TYPE_18__* %103
}

declare dso_local i32 @debug(i32, i8*, i32, i32, i32, ...) #1

declare dso_local %struct.TYPE_18__* @mallocz(i32) #1

declare dso_local i32 @strncpyz(i32, i8*, i64) #1

declare dso_local %struct.TYPE_18__* @registry_person_url_index_add(%struct.TYPE_19__*, %struct.TYPE_18__*) #1

declare dso_local i32 @error(i8*, i32, i8*, i32) #1

declare dso_local i32 @freez(%struct.TYPE_18__*) #1

declare dso_local i32 @registry_url_link(%struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
