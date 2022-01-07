; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-source-transition.c_obs_transition_set.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-source-transition.c_obs_transition_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32*, i32, i32, %struct.TYPE_13__** }

@.str = private unnamed_addr constant [21 x i8] c"obs_transition_clear\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @obs_transition_set(%struct.TYPE_13__* %0, %struct.TYPE_13__* %1) #0 {
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca [2 x %struct.TYPE_13__*], align 16
  %6 = alloca [2 x i32], align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %3, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %4, align 8
  %9 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %10 = call i32 @transition_valid(%struct.TYPE_13__* %9, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  br label %101

13:                                               ; preds = %2
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %15 = call i32 @obs_source_addref(%struct.TYPE_13__* %14)
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %17 = call i32 @lock_transition(%struct.TYPE_13__* %16)
  store i64 0, i64* %7, align 8
  br label %18

18:                                               ; preds = %48, %13
  %19 = load i64, i64* %7, align 8
  %20 = icmp ult i64 %19, 2
  br i1 %20, label %21, label %51

21:                                               ; preds = %18
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 3
  %24 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %23, align 8
  %25 = load i64, i64* %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %24, i64 %25
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %26, align 8
  %28 = load i64, i64* %7, align 8
  %29 = getelementptr inbounds [2 x %struct.TYPE_13__*], [2 x %struct.TYPE_13__*]* %5, i64 0, i64 %28
  store %struct.TYPE_13__* %27, %struct.TYPE_13__** %29, align 8
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = load i64, i64* %7, align 8
  %34 = getelementptr inbounds i32, i32* %32, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = load i64, i64* %7, align 8
  %37 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 %36
  store i32 %35, i32* %37, align 4
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 3
  %40 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %39, align 8
  %41 = load i64, i64* %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %40, i64 %41
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %42, align 8
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = load i64, i64* %7, align 8
  %47 = getelementptr inbounds i32, i32* %45, i64 %46
  store i32 0, i32* %47, align 4
  br label %48

48:                                               ; preds = %21
  %49 = load i64, i64* %7, align 8
  %50 = add i64 %49, 1
  store i64 %50, i64* %7, align 8
  br label %18

51:                                               ; preds = %18
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 0
  store i32 1, i32* %55, align 4
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %57, i32 0, i32 3
  %59 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %59, i64 0
  store %struct.TYPE_13__* %56, %struct.TYPE_13__** %60, align 8
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 1
  store i32 0, i32* %62, align 8
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i32 0, i32 2
  store i32 0, i32* %64, align 4
  %65 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %66 = call i32 @unlock_transition(%struct.TYPE_13__* %65)
  store i64 0, i64* %8, align 8
  br label %67

67:                                               ; preds = %91, %51
  %68 = load i64, i64* %8, align 8
  %69 = icmp ult i64 %68, 2
  br i1 %69, label %70, label %94

70:                                               ; preds = %67
  %71 = load i64, i64* %8, align 8
  %72 = getelementptr inbounds [2 x %struct.TYPE_13__*], [2 x %struct.TYPE_13__*]* %5, i64 0, i64 %71
  %73 = load %struct.TYPE_13__*, %struct.TYPE_13__** %72, align 8
  %74 = icmp ne %struct.TYPE_13__* %73, null
  br i1 %74, label %75, label %86

75:                                               ; preds = %70
  %76 = load i64, i64* %8, align 8
  %77 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %86

80:                                               ; preds = %75
  %81 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %82 = load i64, i64* %8, align 8
  %83 = getelementptr inbounds [2 x %struct.TYPE_13__*], [2 x %struct.TYPE_13__*]* %5, i64 0, i64 %82
  %84 = load %struct.TYPE_13__*, %struct.TYPE_13__** %83, align 8
  %85 = call i32 @obs_source_remove_active_child(%struct.TYPE_13__* %81, %struct.TYPE_13__* %84)
  br label %86

86:                                               ; preds = %80, %75, %70
  %87 = load i64, i64* %8, align 8
  %88 = getelementptr inbounds [2 x %struct.TYPE_13__*], [2 x %struct.TYPE_13__*]* %5, i64 0, i64 %87
  %89 = load %struct.TYPE_13__*, %struct.TYPE_13__** %88, align 8
  %90 = call i32 @obs_source_release(%struct.TYPE_13__* %89)
  br label %91

91:                                               ; preds = %86
  %92 = load i64, i64* %8, align 8
  %93 = add i64 %92, 1
  store i64 %93, i64* %8, align 8
  br label %67

94:                                               ; preds = %67
  %95 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %96 = icmp ne %struct.TYPE_13__* %95, null
  br i1 %96, label %97, label %101

97:                                               ; preds = %94
  %98 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %99 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %100 = call i32 @obs_source_add_active_child(%struct.TYPE_13__* %98, %struct.TYPE_13__* %99)
  br label %101

101:                                              ; preds = %12, %97, %94
  ret void
}

declare dso_local i32 @transition_valid(%struct.TYPE_13__*, i8*) #1

declare dso_local i32 @obs_source_addref(%struct.TYPE_13__*) #1

declare dso_local i32 @lock_transition(%struct.TYPE_13__*) #1

declare dso_local i32 @unlock_transition(%struct.TYPE_13__*) #1

declare dso_local i32 @obs_source_remove_active_child(%struct.TYPE_13__*, %struct.TYPE_13__*) #1

declare dso_local i32 @obs_source_release(%struct.TYPE_13__*) #1

declare dso_local i32 @obs_source_add_active_child(%struct.TYPE_13__*, %struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
