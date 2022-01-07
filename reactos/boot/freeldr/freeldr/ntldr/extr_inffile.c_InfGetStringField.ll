; ModuleID = '/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/ntldr/extr_inffile.c_InfGetStringField.c'
source_filename = "/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/ntldr/extr_inffile.c_InfGetStringField.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32* }
%struct.TYPE_6__ = type { i64, %struct.TYPE_7__*, i32* }
%struct.TYPE_7__ = type { i32*, %struct.TYPE_7__* }

@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @InfGetStringField(%struct.TYPE_5__* %0, i64 %1, i32* %2, i64 %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64*, align 8
  %12 = alloca %struct.TYPE_6__*, align 8
  %13 = alloca %struct.TYPE_7__*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32* %2, i32** %9, align 8
  store i64 %3, i64* %10, align 8
  store i64* %4, i64** %11, align 8
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %18 = icmp eq %struct.TYPE_5__* %17, null
  br i1 %18, label %24, label %19

19:                                               ; preds = %5
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %19, %5
  %25 = load i32, i32* @FALSE, align 4
  store i32 %25, i32* %6, align 4
  br label %93

26:                                               ; preds = %19
  %27 = load i64*, i64** %11, align 8
  %28 = icmp ne i64* %27, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %26
  %30 = load i64*, i64** %11, align 8
  store i64 0, i64* %30, align 8
  br label %31

31:                                               ; preds = %29, %26
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = bitcast i32* %34 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %35, %struct.TYPE_6__** %12, align 8
  %36 = load i64, i64* %8, align 8
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp sgt i64 %36, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %31
  %42 = load i32, i32* @FALSE, align 4
  store i32 %42, i32* %6, align 4
  br label %93

43:                                               ; preds = %31
  %44 = load i64, i64* %8, align 8
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %43
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 2
  %49 = load i32*, i32** %48, align 8
  store i32* %49, i32** %15, align 8
  br label %69

50:                                               ; preds = %43
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 1
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %52, align 8
  store %struct.TYPE_7__* %53, %struct.TYPE_7__** %13, align 8
  store i64 1, i64* %14, align 8
  br label %54

54:                                               ; preds = %62, %50
  %55 = load i64, i64* %14, align 8
  %56 = load i64, i64* %8, align 8
  %57 = icmp slt i64 %55, %56
  br i1 %57, label %58, label %65

58:                                               ; preds = %54
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 1
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %60, align 8
  store %struct.TYPE_7__* %61, %struct.TYPE_7__** %13, align 8
  br label %62

62:                                               ; preds = %58
  %63 = load i64, i64* %14, align 8
  %64 = add nsw i64 %63, 1
  store i64 %64, i64* %14, align 8
  br label %54

65:                                               ; preds = %54
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  store i32* %68, i32** %15, align 8
  br label %69

69:                                               ; preds = %65, %46
  %70 = load i32*, i32** %15, align 8
  %71 = call i64 @strlen(i32* %70)
  %72 = add nsw i64 %71, 1
  store i64 %72, i64* %16, align 8
  %73 = load i64*, i64** %11, align 8
  %74 = icmp ne i64* %73, null
  br i1 %74, label %75, label %78

75:                                               ; preds = %69
  %76 = load i64, i64* %16, align 8
  %77 = load i64*, i64** %11, align 8
  store i64 %76, i64* %77, align 8
  br label %78

78:                                               ; preds = %75, %69
  %79 = load i32*, i32** %9, align 8
  %80 = icmp ne i32* %79, null
  br i1 %80, label %81, label %91

81:                                               ; preds = %78
  %82 = load i64, i64* %10, align 8
  %83 = load i64, i64* %16, align 8
  %84 = icmp slt i64 %82, %83
  br i1 %84, label %85, label %87

85:                                               ; preds = %81
  %86 = load i32, i32* @FALSE, align 4
  store i32 %86, i32* %6, align 4
  br label %93

87:                                               ; preds = %81
  %88 = load i32*, i32** %9, align 8
  %89 = load i32*, i32** %15, align 8
  %90 = call i32 @strcpy(i32* %88, i32* %89)
  br label %91

91:                                               ; preds = %87, %78
  %92 = load i32, i32* @TRUE, align 4
  store i32 %92, i32* %6, align 4
  br label %93

93:                                               ; preds = %91, %85, %41, %24
  %94 = load i32, i32* %6, align 4
  ret i32 %94
}

declare dso_local i64 @strlen(i32*) #1

declare dso_local i32 @strcpy(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
