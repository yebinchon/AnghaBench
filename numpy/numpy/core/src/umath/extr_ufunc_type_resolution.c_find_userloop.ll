; ModuleID = '/home/carl/AnghaBench/numpy/numpy/core/src/umath/extr_ufunc_type_resolution.c_find_userloop.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/core/src/umath/extr_ufunc_type_resolution.c_find_userloop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i64, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_6__ = type { i32*, i8*, i32, %struct.TYPE_6__* }

@NPY_VOID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, %struct.TYPE_8__**, i32*, i8**)* @find_userloop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_userloop(%struct.TYPE_7__* %0, %struct.TYPE_8__** %1, i32* %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca %struct.TYPE_8__**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_6__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %6, align 8
  store %struct.TYPE_8__** %1, %struct.TYPE_8__*** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8** %3, i8*** %9, align 8
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %11, align 8
  %23 = load i64, i64* %11, align 8
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = add i64 %23, %26
  store i64 %27, i64* %13, align 8
  store i32 -1, i32* %15, align 4
  store i64 0, i64* %10, align 8
  br label %28

28:                                               ; preds = %127, %4
  %29 = load i64, i64* %10, align 8
  %30 = load i64, i64* %13, align 8
  %31 = icmp ult i64 %29, %30
  br i1 %31, label %32, label %130

32:                                               ; preds = %28
  %33 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %7, align 8
  %34 = load i64, i64* %10, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %33, i64 %34
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %35, align 8
  %37 = icmp eq %struct.TYPE_8__* %36, null
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  br label %130

39:                                               ; preds = %32
  %40 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %7, align 8
  %41 = load i64, i64* %10, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %40, i64 %41
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %16, align 4
  %46 = load i32, i32* %16, align 4
  %47 = load i32, i32* %15, align 4
  %48 = icmp ne i32 %46, %47
  br i1 %48, label %49, label %126

49:                                               ; preds = %39
  %50 = load i32, i32* %16, align 4
  %51 = call i64 @PyTypeNum_ISUSERDEF(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %57, label %53

53:                                               ; preds = %49
  %54 = load i32, i32* %16, align 4
  %55 = load i32, i32* @NPY_VOID, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %126

57:                                               ; preds = %53, %49
  %58 = load i32, i32* %16, align 4
  store i32 %58, i32* %15, align 4
  %59 = load i32, i32* %16, align 4
  %60 = call i32* @PyInt_FromLong(i32 %59)
  store i32* %60, i32** %17, align 8
  %61 = load i32*, i32** %17, align 8
  %62 = icmp eq i32* %61, null
  br i1 %62, label %63, label %64

63:                                               ; preds = %57
  store i32 -1, i32* %5, align 4
  br label %131

64:                                               ; preds = %57
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = load i32*, i32** %17, align 8
  %69 = call i32* @PyDict_GetItem(i32 %67, i32* %68)
  store i32* %69, i32** %18, align 8
  %70 = load i32*, i32** %17, align 8
  %71 = call i32 @Py_DECREF(i32* %70)
  %72 = load i32*, i32** %18, align 8
  %73 = icmp eq i32* %72, null
  br i1 %73, label %74, label %75

74:                                               ; preds = %64
  br label %127

75:                                               ; preds = %64
  %76 = load i32*, i32** %18, align 8
  %77 = call i64 @NpyCapsule_AsVoidPtr(i32* %76)
  %78 = inttoptr i64 %77 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %78, %struct.TYPE_6__** %14, align 8
  br label %79

79:                                               ; preds = %121, %75
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %81 = icmp ne %struct.TYPE_6__* %80, null
  br i1 %81, label %82, label %125

82:                                               ; preds = %79
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  %85 = load i32*, i32** %84, align 8
  store i32* %85, i32** %19, align 8
  store i64 0, i64* %12, align 8
  br label %86

86:                                               ; preds = %104, %82
  %87 = load i64, i64* %12, align 8
  %88 = load i64, i64* %13, align 8
  %89 = icmp ult i64 %87, %88
  br i1 %89, label %90, label %107

90:                                               ; preds = %86
  %91 = load i32*, i32** %19, align 8
  %92 = load i64, i64* %12, align 8
  %93 = getelementptr inbounds i32, i32* %91, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %7, align 8
  %96 = load i64, i64* %12, align 8
  %97 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %95, i64 %96
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = icmp ne i32 %94, %100
  br i1 %101, label %102, label %103

102:                                              ; preds = %90
  br label %107

103:                                              ; preds = %90
  br label %104

104:                                              ; preds = %103
  %105 = load i64, i64* %12, align 8
  %106 = add i64 %105, 1
  store i64 %106, i64* %12, align 8
  br label %86

107:                                              ; preds = %102, %86
  %108 = load i64, i64* %12, align 8
  %109 = load i64, i64* %13, align 8
  %110 = icmp eq i64 %108, %109
  br i1 %110, label %111, label %120

111:                                              ; preds = %107
  %112 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 8
  %115 = load i32*, i32** %8, align 8
  store i32 %114, i32* %115, align 4
  %116 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 1
  %118 = load i8*, i8** %117, align 8
  %119 = load i8**, i8*** %9, align 8
  store i8* %118, i8** %119, align 8
  store i32 1, i32* %5, align 4
  br label %131

120:                                              ; preds = %107
  br label %121

121:                                              ; preds = %120
  %122 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 3
  %124 = load %struct.TYPE_6__*, %struct.TYPE_6__** %123, align 8
  store %struct.TYPE_6__* %124, %struct.TYPE_6__** %14, align 8
  br label %79

125:                                              ; preds = %79
  br label %126

126:                                              ; preds = %125, %53, %39
  br label %127

127:                                              ; preds = %126, %74
  %128 = load i64, i64* %10, align 8
  %129 = add i64 %128, 1
  store i64 %129, i64* %10, align 8
  br label %28

130:                                              ; preds = %38, %28
  store i32 0, i32* %5, align 4
  br label %131

131:                                              ; preds = %130, %111, %63
  %132 = load i32, i32* %5, align 4
  ret i32 %132
}

declare dso_local i64 @PyTypeNum_ISUSERDEF(i32) #1

declare dso_local i32* @PyInt_FromLong(i32) #1

declare dso_local i32* @PyDict_GetItem(i32, i32*) #1

declare dso_local i32 @Py_DECREF(i32*) #1

declare dso_local i64 @NpyCapsule_AsVoidPtr(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
