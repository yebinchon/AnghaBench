; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-properties.c_obs_properties_add_group.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-properties.c_obs_properties_add_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32* }
%struct.group_data = type { i32, %struct.TYPE_10__* }

@OBS_PROPERTY_GROUP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @obs_properties_add_group(%struct.TYPE_10__* %0, i8* %1, i8* %2, i32 %3, %struct.TYPE_10__* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_10__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.group_data*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.TYPE_10__* %4, %struct.TYPE_10__** %11, align 8
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %15 = icmp ne %struct.TYPE_10__* %14, null
  br i1 %15, label %16, label %21

16:                                               ; preds = %5
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %18 = load i8*, i8** %8, align 8
  %19 = call i64 @has_prop(%struct.TYPE_10__* %17, i8* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %16, %5
  store i32* null, i32** %6, align 8
  br label %61

22:                                               ; preds = %16
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %24 = icmp ne %struct.TYPE_10__* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %22
  store i32* null, i32** %6, align 8
  br label %61

26:                                               ; preds = %22
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %29 = icmp eq %struct.TYPE_10__* %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  store i32* null, i32** %6, align 8
  br label %61

31:                                               ; preds = %26
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %34 = call i64 @check_property_group_recursion(%struct.TYPE_10__* %32, %struct.TYPE_10__* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  store i32* null, i32** %6, align 8
  br label %61

37:                                               ; preds = %31
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %40 = call i64 @check_property_group_duplicates(%struct.TYPE_10__* %38, %struct.TYPE_10__* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  store i32* null, i32** %6, align 8
  br label %61

43:                                               ; preds = %37
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %45 = load i8*, i8** %8, align 8
  %46 = load i8*, i8** %9, align 8
  %47 = load i32, i32* @OBS_PROPERTY_GROUP, align 4
  %48 = call i32* @new_prop(%struct.TYPE_10__* %44, i8* %45, i8* %46, i32 %47)
  store i32* %48, i32** %12, align 8
  %49 = load i32*, i32** %12, align 8
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 0
  store i32* %49, i32** %51, align 8
  %52 = load i32*, i32** %12, align 8
  %53 = call %struct.group_data* @get_property_data(i32* %52)
  store %struct.group_data* %53, %struct.group_data** %13, align 8
  %54 = load i32, i32* %10, align 4
  %55 = load %struct.group_data*, %struct.group_data** %13, align 8
  %56 = getelementptr inbounds %struct.group_data, %struct.group_data* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 8
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %58 = load %struct.group_data*, %struct.group_data** %13, align 8
  %59 = getelementptr inbounds %struct.group_data, %struct.group_data* %58, i32 0, i32 1
  store %struct.TYPE_10__* %57, %struct.TYPE_10__** %59, align 8
  %60 = load i32*, i32** %12, align 8
  store i32* %60, i32** %6, align 8
  br label %61

61:                                               ; preds = %43, %42, %36, %30, %25, %21
  %62 = load i32*, i32** %6, align 8
  ret i32* %62
}

declare dso_local i64 @has_prop(%struct.TYPE_10__*, i8*) #1

declare dso_local i64 @check_property_group_recursion(%struct.TYPE_10__*, %struct.TYPE_10__*) #1

declare dso_local i64 @check_property_group_duplicates(%struct.TYPE_10__*, %struct.TYPE_10__*) #1

declare dso_local i32* @new_prop(%struct.TYPE_10__*, i8*, i8*, i32) #1

declare dso_local %struct.group_data* @get_property_data(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
