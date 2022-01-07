; ModuleID = '/home/carl/AnghaBench/numpy/numpy/core/src/umath/extr_ufunc_type_resolution.c_type_tuple_userloop_type_resolver.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/core/src/umath/extr_ufunc_type_resolution.c_type_tuple_userloop_type_resolver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32 }
%struct.TYPE_8__ = type { i32*, %struct.TYPE_8__* }
%struct.TYPE_10__ = type { i32 }

@NPY_NOTYPE = common dso_local global i32 0, align 4
@PyExc_TypeError = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [136 x i8] c"found a user loop for ufunc '%s' matching the type-tuple, but the inputs and/or outputs could not be cast according to the casting rule\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i32, i32*, i32**, i32, i32, i32, i32**)* @type_tuple_userloop_type_resolver to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @type_tuple_userloop_type_resolver(%struct.TYPE_9__* %0, i32 %1, i32* %2, i32** %3, i32 %4, i32 %5, i32 %6, i32** %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_9__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32**, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32**, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.TYPE_8__*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i8, align 1
  %26 = alloca i8, align 1
  %27 = alloca i32, align 4
  %28 = alloca i32*, align 8
  %29 = alloca i32*, align 8
  %30 = alloca i32*, align 8
  %31 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32* %2, i32** %12, align 8
  store i32** %3, i32*** %13, align 8
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32** %7, i32*** %17, align 8
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %20, align 4
  %35 = load i32, i32* %20, align 4
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = add nsw i32 %35, %38
  store i32 %39, i32* %21, align 4
  store i32 -1, i32* %23, align 4
  store i32 0, i32* %24, align 4
  store i8 45, i8* %25, align 1
  store i8 45, i8* %26, align 1
  store i32 0, i32* %18, align 4
  br label %40

40:                                               ; preds = %167, %8
  %41 = load i32, i32* %18, align 4
  %42 = load i32, i32* %20, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %170

44:                                               ; preds = %40
  %45 = load i32**, i32*** %13, align 8
  %46 = load i32, i32* %18, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32*, i32** %45, i64 %47
  %49 = load i32*, i32** %48, align 8
  %50 = call %struct.TYPE_10__* @PyArray_DESCR(i32* %49)
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %27, align 4
  %53 = load i32, i32* %27, align 4
  %54 = load i32, i32* %23, align 4
  %55 = icmp ne i32 %53, %54
  br i1 %55, label %56, label %166

56:                                               ; preds = %44
  %57 = load i32, i32* %27, align 4
  %58 = call i64 @PyTypeNum_ISUSERDEF(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %166

60:                                               ; preds = %56
  %61 = load i32, i32* %27, align 4
  store i32 %61, i32* %23, align 4
  %62 = load i32, i32* %27, align 4
  %63 = call i32* @PyInt_FromLong(i32 %62)
  store i32* %63, i32** %28, align 8
  %64 = load i32*, i32** %28, align 8
  %65 = icmp eq i32* %64, null
  br i1 %65, label %66, label %67

66:                                               ; preds = %60
  store i32 -1, i32* %9, align 4
  br label %171

67:                                               ; preds = %60
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = load i32*, i32** %28, align 8
  %72 = call i32* @PyDict_GetItem(i32 %70, i32* %71)
  store i32* %72, i32** %29, align 8
  %73 = load i32*, i32** %28, align 8
  %74 = call i32 @Py_DECREF(i32* %73)
  %75 = load i32*, i32** %29, align 8
  %76 = icmp eq i32* %75, null
  br i1 %76, label %77, label %78

77:                                               ; preds = %67
  br label %167

78:                                               ; preds = %67
  %79 = load i32*, i32** %29, align 8
  %80 = call i64 @NpyCapsule_AsVoidPtr(i32* %79)
  %81 = inttoptr i64 %80 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %81, %struct.TYPE_8__** %22, align 8
  br label %82

82:                                               ; preds = %161, %78
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %22, align 8
  %84 = icmp ne %struct.TYPE_8__* %83, null
  br i1 %84, label %85, label %165

85:                                               ; preds = %82
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %22, align 8
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 0
  %88 = load i32*, i32** %87, align 8
  store i32* %88, i32** %30, align 8
  store i32 1, i32* %31, align 4
  %89 = load i32, i32* %11, align 4
  %90 = load i32, i32* %21, align 4
  %91 = icmp eq i32 %89, %90
  br i1 %91, label %92, label %123

92:                                               ; preds = %85
  store i32 0, i32* %19, align 4
  br label %93

93:                                               ; preds = %119, %92
  %94 = load i32, i32* %19, align 4
  %95 = load i32, i32* %21, align 4
  %96 = icmp slt i32 %94, %95
  br i1 %96, label %97, label %122

97:                                               ; preds = %93
  %98 = load i32*, i32** %30, align 8
  %99 = load i32, i32* %19, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %98, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = load i32*, i32** %12, align 8
  %104 = load i32, i32* %19, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %103, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = icmp ne i32 %102, %107
  br i1 %108, label %109, label %118

109:                                              ; preds = %97
  %110 = load i32*, i32** %12, align 8
  %111 = load i32, i32* %19, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %110, i64 %112
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* @NPY_NOTYPE, align 4
  %116 = icmp ne i32 %114, %115
  br i1 %116, label %117, label %118

117:                                              ; preds = %109
  store i32 0, i32* %31, align 4
  br label %122

118:                                              ; preds = %109, %97
  br label %119

119:                                              ; preds = %118
  %120 = load i32, i32* %19, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %19, align 4
  br label %93

122:                                              ; preds = %117, %93
  br label %135

123:                                              ; preds = %85
  %124 = load i32*, i32** %30, align 8
  %125 = load i32, i32* %20, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %124, i64 %126
  %128 = load i32, i32* %127, align 4
  %129 = load i32*, i32** %12, align 8
  %130 = getelementptr inbounds i32, i32* %129, i64 0
  %131 = load i32, i32* %130, align 4
  %132 = icmp ne i32 %128, %131
  br i1 %132, label %133, label %134

133:                                              ; preds = %123
  store i32 0, i32* %31, align 4
  br label %134

134:                                              ; preds = %133, %123
  br label %135

135:                                              ; preds = %134, %122
  %136 = load i32, i32* %31, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %139, label %138

138:                                              ; preds = %135
  br label %161

139:                                              ; preds = %135
  %140 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %141 = load i32**, i32*** %13, align 8
  %142 = load i32, i32* %14, align 4
  %143 = load i32, i32* %14, align 4
  %144 = load i32, i32* %15, align 4
  %145 = load i32, i32* %16, align 4
  %146 = load i32*, i32** %30, align 8
  %147 = call i32 @ufunc_loop_matches(%struct.TYPE_9__* %140, i32** %141, i32 %142, i32 %143, i32 %144, i32 %145, i32* %146, i32* null, i32* %24, i8* %25, i8* %26)
  switch i32 %147, label %160 [
    i32 1, label %148
    i32 0, label %154
    i32 -1, label %159
  ]

148:                                              ; preds = %139
  %149 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %150 = load i32**, i32*** %13, align 8
  %151 = load i32**, i32*** %17, align 8
  %152 = load i32*, i32** %30, align 8
  %153 = call i32 @set_ufunc_loop_data_types(%struct.TYPE_9__* %149, i32** %150, i32** %151, i32* %152, i32* null)
  store i32 1, i32* %9, align 4
  br label %171

154:                                              ; preds = %139
  %155 = load i32, i32* @PyExc_TypeError, align 4
  %156 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %157 = call i32 @ufunc_get_name_cstr(%struct.TYPE_9__* %156)
  %158 = call i32 @PyErr_Format(i32 %155, i8* getelementptr inbounds ([136 x i8], [136 x i8]* @.str, i64 0, i64 0), i32 %157)
  store i32 -1, i32* %9, align 4
  br label %171

159:                                              ; preds = %139
  store i32 -1, i32* %9, align 4
  br label %171

160:                                              ; preds = %139
  br label %161

161:                                              ; preds = %160, %138
  %162 = load %struct.TYPE_8__*, %struct.TYPE_8__** %22, align 8
  %163 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %162, i32 0, i32 1
  %164 = load %struct.TYPE_8__*, %struct.TYPE_8__** %163, align 8
  store %struct.TYPE_8__* %164, %struct.TYPE_8__** %22, align 8
  br label %82

165:                                              ; preds = %82
  br label %166

166:                                              ; preds = %165, %56, %44
  br label %167

167:                                              ; preds = %166, %77
  %168 = load i32, i32* %18, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %18, align 4
  br label %40

170:                                              ; preds = %40
  store i32 0, i32* %9, align 4
  br label %171

171:                                              ; preds = %170, %159, %154, %148, %66
  %172 = load i32, i32* %9, align 4
  ret i32 %172
}

declare dso_local %struct.TYPE_10__* @PyArray_DESCR(i32*) #1

declare dso_local i64 @PyTypeNum_ISUSERDEF(i32) #1

declare dso_local i32* @PyInt_FromLong(i32) #1

declare dso_local i32* @PyDict_GetItem(i32, i32*) #1

declare dso_local i32 @Py_DECREF(i32*) #1

declare dso_local i64 @NpyCapsule_AsVoidPtr(i32*) #1

declare dso_local i32 @ufunc_loop_matches(%struct.TYPE_9__*, i32**, i32, i32, i32, i32, i32*, i32*, i32*, i8*, i8*) #1

declare dso_local i32 @set_ufunc_loop_data_types(%struct.TYPE_9__*, i32**, i32**, i32*, i32*) #1

declare dso_local i32 @PyErr_Format(i32, i8*, i32) #1

declare dso_local i32 @ufunc_get_name_cstr(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
