; ModuleID = '/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/ntldr/extr_inffile.c_InfGetBinaryField.c'
source_filename = "/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/ntldr/extr_inffile.c_InfGetBinaryField.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32* }
%struct.TYPE_6__ = type { i64, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_7__*, i32 }

@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @InfGetBinaryField(%struct.TYPE_5__* %0, i64 %1, i64* %2, i64 %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64*, align 8
  %12 = alloca %struct.TYPE_6__*, align 8
  %13 = alloca %struct.TYPE_7__*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64* %2, i64** %9, align 8
  store i64 %3, i64* %10, align 8
  store i64* %4, i64** %11, align 8
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %18 = icmp eq %struct.TYPE_5__* %17, null
  br i1 %18, label %27, label %19

19:                                               ; preds = %5
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %19
  %25 = load i64, i64* %8, align 8
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %24, %19, %5
  %28 = load i32, i32* @FALSE, align 4
  store i32 %28, i32* %6, align 4
  br label %101

29:                                               ; preds = %24
  %30 = load i64*, i64** %11, align 8
  %31 = icmp ne i64* %30, null
  br i1 %31, label %32, label %34

32:                                               ; preds = %29
  %33 = load i64*, i64** %11, align 8
  store i64 0, i64* %33, align 8
  br label %34

34:                                               ; preds = %32, %29
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = bitcast i32* %37 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %38, %struct.TYPE_6__** %12, align 8
  %39 = load i64, i64* %8, align 8
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp sgt i64 %39, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %34
  %45 = load i32, i32* @FALSE, align 4
  store i32 %45, i32* %6, align 4
  br label %101

46:                                               ; preds = %34
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 1
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %48, align 8
  store %struct.TYPE_7__* %49, %struct.TYPE_7__** %13, align 8
  store i64 1, i64* %14, align 8
  br label %50

50:                                               ; preds = %58, %46
  %51 = load i64, i64* %14, align 8
  %52 = load i64, i64* %8, align 8
  %53 = icmp slt i64 %51, %52
  br i1 %53, label %54, label %61

54:                                               ; preds = %50
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %56, align 8
  store %struct.TYPE_7__* %57, %struct.TYPE_7__** %13, align 8
  br label %58

58:                                               ; preds = %54
  %59 = load i64, i64* %14, align 8
  %60 = add nsw i64 %59, 1
  store i64 %60, i64* %14, align 8
  br label %50

61:                                               ; preds = %50
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* %8, align 8
  %66 = sub nsw i64 %64, %65
  %67 = add nsw i64 %66, 1
  store i64 %67, i64* %15, align 8
  %68 = load i64*, i64** %11, align 8
  %69 = icmp ne i64* %68, null
  br i1 %69, label %70, label %73

70:                                               ; preds = %61
  %71 = load i64, i64* %15, align 8
  %72 = load i64*, i64** %11, align 8
  store i64 %71, i64* %72, align 8
  br label %73

73:                                               ; preds = %70, %61
  %74 = load i64*, i64** %9, align 8
  %75 = icmp ne i64* %74, null
  br i1 %75, label %76, label %99

76:                                               ; preds = %73
  %77 = load i64, i64* %10, align 8
  %78 = load i64, i64* %15, align 8
  %79 = icmp slt i64 %77, %78
  br i1 %79, label %80, label %82

80:                                               ; preds = %76
  %81 = load i32, i32* @FALSE, align 4
  store i32 %81, i32* %6, align 4
  br label %101

82:                                               ; preds = %76
  %83 = load i64*, i64** %9, align 8
  store i64* %83, i64** %16, align 8
  br label %84

84:                                               ; preds = %87, %82
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %86 = icmp ne %struct.TYPE_7__* %85, null
  br i1 %86, label %87, label %98

87:                                               ; preds = %84
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = call i64 @atoi(i32 %90)
  %92 = load i64*, i64** %16, align 8
  store i64 %91, i64* %92, align 8
  %93 = load i64*, i64** %16, align 8
  %94 = getelementptr inbounds i64, i64* %93, i32 1
  store i64* %94, i64** %16, align 8
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 0
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %96, align 8
  store %struct.TYPE_7__* %97, %struct.TYPE_7__** %13, align 8
  br label %84

98:                                               ; preds = %84
  br label %99

99:                                               ; preds = %98, %73
  %100 = load i32, i32* @TRUE, align 4
  store i32 %100, i32* %6, align 4
  br label %101

101:                                              ; preds = %99, %80, %44, %27
  %102 = load i32, i32* %6, align 4
  ret i32 %102
}

declare dso_local i64 @atoi(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
