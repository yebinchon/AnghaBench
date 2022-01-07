; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-source-transition.c_obs_transition_clear.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-source-transition.c_obs_transition_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32*, i32, i32, %struct.TYPE_9__** }

@.str = private unnamed_addr constant [21 x i8] c"obs_transition_clear\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @obs_transition_clear(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca [2 x %struct.TYPE_9__*], align 16
  %4 = alloca [2 x i32], align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %2, align 8
  %7 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %8 = call i32 @transition_valid(%struct.TYPE_9__* %7, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %81

11:                                               ; preds = %1
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %13 = call i32 @lock_transition(%struct.TYPE_9__* %12)
  store i64 0, i64* %5, align 8
  br label %14

14:                                               ; preds = %44, %11
  %15 = load i64, i64* %5, align 8
  %16 = icmp ult i64 %15, 2
  br i1 %16, label %17, label %47

17:                                               ; preds = %14
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 3
  %20 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %19, align 8
  %21 = load i64, i64* %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %20, i64 %21
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %22, align 8
  %24 = load i64, i64* %5, align 8
  %25 = getelementptr inbounds [2 x %struct.TYPE_9__*], [2 x %struct.TYPE_9__*]* %3, i64 0, i64 %24
  store %struct.TYPE_9__* %23, %struct.TYPE_9__** %25, align 8
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = load i64, i64* %5, align 8
  %30 = getelementptr inbounds i32, i32* %28, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = load i64, i64* %5, align 8
  %33 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 %32
  store i32 %31, i32* %33, align 4
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 3
  %36 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %35, align 8
  %37 = load i64, i64* %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %36, i64 %37
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %38, align 8
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = load i64, i64* %5, align 8
  %43 = getelementptr inbounds i32, i32* %41, i64 %42
  store i32 0, i32* %43, align 4
  br label %44

44:                                               ; preds = %17
  %45 = load i64, i64* %5, align 8
  %46 = add i64 %45, 1
  store i64 %46, i64* %5, align 8
  br label %14

47:                                               ; preds = %14
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 1
  store i32 0, i32* %49, align 8
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 2
  store i32 0, i32* %51, align 4
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %53 = call i32 @unlock_transition(%struct.TYPE_9__* %52)
  store i64 0, i64* %6, align 8
  br label %54

54:                                               ; preds = %78, %47
  %55 = load i64, i64* %6, align 8
  %56 = icmp ult i64 %55, 2
  br i1 %56, label %57, label %81

57:                                               ; preds = %54
  %58 = load i64, i64* %6, align 8
  %59 = getelementptr inbounds [2 x %struct.TYPE_9__*], [2 x %struct.TYPE_9__*]* %3, i64 0, i64 %58
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %59, align 8
  %61 = icmp ne %struct.TYPE_9__* %60, null
  br i1 %61, label %62, label %73

62:                                               ; preds = %57
  %63 = load i64, i64* %6, align 8
  %64 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %62
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %69 = load i64, i64* %6, align 8
  %70 = getelementptr inbounds [2 x %struct.TYPE_9__*], [2 x %struct.TYPE_9__*]* %3, i64 0, i64 %69
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %70, align 8
  %72 = call i32 @obs_source_remove_active_child(%struct.TYPE_9__* %68, %struct.TYPE_9__* %71)
  br label %73

73:                                               ; preds = %67, %62, %57
  %74 = load i64, i64* %6, align 8
  %75 = getelementptr inbounds [2 x %struct.TYPE_9__*], [2 x %struct.TYPE_9__*]* %3, i64 0, i64 %74
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %75, align 8
  %77 = call i32 @obs_source_release(%struct.TYPE_9__* %76)
  br label %78

78:                                               ; preds = %73
  %79 = load i64, i64* %6, align 8
  %80 = add i64 %79, 1
  store i64 %80, i64* %6, align 8
  br label %54

81:                                               ; preds = %10, %54
  ret void
}

declare dso_local i32 @transition_valid(%struct.TYPE_9__*, i8*) #1

declare dso_local i32 @lock_transition(%struct.TYPE_9__*) #1

declare dso_local i32 @unlock_transition(%struct.TYPE_9__*) #1

declare dso_local i32 @obs_source_remove_active_child(%struct.TYPE_9__*, %struct.TYPE_9__*) #1

declare dso_local i32 @obs_source_release(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
