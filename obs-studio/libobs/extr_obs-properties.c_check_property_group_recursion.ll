; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-properties.c_check_property_group_recursion.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-properties.c_check_property_group_recursion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64, %struct.TYPE_7__* }

@OBS_PROPERTY_GROUP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, %struct.TYPE_8__*)* @check_property_group_recursion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_property_group_recursion(%struct.TYPE_8__* %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %5, align 8
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %9 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  store %struct.TYPE_7__* %10, %struct.TYPE_7__** %6, align 8
  br label %11

11:                                               ; preds = %37, %2
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %13 = icmp ne %struct.TYPE_7__* %12, null
  br i1 %13, label %14, label %41

14:                                               ; preds = %11
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @OBS_PROPERTY_GROUP, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %37

20:                                               ; preds = %14
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %22 = call %struct.TYPE_8__* @obs_property_group_content(%struct.TYPE_7__* %21)
  store %struct.TYPE_8__* %22, %struct.TYPE_8__** %7, align 8
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %25 = icmp eq %struct.TYPE_8__* %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  store i32 1, i32* %3, align 4
  br label %42

27:                                               ; preds = %20
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %30 = icmp eq %struct.TYPE_8__* %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  store i32 1, i32* %3, align 4
  br label %42

32:                                               ; preds = %27
  br label %33

33:                                               ; preds = %32
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %36 = call i32 @check_property_group_recursion(%struct.TYPE_8__* %34, %struct.TYPE_8__* %35)
  br label %37

37:                                               ; preds = %33, %14
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 1
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %39, align 8
  store %struct.TYPE_7__* %40, %struct.TYPE_7__** %6, align 8
  br label %11

41:                                               ; preds = %11
  store i32 0, i32* %3, align 4
  br label %42

42:                                               ; preds = %41, %31, %26
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local %struct.TYPE_8__* @obs_property_group_content(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
