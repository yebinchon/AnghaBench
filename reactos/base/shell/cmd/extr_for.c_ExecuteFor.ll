; ModuleID = '/home/carl/AnghaBench/reactos/base/shell/cmd/extr_for.c_ExecuteFor.c'
source_filename = "/home/carl/AnghaBench/reactos/base/shell/cmd/extr_for.c_ExecuteFor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_27__ = type { i32, %struct.TYPE_27__*, %struct.TYPE_27__**, i32 }
%struct.TYPE_28__ = type { %struct.TYPE_26__ }
%struct.TYPE_26__ = type { i32, i64, %struct.TYPE_27__*, i32, i32 }

@CMDLINE_LENGTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Cannot allocate memory for lpNew!\0A\00", align 1
@fc = common dso_local global %struct.TYPE_27__* null, align 8
@FOR_F = common dso_local global i32 0, align 4
@FOR_LOOP = common dso_local global i32 0, align 4
@FOR_RECURSIVE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c".\00", align 1
@MAX_PATH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ExecuteFor(%struct.TYPE_28__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_28__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_27__*, align 8
  %7 = alloca %struct.TYPE_27__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_27__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.TYPE_28__* %0, %struct.TYPE_28__** %3, align 8
  %12 = load i32, i32* @CMDLINE_LENGTH, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %4, align 8
  %15 = alloca %struct.TYPE_27__, i64 %13, align 16
  store i64 %13, i64* %5, align 8
  store %struct.TYPE_27__* %15, %struct.TYPE_27__** %6, align 8
  %16 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.TYPE_27__* @DoDelayedExpansion(i32 %19)
  store %struct.TYPE_27__* %20, %struct.TYPE_27__** %9, align 8
  %21 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %22 = icmp ne %struct.TYPE_27__* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %124

24:                                               ; preds = %1
  %25 = call %struct.TYPE_27__* @cmd_alloc(i32 4)
  store %struct.TYPE_27__* %25, %struct.TYPE_27__** %7, align 8
  %26 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %27 = icmp ne %struct.TYPE_27__* %26, null
  br i1 %27, label %32, label %28

28:                                               ; preds = %24
  %29 = call i32 @WARN(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %30 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %31 = call i32 @cmd_free(%struct.TYPE_27__* %30)
  store i32 1, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %124

32:                                               ; preds = %24
  %33 = load %struct.TYPE_27__*, %struct.TYPE_27__** @fc, align 8
  %34 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %34, i32 0, i32 1
  store %struct.TYPE_27__* %33, %struct.TYPE_27__** %35, align 8
  %36 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %40, i32 0, i32 3
  store i32 %39, i32* %41, align 8
  %42 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %42, i32 0, i32 0
  store i32 1, i32* %43, align 8
  %44 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %44, i32 0, i32 2
  store %struct.TYPE_27__** %6, %struct.TYPE_27__*** %45, align 8
  %46 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %47 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %48, i32 0, i32 2
  store %struct.TYPE_27__* %46, %struct.TYPE_27__** %49, align 8
  %50 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  store %struct.TYPE_27__* %50, %struct.TYPE_27__** @fc, align 8
  %51 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @FOR_F, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %32
  %59 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %60 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %61 = call i32 @ForF(%struct.TYPE_28__* %59, %struct.TYPE_27__* %60, %struct.TYPE_27__* %15)
  store i32 %61, i32* %8, align 4
  br label %110

62:                                               ; preds = %32
  %63 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @FOR_LOOP, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %62
  %71 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %72 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %73 = call i32 @ForLoop(%struct.TYPE_28__* %71, %struct.TYPE_27__* %72, %struct.TYPE_27__* %15)
  store i32 %73, i32* %8, align 4
  br label %109

74:                                               ; preds = %62
  %75 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* @FOR_RECURSIVE, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %104

82:                                               ; preds = %74
  %83 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %82
  %89 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  br label %95

93:                                               ; preds = %82
  %94 = call i64 @_T(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %95

95:                                               ; preds = %93, %88
  %96 = phi i64 [ %92, %88 ], [ %94, %93 ]
  %97 = load i32, i32* @MAX_PATH, align 4
  %98 = call i64 @GetFullPathName(i64 %96, i32 %97, %struct.TYPE_27__* %15, i32* null)
  store i64 %98, i64* %11, align 8
  %99 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %100 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %101 = load i64, i64* %11, align 8
  %102 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %15, i64 %101
  %103 = call i32 @ForRecursive(%struct.TYPE_28__* %99, %struct.TYPE_27__* %100, %struct.TYPE_27__* %15, %struct.TYPE_27__* %102)
  store i32 %103, i32* %8, align 4
  br label %108

104:                                              ; preds = %74
  %105 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %106 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %107 = call i32 @ForDir(%struct.TYPE_28__* %105, %struct.TYPE_27__* %106, %struct.TYPE_27__* %15, %struct.TYPE_27__* %15)
  store i32 %107, i32* %8, align 4
  br label %108

108:                                              ; preds = %104, %95
  br label %109

109:                                              ; preds = %108, %70
  br label %110

110:                                              ; preds = %109, %58
  %111 = load %struct.TYPE_27__*, %struct.TYPE_27__** @fc, align 8
  %112 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %113 = icmp eq %struct.TYPE_27__* %111, %112
  br i1 %113, label %114, label %118

114:                                              ; preds = %110
  %115 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %116 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %115, i32 0, i32 1
  %117 = load %struct.TYPE_27__*, %struct.TYPE_27__** %116, align 8
  store %struct.TYPE_27__* %117, %struct.TYPE_27__** @fc, align 8
  br label %118

118:                                              ; preds = %114, %110
  %119 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %120 = call i32 @cmd_free(%struct.TYPE_27__* %119)
  %121 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %122 = call i32 @cmd_free(%struct.TYPE_27__* %121)
  %123 = load i32, i32* %8, align 4
  store i32 %123, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %124

124:                                              ; preds = %118, %28, %23
  %125 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %125)
  %126 = load i32, i32* %2, align 4
  ret i32 %126
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.TYPE_27__* @DoDelayedExpansion(i32) #2

declare dso_local %struct.TYPE_27__* @cmd_alloc(i32) #2

declare dso_local i32 @WARN(i8*) #2

declare dso_local i32 @cmd_free(%struct.TYPE_27__*) #2

declare dso_local i32 @ForF(%struct.TYPE_28__*, %struct.TYPE_27__*, %struct.TYPE_27__*) #2

declare dso_local i32 @ForLoop(%struct.TYPE_28__*, %struct.TYPE_27__*, %struct.TYPE_27__*) #2

declare dso_local i64 @GetFullPathName(i64, i32, %struct.TYPE_27__*, i32*) #2

declare dso_local i64 @_T(i8*) #2

declare dso_local i32 @ForRecursive(%struct.TYPE_28__*, %struct.TYPE_27__*, %struct.TYPE_27__*, %struct.TYPE_27__*) #2

declare dso_local i32 @ForDir(%struct.TYPE_28__*, %struct.TYPE_27__*, %struct.TYPE_27__*, %struct.TYPE_27__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
