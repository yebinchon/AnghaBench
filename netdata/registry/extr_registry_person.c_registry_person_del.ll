; ModuleID = '/home/carl/AnghaBench/netdata/registry/extr_registry_person.c_registry_person_del.c'
source_filename = "/home/carl/AnghaBench/netdata/registry/extr_registry_person.c_registry_person_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }

@D_REGISTRY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [65 x i8] c"Registry: registry_person_del('%s'): creating dictionary of urls\00", align 1
@.str.1 = private unnamed_addr constant [53 x i8] c"Registry: deleting person '%s' from persons registry\00", align 1
@registry = common dso_local global %struct.TYPE_9__ zeroinitializer, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"Registry: freeing person '%s'\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @registry_person_del(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %3 = load i32, i32* @D_REGISTRY, align 4
  %4 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = call i32 @debug(i32 %3, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0), i32 %6)
  br label %8

8:                                                ; preds = %14, %1
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %22

14:                                               ; preds = %8
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to i32*
  %21 = call i32 @registry_person_unlink_from_url(%struct.TYPE_8__* %15, i32* %20)
  br label %8

22:                                               ; preds = %8
  %23 = load i32, i32* @D_REGISTRY, align 4
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @debug(i32 %23, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i32 %26)
  %28 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @registry, i32 0, i32 0), align 4
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @dictionary_del(i32 %28, i32 %31)
  %33 = load i32, i32* @D_REGISTRY, align 4
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @debug(i32 %33, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %36)
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %39 = call i32 @freez(%struct.TYPE_8__* %38)
  ret void
}

declare dso_local i32 @debug(i32, i8*, i32) #1

declare dso_local i32 @registry_person_unlink_from_url(%struct.TYPE_8__*, i32*) #1

declare dso_local i32 @dictionary_del(i32, i32) #1

declare dso_local i32 @freez(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
