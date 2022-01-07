; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/util/extr_profiler.c_get_root_entry.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/util/extr_profiler.c_get_root_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i8*, i32, i32 }

@root_entries = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_6__* (i8*)* @get_root_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_6__* @get_root_entry(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %3, align 8
  store i64 0, i64* %4, align 8
  br label %5

5:                                                ; preds = %22, %1
  %6 = load i64, i64* %4, align 8
  %7 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @root_entries, i32 0, i32 0), align 8
  %8 = icmp ult i64 %6, %7
  br i1 %8, label %9, label %25

9:                                                ; preds = %5
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @root_entries, i32 0, i32 1), align 8
  %11 = load i64, i64* %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i64 %11
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8
  %15 = load i8*, i8** %2, align 8
  %16 = icmp eq i8* %14, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %9
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @root_entries, i32 0, i32 1), align 8
  %19 = load i64, i64* %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i64 %19
  store %struct.TYPE_6__* %20, %struct.TYPE_6__** %3, align 8
  br label %25

21:                                               ; preds = %9
  br label %22

22:                                               ; preds = %21
  %23 = load i64, i64* %4, align 8
  %24 = add i64 %23, 1
  store i64 %24, i64* %4, align 8
  br label %5

25:                                               ; preds = %17, %5
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %27 = icmp ne %struct.TYPE_6__* %26, null
  br i1 %27, label %50, label %28

28:                                               ; preds = %25
  %29 = load i64, i64* getelementptr inbounds ({ i64, %struct.TYPE_6__* }, { i64, %struct.TYPE_6__* }* bitcast (%struct.TYPE_7__* @root_entries to { i64, %struct.TYPE_6__* }*), i32 0, i32 0), align 8
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds ({ i64, %struct.TYPE_6__* }, { i64, %struct.TYPE_6__* }* bitcast (%struct.TYPE_7__* @root_entries to { i64, %struct.TYPE_6__* }*), i32 0, i32 1), align 8
  %31 = call %struct.TYPE_6__* @da_push_back_new(i64 %29, %struct.TYPE_6__* %30)
  store %struct.TYPE_6__* %31, %struct.TYPE_6__** %3, align 8
  %32 = call i32 @bmalloc(i32 4)
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 2
  store i32 %32, i32* %34, align 4
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @pthread_mutex_init(i32 %37, i32* null)
  %39 = load i8*, i8** %2, align 8
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  store i8* %39, i8** %41, align 8
  %42 = call i32 @bzalloc(i32 4)
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 8
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = load i8*, i8** %2, align 8
  %49 = call i32 @init_entry(i32 %47, i8* %48)
  br label %50

50:                                               ; preds = %28, %25
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  ret %struct.TYPE_6__* %51
}

declare dso_local %struct.TYPE_6__* @da_push_back_new(i64, %struct.TYPE_6__*) #1

declare dso_local i32 @bmalloc(i32) #1

declare dso_local i32 @pthread_mutex_init(i32, i32*) #1

declare dso_local i32 @bzalloc(i32) #1

declare dso_local i32 @init_entry(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
