; ModuleID = '/home/carl/AnghaBench/netdata/libnetdata/dictionary/extr_dictionary.c_dictionary_name_value_create_nolock.c'
source_filename = "/home/carl/AnghaBench/netdata/libnetdata/dictionary/extr_dictionary.c_dictionary_name_value_create_nolock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i8*, i8*, i64 }
%struct.TYPE_9__ = type { i32, i32 }

@D_DICTIONARY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Creating name value entry for name '%s'.\00", align 1
@DICTIONARY_FLAG_NAME_LINK_DONT_CLONE = common dso_local global i32 0, align 4
@DICTIONARY_FLAG_VALUE_LINK_DONT_CLONE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [63 x i8] c"dictionary: INTERNAL ERROR: duplicate insertion to dictionary.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_8__* (%struct.TYPE_9__*, i8*, i8*, i64, i64)* @dictionary_name_value_create_nolock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_8__* @dictionary_name_value_create_nolock(%struct.TYPE_9__* %0, i8* %1, i8* %2, i64 %3, i64 %4) #0 {
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  %12 = load i32, i32* @D_DICTIONARY, align 4
  %13 = load i8*, i8** %7, align 8
  %14 = call i32 @debug(i32 %12, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i8* %13)
  %15 = call %struct.TYPE_8__* @callocz(i32 1, i32 24)
  store %struct.TYPE_8__* %15, %struct.TYPE_8__** %11, align 8
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @DICTIONARY_FLAG_NAME_LINK_DONT_CLONE, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %5
  %23 = load i8*, i8** %7, align 8
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  store i8* %23, i8** %25, align 8
  br label %31

26:                                               ; preds = %5
  %27 = load i8*, i8** %7, align 8
  %28 = call i8* @strdupz(i8* %27)
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  store i8* %28, i8** %30, align 8
  br label %31

31:                                               ; preds = %26, %22
  %32 = load i64, i64* %10, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %31
  %35 = load i64, i64* %10, align 8
  br label %41

36:                                               ; preds = %31
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %40 = call i64 @simple_hash(i8* %39)
  br label %41

41:                                               ; preds = %36, %34
  %42 = phi i64 [ %35, %34 ], [ %40, %36 ]
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 2
  store i64 %42, i64* %44, align 8
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @DICTIONARY_FLAG_VALUE_LINK_DONT_CLONE, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %41
  %52 = load i8*, i8** %8, align 8
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 1
  store i8* %52, i8** %54, align 8
  br label %66

55:                                               ; preds = %41
  %56 = load i64, i64* %9, align 8
  %57 = call i8* @mallocz(i64 %56)
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 1
  store i8* %57, i8** %59, align 8
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 1
  %62 = load i8*, i8** %61, align 8
  %63 = load i8*, i8** %8, align 8
  %64 = load i64, i64* %9, align 8
  %65 = call i32 @memcpy(i8* %62, i8* %63, i64 %64)
  br label %66

66:                                               ; preds = %55, %51
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %68 = call i32 @NETDATA_DICTIONARY_STATS_INSERTS_PLUS1(%struct.TYPE_9__* %67)
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 1
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %72 = bitcast %struct.TYPE_8__* %71 to i32*
  %73 = call i32* @avl_insert(i32* %70, i32* %72)
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %75 = bitcast %struct.TYPE_8__* %74 to i32*
  %76 = icmp ne i32* %73, %75
  %77 = zext i1 %76 to i32
  %78 = call i64 @unlikely(i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %66
  %81 = call i32 @error(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.1, i64 0, i64 0))
  br label %82

82:                                               ; preds = %80, %66
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %84 = call i32 @NETDATA_DICTIONARY_STATS_ENTRIES_PLUS1(%struct.TYPE_9__* %83)
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  ret %struct.TYPE_8__* %85
}

declare dso_local i32 @debug(i32, i8*, i8*) #1

declare dso_local %struct.TYPE_8__* @callocz(i32, i32) #1

declare dso_local i8* @strdupz(i8*) #1

declare dso_local i64 @simple_hash(i8*) #1

declare dso_local i8* @mallocz(i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @NETDATA_DICTIONARY_STATS_INSERTS_PLUS1(%struct.TYPE_9__*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32* @avl_insert(i32*, i32*) #1

declare dso_local i32 @error(i8*) #1

declare dso_local i32 @NETDATA_DICTIONARY_STATS_ENTRIES_PLUS1(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
