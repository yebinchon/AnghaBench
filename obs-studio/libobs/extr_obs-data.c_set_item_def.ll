; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-data.c_set_item_def.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-data.c_set_item_def.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.obs_data = type { i32 }
%struct.TYPE_5__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.obs_data*, %struct.TYPE_5__**, i8*, i8*, i64, i32)* @set_item_def to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_item_def(%struct.obs_data* %0, %struct.TYPE_5__** %1, i8* %2, i8* %3, i64 %4, i32 %5) #0 {
  %7 = alloca %struct.obs_data*, align 8
  %8 = alloca %struct.TYPE_5__**, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_5__*, align 8
  store %struct.obs_data* %0, %struct.obs_data** %7, align 8
  store %struct.TYPE_5__** %1, %struct.TYPE_5__*** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  store i32 %5, i32* %12, align 4
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %13, align 8
  %14 = load %struct.obs_data*, %struct.obs_data** %7, align 8
  %15 = icmp ne %struct.obs_data* %14, null
  br i1 %15, label %20, label %16

16:                                               ; preds = %6
  %17 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %8, align 8
  %18 = icmp ne %struct.TYPE_5__** %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %16
  br label %50

20:                                               ; preds = %16, %6
  %21 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %8, align 8
  %22 = icmp ne %struct.TYPE_5__** %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %20
  %24 = load %struct.obs_data*, %struct.obs_data** %7, align 8
  %25 = load i8*, i8** %9, align 8
  %26 = call %struct.TYPE_5__* @get_item(%struct.obs_data* %24, i8* %25)
  store %struct.TYPE_5__* %26, %struct.TYPE_5__** %13, align 8
  store %struct.TYPE_5__** %13, %struct.TYPE_5__*** %8, align 8
  br label %27

27:                                               ; preds = %23, %20
  %28 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %8, align 8
  %29 = icmp ne %struct.TYPE_5__** %28, null
  br i1 %29, label %30, label %42

30:                                               ; preds = %27
  %31 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %8, align 8
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %31, align 8
  %33 = icmp ne %struct.TYPE_5__* %32, null
  br i1 %33, label %34, label %42

34:                                               ; preds = %30
  %35 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %8, align 8
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %12, align 4
  %40 = icmp ne i32 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %34
  br label %50

42:                                               ; preds = %34, %30, %27
  %43 = load %struct.obs_data*, %struct.obs_data** %7, align 8
  %44 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %8, align 8
  %45 = load i8*, i8** %9, align 8
  %46 = load i8*, i8** %10, align 8
  %47 = load i64, i64* %11, align 8
  %48 = load i32, i32* %12, align 4
  %49 = call i32 @set_item_data(%struct.obs_data* %43, %struct.TYPE_5__** %44, i8* %45, i8* %46, i64 %47, i32 %48, i32 1, i32 0)
  br label %50

50:                                               ; preds = %42, %41, %19
  ret void
}

declare dso_local %struct.TYPE_5__* @get_item(%struct.obs_data*, i8*) #1

declare dso_local i32 @set_item_data(%struct.obs_data*, %struct.TYPE_5__**, i8*, i8*, i64, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
