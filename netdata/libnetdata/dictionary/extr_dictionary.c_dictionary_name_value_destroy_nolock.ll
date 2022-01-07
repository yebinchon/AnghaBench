; ModuleID = '/home/carl/AnghaBench/netdata/libnetdata/dictionary/extr_dictionary.c_dictionary_name_value_destroy_nolock.c'
source_filename = "/home/carl/AnghaBench/netdata/libnetdata/dictionary/extr_dictionary.c_dictionary_name_value_destroy_nolock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_9__*, %struct.TYPE_9__* }

@D_DICTIONARY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Destroying name value entry for name '%s'.\00", align 1
@.str.1 = private unnamed_addr constant [64 x i8] c"dictionary: INTERNAL ERROR: dictionary invalid removal of node.\00", align 1
@DICTIONARY_FLAG_VALUE_LINK_DONT_CLONE = common dso_local global i32 0, align 4
@D_REGISTRY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"Dictionary freeing value of '%s'\00", align 1
@DICTIONARY_FLAG_NAME_LINK_DONT_CLONE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"Dictionary freeing name '%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*, %struct.TYPE_9__*)* @dictionary_name_value_destroy_nolock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dictionary_name_value_destroy_nolock(%struct.TYPE_10__* %0, %struct.TYPE_9__* %1) #0 {
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %4, align 8
  %5 = load i32, i32* @D_DICTIONARY, align 4
  %6 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %7 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 0
  %8 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %9 = call i32 @debug(i32 %5, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), %struct.TYPE_9__* %8)
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %11 = call i32 @NETDATA_DICTIONARY_STATS_DELETES_PLUS1(%struct.TYPE_10__* %10)
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %15 = bitcast %struct.TYPE_9__* %14 to i32*
  %16 = call i32* @avl_remove(i32* %13, i32* %15)
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %18 = bitcast %struct.TYPE_9__* %17 to i32*
  %19 = icmp ne i32* %16, %18
  %20 = zext i1 %19 to i32
  %21 = call i64 @unlikely(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %2
  %24 = call i32 @error(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.1, i64 0, i64 0))
  br label %25

25:                                               ; preds = %23, %2
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %27 = call i32 @NETDATA_DICTIONARY_STATS_ENTRIES_MINUS1(%struct.TYPE_10__* %26)
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @DICTIONARY_FLAG_VALUE_LINK_DONT_CLONE, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %44, label %34

34:                                               ; preds = %25
  %35 = load i32, i32* @D_REGISTRY, align 4
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %37, align 8
  %39 = call i32 @debug(i32 %35, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_9__* %38)
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 1
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %41, align 8
  %43 = call i32 @freez(%struct.TYPE_9__* %42)
  br label %44

44:                                               ; preds = %34, %25
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @DICTIONARY_FLAG_NAME_LINK_DONT_CLONE, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %61, label %51

51:                                               ; preds = %44
  %52 = load i32, i32* @D_REGISTRY, align 4
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %54, align 8
  %56 = call i32 @debug(i32 %52, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), %struct.TYPE_9__* %55)
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %58, align 8
  %60 = call i32 @freez(%struct.TYPE_9__* %59)
  br label %61

61:                                               ; preds = %51, %44
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %63 = call i32 @freez(%struct.TYPE_9__* %62)
  ret void
}

declare dso_local i32 @debug(i32, i8*, %struct.TYPE_9__*) #1

declare dso_local i32 @NETDATA_DICTIONARY_STATS_DELETES_PLUS1(%struct.TYPE_10__*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32* @avl_remove(i32*, i32*) #1

declare dso_local i32 @error(i8*) #1

declare dso_local i32 @NETDATA_DICTIONARY_STATS_ENTRIES_MINUS1(%struct.TYPE_10__*) #1

declare dso_local i32 @freez(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
