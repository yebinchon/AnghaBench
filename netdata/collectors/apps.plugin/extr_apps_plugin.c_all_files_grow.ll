; ModuleID = '/home/carl/AnghaBench/netdata/collectors/apps.plugin/extr_apps_plugin.c_all_files_grow.c'
source_filename = "/home/carl/AnghaBench/netdata/collectors/apps.plugin/extr_apps_plugin.c_all_files_grow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32*, i64 }
%struct.TYPE_7__ = type { i32* }

@all_files = common dso_local global %struct.TYPE_6__* null, align 8
@.str = private unnamed_addr constant [33 x i8] c"extending fd array to %d entries\00", align 1
@all_files_size = common dso_local global i32 0, align 4
@FILE_DESCRIPTORS_INCREASE_STEP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"  >> re-indexing.\00", align 1
@all_files_index = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@.str.2 = private unnamed_addr constant [57 x i8] c"INTERNAL ERROR: duplicate indexing of fd during realloc.\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"  >> re-indexing done.\00", align 1
@all_files_len = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @all_files_grow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @all_files_grow() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i32, align 4
  %3 = load %struct.TYPE_6__*, %struct.TYPE_6__** @all_files, align 8
  %4 = bitcast %struct.TYPE_6__* %3 to i8*
  store i8* %4, i8** %1, align 8
  %5 = load i32, i32* @all_files_size, align 4
  %6 = load i32, i32* @FILE_DESCRIPTORS_INCREASE_STEP, align 4
  %7 = add nsw i32 %5, %6
  %8 = call i32 (i8*, ...) @debug_log(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %7)
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** @all_files, align 8
  %10 = load i32, i32* @all_files_size, align 4
  %11 = load i32, i32* @FILE_DESCRIPTORS_INCREASE_STEP, align 4
  %12 = add nsw i32 %10, %11
  %13 = sext i32 %12 to i64
  %14 = mul i64 %13, 4
  %15 = trunc i64 %14 to i32
  %16 = call %struct.TYPE_6__* @reallocz(%struct.TYPE_6__* %9, i32 %15)
  store %struct.TYPE_6__* %16, %struct.TYPE_6__** @all_files, align 8
  %17 = load i8*, i8** %1, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %24

19:                                               ; preds = %0
  %20 = load i8*, i8** %1, align 8
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** @all_files, align 8
  %22 = bitcast %struct.TYPE_6__* %21 to i8*
  %23 = icmp ne i8* %20, %22
  br label %24

24:                                               ; preds = %19, %0
  %25 = phi i1 [ false, %0 ], [ %23, %19 ]
  %26 = zext i1 %25 to i32
  %27 = call i64 @unlikely(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %67

29:                                               ; preds = %24
  %30 = call i32 (i8*, ...) @debug_log(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @all_files_index, i32 0, i32 0), align 8
  store i32 0, i32* %2, align 4
  br label %31

31:                                               ; preds = %62, %29
  %32 = load i32, i32* %2, align 4
  %33 = load i32, i32* @all_files_size, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %65

35:                                               ; preds = %31
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** @all_files, align 8
  %37 = load i32, i32* %2, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 3
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %35
  br label %62

44:                                               ; preds = %35
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** @all_files, align 8
  %46 = load i32, i32* %2, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i64 %47
  %49 = call i8* @file_descriptor_add(%struct.TYPE_6__* %48)
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** @all_files, align 8
  %51 = load i32, i32* %2, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i64 %52
  %54 = bitcast %struct.TYPE_6__* %53 to i8*
  %55 = icmp ne i8* %49, %54
  %56 = zext i1 %55 to i32
  %57 = call i64 @unlikely(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %44
  %60 = call i32 @error(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.2, i64 0, i64 0))
  br label %61

61:                                               ; preds = %59, %44
  br label %62

62:                                               ; preds = %61, %43
  %63 = load i32, i32* %2, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %2, align 4
  br label %31

65:                                               ; preds = %31
  %66 = call i32 (i8*, ...) @debug_log(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  br label %67

67:                                               ; preds = %65, %24
  %68 = load i32, i32* @all_files_size, align 4
  store i32 %68, i32* %2, align 4
  br label %69

69:                                               ; preds = %92, %67
  %70 = load i32, i32* %2, align 4
  %71 = load i32, i32* @all_files_size, align 4
  %72 = load i32, i32* @FILE_DESCRIPTORS_INCREASE_STEP, align 4
  %73 = add nsw i32 %71, %72
  %74 = icmp slt i32 %70, %73
  br i1 %74, label %75, label %95

75:                                               ; preds = %69
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** @all_files, align 8
  %77 = load i32, i32* %2, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 3
  store i64 0, i64* %80, align 8
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** @all_files, align 8
  %82 = load i32, i32* %2, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 2
  store i32* null, i32** %85, align 8
  %86 = load i32, i32* %2, align 4
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** @all_files, align 8
  %88 = load i32, i32* %2, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 1
  store i32 %86, i32* %91, align 4
  br label %92

92:                                               ; preds = %75
  %93 = load i32, i32* %2, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %2, align 4
  br label %69

95:                                               ; preds = %69
  %96 = load i32, i32* @all_files_size, align 4
  %97 = icmp ne i32 %96, 0
  %98 = xor i1 %97, true
  %99 = zext i1 %98 to i32
  %100 = call i64 @unlikely(i32 %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %95
  store i32 1, i32* @all_files_len, align 4
  br label %103

103:                                              ; preds = %102, %95
  %104 = load i32, i32* @FILE_DESCRIPTORS_INCREASE_STEP, align 4
  %105 = load i32, i32* @all_files_size, align 4
  %106 = add nsw i32 %105, %104
  store i32 %106, i32* @all_files_size, align 4
  ret void
}

declare dso_local i32 @debug_log(i8*, ...) #1

declare dso_local %struct.TYPE_6__* @reallocz(%struct.TYPE_6__*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i8* @file_descriptor_add(%struct.TYPE_6__*) #1

declare dso_local i32 @error(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
