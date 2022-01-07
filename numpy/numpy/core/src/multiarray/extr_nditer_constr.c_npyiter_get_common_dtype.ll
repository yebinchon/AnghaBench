; ModuleID = '/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_nditer_constr.c_npyiter_get_common_dtype.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_nditer_constr.c_npyiter_get_common_dtype.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }

@NPY_MAXARGS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"Iterator: Getting a common data type from operands\0A\00", align 1
@NPY_OP_ITFLAG_READ = common dso_local global i32 0, align 4
@NPY_NATIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_10__* (i32, i32**, i32*, %struct.TYPE_10__**, %struct.TYPE_10__**, i32)* @npyiter_get_common_dtype to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_10__* @npyiter_get_common_dtype(i32 %0, i32** %1, i32* %2, %struct.TYPE_10__** %3, %struct.TYPE_10__** %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_10__**, align 8
  %11 = alloca %struct.TYPE_10__**, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca %struct.TYPE_10__*, align 8
  %20 = alloca i64, align 8
  store i32 %0, i32* %7, align 4
  store i32** %1, i32*** %8, align 8
  store i32* %2, i32** %9, align 8
  store %struct.TYPE_10__** %3, %struct.TYPE_10__*** %10, align 8
  store %struct.TYPE_10__** %4, %struct.TYPE_10__*** %11, align 8
  store i32 %5, i32* %12, align 4
  store i64 0, i64* %14, align 8
  store i64 0, i64* %15, align 8
  %21 = load i32, i32* @NPY_MAXARGS, align 4
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %16, align 8
  %24 = alloca i32*, i64 %22, align 16
  store i64 %22, i64* %17, align 8
  %25 = load i32, i32* @NPY_MAXARGS, align 4
  %26 = zext i32 %25 to i64
  %27 = alloca %struct.TYPE_10__*, i64 %26, align 16
  store i64 %26, i64* %18, align 8
  %28 = call i32 @NPY_IT_DBG_PRINT(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %13, align 4
  br label %29

29:                                               ; preds = %90, %6
  %30 = load i32, i32* %13, align 4
  %31 = load i32, i32* %7, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %93

33:                                               ; preds = %29
  %34 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %10, align 8
  %35 = load i32, i32* %13, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %34, i64 %36
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %37, align 8
  %39 = icmp ne %struct.TYPE_10__* %38, null
  br i1 %39, label %40, label %89

40:                                               ; preds = %33
  %41 = load i32, i32* %12, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %52

43:                                               ; preds = %40
  %44 = load i32*, i32** %9, align 8
  %45 = load i32, i32* %13, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @NPY_OP_ITFLAG_READ, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %89

52:                                               ; preds = %43, %40
  %53 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %11, align 8
  %54 = icmp eq %struct.TYPE_10__** %53, null
  br i1 %54, label %62, label %55

55:                                               ; preds = %52
  %56 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %11, align 8
  %57 = load i32, i32* %13, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %56, i64 %58
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %59, align 8
  %61 = icmp eq %struct.TYPE_10__* %60, null
  br i1 %61, label %62, label %79

62:                                               ; preds = %55, %52
  %63 = load i32**, i32*** %8, align 8
  %64 = load i32, i32* %13, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32*, i32** %63, i64 %65
  %67 = load i32*, i32** %66, align 8
  %68 = call i64 @PyArray_NDIM(i32* %67)
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %70, label %79

70:                                               ; preds = %62
  %71 = load i32**, i32*** %8, align 8
  %72 = load i32, i32* %13, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32*, i32** %71, i64 %73
  %75 = load i32*, i32** %74, align 8
  %76 = load i64, i64* %14, align 8
  %77 = add nsw i64 %76, 1
  store i64 %77, i64* %14, align 8
  %78 = getelementptr inbounds i32*, i32** %24, i64 %76
  store i32* %75, i32** %78, align 8
  br label %88

79:                                               ; preds = %62, %55
  %80 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %10, align 8
  %81 = load i32, i32* %13, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %80, i64 %82
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %83, align 8
  %85 = load i64, i64* %15, align 8
  %86 = add nsw i64 %85, 1
  store i64 %86, i64* %15, align 8
  %87 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %27, i64 %85
  store %struct.TYPE_10__* %84, %struct.TYPE_10__** %87, align 8
  br label %88

88:                                               ; preds = %79, %70
  br label %89

89:                                               ; preds = %88, %43, %33
  br label %90

90:                                               ; preds = %89
  %91 = load i32, i32* %13, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %13, align 4
  br label %29

93:                                               ; preds = %29
  %94 = load i64, i64* %14, align 8
  %95 = icmp eq i64 %94, 0
  br i1 %95, label %96, label %140

96:                                               ; preds = %93
  %97 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %27, i64 0
  %98 = load %struct.TYPE_10__*, %struct.TYPE_10__** %97, align 16
  store %struct.TYPE_10__* %98, %struct.TYPE_10__** %19, align 8
  store i64 1, i64* %20, align 8
  br label %99

99:                                               ; preds = %111, %96
  %100 = load i64, i64* %20, align 8
  %101 = load i64, i64* %15, align 8
  %102 = icmp slt i64 %100, %101
  br i1 %102, label %103, label %114

103:                                              ; preds = %99
  %104 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %105 = load i64, i64* %20, align 8
  %106 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %27, i64 %105
  %107 = load %struct.TYPE_10__*, %struct.TYPE_10__** %106, align 8
  %108 = icmp ne %struct.TYPE_10__* %104, %107
  br i1 %108, label %109, label %110

109:                                              ; preds = %103
  br label %114

110:                                              ; preds = %103
  br label %111

111:                                              ; preds = %110
  %112 = load i64, i64* %20, align 8
  %113 = add nsw i64 %112, 1
  store i64 %113, i64* %20, align 8
  br label %99

114:                                              ; preds = %109, %99
  %115 = load i64, i64* %20, align 8
  %116 = load i64, i64* %15, align 8
  %117 = icmp eq i64 %115, %116
  br i1 %117, label %118, label %135

118:                                              ; preds = %114
  %119 = load i64, i64* %15, align 8
  %120 = icmp eq i64 %119, 1
  br i1 %120, label %127, label %121

121:                                              ; preds = %118
  %122 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = call i64 @PyArray_ISNBO(i32 %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %130

127:                                              ; preds = %121, %118
  %128 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %129 = call i32 @Py_INCREF(%struct.TYPE_10__* %128)
  br label %134

130:                                              ; preds = %121
  %131 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %132 = load i32, i32* @NPY_NATIVE, align 4
  %133 = call %struct.TYPE_10__* @PyArray_DescrNewByteorder(%struct.TYPE_10__* %131, i32 %132)
  store %struct.TYPE_10__* %133, %struct.TYPE_10__** %19, align 8
  br label %134

134:                                              ; preds = %130, %127
  br label %139

135:                                              ; preds = %114
  %136 = load i64, i64* %14, align 8
  %137 = load i64, i64* %15, align 8
  %138 = call %struct.TYPE_10__* @PyArray_ResultType(i64 %136, i32** %24, i64 %137, %struct.TYPE_10__** %27)
  store %struct.TYPE_10__* %138, %struct.TYPE_10__** %19, align 8
  br label %139

139:                                              ; preds = %135, %134
  br label %144

140:                                              ; preds = %93
  %141 = load i64, i64* %14, align 8
  %142 = load i64, i64* %15, align 8
  %143 = call %struct.TYPE_10__* @PyArray_ResultType(i64 %141, i32** %24, i64 %142, %struct.TYPE_10__** %27)
  store %struct.TYPE_10__* %143, %struct.TYPE_10__** %19, align 8
  br label %144

144:                                              ; preds = %140, %139
  %145 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %146 = load i8*, i8** %16, align 8
  call void @llvm.stackrestore(i8* %146)
  ret %struct.TYPE_10__* %145
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @NPY_IT_DBG_PRINT(i8*) #2

declare dso_local i64 @PyArray_NDIM(i32*) #2

declare dso_local i64 @PyArray_ISNBO(i32) #2

declare dso_local i32 @Py_INCREF(%struct.TYPE_10__*) #2

declare dso_local %struct.TYPE_10__* @PyArray_DescrNewByteorder(%struct.TYPE_10__*, i32) #2

declare dso_local %struct.TYPE_10__* @PyArray_ResultType(i64, i32**, i64, %struct.TYPE_10__**) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
