; ModuleID = '/home/carl/AnghaBench/numpy/numpy/core/src/umath/extr_ufunc_object.c_ufunc_generic_call.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/core/src/umath/extr_ufunc_object.c_ufunc_generic_call.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, i32 }
%struct.TYPE_10__ = type { i32*, i32*, i32*, i32* }
%struct.TYPE_11__ = type { i32, %struct.TYPE_10__, %struct.TYPE_12__* }

@NPY_MAXARGS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"__call__\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_12__*, i32*, i32*)* @ufunc_generic_call to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @ufunc_generic_call(%struct.TYPE_12__* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_10__, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_11__, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %21 = load i32, i32* @NPY_MAXARGS, align 4
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %9, align 8
  %24 = alloca i32*, i64 %22, align 16
  store i64 %22, i64* %10, align 8
  %25 = load i32, i32* @NPY_MAXARGS, align 4
  %26 = zext i32 %25 to i64
  %27 = alloca i32*, i64 %26, align 16
  store i64 %26, i64* %11, align 8
  %28 = load i32, i32* @NPY_MAXARGS, align 4
  %29 = zext i32 %28 to i64
  %30 = alloca i32*, i64 %29, align 16
  store i64 %29, i64* %12, align 8
  store i32* null, i32** %13, align 8
  %31 = bitcast %struct.TYPE_10__* %14 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %31, i8 0, i64 32, i1 false)
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %33 = load i32*, i32** %6, align 8
  %34 = load i32*, i32** %7, align 8
  %35 = call i32 @PyUFunc_CheckOverride(%struct.TYPE_12__* %32, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32* %33, i32* %34, i32** %13)
  store i32 %35, i32* %15, align 4
  %36 = load i32, i32* %15, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %3
  store i32* null, i32** %4, align 8
  store i32 1, i32* %16, align 4
  br label %211

39:                                               ; preds = %3
  %40 = load i32*, i32** %13, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %42, label %44

42:                                               ; preds = %39
  %43 = load i32*, i32** %13, align 8
  store i32* %43, i32** %4, align 8
  store i32 1, i32* %16, align 4
  br label %211

44:                                               ; preds = %39
  br label %45

45:                                               ; preds = %44
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %47 = load i32*, i32** %6, align 8
  %48 = load i32*, i32** %7, align 8
  %49 = call i32 @PyUFunc_GenericFunction(%struct.TYPE_12__* %46, i32* %47, i32* %48, i32** %24)
  store i32 %49, i32* %15, align 4
  %50 = load i32, i32* %15, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %45
  store i32* null, i32** %4, align 8
  store i32 1, i32* %16, align 4
  br label %211

53:                                               ; preds = %45
  store i32 0, i32* %8, align 4
  br label %54

54:                                               ; preds = %66, %53
  %55 = load i32, i32* %8, align 4
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = icmp slt i32 %55, %58
  br i1 %59, label %60, label %69

60:                                               ; preds = %54
  %61 = load i32, i32* %8, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32*, i32** %24, i64 %62
  %64 = load i32*, i32** %63, align 8
  %65 = call i32 @Py_XDECREF(i32* %64)
  br label %66

66:                                               ; preds = %60
  %67 = load i32, i32* %8, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %8, align 4
  br label %54

69:                                               ; preds = %54
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load i32*, i32** %6, align 8
  %77 = load i32*, i32** %7, align 8
  %78 = call i64 @make_full_arg_tuple(%struct.TYPE_10__* %14, i32 %72, i32 %75, i32* %76, i32* %77)
  %79 = icmp slt i64 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %69
  br label %185

81:                                               ; preds = %69
  %82 = load i32*, i32** %7, align 8
  %83 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @_find_array_wrap(%struct.TYPE_10__* byval(%struct.TYPE_10__) align 8 %14, i32* %82, i32** %30, i32 %85, i32 %88)
  store i32 0, i32* %8, align 4
  br label %90

90:                                               ; preds = %143, %81
  %91 = load i32, i32* %8, align 4
  %92 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = icmp slt i32 %91, %94
  br i1 %95, label %96, label %146

96:                                               ; preds = %90
  %97 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* %8, align 4
  %101 = add nsw i32 %99, %100
  store i32 %101, i32* %17, align 4
  %102 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 2
  store %struct.TYPE_12__* %102, %struct.TYPE_12__** %103, align 8
  %104 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 1
  %105 = bitcast %struct.TYPE_10__* %104 to i8*
  %106 = bitcast %struct.TYPE_10__* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %105, i8* align 8 %106, i64 32, i1 false)
  %107 = load i32, i32* %8, align 4
  %108 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 0
  store i32 %107, i32* %108, align 8
  %109 = load i32, i32* %8, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32*, i32** %30, i64 %110
  %112 = load i32*, i32** %111, align 8
  %113 = load i32, i32* %17, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32*, i32** %24, i64 %114
  %116 = load i32*, i32** %115, align 8
  %117 = call i32* @_apply_array_wrap(i32* %112, i32* %116, %struct.TYPE_11__* %18)
  store i32* %117, i32** %19, align 8
  %118 = load i32, i32* %17, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32*, i32** %24, i64 %119
  store i32* null, i32** %120, align 8
  %121 = load i32*, i32** %19, align 8
  %122 = icmp eq i32* %121, null
  br i1 %122, label %123, label %138

123:                                              ; preds = %96
  store i32 0, i32* %17, align 4
  br label %124

124:                                              ; preds = %134, %123
  %125 = load i32, i32* %17, align 4
  %126 = load i32, i32* %8, align 4
  %127 = icmp slt i32 %125, %126
  br i1 %127, label %128, label %137

128:                                              ; preds = %124
  %129 = load i32, i32* %17, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32*, i32** %27, i64 %130
  %132 = load i32*, i32** %131, align 8
  %133 = call i32 @Py_DECREF(i32* %132)
  br label %134

134:                                              ; preds = %128
  %135 = load i32, i32* %17, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %17, align 4
  br label %124

137:                                              ; preds = %124
  br label %185

138:                                              ; preds = %96
  %139 = load i32*, i32** %19, align 8
  %140 = load i32, i32* %8, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i32*, i32** %27, i64 %141
  store i32* %139, i32** %142, align 8
  br label %143

143:                                              ; preds = %138
  %144 = load i32, i32* %8, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %8, align 4
  br label %90

146:                                              ; preds = %90
  %147 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 1
  %148 = load i32*, i32** %147, align 8
  %149 = call i32 @Py_XDECREF(i32* %148)
  %150 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 0
  %151 = load i32*, i32** %150, align 8
  %152 = call i32 @Py_XDECREF(i32* %151)
  %153 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %154 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = icmp eq i32 %155, 1
  br i1 %156, label %157, label %160

157:                                              ; preds = %146
  %158 = getelementptr inbounds i32*, i32** %27, i64 0
  %159 = load i32*, i32** %158, align 16
  store i32* %159, i32** %4, align 8
  store i32 1, i32* %16, align 4
  br label %211

160:                                              ; preds = %146
  %161 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %162 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = call i64 @PyTuple_New(i32 %163)
  %165 = inttoptr i64 %164 to i32*
  store i32* %165, i32** %20, align 8
  store i32 0, i32* %8, align 4
  br label %166

166:                                              ; preds = %180, %160
  %167 = load i32, i32* %8, align 4
  %168 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %169 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = icmp slt i32 %167, %170
  br i1 %171, label %172, label %183

172:                                              ; preds = %166
  %173 = load i32*, i32** %20, align 8
  %174 = load i32, i32* %8, align 4
  %175 = load i32, i32* %8, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i32*, i32** %27, i64 %176
  %178 = load i32*, i32** %177, align 8
  %179 = call i32 @PyTuple_SET_ITEM(i32* %173, i32 %174, i32* %178)
  br label %180

180:                                              ; preds = %172
  %181 = load i32, i32* %8, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %8, align 4
  br label %166

183:                                              ; preds = %166
  %184 = load i32*, i32** %20, align 8
  store i32* %184, i32** %4, align 8
  store i32 1, i32* %16, align 4
  br label %211

185:                                              ; preds = %137, %80
  %186 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 1
  %187 = load i32*, i32** %186, align 8
  %188 = call i32 @Py_XDECREF(i32* %187)
  %189 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 0
  %190 = load i32*, i32** %189, align 8
  %191 = call i32 @Py_XDECREF(i32* %190)
  %192 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %193 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 4
  store i32 %194, i32* %8, align 4
  br label %195

195:                                              ; preds = %207, %185
  %196 = load i32, i32* %8, align 4
  %197 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %198 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %197, i32 0, i32 2
  %199 = load i32, i32* %198, align 4
  %200 = icmp slt i32 %196, %199
  br i1 %200, label %201, label %210

201:                                              ; preds = %195
  %202 = load i32, i32* %8, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds i32*, i32** %24, i64 %203
  %205 = load i32*, i32** %204, align 8
  %206 = call i32 @Py_XDECREF(i32* %205)
  br label %207

207:                                              ; preds = %201
  %208 = load i32, i32* %8, align 4
  %209 = add nsw i32 %208, 1
  store i32 %209, i32* %8, align 4
  br label %195

210:                                              ; preds = %195
  store i32* null, i32** %4, align 8
  store i32 1, i32* %16, align 4
  br label %211

211:                                              ; preds = %210, %183, %157, %52, %42, %38
  %212 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %212)
  %213 = load i32*, i32** %4, align 8
  ret i32* %213
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @PyUFunc_CheckOverride(%struct.TYPE_12__*, i8*, i32*, i32*, i32**) #3

declare dso_local i32 @PyUFunc_GenericFunction(%struct.TYPE_12__*, i32*, i32*, i32**) #3

declare dso_local i32 @Py_XDECREF(i32*) #3

declare dso_local i64 @make_full_arg_tuple(%struct.TYPE_10__*, i32, i32, i32*, i32*) #3

declare dso_local i32 @_find_array_wrap(%struct.TYPE_10__* byval(%struct.TYPE_10__) align 8, i32*, i32**, i32, i32) #3

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32* @_apply_array_wrap(i32*, i32*, %struct.TYPE_11__*) #3

declare dso_local i32 @Py_DECREF(i32*) #3

declare dso_local i64 @PyTuple_New(i32) #3

declare dso_local i32 @PyTuple_SET_ITEM(i32*, i32, i32*) #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
