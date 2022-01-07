; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-source-transition.c_enum_child.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-source-transition.c_enum_child.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_13__, %struct.TYPE_12__ }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_12__ = type { i32 (i64, i32 (%struct.TYPE_14__*, %struct.TYPE_14__*, i8*)*, i8*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_14__*, %struct.TYPE_14__*, i32 (%struct.TYPE_14__*, %struct.TYPE_14__*, i8*)*, i8*)* @enum_child to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @enum_child(%struct.TYPE_14__* %0, %struct.TYPE_14__* %1, i32 (%struct.TYPE_14__*, %struct.TYPE_14__*, i8*)* %2, i8* %3) #0 {
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca i32 (%struct.TYPE_14__*, %struct.TYPE_14__*, i8*)*, align 8
  %8 = alloca i8*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %5, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %6, align 8
  store i32 (%struct.TYPE_14__*, %struct.TYPE_14__*, i8*)* %2, i32 (%struct.TYPE_14__*, %struct.TYPE_14__*, i8*)** %7, align 8
  store i8* %3, i8** %8, align 8
  %9 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %10 = icmp ne %struct.TYPE_14__* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %4
  br label %42

12:                                               ; preds = %4
  %13 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %36

18:                                               ; preds = %12
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 0
  %22 = load i32 (i64, i32 (%struct.TYPE_14__*, %struct.TYPE_14__*, i8*)*, i8*)*, i32 (i64, i32 (%struct.TYPE_14__*, %struct.TYPE_14__*, i8*)*, i8*)** %21, align 8
  %23 = icmp ne i32 (i64, i32 (%struct.TYPE_14__*, %struct.TYPE_14__*, i8*)*, i8*)* %22, null
  br i1 %23, label %24, label %36

24:                                               ; preds = %18
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 0
  %28 = load i32 (i64, i32 (%struct.TYPE_14__*, %struct.TYPE_14__*, i8*)*, i8*)*, i32 (i64, i32 (%struct.TYPE_14__*, %struct.TYPE_14__*, i8*)*, i8*)** %27, align 8
  %29 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i32 (%struct.TYPE_14__*, %struct.TYPE_14__*, i8*)*, i32 (%struct.TYPE_14__*, %struct.TYPE_14__*, i8*)** %7, align 8
  %34 = load i8*, i8** %8, align 8
  %35 = call i32 %28(i64 %32, i32 (%struct.TYPE_14__*, %struct.TYPE_14__*, i8*)* %33, i8* %34)
  br label %36

36:                                               ; preds = %24, %18, %12
  %37 = load i32 (%struct.TYPE_14__*, %struct.TYPE_14__*, i8*)*, i32 (%struct.TYPE_14__*, %struct.TYPE_14__*, i8*)** %7, align 8
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %40 = load i8*, i8** %8, align 8
  %41 = call i32 %37(%struct.TYPE_14__* %38, %struct.TYPE_14__* %39, i8* %40)
  br label %42

42:                                               ; preds = %36, %11
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
