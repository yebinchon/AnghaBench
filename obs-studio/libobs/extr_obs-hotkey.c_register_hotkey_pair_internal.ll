; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-hotkey.c_register_hotkey_pair_internal.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-hotkey.c_register_hotkey_pair_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i8* }
%struct.obs_context_data = type { i32 }
%struct.TYPE_11__ = type { i32, i8** }

@OBS_INVALID_HOTKEY_PAIR_ID = common dso_local global i32 0, align 4
@obs_hotkey_pair_first_func = common dso_local global i32 0, align 4
@obs_hotkey_pair_second_func = common dso_local global i32 0, align 4
@obs = common dso_local global %struct.TYPE_12__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i8* (i8*)*, %struct.obs_context_data*, i8*, i8*, i8*, i8*, i32, i32, i8*, i8*)* @register_hotkey_pair_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @register_hotkey_pair_internal(i32 %0, i8* %1, i8* (i8*)* %2, %struct.obs_context_data* %3, i8* %4, i8* %5, i8* %6, i8* %7, i32 %8, i32 %9, i8* %10, i8* %11) #0 {
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i8* (i8*)*, align 8
  %17 = alloca %struct.obs_context_data*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i8*, align 8
  %25 = alloca i8*, align 8
  %26 = alloca %struct.TYPE_11__*, align 8
  %27 = alloca i64, align 8
  %28 = alloca i32, align 4
  store i32 %0, i32* %14, align 4
  store i8* %1, i8** %15, align 8
  store i8* (i8*)* %2, i8* (i8*)** %16, align 8
  store %struct.obs_context_data* %3, %struct.obs_context_data** %17, align 8
  store i8* %4, i8** %18, align 8
  store i8* %5, i8** %19, align 8
  store i8* %6, i8** %20, align 8
  store i8* %7, i8** %21, align 8
  store i32 %8, i32* %22, align 4
  store i32 %9, i32* %23, align 4
  store i8* %10, i8** %24, align 8
  store i8* %11, i8** %25, align 8
  %29 = call i32 (...) @lock()
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %12
  %32 = load i32, i32* @OBS_INVALID_HOTKEY_PAIR_ID, align 4
  store i32 %32, i32* %13, align 4
  br label %117

33:                                               ; preds = %12
  %34 = load %struct.obs_context_data*, %struct.obs_context_data** %17, align 8
  %35 = load i32, i32* %22, align 4
  %36 = load i32, i32* %23, align 4
  %37 = load i8*, i8** %24, align 8
  %38 = load i8*, i8** %25, align 8
  %39 = call %struct.TYPE_11__* @create_hotkey_pair(%struct.obs_context_data* %34, i32 %35, i32 %36, i8* %37, i8* %38)
  store %struct.TYPE_11__* %39, %struct.TYPE_11__** %26, align 8
  %40 = load i32, i32* %14, align 4
  %41 = load i8* (i8*)*, i8* (i8*)** %16, align 8
  %42 = load i8*, i8** %15, align 8
  %43 = call i8* %41(i8* %42)
  %44 = load %struct.obs_context_data*, %struct.obs_context_data** %17, align 8
  %45 = load i8*, i8** %18, align 8
  %46 = load i8*, i8** %19, align 8
  %47 = load i32, i32* @obs_hotkey_pair_first_func, align 4
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %26, align 8
  %49 = call i8* @obs_hotkey_register_internal(i32 %40, i8* %43, %struct.obs_context_data* %44, i8* %45, i8* %46, i32 %47, %struct.TYPE_11__* %48)
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %26, align 8
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 1
  %52 = load i8**, i8*** %51, align 8
  %53 = getelementptr inbounds i8*, i8** %52, i64 0
  store i8* %49, i8** %53, align 8
  %54 = load i32, i32* %14, align 4
  %55 = load i8* (i8*)*, i8* (i8*)** %16, align 8
  %56 = load i8*, i8** %15, align 8
  %57 = call i8* %55(i8* %56)
  %58 = load %struct.obs_context_data*, %struct.obs_context_data** %17, align 8
  %59 = load i8*, i8** %20, align 8
  %60 = load i8*, i8** %21, align 8
  %61 = load i32, i32* @obs_hotkey_pair_second_func, align 4
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %26, align 8
  %63 = call i8* @obs_hotkey_register_internal(i32 %54, i8* %57, %struct.obs_context_data* %58, i8* %59, i8* %60, i32 %61, %struct.TYPE_11__* %62)
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %26, align 8
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 1
  %66 = load i8**, i8*** %65, align 8
  %67 = getelementptr inbounds i8*, i8** %66, i64 1
  store i8* %63, i8** %67, align 8
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %26, align 8
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 1
  %70 = load i8**, i8*** %69, align 8
  %71 = getelementptr inbounds i8*, i8** %70, i64 0
  %72 = load i8*, i8** %71, align 8
  %73 = call i64 @find_id(i8* %72, i64* %27)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %89

75:                                               ; preds = %33
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %26, align 8
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 1
  %78 = load i8**, i8*** %77, align 8
  %79 = getelementptr inbounds i8*, i8** %78, i64 1
  %80 = load i8*, i8** %79, align 8
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** @obs, align 8
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 0
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %84, align 8
  %86 = load i64, i64* %27, align 8
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 0
  store i8* %80, i8** %88, align 8
  br label %89

89:                                               ; preds = %75, %33
  %90 = load %struct.TYPE_11__*, %struct.TYPE_11__** %26, align 8
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i32 0, i32 1
  %92 = load i8**, i8*** %91, align 8
  %93 = getelementptr inbounds i8*, i8** %92, i64 1
  %94 = load i8*, i8** %93, align 8
  %95 = call i64 @find_id(i8* %94, i64* %27)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %111

97:                                               ; preds = %89
  %98 = load %struct.TYPE_11__*, %struct.TYPE_11__** %26, align 8
  %99 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %98, i32 0, i32 1
  %100 = load i8**, i8*** %99, align 8
  %101 = getelementptr inbounds i8*, i8** %100, i64 0
  %102 = load i8*, i8** %101, align 8
  %103 = load %struct.TYPE_12__*, %struct.TYPE_12__** @obs, align 8
  %104 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %105, i32 0, i32 0
  %107 = load %struct.TYPE_8__*, %struct.TYPE_8__** %106, align 8
  %108 = load i64, i64* %27, align 8
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 0
  store i8* %102, i8** %110, align 8
  br label %111

111:                                              ; preds = %97, %89
  %112 = load %struct.TYPE_11__*, %struct.TYPE_11__** %26, align 8
  %113 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  store i32 %114, i32* %28, align 4
  %115 = call i32 (...) @unlock()
  %116 = load i32, i32* %28, align 4
  store i32 %116, i32* %13, align 4
  br label %117

117:                                              ; preds = %111, %31
  %118 = load i32, i32* %13, align 4
  ret i32 %118
}

declare dso_local i32 @lock(...) #1

declare dso_local %struct.TYPE_11__* @create_hotkey_pair(%struct.obs_context_data*, i32, i32, i8*, i8*) #1

declare dso_local i8* @obs_hotkey_register_internal(i32, i8*, %struct.obs_context_data*, i8*, i8*, i32, %struct.TYPE_11__*) #1

declare dso_local i64 @find_id(i8*, i64*) #1

declare dso_local i32 @unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
