; ModuleID = '/home/carl/AnghaBench/netdata/registry/extr_registry_person.c_registry_person_allocate.c'
source_filename = "/home/carl/AnghaBench/netdata/registry/extr_registry_person.c_registry_person_allocate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i64, i64, i64, i32 }

@D_REGISTRY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [84 x i8] c"Registry: registry_person_allocate('%s'): allocating new person, sizeof(PERSON)=%zu\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [63 x i8] c"Registry: Checking if the generated person guid '%s' is unique\00", align 1
@registry = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@.str.3 = private unnamed_addr constant [47 x i8] c"Registry: generated person guid '%s' is unique\00", align 1
@.str.4 = private unnamed_addr constant [72 x i8] c"Registry: generated person guid '%s' found in the registry. Retrying...\00", align 1
@GUID_LEN = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [70 x i8] c"Registry: registry_person_allocate('%s'): creating dictionary of urls\00", align 1
@person_url_compare = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_6__* @registry_person_allocate(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load i32, i32* @D_REGISTRY, align 4
  %8 = load i8*, i8** %3, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = load i8*, i8** %3, align 8
  br label %13

12:                                               ; preds = %2
  br label %13

13:                                               ; preds = %12, %10
  %14 = phi i8* [ %11, %10 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %12 ]
  %15 = call i32 (i32, i8*, i8*, ...) @debug(i32 %7, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str, i64 0, i64 0), i8* %14, i64 40)
  %16 = call %struct.TYPE_6__* @mallocz(i32 40)
  store %struct.TYPE_6__* %16, %struct.TYPE_6__** %5, align 8
  %17 = load i8*, i8** %3, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %56, label %19

19:                                               ; preds = %13
  br label %20

20:                                               ; preds = %54, %19
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @uuid_generate(i32 %21)
  %23 = load i32, i32* %6, align 4
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @uuid_unparse_lower(i32 %23, i32 %26)
  %28 = load i32, i32* @D_REGISTRY, align 4
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = sext i32 %31 to i64
  %33 = inttoptr i64 %32 to i8*
  %34 = call i32 (i32, i8*, i8*, ...) @debug(i32 %28, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.2, i64 0, i64 0), i8* %33)
  %35 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @registry, i32 0, i32 1), align 4
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @dictionary_get(i32 %35, i32 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %49, label %41

41:                                               ; preds = %20
  %42 = load i32, i32* @D_REGISTRY, align 4
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = sext i32 %45 to i64
  %47 = inttoptr i64 %46 to i8*
  %48 = call i32 (i32, i8*, i8*, ...) @debug(i32 %42, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0), i8* %47)
  br label %55

49:                                               ; preds = %20
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @info(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.4, i64 0, i64 0), i32 %52)
  br label %54

54:                                               ; preds = %49
  br label %20

55:                                               ; preds = %41
  br label %63

56:                                               ; preds = %13
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i8*, i8** %3, align 8
  %61 = load i32, i32* @GUID_LEN, align 4
  %62 = call i32 @strncpyz(i32 %59, i8* %60, i32 %61)
  br label %63

63:                                               ; preds = %56, %55
  %64 = load i32, i32* @D_REGISTRY, align 4
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = sext i32 %67 to i64
  %69 = inttoptr i64 %68 to i8*
  %70 = call i32 (i32, i8*, i8*, ...) @debug(i32 %64, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.5, i64 0, i64 0), i8* %69)
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 4
  %73 = load i32, i32* @person_url_compare, align 4
  %74 = call i32 @avl_init(i32* %72, i32 %73)
  %75 = load i64, i64* %4, align 8
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 2
  store i64 %75, i64* %77, align 8
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 3
  store i64 %75, i64* %79, align 8
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 1
  store i64 0, i64* %81, align 8
  %82 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @registry, i32 0, i32 0), align 4
  %83 = sext i32 %82 to i64
  %84 = add i64 %83, 40
  %85 = trunc i64 %84 to i32
  store i32 %85, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @registry, i32 0, i32 0), align 4
  %86 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @registry, i32 0, i32 2), align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @registry, i32 0, i32 2), align 4
  %88 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @registry, i32 0, i32 1), align 4
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %93 = call i32 @dictionary_set(i32 %88, i32 %91, %struct.TYPE_6__* %92, i32 40)
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  ret %struct.TYPE_6__* %94
}

declare dso_local i32 @debug(i32, i8*, i8*, ...) #1

declare dso_local %struct.TYPE_6__* @mallocz(i32) #1

declare dso_local i32 @uuid_generate(i32) #1

declare dso_local i32 @uuid_unparse_lower(i32, i32) #1

declare dso_local i32 @dictionary_get(i32, i32) #1

declare dso_local i32 @info(i8*, i32) #1

declare dso_local i32 @strncpyz(i32, i8*, i32) #1

declare dso_local i32 @avl_init(i32*, i32) #1

declare dso_local i32 @dictionary_set(i32, i32, %struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
