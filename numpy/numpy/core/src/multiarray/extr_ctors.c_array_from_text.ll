; ModuleID = '/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_ctors.c_array_from_text.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_ctors.c_array_from_text.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64 }
%struct.TYPE_14__ = type { i8* }

@FROM_BUFFER_SIZE = common dso_local global i64 0, align 8
@PyArray_Type = common dso_local global i32 0, align 4
@NPY_BEGIN_ALLOW_THREADS = common dso_local global i32 0, align 4
@NPY_END_ALLOW_THREADS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [111 x i8] c"string or file could not be read to its end due to unmatched data; this will raise a ValueError in the future.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_13__* (%struct.TYPE_13__*, i64, i8*, i64*, i8*, i32 (i8**, i8*, %struct.TYPE_13__*, i8*)*, i32 (i8**, i8*, i8*)*, i8*)* @array_from_text to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_13__* @array_from_text(%struct.TYPE_13__* %0, i64 %1, i8* %2, i64* %3, i8* %4, i32 (i8**, i8*, %struct.TYPE_13__*, i8*)* %5, i32 (i8**, i8*, i8*)* %6, i8* %7) #0 {
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca %struct.TYPE_13__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32 (i8**, i8*, %struct.TYPE_13__*, i8*)*, align 8
  %16 = alloca i32 (i8**, i8*, i8*)*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca %struct.TYPE_13__*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %10, align 8
  store i64 %1, i64* %11, align 8
  store i8* %2, i8** %12, align 8
  store i64* %3, i64** %13, align 8
  store i8* %4, i8** %14, align 8
  store i32 (i8**, i8*, %struct.TYPE_13__*, i8*)* %5, i32 (i8**, i8*, %struct.TYPE_13__*, i8*)** %15, align 8
  store i32 (i8**, i8*, i8*)* %6, i32 (i8**, i8*, i8*)** %16, align 8
  store i8* %7, i8** %17, align 8
  store i32 0, i32* %23, align 4
  store i64 0, i64* %25, align 8
  %30 = load i64, i64* %11, align 8
  %31 = icmp sge i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %8
  %33 = load i64, i64* %11, align 8
  br label %36

34:                                               ; preds = %8
  %35 = load i64, i64* @FROM_BUFFER_SIZE, align 8
  br label %36

36:                                               ; preds = %34, %32
  %37 = phi i64 [ %33, %32 ], [ %35, %34 ]
  store i64 %37, i64* %26, align 8
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %39 = call i32 @Py_INCREF(%struct.TYPE_13__* %38)
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %41 = call i64 @PyArray_NewFromDescr(i32* @PyArray_Type, %struct.TYPE_13__* %40, i32 1, i64* %26, i32* null, i32* null, i32 0, i32* null)
  %42 = inttoptr i64 %41 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %42, %struct.TYPE_13__** %18, align 8
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %44 = icmp eq %struct.TYPE_13__* %43, null
  br i1 %44, label %45, label %48

45:                                               ; preds = %36
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %47 = call i32 @Py_DECREF(%struct.TYPE_13__* %46)
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %9, align 8
  br label %205

48:                                               ; preds = %36
  %49 = load i8*, i8** %12, align 8
  %50 = call i8* @swab_separator(i8* %49)
  store i8* %50, i8** %21, align 8
  %51 = load i8*, i8** %21, align 8
  %52 = icmp eq i8* %51, null
  br i1 %52, label %53, label %54

53:                                               ; preds = %48
  store i32 1, i32* %23, align 4
  br label %190

54:                                               ; preds = %48
  %55 = load i32, i32* @NPY_BEGIN_ALLOW_THREADS, align 4
  %56 = load i64, i64* %26, align 8
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = mul nsw i64 %56, %59
  store i64 %60, i64* %27, align 8
  store i64 %60, i64* %28, align 8
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %62 = call i8* @PyArray_DATA(%struct.TYPE_13__* %61)
  store i8* %62, i8** %20, align 8
  store i64 0, i64* %19, align 8
  br label %63

63:                                               ; preds = %134, %54
  %64 = load i64, i64* %11, align 8
  %65 = icmp slt i64 %64, 0
  br i1 %65, label %70, label %66

66:                                               ; preds = %63
  %67 = load i64, i64* %19, align 8
  %68 = load i64, i64* %11, align 8
  %69 = icmp slt i64 %67, %68
  br label %70

70:                                               ; preds = %66, %63
  %71 = phi i1 [ true, %63 ], [ %69, %66 ]
  br i1 %71, label %72, label %137

72:                                               ; preds = %70
  %73 = load i32 (i8**, i8*, %struct.TYPE_13__*, i8*)*, i32 (i8**, i8*, %struct.TYPE_13__*, i8*)** %15, align 8
  %74 = load i8*, i8** %20, align 8
  %75 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %76 = load i8*, i8** %17, align 8
  %77 = call i32 %73(i8** %14, i8* %74, %struct.TYPE_13__* %75, i8* %76)
  store i32 %77, i32* %24, align 4
  %78 = load i32, i32* %24, align 4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %72
  br label %137

81:                                               ; preds = %72
  %82 = load i64*, i64** %13, align 8
  %83 = load i64, i64* %82, align 8
  %84 = add i64 %83, 1
  store i64 %84, i64* %82, align 8
  %85 = load i64, i64* %25, align 8
  %86 = add nsw i64 %85, 1
  store i64 %86, i64* %25, align 8
  %87 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %88 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i8*, i8** %20, align 8
  %91 = getelementptr inbounds i8, i8* %90, i64 %89
  store i8* %91, i8** %20, align 8
  %92 = load i64, i64* %11, align 8
  %93 = icmp slt i64 %92, 0
  br i1 %93, label %94, label %119

94:                                               ; preds = %81
  %95 = load i64, i64* %25, align 8
  %96 = load i64, i64* %26, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %98, label %119

98:                                               ; preds = %94
  %99 = load i64, i64* %27, align 8
  %100 = load i64, i64* %28, align 8
  %101 = add nsw i64 %100, %99
  store i64 %101, i64* %28, align 8
  %102 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %103 = call i8* @PyArray_DATA(%struct.TYPE_13__* %102)
  %104 = load i64, i64* %28, align 8
  %105 = call i8* @PyDataMem_RENEW(i8* %103, i64 %104)
  store i8* %105, i8** %22, align 8
  %106 = load i8*, i8** %22, align 8
  %107 = icmp eq i8* %106, null
  br i1 %107, label %108, label %109

108:                                              ; preds = %98
  store i32 1, i32* %23, align 4
  br label %137

109:                                              ; preds = %98
  %110 = load i8*, i8** %22, align 8
  %111 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %112 = bitcast %struct.TYPE_13__* %111 to %struct.TYPE_14__*
  %113 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %112, i32 0, i32 0
  store i8* %110, i8** %113, align 8
  %114 = load i8*, i8** %22, align 8
  %115 = load i64, i64* %28, align 8
  %116 = load i64, i64* %27, align 8
  %117 = sub nsw i64 %115, %116
  %118 = getelementptr inbounds i8, i8* %114, i64 %117
  store i8* %118, i8** %20, align 8
  store i64 0, i64* %25, align 8
  br label %119

119:                                              ; preds = %109, %94, %81
  %120 = load i32 (i8**, i8*, i8*)*, i32 (i8**, i8*, i8*)** %16, align 8
  %121 = load i8*, i8** %21, align 8
  %122 = load i8*, i8** %17, align 8
  %123 = call i32 %120(i8** %14, i8* %121, i8* %122)
  store i32 %123, i32* %24, align 4
  %124 = load i32, i32* %24, align 4
  %125 = icmp slt i32 %124, 0
  br i1 %125, label %126, label %133

126:                                              ; preds = %119
  %127 = load i64, i64* %11, align 8
  %128 = load i64, i64* %19, align 8
  %129 = add nsw i64 %128, 1
  %130 = icmp eq i64 %127, %129
  br i1 %130, label %131, label %132

131:                                              ; preds = %126
  store i32 -1, i32* %24, align 4
  br label %132

132:                                              ; preds = %131, %126
  br label %137

133:                                              ; preds = %119
  br label %134

134:                                              ; preds = %133
  %135 = load i64, i64* %19, align 8
  %136 = add nsw i64 %135, 1
  store i64 %136, i64* %19, align 8
  br label %63

137:                                              ; preds = %132, %108, %80, %70
  %138 = load i64, i64* %11, align 8
  %139 = icmp slt i64 %138, 0
  br i1 %139, label %140, label %170

140:                                              ; preds = %137
  %141 = load i64*, i64** %13, align 8
  %142 = load i64, i64* %141, align 8
  %143 = call i64 @PyArray_MAX(i64 %142, i32 1)
  %144 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %145 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = mul i64 %143, %146
  store i64 %147, i64* %29, align 8
  %148 = load i64, i64* %29, align 8
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %169

150:                                              ; preds = %140
  %151 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %152 = call i8* @PyArray_DATA(%struct.TYPE_13__* %151)
  %153 = load i64, i64* %29, align 8
  %154 = call i8* @PyDataMem_RENEW(i8* %152, i64 %153)
  store i8* %154, i8** %22, align 8
  %155 = load i8*, i8** %22, align 8
  %156 = icmp eq i8* %155, null
  br i1 %156, label %157, label %158

157:                                              ; preds = %150
  store i32 1, i32* %23, align 4
  br label %168

158:                                              ; preds = %150
  %159 = load i64*, i64** %13, align 8
  %160 = load i64, i64* %159, align 8
  %161 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %162 = call i64* @PyArray_DIMS(%struct.TYPE_13__* %161)
  %163 = getelementptr inbounds i64, i64* %162, i64 0
  store i64 %160, i64* %163, align 8
  %164 = load i8*, i8** %22, align 8
  %165 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %166 = bitcast %struct.TYPE_13__* %165 to %struct.TYPE_14__*
  %167 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %166, i32 0, i32 0
  store i8* %164, i8** %167, align 8
  br label %168

168:                                              ; preds = %158, %157
  br label %169

169:                                              ; preds = %168, %140
  br label %170

170:                                              ; preds = %169, %137
  %171 = load i32, i32* @NPY_END_ALLOW_THREADS, align 4
  %172 = load i8*, i8** %21, align 8
  %173 = call i32 @free(i8* %172)
  %174 = load i32, i32* %24, align 4
  %175 = icmp eq i32 %174, -2
  br i1 %175, label %176, label %189

176:                                              ; preds = %170
  %177 = call i64 (...) @PyErr_Occurred()
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %184

179:                                              ; preds = %176
  %180 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %181 = call i32 @Py_DECREF(%struct.TYPE_13__* %180)
  %182 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %183 = call i32 @Py_DECREF(%struct.TYPE_13__* %182)
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %9, align 8
  br label %205

184:                                              ; preds = %176
  %185 = call i64 @DEPRECATE(i8* getelementptr inbounds ([111 x i8], [111 x i8]* @.str, i64 0, i64 0))
  %186 = icmp slt i64 %185, 0
  br i1 %186, label %187, label %188

187:                                              ; preds = %184
  br label %190

188:                                              ; preds = %184
  br label %189

189:                                              ; preds = %188, %170
  br label %190

190:                                              ; preds = %189, %187, %53
  %191 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %192 = call i32 @Py_DECREF(%struct.TYPE_13__* %191)
  %193 = load i32, i32* %23, align 4
  %194 = icmp eq i32 %193, 1
  br i1 %194, label %195, label %197

195:                                              ; preds = %190
  %196 = call i32 (...) @PyErr_NoMemory()
  br label %197

197:                                              ; preds = %195, %190
  %198 = call i64 (...) @PyErr_Occurred()
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %200, label %203

200:                                              ; preds = %197
  %201 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %202 = call i32 @Py_DECREF(%struct.TYPE_13__* %201)
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %9, align 8
  br label %205

203:                                              ; preds = %197
  %204 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  store %struct.TYPE_13__* %204, %struct.TYPE_13__** %9, align 8
  br label %205

205:                                              ; preds = %203, %200, %179, %45
  %206 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  ret %struct.TYPE_13__* %206
}

declare dso_local i32 @Py_INCREF(%struct.TYPE_13__*) #1

declare dso_local i64 @PyArray_NewFromDescr(i32*, %struct.TYPE_13__*, i32, i64*, i32*, i32*, i32, i32*) #1

declare dso_local i32 @Py_DECREF(%struct.TYPE_13__*) #1

declare dso_local i8* @swab_separator(i8*) #1

declare dso_local i8* @PyArray_DATA(%struct.TYPE_13__*) #1

declare dso_local i8* @PyDataMem_RENEW(i8*, i64) #1

declare dso_local i64 @PyArray_MAX(i64, i32) #1

declare dso_local i64* @PyArray_DIMS(%struct.TYPE_13__*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @PyErr_Occurred(...) #1

declare dso_local i64 @DEPRECATE(i8*) #1

declare dso_local i32 @PyErr_NoMemory(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
