; ModuleID = '/home/carl/AnghaBench/numpy/numpy/core/src/umath/extr_ufunc_type_resolution.c_ufunc_loop_matches.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/core/src/umath/extr_ufunc_type_resolution.c_ufunc_loop_matches.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64, i64, i32 }
%struct.TYPE_13__ = type { i8 }

@NPY_OBJECT = common dso_local global i32 0, align 4
@NPY_VOID = common dso_local global i32 0, align 4
@stdout = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, i32**, i32, i32, i32, i32, i32*, %struct.TYPE_13__**, i32*, i8*, i8*)* @ufunc_loop_matches to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ufunc_loop_matches(%struct.TYPE_12__* %0, i32** %1, i32 %2, i32 %3, i32 %4, i32 %5, i32* %6, %struct.TYPE_13__** %7, i32* %8, i8* %9, i8* %10) #0 {
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_12__*, align 8
  %14 = alloca i32**, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca %struct.TYPE_13__**, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca %struct.TYPE_13__*, align 8
  %28 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %13, align 8
  store i32** %1, i32*** %14, align 8
  store i32 %2, i32* %15, align 4
  store i32 %3, i32* %16, align 4
  store i32 %4, i32* %17, align 4
  store i32 %5, i32* %18, align 4
  store i32* %6, i32** %19, align 8
  store %struct.TYPE_13__** %7, %struct.TYPE_13__*** %20, align 8
  store i32* %8, i32** %21, align 8
  store i8* %9, i8** %22, align 8
  store i8* %10, i8** %23, align 8
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  store i64 %31, i64* %25, align 8
  %32 = load i64, i64* %25, align 8
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = add i64 %32, %35
  store i64 %36, i64* %26, align 8
  store i64 0, i64* %24, align 8
  br label %37

37:                                               ; preds = %117, %11
  %38 = load i64, i64* %24, align 8
  %39 = load i64, i64* %25, align 8
  %40 = icmp ult i64 %38, %39
  br i1 %40, label %41, label %120

41:                                               ; preds = %37
  %42 = load i32*, i32** %19, align 8
  %43 = load i64, i64* %24, align 8
  %44 = getelementptr inbounds i32, i32* %42, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @NPY_OBJECT, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %57

48:                                               ; preds = %41
  %49 = load i32, i32* %17, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %57, label %51

51:                                               ; preds = %48
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = icmp sgt i32 %54, 1
  br i1 %55, label %56, label %57

56:                                               ; preds = %51
  store i32 0, i32* %12, align 4
  br label %180

57:                                               ; preds = %51, %48, %41
  %58 = load i32*, i32** %19, align 8
  %59 = load i64, i64* %24, align 8
  %60 = getelementptr inbounds i32, i32* %58, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @NPY_VOID, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %74

64:                                               ; preds = %57
  %65 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %20, align 8
  %66 = icmp ne %struct.TYPE_13__** %65, null
  br i1 %66, label %67, label %74

67:                                               ; preds = %64
  %68 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %20, align 8
  %69 = load i64, i64* %24, align 8
  %70 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %68, i64 %69
  %71 = load %struct.TYPE_13__*, %struct.TYPE_13__** %70, align 8
  store %struct.TYPE_13__* %71, %struct.TYPE_13__** %27, align 8
  %72 = load %struct.TYPE_13__*, %struct.TYPE_13__** %27, align 8
  %73 = call i32 @Py_INCREF(%struct.TYPE_13__* %72)
  br label %80

74:                                               ; preds = %64, %57
  %75 = load i32*, i32** %19, align 8
  %76 = load i64, i64* %24, align 8
  %77 = getelementptr inbounds i32, i32* %75, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = call %struct.TYPE_13__* @PyArray_DescrFromType(i32 %78)
  store %struct.TYPE_13__* %79, %struct.TYPE_13__** %27, align 8
  br label %80

80:                                               ; preds = %74, %67
  %81 = load %struct.TYPE_13__*, %struct.TYPE_13__** %27, align 8
  %82 = icmp eq %struct.TYPE_13__* %81, null
  br i1 %82, label %83, label %84

83:                                               ; preds = %80
  store i32 -1, i32* %12, align 4
  br label %180

84:                                               ; preds = %80
  %85 = load i32, i32* %18, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %101, label %87

87:                                               ; preds = %84
  %88 = load i32**, i32*** %14, align 8
  %89 = load i64, i64* %24, align 8
  %90 = getelementptr inbounds i32*, i32** %88, i64 %89
  %91 = load i32*, i32** %90, align 8
  %92 = call %struct.TYPE_13__* @PyArray_DESCR(i32* %91)
  %93 = load %struct.TYPE_13__*, %struct.TYPE_13__** %27, align 8
  %94 = load i32, i32* %15, align 4
  %95 = call i32 @PyArray_CanCastTypeTo(%struct.TYPE_13__* %92, %struct.TYPE_13__* %93, i32 %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %100, label %97

97:                                               ; preds = %87
  %98 = load %struct.TYPE_13__*, %struct.TYPE_13__** %27, align 8
  %99 = call i32 @Py_DECREF(%struct.TYPE_13__* %98)
  store i32 0, i32* %12, align 4
  br label %180

100:                                              ; preds = %87
  br label %114

101:                                              ; preds = %84
  %102 = load i32**, i32*** %14, align 8
  %103 = load i64, i64* %24, align 8
  %104 = getelementptr inbounds i32*, i32** %102, i64 %103
  %105 = load i32*, i32** %104, align 8
  %106 = load %struct.TYPE_13__*, %struct.TYPE_13__** %27, align 8
  %107 = load i32, i32* %15, align 4
  %108 = call i32 @PyArray_CanCastArrayTo(i32* %105, %struct.TYPE_13__* %106, i32 %107)
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %113, label %110

110:                                              ; preds = %101
  %111 = load %struct.TYPE_13__*, %struct.TYPE_13__** %27, align 8
  %112 = call i32 @Py_DECREF(%struct.TYPE_13__* %111)
  store i32 0, i32* %12, align 4
  br label %180

113:                                              ; preds = %101
  br label %114

114:                                              ; preds = %113, %100
  %115 = load %struct.TYPE_13__*, %struct.TYPE_13__** %27, align 8
  %116 = call i32 @Py_DECREF(%struct.TYPE_13__* %115)
  br label %117

117:                                              ; preds = %114
  %118 = load i64, i64* %24, align 8
  %119 = add i64 %118, 1
  store i64 %119, i64* %24, align 8
  br label %37

120:                                              ; preds = %37
  %121 = load i64, i64* %25, align 8
  store i64 %121, i64* %24, align 8
  br label %122

122:                                              ; preds = %176, %120
  %123 = load i64, i64* %24, align 8
  %124 = load i64, i64* %26, align 8
  %125 = icmp ult i64 %123, %124
  br i1 %125, label %126, label %179

126:                                              ; preds = %122
  %127 = load i32**, i32*** %14, align 8
  %128 = load i64, i64* %24, align 8
  %129 = getelementptr inbounds i32*, i32** %127, i64 %128
  %130 = load i32*, i32** %129, align 8
  %131 = icmp ne i32* %130, null
  br i1 %131, label %132, label %175

132:                                              ; preds = %126
  %133 = load i32*, i32** %19, align 8
  %134 = load i64, i64* %24, align 8
  %135 = getelementptr inbounds i32, i32* %133, i64 %134
  %136 = load i32, i32* %135, align 4
  %137 = call %struct.TYPE_13__* @PyArray_DescrFromType(i32 %136)
  store %struct.TYPE_13__* %137, %struct.TYPE_13__** %28, align 8
  %138 = load %struct.TYPE_13__*, %struct.TYPE_13__** %28, align 8
  %139 = icmp eq %struct.TYPE_13__* %138, null
  br i1 %139, label %140, label %141

140:                                              ; preds = %132
  store i32 -1, i32* %12, align 4
  br label %180

141:                                              ; preds = %132
  %142 = load %struct.TYPE_13__*, %struct.TYPE_13__** %28, align 8
  %143 = load i32**, i32*** %14, align 8
  %144 = load i64, i64* %24, align 8
  %145 = getelementptr inbounds i32*, i32** %143, i64 %144
  %146 = load i32*, i32** %145, align 8
  %147 = call %struct.TYPE_13__* @PyArray_DESCR(i32* %146)
  %148 = load i32, i32* %16, align 4
  %149 = call i32 @PyArray_CanCastTypeTo(%struct.TYPE_13__* %142, %struct.TYPE_13__* %147, i32 %148)
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %172, label %151

151:                                              ; preds = %141
  %152 = load i32*, i32** %21, align 8
  %153 = load i32, i32* %152, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %169, label %155

155:                                              ; preds = %151
  %156 = load i32*, i32** %21, align 8
  store i32 1, i32* %156, align 4
  %157 = load %struct.TYPE_13__*, %struct.TYPE_13__** %28, align 8
  %158 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %157, i32 0, i32 0
  %159 = load i8, i8* %158, align 1
  %160 = load i8*, i8** %22, align 8
  store i8 %159, i8* %160, align 1
  %161 = load i32**, i32*** %14, align 8
  %162 = load i64, i64* %24, align 8
  %163 = getelementptr inbounds i32*, i32** %161, i64 %162
  %164 = load i32*, i32** %163, align 8
  %165 = call %struct.TYPE_13__* @PyArray_DESCR(i32* %164)
  %166 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %165, i32 0, i32 0
  %167 = load i8, i8* %166, align 1
  %168 = load i8*, i8** %23, align 8
  store i8 %167, i8* %168, align 1
  br label %169

169:                                              ; preds = %155, %151
  %170 = load %struct.TYPE_13__*, %struct.TYPE_13__** %28, align 8
  %171 = call i32 @Py_DECREF(%struct.TYPE_13__* %170)
  store i32 0, i32* %12, align 4
  br label %180

172:                                              ; preds = %141
  %173 = load %struct.TYPE_13__*, %struct.TYPE_13__** %28, align 8
  %174 = call i32 @Py_DECREF(%struct.TYPE_13__* %173)
  br label %175

175:                                              ; preds = %172, %126
  br label %176

176:                                              ; preds = %175
  %177 = load i64, i64* %24, align 8
  %178 = add i64 %177, 1
  store i64 %178, i64* %24, align 8
  br label %122

179:                                              ; preds = %122
  store i32 1, i32* %12, align 4
  br label %180

180:                                              ; preds = %179, %169, %140, %110, %97, %83, %56
  %181 = load i32, i32* %12, align 4
  ret i32 %181
}

declare dso_local i32 @Py_INCREF(%struct.TYPE_13__*) #1

declare dso_local %struct.TYPE_13__* @PyArray_DescrFromType(i32) #1

declare dso_local i32 @PyArray_CanCastTypeTo(%struct.TYPE_13__*, %struct.TYPE_13__*, i32) #1

declare dso_local %struct.TYPE_13__* @PyArray_DESCR(i32*) #1

declare dso_local i32 @Py_DECREF(%struct.TYPE_13__*) #1

declare dso_local i32 @PyArray_CanCastArrayTo(i32*, %struct.TYPE_13__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
