; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-hotkey-name-map.c_reduce_edge.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-hotkey-name-map.c_reduce_edge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_13__*, i8*, i64, i32)* @reduce_edge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reduce_edge(%struct.TYPE_13__* %0, i8* %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_12__*, align 8
  %13 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %15 = call i8* @get_prefix(%struct.TYPE_13__* %14)
  store i8* %15, i8** %9, align 8
  %16 = load i8*, i8** %6, align 8
  store i8* %16, i8** %10, align 8
  store i64 0, i64* %11, align 8
  br label %17

17:                                               ; preds = %25, %4
  %18 = load i8*, i8** %9, align 8
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = load i8*, i8** %10, align 8
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp eq i32 %20, %23
  br i1 %24, label %25, label %32

25:                                               ; preds = %17
  %26 = load i64, i64* %11, align 8
  %27 = add i64 %26, 1
  store i64 %27, i64* %11, align 8
  %28 = load i8*, i8** %9, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 1
  store i8* %29, i8** %9, align 8
  %30 = load i8*, i8** %10, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 1
  store i8* %31, i8** %10, align 8
  br label %17

32:                                               ; preds = %17
  %33 = call %struct.TYPE_12__* (...) @new_node()
  store %struct.TYPE_12__* %33, %struct.TYPE_12__** %12, align 8
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call %struct.TYPE_13__* @da_push_back_new(i32 %36)
  store %struct.TYPE_13__* %37, %struct.TYPE_13__** %13, align 8
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 1
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %40, align 8
  %42 = call i32 @connect(%struct.TYPE_13__* %38, %struct.TYPE_12__* %41)
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %44 = load i8*, i8** %9, align 8
  %45 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* %11, align 8
  %49 = sub i64 %47, %48
  %50 = call i32 @set_prefix(%struct.TYPE_13__* %43, i8* %44, i64 %49)
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %52 = load i8*, i8** %10, align 8
  %53 = load i64, i64* %7, align 8
  %54 = load i64, i64* %11, align 8
  %55 = sub i64 %53, %54
  %56 = load i32, i32* %8, align 4
  %57 = call i32 @add_leaf(%struct.TYPE_12__* %51, i8* %52, i64 %55, i32 %56)
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %60 = call i32 @connect(%struct.TYPE_13__* %58, %struct.TYPE_12__* %59)
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %62 = load i64, i64* %11, align 8
  %63 = call i32 @shrink_prefix(%struct.TYPE_13__* %61, i64 %62)
  ret void
}

declare dso_local i8* @get_prefix(%struct.TYPE_13__*) #1

declare dso_local %struct.TYPE_12__* @new_node(...) #1

declare dso_local %struct.TYPE_13__* @da_push_back_new(i32) #1

declare dso_local i32 @connect(%struct.TYPE_13__*, %struct.TYPE_12__*) #1

declare dso_local i32 @set_prefix(%struct.TYPE_13__*, i8*, i64) #1

declare dso_local i32 @add_leaf(%struct.TYPE_12__*, i8*, i64, i32) #1

declare dso_local i32 @shrink_prefix(%struct.TYPE_13__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
