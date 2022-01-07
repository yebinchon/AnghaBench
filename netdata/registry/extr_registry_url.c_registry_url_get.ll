; ModuleID = '/home/carl/AnghaBench/netdata/registry/extr_registry_url.c_registry_url_get.c'
source_filename = "/home/carl/AnghaBench/netdata/registry/extr_registry_url.c_registry_url_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i32, i32, i32 }
%struct.TYPE_8__ = type { i8*, i8*, i64, i8* }

@registry = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@D_REGISTRY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Registry: registry_url_get('%s', %zu)\00", align 1
@.str.1 = private unnamed_addr constant [60 x i8] c"Registry: registry_url_get('%s', %zu): allocating %zu bytes\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"Registry: registry_url_get('%s'): indexing it\00", align 1
@.str.3 = private unnamed_addr constant [84 x i8] c"INTERNAL ERROR: registry_url_get(): url '%s' already exists in the registry as '%s'\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_8__* @registry_url_get(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %9 = load i64, i64* %4, align 8
  %10 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @registry, i32 0, i32 0), align 8
  %11 = icmp ugt i64 %9, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @registry, i32 0, i32 0), align 8
  store i64 %13, i64* %4, align 8
  br label %14

14:                                               ; preds = %12, %2
  %15 = load i32, i32* @D_REGISTRY, align 4
  %16 = load i8*, i8** %3, align 8
  %17 = load i64, i64* %4, align 8
  %18 = call i32 (i32, i8*, i8*, ...) @debug(i32 %15, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i8* %16, i64 %17)
  %19 = load i64, i64* %4, align 8
  %20 = add i64 32, %19
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %5, align 8
  %22 = alloca i8, i64 %20, align 16
  store i64 %20, i64* %6, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 0
  %24 = bitcast i8* %23 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %24, %struct.TYPE_8__** %7, align 8
  %25 = load i64, i64* %4, align 8
  %26 = inttoptr i64 %25 to i8*
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 3
  store i8* %26, i8** %28, align 8
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  %32 = load i8*, i8** %3, align 8
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 3
  %35 = load i8*, i8** %34, align 8
  %36 = call i32 @strncpyz(i8* %31, i8* %32, i8* %35)
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %40 = call i8* @simple_hash(i8* %39)
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 1
  store i8* %40, i8** %42, align 8
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %44 = bitcast %struct.TYPE_8__* %43 to i32*
  %45 = call i64 @avl_search(i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @registry, i32 0, i32 3), i32* %44)
  %46 = inttoptr i64 %45 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %46, %struct.TYPE_8__** %8, align 8
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %48 = icmp ne %struct.TYPE_8__* %47, null
  br i1 %48, label %109, label %49

49:                                               ; preds = %14
  %50 = load i32, i32* @D_REGISTRY, align 4
  %51 = load i8*, i8** %3, align 8
  %52 = load i64, i64* %4, align 8
  %53 = load i64, i64* %4, align 8
  %54 = add i64 32, %53
  %55 = call i32 (i32, i8*, i8*, ...) @debug(i32 %50, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i64 0, i64 0), i8* %51, i64 %52, i64 %54)
  %56 = load i64, i64* %4, align 8
  %57 = add i64 32, %56
  %58 = trunc i64 %57 to i32
  %59 = call %struct.TYPE_8__* @callocz(i32 1, i32 %58)
  store %struct.TYPE_8__* %59, %struct.TYPE_8__** %8, align 8
  %60 = load i64, i64* %4, align 8
  %61 = inttoptr i64 %60 to i8*
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 3
  store i8* %61, i8** %63, align 8
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 0
  %66 = load i8*, i8** %65, align 8
  %67 = load i8*, i8** %3, align 8
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 3
  %70 = load i8*, i8** %69, align 8
  %71 = call i32 @strncpyz(i8* %66, i8* %67, i8* %70)
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 2
  store i64 0, i64* %73, align 8
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 0
  %76 = load i8*, i8** %75, align 8
  %77 = call i8* @simple_hash(i8* %76)
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 1
  store i8* %77, i8** %79, align 8
  %80 = load i64, i64* %4, align 8
  %81 = add i64 32, %80
  %82 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @registry, i32 0, i32 1), align 8
  %83 = sext i32 %82 to i64
  %84 = add i64 %83, %81
  %85 = trunc i64 %84 to i32
  store i32 %85, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @registry, i32 0, i32 1), align 8
  %86 = load i32, i32* @D_REGISTRY, align 4
  %87 = load i8*, i8** %3, align 8
  %88 = call i32 (i32, i8*, i8*, ...) @debug(i32 %86, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i8* %87)
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %90 = call %struct.TYPE_8__* @registry_url_index_add(%struct.TYPE_8__* %89)
  store %struct.TYPE_8__* %90, %struct.TYPE_8__** %7, align 8
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %93 = icmp ne %struct.TYPE_8__* %91, %92
  br i1 %93, label %94, label %105

94:                                               ; preds = %49
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 0
  %97 = load i8*, i8** %96, align 8
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 0
  %100 = load i8*, i8** %99, align 8
  %101 = call i32 @error(i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.3, i64 0, i64 0), i8* %97, i8* %100)
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %103 = call i32 @freez(%struct.TYPE_8__* %102)
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  store %struct.TYPE_8__* %104, %struct.TYPE_8__** %8, align 8
  br label %108

105:                                              ; preds = %49
  %106 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @registry, i32 0, i32 2), align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @registry, i32 0, i32 2), align 4
  br label %108

108:                                              ; preds = %105, %94
  br label %109

109:                                              ; preds = %108, %14
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %111 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %111)
  ret %struct.TYPE_8__* %110
}

declare dso_local i32 @debug(i32, i8*, i8*, ...) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @strncpyz(i8*, i8*, i8*) #1

declare dso_local i8* @simple_hash(i8*) #1

declare dso_local i64 @avl_search(i32*, i32*) #1

declare dso_local %struct.TYPE_8__* @callocz(i32, i32) #1

declare dso_local %struct.TYPE_8__* @registry_url_index_add(%struct.TYPE_8__*) #1

declare dso_local i32 @error(i8*, i8*, i8*) #1

declare dso_local i32 @freez(%struct.TYPE_8__*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
