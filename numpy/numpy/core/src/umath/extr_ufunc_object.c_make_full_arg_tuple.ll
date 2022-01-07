; ModuleID = '/home/carl/AnghaBench/numpy/numpy/core/src/umath/extr_ufunc_object.c_make_full_arg_tuple.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/core/src/umath/extr_ufunc_object.c_make_full_arg_tuple.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i32* }

@npy_um_str_out = common dso_local global i32 0, align 4
@Py_None = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32, i32, i32*, i32*)* @make_full_arg_tuple to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @make_full_arg_tuple(%struct.TYPE_3__* %0, i32 %1, i32 %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32* null, i32** %12, align 8
  %16 = load i32*, i32** %10, align 8
  %17 = call i32 @PyTuple_GET_SIZE(i32* %16)
  store i32 %17, i32* %13, align 4
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* %13, align 4
  %20 = icmp sle i32 %18, %19
  br i1 %20, label %21, label %27

21:                                               ; preds = %5
  %22 = load i32, i32* %13, align 4
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* %9, align 4
  %25 = add nsw i32 %23, %24
  %26 = icmp sle i32 %22, %25
  br label %27

27:                                               ; preds = %21, %5
  %28 = phi i1 [ false, %5 ], [ %26, %21 ]
  %29 = zext i1 %28 to i32
  %30 = call i32 @assert(i32 %29)
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 1
  store i32* null, i32** %32, align 8
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  store i32* null, i32** %34, align 8
  %35 = load i32*, i32** %10, align 8
  %36 = load i32, i32* %8, align 4
  %37 = call i32* @PyTuple_GetSlice(i32* %35, i32 0, i32 %36)
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  store i32* %37, i32** %39, align 8
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = icmp eq i32* %42, null
  br i1 %43, label %44, label %45

44:                                               ; preds = %27
  br label %199

45:                                               ; preds = %27
  %46 = load i32*, i32** %11, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %48, label %52

48:                                               ; preds = %45
  %49 = load i32*, i32** %11, align 8
  %50 = load i32, i32* @npy_um_str_out, align 4
  %51 = call i32* @PyDict_GetItem(i32* %49, i32 %50)
  br label %53

52:                                               ; preds = %45
  br label %53

53:                                               ; preds = %52, %48
  %54 = phi i32* [ %51, %48 ], [ null, %52 ]
  store i32* %54, i32** %12, align 8
  %55 = load i32*, i32** %12, align 8
  %56 = icmp ne i32* %55, null
  br i1 %56, label %57, label %124

57:                                               ; preds = %53
  %58 = load i32, i32* %13, align 4
  %59 = load i32, i32* %8, align 4
  %60 = icmp eq i32 %58, %59
  %61 = zext i1 %60 to i32
  %62 = call i32 @assert(i32 %61)
  %63 = load i32*, i32** %12, align 8
  %64 = load i32*, i32** @Py_None, align 8
  %65 = icmp eq i32* %63, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %57
  store i32 0, i32* %6, align 4
  br label %208

67:                                               ; preds = %57
  %68 = load i32*, i32** %12, align 8
  %69 = call i64 @PyTuple_Check(i32* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %88

71:                                               ; preds = %67
  %72 = load i32*, i32** %12, align 8
  %73 = call i32 @PyTuple_GET_SIZE(i32* %72)
  %74 = load i32, i32* %9, align 4
  %75 = icmp eq i32 %73, %74
  %76 = zext i1 %75 to i32
  %77 = call i32 @assert(i32 %76)
  %78 = load i32*, i32** %12, align 8
  %79 = call i64 @tuple_all_none(i32* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %71
  store i32 0, i32* %6, align 4
  br label %208

82:                                               ; preds = %71
  %83 = load i32*, i32** %12, align 8
  %84 = call i32 @Py_INCREF(i32* %83)
  %85 = load i32*, i32** %12, align 8
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 0
  store i32* %85, i32** %87, align 8
  store i32 0, i32* %6, align 4
  br label %208

88:                                               ; preds = %67
  %89 = load i32, i32* %9, align 4
  %90 = call i8* @PyTuple_New(i32 %89)
  %91 = bitcast i8* %90 to i32*
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 0
  store i32* %91, i32** %93, align 8
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 0
  %96 = load i32*, i32** %95, align 8
  %97 = icmp eq i32* %96, null
  br i1 %97, label %98, label %99

98:                                               ; preds = %88
  br label %199

99:                                               ; preds = %88
  %100 = load i32*, i32** %12, align 8
  %101 = call i32 @Py_INCREF(i32* %100)
  %102 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 0
  %104 = load i32*, i32** %103, align 8
  %105 = load i32*, i32** %12, align 8
  %106 = call i32 @PyTuple_SET_ITEM(i32* %104, i32 0, i32* %105)
  store i32 1, i32* %14, align 4
  br label %107

107:                                              ; preds = %120, %99
  %108 = load i32, i32* %14, align 4
  %109 = load i32, i32* %9, align 4
  %110 = icmp slt i32 %108, %109
  br i1 %110, label %111, label %123

111:                                              ; preds = %107
  %112 = load i32*, i32** @Py_None, align 8
  %113 = call i32 @Py_INCREF(i32* %112)
  %114 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 0
  %116 = load i32*, i32** %115, align 8
  %117 = load i32, i32* %14, align 4
  %118 = load i32*, i32** @Py_None, align 8
  %119 = call i32 @PyTuple_SET_ITEM(i32* %116, i32 %117, i32* %118)
  br label %120

120:                                              ; preds = %111
  %121 = load i32, i32* %14, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %14, align 4
  br label %107

123:                                              ; preds = %107
  store i32 0, i32* %6, align 4
  br label %208

124:                                              ; preds = %53
  %125 = load i32, i32* %13, align 4
  %126 = load i32, i32* %8, align 4
  %127 = icmp eq i32 %125, %126
  br i1 %127, label %128, label %129

128:                                              ; preds = %124
  store i32 0, i32* %6, align 4
  br label %208

129:                                              ; preds = %124
  %130 = load i32, i32* %9, align 4
  %131 = call i8* @PyTuple_New(i32 %130)
  %132 = bitcast i8* %131 to i32*
  %133 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %133, i32 0, i32 0
  store i32* %132, i32** %134, align 8
  %135 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %136 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %135, i32 0, i32 0
  %137 = load i32*, i32** %136, align 8
  %138 = icmp eq i32* %137, null
  br i1 %138, label %139, label %140

139:                                              ; preds = %129
  br label %199

140:                                              ; preds = %129
  %141 = load i32, i32* %8, align 4
  store i32 %141, i32* %14, align 4
  br label %142

142:                                              ; preds = %160, %140
  %143 = load i32, i32* %14, align 4
  %144 = load i32, i32* %13, align 4
  %145 = icmp slt i32 %143, %144
  br i1 %145, label %146, label %163

146:                                              ; preds = %142
  %147 = load i32*, i32** %10, align 8
  %148 = load i32, i32* %14, align 4
  %149 = call i32* @PyTuple_GET_ITEM(i32* %147, i32 %148)
  store i32* %149, i32** %15, align 8
  %150 = load i32*, i32** %15, align 8
  %151 = call i32 @Py_INCREF(i32* %150)
  %152 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %153 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %152, i32 0, i32 0
  %154 = load i32*, i32** %153, align 8
  %155 = load i32, i32* %14, align 4
  %156 = load i32, i32* %8, align 4
  %157 = sub nsw i32 %155, %156
  %158 = load i32*, i32** %15, align 8
  %159 = call i32 @PyTuple_SET_ITEM(i32* %154, i32 %157, i32* %158)
  br label %160

160:                                              ; preds = %146
  %161 = load i32, i32* %14, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %14, align 4
  br label %142

163:                                              ; preds = %142
  %164 = load i32, i32* %13, align 4
  store i32 %164, i32* %14, align 4
  br label %165

165:                                              ; preds = %182, %163
  %166 = load i32, i32* %14, align 4
  %167 = load i32, i32* %8, align 4
  %168 = load i32, i32* %9, align 4
  %169 = add nsw i32 %167, %168
  %170 = icmp slt i32 %166, %169
  br i1 %170, label %171, label %185

171:                                              ; preds = %165
  %172 = load i32*, i32** @Py_None, align 8
  %173 = call i32 @Py_INCREF(i32* %172)
  %174 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %175 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %174, i32 0, i32 0
  %176 = load i32*, i32** %175, align 8
  %177 = load i32, i32* %14, align 4
  %178 = load i32, i32* %8, align 4
  %179 = sub nsw i32 %177, %178
  %180 = load i32*, i32** @Py_None, align 8
  %181 = call i32 @PyTuple_SET_ITEM(i32* %176, i32 %179, i32* %180)
  br label %182

182:                                              ; preds = %171
  %183 = load i32, i32* %14, align 4
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %14, align 4
  br label %165

185:                                              ; preds = %165
  %186 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %187 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %186, i32 0, i32 0
  %188 = load i32*, i32** %187, align 8
  %189 = call i64 @tuple_all_none(i32* %188)
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %198

191:                                              ; preds = %185
  %192 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %193 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %192, i32 0, i32 0
  %194 = load i32*, i32** %193, align 8
  %195 = call i32 @Py_DECREF(i32* %194)
  %196 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %197 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %196, i32 0, i32 0
  store i32* null, i32** %197, align 8
  br label %198

198:                                              ; preds = %191, %185
  store i32 0, i32* %6, align 4
  br label %208

199:                                              ; preds = %139, %98, %44
  %200 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %201 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %200, i32 0, i32 1
  %202 = load i32*, i32** %201, align 8
  %203 = call i32 @Py_XDECREF(i32* %202)
  %204 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %205 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %204, i32 0, i32 0
  %206 = load i32*, i32** %205, align 8
  %207 = call i32 @Py_XDECREF(i32* %206)
  store i32 -1, i32* %6, align 4
  br label %208

208:                                              ; preds = %199, %198, %128, %123, %82, %81, %66
  %209 = load i32, i32* %6, align 4
  ret i32 %209
}

declare dso_local i32 @PyTuple_GET_SIZE(i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32* @PyTuple_GetSlice(i32*, i32, i32) #1

declare dso_local i32* @PyDict_GetItem(i32*, i32) #1

declare dso_local i64 @PyTuple_Check(i32*) #1

declare dso_local i64 @tuple_all_none(i32*) #1

declare dso_local i32 @Py_INCREF(i32*) #1

declare dso_local i8* @PyTuple_New(i32) #1

declare dso_local i32 @PyTuple_SET_ITEM(i32*, i32, i32*) #1

declare dso_local i32* @PyTuple_GET_ITEM(i32*, i32) #1

declare dso_local i32 @Py_DECREF(i32*) #1

declare dso_local i32 @Py_XDECREF(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
