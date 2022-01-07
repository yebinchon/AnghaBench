; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-source-transition.c_set_source.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-source-transition.c_set_source.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32*, i64, i64, %struct.TYPE_18__** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_18__*, i32, %struct.TYPE_18__*, i32 (%struct.TYPE_18__*, i64, %struct.TYPE_18__*)*)* @set_source to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_source(%struct.TYPE_18__* %0, i32 %1, %struct.TYPE_18__* %2, i32 (%struct.TYPE_18__*, i64, %struct.TYPE_18__*)* %3) #0 {
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_18__*, align 8
  %8 = alloca i32 (%struct.TYPE_18__*, i64, %struct.TYPE_18__*)*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_18__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_18__* %2, %struct.TYPE_18__** %7, align 8
  store i32 (%struct.TYPE_18__*, i64, %struct.TYPE_18__*)* %3, i32 (%struct.TYPE_18__*, i64, %struct.TYPE_18__*)** %8, align 8
  %13 = load i32, i32* %6, align 4
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %9, align 8
  store i32 1, i32* %11, align 4
  %15 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %16 = icmp ne %struct.TYPE_18__* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %4
  %18 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %19 = call i32 @obs_source_addref(%struct.TYPE_18__* %18)
  br label %20

20:                                               ; preds = %17, %4
  %21 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %22 = call i32 @lock_transition(%struct.TYPE_18__* %21)
  %23 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %23, i32 0, i32 3
  %25 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %24, align 8
  %26 = load i64, i64* %9, align 8
  %27 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %25, i64 %26
  %28 = load %struct.TYPE_18__*, %struct.TYPE_18__** %27, align 8
  store %struct.TYPE_18__* %28, %struct.TYPE_18__** %10, align 8
  %29 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %30 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %31 = icmp eq %struct.TYPE_18__* %29, %30
  br i1 %31, label %32, label %37

32:                                               ; preds = %20
  %33 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %34 = call i32 @unlock_transition(%struct.TYPE_18__* %33)
  %35 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %36 = call i32 @obs_source_release(%struct.TYPE_18__* %35)
  br label %115

37:                                               ; preds = %20
  %38 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = load i64, i64* %9, align 8
  %42 = getelementptr inbounds i32, i32* %40, i64 %41
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %12, align 4
  %44 = load i32, i32* %12, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %64

46:                                               ; preds = %37
  %47 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %48 = icmp ne %struct.TYPE_18__* %47, null
  br i1 %48, label %49, label %53

49:                                               ; preds = %46
  %50 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %51 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %52 = call i32 @obs_source_add_active_child(%struct.TYPE_18__* %50, %struct.TYPE_18__* %51)
  store i32 %52, i32* %11, align 4
  br label %53

53:                                               ; preds = %49, %46
  %54 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %55 = icmp ne %struct.TYPE_18__* %54, null
  br i1 %55, label %56, label %63

56:                                               ; preds = %53
  %57 = load i32, i32* %11, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %56
  %60 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %61 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %62 = call i32 @obs_source_remove_active_child(%struct.TYPE_18__* %60, %struct.TYPE_18__* %61)
  br label %63

63:                                               ; preds = %59, %56, %53
  br label %64

64:                                               ; preds = %63, %37
  %65 = load i32 (%struct.TYPE_18__*, i64, %struct.TYPE_18__*)*, i32 (%struct.TYPE_18__*, i64, %struct.TYPE_18__*)** %8, align 8
  %66 = icmp ne i32 (%struct.TYPE_18__*, i64, %struct.TYPE_18__*)* %65, null
  br i1 %66, label %67, label %76

67:                                               ; preds = %64
  %68 = load i32, i32* %11, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %67
  %71 = load i32 (%struct.TYPE_18__*, i64, %struct.TYPE_18__*)*, i32 (%struct.TYPE_18__*, i64, %struct.TYPE_18__*)** %8, align 8
  %72 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %73 = load i64, i64* %9, align 8
  %74 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %75 = call i32 %71(%struct.TYPE_18__* %72, i64 %73, %struct.TYPE_18__* %74)
  store i32 %75, i32* %11, align 4
  br label %76

76:                                               ; preds = %70, %67, %64
  %77 = load i32, i32* %11, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %76
  %80 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  br label %82

81:                                               ; preds = %76
  br label %82

82:                                               ; preds = %81, %79
  %83 = phi %struct.TYPE_18__* [ %80, %79 ], [ null, %81 ]
  %84 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %84, i32 0, i32 3
  %86 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %85, align 8
  %87 = load i64, i64* %9, align 8
  %88 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %86, i64 %87
  store %struct.TYPE_18__* %83, %struct.TYPE_18__** %88, align 8
  %89 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %90 = call i32 @unlock_transition(%struct.TYPE_18__* %89)
  %91 = load i32, i32* %11, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %109

93:                                               ; preds = %82
  %94 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = icmp eq i64 %96, 0
  br i1 %97, label %103, label %98

98:                                               ; preds = %93
  %99 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %99, i32 0, i32 2
  %101 = load i64, i64* %100, align 8
  %102 = icmp eq i64 %101, 0
  br i1 %102, label %103, label %108

103:                                              ; preds = %98, %93
  %104 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %105 = call i32 @recalculate_transition_size(%struct.TYPE_18__* %104)
  %106 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %107 = call i32 @recalculate_transition_matrices(%struct.TYPE_18__* %106)
  br label %108

108:                                              ; preds = %103, %98
  br label %112

109:                                              ; preds = %82
  %110 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %111 = call i32 @obs_source_release(%struct.TYPE_18__* %110)
  br label %112

112:                                              ; preds = %109, %108
  %113 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %114 = call i32 @obs_source_release(%struct.TYPE_18__* %113)
  br label %115

115:                                              ; preds = %112, %32
  ret void
}

declare dso_local i32 @obs_source_addref(%struct.TYPE_18__*) #1

declare dso_local i32 @lock_transition(%struct.TYPE_18__*) #1

declare dso_local i32 @unlock_transition(%struct.TYPE_18__*) #1

declare dso_local i32 @obs_source_release(%struct.TYPE_18__*) #1

declare dso_local i32 @obs_source_add_active_child(%struct.TYPE_18__*, %struct.TYPE_18__*) #1

declare dso_local i32 @obs_source_remove_active_child(%struct.TYPE_18__*, %struct.TYPE_18__*) #1

declare dso_local i32 @recalculate_transition_size(%struct.TYPE_18__*) #1

declare dso_local i32 @recalculate_transition_matrices(%struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
