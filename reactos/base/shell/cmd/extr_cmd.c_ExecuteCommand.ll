; ModuleID = '/home/carl/AnghaBench/reactos/base/shell/cmd/extr_cmd.c_ExecuteCommand.c'
source_filename = "/home/carl/AnghaBench/reactos/base/shell/cmd/extr_cmd.c_ExecuteCommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, %struct.TYPE_9__*, %struct.TYPE_9__*, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32 }

@nErrorLevel = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ExecuteCommand(%struct.TYPE_9__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @PerformRedirection(i32 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %104

14:                                               ; preds = %1
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  switch i32 %17, label %98 [
    i32 135, label %18
    i32 128, label %45
    i32 136, label %45
    i32 130, label %45
    i32 132, label %60
    i32 131, label %75
    i32 129, label %89
    i32 133, label %92
    i32 134, label %95
  ]

18:                                               ; preds = %14
  store i32 1, i32* %7, align 4
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 4
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @DoDelayedExpansion(i32 %22)
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %44

26:                                               ; preds = %18
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 4
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @DoDelayedExpansion(i32 %30)
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %26
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* %6, align 4
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %38 = call i32 @DoCommand(i32 %35, i32 %36, %struct.TYPE_9__* %37)
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @cmd_free(i32 %39)
  br label %41

41:                                               ; preds = %34, %26
  %42 = load i32, i32* %5, align 4
  %43 = call i32 @cmd_free(i32 %42)
  br label %44

44:                                               ; preds = %41, %18
  br label %98

45:                                               ; preds = %14, %14, %14
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 3
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %47, align 8
  store %struct.TYPE_9__* %48, %struct.TYPE_9__** %4, align 8
  br label %49

49:                                               ; preds = %55, %45
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %51 = icmp ne %struct.TYPE_9__* %50, null
  br i1 %51, label %52, label %59

52:                                               ; preds = %49
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %54 = call i32 @ExecuteCommand(%struct.TYPE_9__* %53)
  store i32 %54, i32* %7, align 4
  br label %55

55:                                               ; preds = %52
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 2
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %57, align 8
  store %struct.TYPE_9__* %58, %struct.TYPE_9__** %4, align 8
  br label %49

59:                                               ; preds = %49
  br label %98

60:                                               ; preds = %14
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 3
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %62, align 8
  store %struct.TYPE_9__* %63, %struct.TYPE_9__** %4, align 8
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %65 = call i32 @ExecuteCommand(%struct.TYPE_9__* %64)
  store i32 %65, i32* %7, align 4
  %66 = load i32, i32* %7, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %60
  %69 = load i32, i32* %7, align 4
  store i32 %69, i32* @nErrorLevel, align 4
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 2
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %71, align 8
  %73 = call i32 @ExecuteCommand(%struct.TYPE_9__* %72)
  store i32 %73, i32* %7, align 4
  br label %74

74:                                               ; preds = %68, %60
  br label %98

75:                                               ; preds = %14
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 3
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %77, align 8
  store %struct.TYPE_9__* %78, %struct.TYPE_9__** %4, align 8
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %80 = call i32 @ExecuteCommand(%struct.TYPE_9__* %79)
  store i32 %80, i32* %7, align 4
  %81 = load i32, i32* %7, align 4
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %75
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 2
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %85, align 8
  %87 = call i32 @ExecuteCommand(%struct.TYPE_9__* %86)
  store i32 %87, i32* %7, align 4
  br label %88

88:                                               ; preds = %83, %75
  br label %98

89:                                               ; preds = %14
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %91 = call i32 @ExecutePipeline(%struct.TYPE_9__* %90)
  store i32 %91, i32* %7, align 4
  br label %98

92:                                               ; preds = %14
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %94 = call i32 @ExecuteIf(%struct.TYPE_9__* %93)
  store i32 %94, i32* %7, align 4
  br label %98

95:                                               ; preds = %14
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %97 = call i32 @ExecuteFor(%struct.TYPE_9__* %96)
  store i32 %97, i32* %7, align 4
  br label %98

98:                                               ; preds = %14, %95, %92, %89, %88, %74, %59, %44
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @UndoRedirection(i32 %101, i32* null)
  %103 = load i32, i32* %7, align 4
  store i32 %103, i32* %2, align 4
  br label %104

104:                                              ; preds = %98, %13
  %105 = load i32, i32* %2, align 4
  ret i32 %105
}

declare dso_local i32 @PerformRedirection(i32) #1

declare dso_local i32 @DoDelayedExpansion(i32) #1

declare dso_local i32 @DoCommand(i32, i32, %struct.TYPE_9__*) #1

declare dso_local i32 @cmd_free(i32) #1

declare dso_local i32 @ExecutePipeline(%struct.TYPE_9__*) #1

declare dso_local i32 @ExecuteIf(%struct.TYPE_9__*) #1

declare dso_local i32 @ExecuteFor(%struct.TYPE_9__*) #1

declare dso_local i32 @UndoRedirection(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
