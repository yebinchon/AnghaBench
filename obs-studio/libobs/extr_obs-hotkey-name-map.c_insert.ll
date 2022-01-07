; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-hotkey-name-map.c_insert.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-hotkey-name-map.c_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, %struct.TYPE_15__, i64 }
%struct.TYPE_15__ = type { i64, %struct.TYPE_14__* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_14__*, %struct.TYPE_13__*, i8*, i64, i32)* @insert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @insert(%struct.TYPE_14__* %0, %struct.TYPE_13__* %1, i8* %2, i64 %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_13__*, align 8
  %12 = alloca %struct.TYPE_14__*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %6, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 %4, i32* %10, align 4
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %43

19:                                               ; preds = %5
  %20 = load i64, i64* %9, align 8
  %21 = icmp ugt i64 %20, 0
  br i1 %21, label %22, label %43

22:                                               ; preds = %19
  %23 = call %struct.TYPE_13__* (...) @new_node()
  store %struct.TYPE_13__* %23, %struct.TYPE_13__** %11, align 8
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %26 = call i32 @connect(%struct.TYPE_14__* %24, %struct.TYPE_13__* %25)
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i32 0, i32 1
  %29 = bitcast %struct.TYPE_15__* %28 to { i64, %struct.TYPE_14__* }*
  %30 = getelementptr inbounds { i64, %struct.TYPE_14__* }, { i64, %struct.TYPE_14__* }* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds { i64, %struct.TYPE_14__* }, { i64, %struct.TYPE_14__* }* %29, i32 0, i32 1
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %32, align 8
  %34 = call %struct.TYPE_14__* @da_push_back_new(i64 %31, %struct.TYPE_14__* %33)
  store %struct.TYPE_14__* %34, %struct.TYPE_14__** %12, align 8
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %37 = call i32 @connect(%struct.TYPE_14__* %35, %struct.TYPE_13__* %36)
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %39 = load i8*, i8** %8, align 8
  %40 = load i64, i64* %9, align 8
  %41 = load i32, i32* %10, align 4
  %42 = call i32 @add_leaf(%struct.TYPE_13__* %38, i8* %39, i64 %40, i32 %41)
  br label %109

43:                                               ; preds = %19, %5
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %43
  %49 = load i64, i64* %9, align 8
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %48
  %52 = load i32, i32* %10, align 4
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 8
  br label %109

55:                                               ; preds = %48, %43
  store i64 0, i64* %13, align 8
  br label %56

56:                                               ; preds = %100, %55
  %57 = load i64, i64* %13, align 8
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp ult i64 %57, %61
  br i1 %62, label %63, label %103

63:                                               ; preds = %56
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %65, i32 0, i32 1
  %67 = load %struct.TYPE_14__*, %struct.TYPE_14__** %66, align 8
  %68 = load i64, i64* %13, align 8
  %69 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %67, i64 %68
  store %struct.TYPE_14__* %69, %struct.TYPE_14__** %14, align 8
  %70 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %71 = load i8*, i8** %8, align 8
  %72 = load i64, i64* %9, align 8
  %73 = call i32 @compare_prefix(%struct.TYPE_14__* %70, i8* %71, i64 %72)
  switch i32 %73, label %99 [
    i32 129, label %74
    i32 130, label %75
    i32 128, label %75
    i32 131, label %93
  ]

74:                                               ; preds = %63
  br label %100

75:                                               ; preds = %63, %63
  %76 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %77 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %78 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %77, i32 0, i32 1
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %78, align 8
  %80 = load i8*, i8** %8, align 8
  %81 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %82 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i8, i8* %80, i64 %84
  %86 = load i64, i64* %9, align 8
  %87 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %88 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = sext i32 %89 to i64
  %91 = sub i64 %86, %90
  %92 = load i32, i32* %10, align 4
  call void @insert(%struct.TYPE_14__* %76, %struct.TYPE_13__* %79, i8* %85, i64 %91, i32 %92)
  br label %109

93:                                               ; preds = %63
  %94 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %95 = load i8*, i8** %8, align 8
  %96 = load i64, i64* %9, align 8
  %97 = load i32, i32* %10, align 4
  %98 = call i32 @reduce_edge(%struct.TYPE_14__* %94, i8* %95, i64 %96, i32 %97)
  br label %109

99:                                               ; preds = %63
  br label %100

100:                                              ; preds = %99, %74
  %101 = load i64, i64* %13, align 8
  %102 = add i64 %101, 1
  store i64 %102, i64* %13, align 8
  br label %56

103:                                              ; preds = %56
  %104 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %105 = load i8*, i8** %8, align 8
  %106 = load i64, i64* %9, align 8
  %107 = load i32, i32* %10, align 4
  %108 = call i32 @add_leaf(%struct.TYPE_13__* %104, i8* %105, i64 %106, i32 %107)
  br label %109

109:                                              ; preds = %103, %93, %75, %51, %22
  ret void
}

declare dso_local %struct.TYPE_13__* @new_node(...) #1

declare dso_local i32 @connect(%struct.TYPE_14__*, %struct.TYPE_13__*) #1

declare dso_local %struct.TYPE_14__* @da_push_back_new(i64, %struct.TYPE_14__*) #1

declare dso_local i32 @add_leaf(%struct.TYPE_13__*, i8*, i64, i32) #1

declare dso_local i32 @compare_prefix(%struct.TYPE_14__*, i8*, i64) #1

declare dso_local i32 @reduce_edge(%struct.TYPE_14__*, i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
