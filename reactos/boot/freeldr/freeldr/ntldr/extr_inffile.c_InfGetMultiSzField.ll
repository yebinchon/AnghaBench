; ModuleID = '/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/ntldr/extr_inffile.c_InfGetMultiSzField.c'
source_filename = "/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/ntldr/extr_inffile.c_InfGetMultiSzField.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32* }
%struct.TYPE_6__ = type { i64, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_7__*, i32 }

@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @InfGetMultiSzField(%struct.TYPE_5__* %0, i64 %1, i64* %2, i64 %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64*, align 8
  %12 = alloca %struct.TYPE_6__*, align 8
  %13 = alloca %struct.TYPE_7__*, align 8
  %14 = alloca %struct.TYPE_7__*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64* %2, i64** %9, align 8
  store i64 %3, i64* %10, align 8
  store i64* %4, i64** %11, align 8
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %19 = icmp eq %struct.TYPE_5__* %18, null
  br i1 %19, label %28, label %20

20:                                               ; preds = %5
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = icmp eq i32* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %20
  %26 = load i64, i64* %8, align 8
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %25, %20, %5
  %29 = load i32, i32* @FALSE, align 4
  store i32 %29, i32* %6, align 4
  br label %122

30:                                               ; preds = %25
  %31 = load i64*, i64** %11, align 8
  %32 = icmp ne i64* %31, null
  br i1 %32, label %33, label %35

33:                                               ; preds = %30
  %34 = load i64*, i64** %11, align 8
  store i64 0, i64* %34, align 8
  br label %35

35:                                               ; preds = %33, %30
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = bitcast i32* %38 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %39, %struct.TYPE_6__** %12, align 8
  %40 = load i64, i64* %8, align 8
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp sgt i64 %40, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %35
  %46 = load i32, i32* @FALSE, align 4
  store i32 %46, i32* %6, align 4
  br label %122

47:                                               ; preds = %35
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 1
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %49, align 8
  store %struct.TYPE_7__* %50, %struct.TYPE_7__** %13, align 8
  store i64 1, i64* %15, align 8
  br label %51

51:                                               ; preds = %59, %47
  %52 = load i64, i64* %15, align 8
  %53 = load i64, i64* %8, align 8
  %54 = icmp slt i64 %52, %53
  br i1 %54, label %55, label %62

55:                                               ; preds = %51
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %57, align 8
  store %struct.TYPE_7__* %58, %struct.TYPE_7__** %13, align 8
  br label %59

59:                                               ; preds = %55
  %60 = load i64, i64* %15, align 8
  %61 = add nsw i64 %60, 1
  store i64 %61, i64* %15, align 8
  br label %51

62:                                               ; preds = %51
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  store %struct.TYPE_7__* %63, %struct.TYPE_7__** %14, align 8
  store i64 0, i64* %16, align 8
  br label %64

64:                                               ; preds = %67, %62
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %66 = icmp ne %struct.TYPE_7__* %65, null
  br i1 %66, label %67, label %78

67:                                               ; preds = %64
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = call i64 @strlen(i32 %70)
  %72 = add nsw i64 %71, 1
  %73 = load i64, i64* %16, align 8
  %74 = add nsw i64 %73, %72
  store i64 %74, i64* %16, align 8
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %76, align 8
  store %struct.TYPE_7__* %77, %struct.TYPE_7__** %14, align 8
  br label %64

78:                                               ; preds = %64
  %79 = load i64, i64* %16, align 8
  %80 = add nsw i64 %79, 1
  store i64 %80, i64* %16, align 8
  %81 = load i64*, i64** %11, align 8
  %82 = icmp ne i64* %81, null
  br i1 %82, label %83, label %86

83:                                               ; preds = %78
  %84 = load i64, i64* %16, align 8
  %85 = load i64*, i64** %11, align 8
  store i64 %84, i64* %85, align 8
  br label %86

86:                                               ; preds = %83, %78
  %87 = load i64*, i64** %9, align 8
  %88 = icmp ne i64* %87, null
  br i1 %88, label %89, label %120

89:                                               ; preds = %86
  %90 = load i64, i64* %10, align 8
  %91 = load i64, i64* %16, align 8
  %92 = icmp slt i64 %90, %91
  br i1 %92, label %93, label %95

93:                                               ; preds = %89
  %94 = load i32, i32* @FALSE, align 4
  store i32 %94, i32* %6, align 4
  br label %122

95:                                               ; preds = %89
  %96 = load i64*, i64** %9, align 8
  store i64* %96, i64** %17, align 8
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  store %struct.TYPE_7__* %97, %struct.TYPE_7__** %14, align 8
  br label %98

98:                                               ; preds = %101, %95
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %100 = icmp ne %struct.TYPE_7__* %99, null
  br i1 %100, label %101, label %118

101:                                              ; preds = %98
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = call i64 @strlen(i32 %104)
  %106 = add nsw i64 %105, 1
  store i64 %106, i64* %16, align 8
  %107 = load i64*, i64** %17, align 8
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 8
  %111 = call i32 @strcpy(i64* %107, i32 %110)
  %112 = load i64*, i64** %17, align 8
  %113 = load i64, i64* %16, align 8
  %114 = getelementptr inbounds i64, i64* %112, i64 %113
  store i64* %114, i64** %17, align 8
  %115 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 0
  %117 = load %struct.TYPE_7__*, %struct.TYPE_7__** %116, align 8
  store %struct.TYPE_7__* %117, %struct.TYPE_7__** %14, align 8
  br label %98

118:                                              ; preds = %98
  %119 = load i64*, i64** %17, align 8
  store i64 0, i64* %119, align 8
  br label %120

120:                                              ; preds = %118, %86
  %121 = load i32, i32* @TRUE, align 4
  store i32 %121, i32* %6, align 4
  br label %122

122:                                              ; preds = %120, %93, %45, %28
  %123 = load i32, i32* %6, align 4
  ret i32 %123
}

declare dso_local i64 @strlen(i32) #1

declare dso_local i32 @strcpy(i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
