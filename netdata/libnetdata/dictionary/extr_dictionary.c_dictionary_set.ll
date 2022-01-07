; ModuleID = '/home/carl/AnghaBench/netdata/libnetdata/dictionary/extr_dictionary.c_dictionary_set.c'
source_filename = "/home/carl/AnghaBench/netdata/libnetdata/dictionary/extr_dictionary.c_dictionary_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i8* }

@D_DICTIONARY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"SET dictionary entry with name '%s'.\00", align 1
@.str.1 = private unnamed_addr constant [63 x i8] c"Dictionary entry with name '%s' not found. Creating a new one.\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"Cannot create name_value.\00", align 1
@.str.3 = private unnamed_addr constant [59 x i8] c"Dictionary entry with name '%s' found. Changing its value.\00", align 1
@DICTIONARY_FLAG_VALUE_LINK_DONT_CLONE = common dso_local global i32 0, align 4
@D_REGISTRY = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [34 x i8] c"Dictionary: linking value to '%s'\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"Dictionary: cloning value to '%s'\00", align 1
@.str.6 = private unnamed_addr constant [38 x i8] c"Dictionary: freeing old value of '%s'\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @dictionary_set(%struct.TYPE_11__* %0, i8* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_10__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %13 = load i32, i32* @D_DICTIONARY, align 4
  %14 = load i8*, i8** %6, align 8
  %15 = call i32 @debug(i32 %13, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i8* %14)
  %16 = load i8*, i8** %6, align 8
  %17 = call i32 @simple_hash(i8* %16)
  store i32 %17, i32* %9, align 4
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %19 = call i32 @dictionary_write_lock(%struct.TYPE_11__* %18)
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = load i32, i32* %9, align 4
  %23 = call %struct.TYPE_10__* @dictionary_name_value_index_find_nolock(%struct.TYPE_11__* %20, i8* %21, i32 %22)
  store %struct.TYPE_10__* %23, %struct.TYPE_10__** %10, align 8
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %25 = icmp ne %struct.TYPE_10__* %24, null
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  %28 = call i64 @unlikely(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %49

30:                                               ; preds = %4
  %31 = load i32, i32* @D_DICTIONARY, align 4
  %32 = load i8*, i8** %6, align 8
  %33 = call i32 @debug(i32 %31, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.1, i64 0, i64 0), i8* %32)
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %35 = load i8*, i8** %6, align 8
  %36 = load i8*, i8** %7, align 8
  %37 = load i64, i64* %8, align 8
  %38 = load i32, i32* %9, align 4
  %39 = call %struct.TYPE_10__* @dictionary_name_value_create_nolock(%struct.TYPE_11__* %34, i8* %35, i8* %36, i64 %37, i32 %38)
  store %struct.TYPE_10__* %39, %struct.TYPE_10__** %10, align 8
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %41 = icmp ne %struct.TYPE_10__* %40, null
  %42 = xor i1 %41, true
  %43 = zext i1 %42 to i32
  %44 = call i64 @unlikely(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %30
  %47 = call i32 @fatal(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  br label %48

48:                                               ; preds = %46, %30
  br label %88

49:                                               ; preds = %4
  %50 = load i32, i32* @D_DICTIONARY, align 4
  %51 = load i8*, i8** %6, align 8
  %52 = call i32 @debug(i32 %50, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.3, i64 0, i64 0), i8* %51)
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @DICTIONARY_FLAG_VALUE_LINK_DONT_CLONE, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %66

59:                                               ; preds = %49
  %60 = load i32, i32* @D_REGISTRY, align 4
  %61 = load i8*, i8** %6, align 8
  %62 = call i32 @debug(i32 %60, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i8* %61)
  %63 = load i8*, i8** %7, align 8
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 0
  store i8* %63, i8** %65, align 8
  br label %87

66:                                               ; preds = %49
  %67 = load i32, i32* @D_REGISTRY, align 4
  %68 = load i8*, i8** %6, align 8
  %69 = call i32 @debug(i32 %67, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0), i8* %68)
  %70 = load i64, i64* %8, align 8
  %71 = call i8* @mallocz(i64 %70)
  store i8* %71, i8** %11, align 8
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 0
  %74 = load i8*, i8** %73, align 8
  store i8* %74, i8** %12, align 8
  %75 = load i8*, i8** %11, align 8
  %76 = load i8*, i8** %7, align 8
  %77 = load i64, i64* %8, align 8
  %78 = call i32 @memcpy(i8* %75, i8* %76, i64 %77)
  %79 = load i8*, i8** %11, align 8
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 0
  store i8* %79, i8** %81, align 8
  %82 = load i32, i32* @D_REGISTRY, align 4
  %83 = load i8*, i8** %6, align 8
  %84 = call i32 @debug(i32 %82, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0), i8* %83)
  %85 = load i8*, i8** %12, align 8
  %86 = call i32 @freez(i8* %85)
  br label %87

87:                                               ; preds = %66, %59
  br label %88

88:                                               ; preds = %87, %48
  %89 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %90 = call i32 @dictionary_unlock(%struct.TYPE_11__* %89)
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 0
  %93 = load i8*, i8** %92, align 8
  ret i8* %93
}

declare dso_local i32 @debug(i32, i8*, i8*) #1

declare dso_local i32 @simple_hash(i8*) #1

declare dso_local i32 @dictionary_write_lock(%struct.TYPE_11__*) #1

declare dso_local %struct.TYPE_10__* @dictionary_name_value_index_find_nolock(%struct.TYPE_11__*, i8*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.TYPE_10__* @dictionary_name_value_create_nolock(%struct.TYPE_11__*, i8*, i8*, i64, i32) #1

declare dso_local i32 @fatal(i8*) #1

declare dso_local i8* @mallocz(i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @freez(i8*) #1

declare dso_local i32 @dictionary_unlock(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
