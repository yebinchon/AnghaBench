; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_jsonpath_exec.c_executePredicate.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_jsonpath_exec.c_executePredicate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@jpbUnknown = common dso_local global i64 0, align 8
@jpbTrue = common dso_local global i64 0, align 8
@jpbFalse = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i32*, i32*, i32*, i32*, i32, i64 (i32*, i32*, i32*, i8*)*, i8*)* @executePredicate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @executePredicate(i32* %0, i32* %1, i32* %2, i32* %3, i32* %4, i32 %5, i64 (i32*, i32*, i32*, i8*)* %6, i8* %7) #0 {
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64 (i32*, i32*, i32*, i8*)*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.TYPE_5__, align 4
  %21 = alloca %struct.TYPE_5__, align 4
  %22 = alloca i32*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32*, align 8
  %27 = alloca i32, align 4
  %28 = alloca i64, align 8
  store i32* %0, i32** %10, align 8
  store i32* %1, i32** %11, align 8
  store i32* %2, i32** %12, align 8
  store i32* %3, i32** %13, align 8
  store i32* %4, i32** %14, align 8
  store i32 %5, i32* %15, align 4
  store i64 (i32*, i32*, i32*, i8*)* %6, i64 (i32*, i32*, i32*, i8*)** %16, align 8
  store i8* %7, i8** %17, align 8
  %29 = bitcast %struct.TYPE_5__* %20 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %29, i8 0, i64 4, i1 false)
  %30 = bitcast %struct.TYPE_5__* %21 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %30, i8 0, i64 4, i1 false)
  store i32 0, i32* %23, align 4
  store i32 0, i32* %24, align 4
  %31 = load i32*, i32** %10, align 8
  %32 = load i32*, i32** %12, align 8
  %33 = load i32*, i32** %14, align 8
  %34 = call i32 @executeItemOptUnwrapResultNoThrow(i32* %31, i32* %32, i32* %33, i32 1, %struct.TYPE_5__* %20)
  store i32 %34, i32* %18, align 4
  %35 = load i32, i32* %18, align 4
  %36 = call i64 @jperIsError(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %8
  %39 = load i64, i64* @jpbUnknown, align 8
  store i64 %39, i64* %9, align 8
  br label %128

40:                                               ; preds = %8
  %41 = load i32*, i32** %13, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %43, label %55

43:                                               ; preds = %40
  %44 = load i32*, i32** %10, align 8
  %45 = load i32*, i32** %13, align 8
  %46 = load i32*, i32** %14, align 8
  %47 = load i32, i32* %15, align 4
  %48 = call i32 @executeItemOptUnwrapResultNoThrow(i32* %44, i32* %45, i32* %46, i32 %47, %struct.TYPE_5__* %21)
  store i32 %48, i32* %18, align 4
  %49 = load i32, i32* %18, align 4
  %50 = call i64 @jperIsError(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %43
  %53 = load i64, i64* @jpbUnknown, align 8
  store i64 %53, i64* %9, align 8
  br label %128

54:                                               ; preds = %43
  br label %55

55:                                               ; preds = %54, %40
  %56 = call i32 @JsonValueListInitIterator(%struct.TYPE_5__* %20, i32* %19)
  br label %57

57:                                               ; preds = %115, %55
  %58 = call i32* @JsonValueListNext(%struct.TYPE_5__* %20, i32* %19)
  store i32* %58, i32** %22, align 8
  %59 = icmp ne i32* %58, null
  br i1 %59, label %60, label %116

60:                                               ; preds = %57
  store i32 1, i32* %27, align 4
  %61 = call i32 @JsonValueListInitIterator(%struct.TYPE_5__* %21, i32* %25)
  %62 = load i32*, i32** %13, align 8
  %63 = icmp ne i32* %62, null
  br i1 %63, label %64, label %66

64:                                               ; preds = %60
  %65 = call i32* @JsonValueListNext(%struct.TYPE_5__* %21, i32* %25)
  store i32* %65, i32** %26, align 8
  br label %67

66:                                               ; preds = %60
  store i32* null, i32** %26, align 8
  br label %67

67:                                               ; preds = %66, %64
  br label %68

68:                                               ; preds = %114, %67
  %69 = load i32*, i32** %13, align 8
  %70 = icmp ne i32* %69, null
  br i1 %70, label %71, label %75

71:                                               ; preds = %68
  %72 = load i32*, i32** %26, align 8
  %73 = icmp ne i32* %72, null
  %74 = zext i1 %73 to i32
  br label %77

75:                                               ; preds = %68
  %76 = load i32, i32* %27, align 4
  br label %77

77:                                               ; preds = %75, %71
  %78 = phi i32 [ %74, %71 ], [ %76, %75 ]
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %115

80:                                               ; preds = %77
  %81 = load i64 (i32*, i32*, i32*, i8*)*, i64 (i32*, i32*, i32*, i8*)** %16, align 8
  %82 = load i32*, i32** %11, align 8
  %83 = load i32*, i32** %22, align 8
  %84 = load i32*, i32** %26, align 8
  %85 = load i8*, i8** %17, align 8
  %86 = call i64 %81(i32* %82, i32* %83, i32* %84, i8* %85)
  store i64 %86, i64* %28, align 8
  %87 = load i64, i64* %28, align 8
  %88 = load i64, i64* @jpbUnknown, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %97

90:                                               ; preds = %80
  %91 = load i32*, i32** %10, align 8
  %92 = call i64 @jspStrictAbsenseOfErrors(i32* %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %90
  %95 = load i64, i64* @jpbUnknown, align 8
  store i64 %95, i64* %9, align 8
  br label %128

96:                                               ; preds = %90
  store i32 1, i32* %23, align 4
  br label %109

97:                                               ; preds = %80
  %98 = load i64, i64* %28, align 8
  %99 = load i64, i64* @jpbTrue, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %108

101:                                              ; preds = %97
  %102 = load i32*, i32** %10, align 8
  %103 = call i64 @jspStrictAbsenseOfErrors(i32* %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %107, label %105

105:                                              ; preds = %101
  %106 = load i64, i64* @jpbTrue, align 8
  store i64 %106, i64* %9, align 8
  br label %128

107:                                              ; preds = %101
  store i32 1, i32* %24, align 4
  br label %108

108:                                              ; preds = %107, %97
  br label %109

109:                                              ; preds = %108, %96
  store i32 0, i32* %27, align 4
  %110 = load i32*, i32** %13, align 8
  %111 = icmp ne i32* %110, null
  br i1 %111, label %112, label %114

112:                                              ; preds = %109
  %113 = call i32* @JsonValueListNext(%struct.TYPE_5__* %21, i32* %25)
  store i32* %113, i32** %26, align 8
  br label %114

114:                                              ; preds = %112, %109
  br label %68

115:                                              ; preds = %77
  br label %57

116:                                              ; preds = %57
  %117 = load i32, i32* %24, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %121

119:                                              ; preds = %116
  %120 = load i64, i64* @jpbTrue, align 8
  store i64 %120, i64* %9, align 8
  br label %128

121:                                              ; preds = %116
  %122 = load i32, i32* %23, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %126

124:                                              ; preds = %121
  %125 = load i64, i64* @jpbUnknown, align 8
  store i64 %125, i64* %9, align 8
  br label %128

126:                                              ; preds = %121
  %127 = load i64, i64* @jpbFalse, align 8
  store i64 %127, i64* %9, align 8
  br label %128

128:                                              ; preds = %126, %124, %119, %105, %94, %52, %38
  %129 = load i64, i64* %9, align 8
  ret i64 %129
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @executeItemOptUnwrapResultNoThrow(i32*, i32*, i32*, i32, %struct.TYPE_5__*) #2

declare dso_local i64 @jperIsError(i32) #2

declare dso_local i32 @JsonValueListInitIterator(%struct.TYPE_5__*, i32*) #2

declare dso_local i32* @JsonValueListNext(%struct.TYPE_5__*, i32*) #2

declare dso_local i64 @jspStrictAbsenseOfErrors(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
