; ModuleID = '/home/carl/AnghaBench/netdata/registry/extr_registry_init.c_registry_free.c'
source_filename = "/home/carl/AnghaBench/netdata/registry/extr_registry_init.c_registry_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_12__*, %struct.TYPE_12__*, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_14__ = type { i32, %struct.TYPE_12__*, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { %struct.TYPE_14__* }

@registry = common dso_local global %struct.TYPE_17__ zeroinitializer, align 8
@D_REGISTRY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"Registry: deleting url '%s' from person '%s'\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"Registry: unlinking url '%s' from machine\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"Registry: freeing machine url\00", align 1
@.str.3 = private unnamed_addr constant [55 x i8] c"Registry: deleting machine '%s' from machines registry\00", align 1
@.str.4 = private unnamed_addr constant [52 x i8] c"Registry: destroying URL dictionary of machine '%s'\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"Registry: freeing machine '%s'\00", align 1
@.str.6 = private unnamed_addr constant [40 x i8] c"Registry: destroying persons dictionary\00", align 1
@.str.7 = private unnamed_addr constant [41 x i8] c"Registry: destroying machines dictionary\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @registry_free() #0 {
  %1 = alloca %struct.TYPE_14__*, align 8
  %2 = alloca %struct.TYPE_14__*, align 8
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = load i32, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @registry, i32 0, i32 2), align 8
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %0
  br label %127

7:                                                ; preds = %0
  br label %8

8:                                                ; preds = %14, %7
  %9 = load %struct.TYPE_12__*, %struct.TYPE_12__** getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @registry, i32 0, i32 1), align 8
  %10 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %24

14:                                               ; preds = %8
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @registry, i32 0, i32 1), align 8
  %16 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.TYPE_15__*
  %20 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %20, align 8
  store %struct.TYPE_14__* %21, %struct.TYPE_14__** %1, align 8
  %22 = load %struct.TYPE_14__*, %struct.TYPE_14__** %1, align 8
  %23 = call i32 @registry_person_del(%struct.TYPE_14__* %22)
  br label %8

24:                                               ; preds = %8
  br label %25

25:                                               ; preds = %91, %24
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @registry, i32 0, i32 0), align 8
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %118

31:                                               ; preds = %25
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @registry, i32 0, i32 0), align 8
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = inttoptr i64 %35 to %struct.TYPE_15__*
  %37 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %37, align 8
  store %struct.TYPE_14__* %38, %struct.TYPE_14__** %2, align 8
  br label %39

39:                                               ; preds = %47, %31
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %40, i32 0, i32 1
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %91

47:                                               ; preds = %39
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %49 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %48, i32 0, i32 1
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = inttoptr i64 %53 to %struct.TYPE_15__*
  %55 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %55, align 8
  store %struct.TYPE_14__* %56, %struct.TYPE_14__** %3, align 8
  %57 = load i32, i32* @D_REGISTRY, align 4
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %58, i32 0, i32 2
  %60 = load %struct.TYPE_16__*, %struct.TYPE_16__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %64 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i32 (i32, i8*, ...) @debug(i32 %57, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %62, i32 %65)
  %67 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %68 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %67, i32 0, i32 1
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %68, align 8
  %70 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %70, i32 0, i32 2
  %72 = load %struct.TYPE_16__*, %struct.TYPE_16__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @dictionary_del(%struct.TYPE_12__* %69, i32 %74)
  %76 = load i32, i32* @D_REGISTRY, align 4
  %77 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %77, i32 0, i32 2
  %79 = load %struct.TYPE_16__*, %struct.TYPE_16__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 (i32, i8*, ...) @debug(i32 %76, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %81)
  %83 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %83, i32 0, i32 2
  %85 = load %struct.TYPE_16__*, %struct.TYPE_16__** %84, align 8
  %86 = call i32 @registry_url_unlink(%struct.TYPE_16__* %85)
  %87 = load i32, i32* @D_REGISTRY, align 4
  %88 = call i32 (i32, i8*, ...) @debug(i32 %87, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %89 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %90 = call i32 @freez(%struct.TYPE_14__* %89)
  br label %39

91:                                               ; preds = %39
  %92 = load i32, i32* @D_REGISTRY, align 4
  %93 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %94 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = call i32 (i32, i8*, ...) @debug(i32 %92, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.3, i64 0, i64 0), i32 %95)
  %97 = load %struct.TYPE_12__*, %struct.TYPE_12__** getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @registry, i32 0, i32 0), align 8
  %98 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %99 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @dictionary_del(%struct.TYPE_12__* %97, i32 %100)
  %102 = load i32, i32* @D_REGISTRY, align 4
  %103 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %104 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = call i32 (i32, i8*, ...) @debug(i32 %102, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.4, i64 0, i64 0), i32 %105)
  %107 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %108 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %107, i32 0, i32 1
  %109 = load %struct.TYPE_12__*, %struct.TYPE_12__** %108, align 8
  %110 = call i32 @dictionary_destroy(%struct.TYPE_12__* %109)
  %111 = load i32, i32* @D_REGISTRY, align 4
  %112 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %113 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = call i32 (i32, i8*, ...) @debug(i32 %111, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i32 %114)
  %116 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %117 = call i32 @freez(%struct.TYPE_14__* %116)
  br label %25

118:                                              ; preds = %25
  %119 = load i32, i32* @D_REGISTRY, align 4
  %120 = call i32 (i32, i8*, ...) @debug(i32 %119, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i64 0, i64 0))
  %121 = load %struct.TYPE_12__*, %struct.TYPE_12__** getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @registry, i32 0, i32 1), align 8
  %122 = call i32 @dictionary_destroy(%struct.TYPE_12__* %121)
  %123 = load i32, i32* @D_REGISTRY, align 4
  %124 = call i32 (i32, i8*, ...) @debug(i32 %123, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7, i64 0, i64 0))
  %125 = load %struct.TYPE_12__*, %struct.TYPE_12__** getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @registry, i32 0, i32 0), align 8
  %126 = call i32 @dictionary_destroy(%struct.TYPE_12__* %125)
  br label %127

127:                                              ; preds = %118, %6
  ret void
}

declare dso_local i32 @registry_person_del(%struct.TYPE_14__*) #1

declare dso_local i32 @debug(i32, i8*, ...) #1

declare dso_local i32 @dictionary_del(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @registry_url_unlink(%struct.TYPE_16__*) #1

declare dso_local i32 @freez(%struct.TYPE_14__*) #1

declare dso_local i32 @dictionary_destroy(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
