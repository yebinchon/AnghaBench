; ModuleID = '/home/carl/AnghaBench/numpy/numpy/core/src/umath/extr_ufunc_object.c__validate_num_dims.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/core/src/umath/extr_ufunc_object.c__validate_num_dims.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32*, i32*, i32*, i32 }

@UFUNC_CORE_DIM_CAN_IGNORE = common dso_local global i32 0, align 4
@UFUNC_CORE_DIM_MISSING = common dso_local global i32 0, align 4
@PyExc_ValueError = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [102 x i8] c"%s: %s operand %d does not have enough dimensions (has %d, gufunc core with signature %s requires %d)\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"Input\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"Output\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i32**, i32*, i32*)* @_validate_num_dims to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_validate_num_dims(%struct.TYPE_4__* %0, i32** %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %6, align 8
  store i32** %1, i32*** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %12, align 4
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %13, align 4
  store i32 0, i32* %10, align 4
  br label %26

26:                                               ; preds = %204, %4
  %27 = load i32, i32* %10, align 4
  %28 = load i32, i32* %13, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %207

30:                                               ; preds = %26
  %31 = load i32**, i32*** %7, align 8
  %32 = load i32, i32* %10, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32*, i32** %31, i64 %33
  %35 = load i32*, i32** %34, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %37, label %203

37:                                               ; preds = %30
  %38 = load i32**, i32*** %7, align 8
  %39 = load i32, i32* %10, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32*, i32** %38, i64 %40
  %42 = load i32*, i32** %41, align 8
  %43 = call i32 @PyArray_NDIM(i32* %42)
  store i32 %43, i32* %14, align 4
  %44 = load i32, i32* %14, align 4
  %45 = load i32*, i32** %9, align 8
  %46 = load i32, i32* %10, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = icmp slt i32 %44, %49
  br i1 %50, label %51, label %202

51:                                               ; preds = %37
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 2
  %54 = load i32*, i32** %53, align 8
  %55 = load i32, i32* %10, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %15, align 4
  %59 = load i32, i32* %15, align 4
  store i32 %59, i32* %11, align 4
  br label %60

60:                                               ; preds = %155, %51
  %61 = load i32, i32* %11, align 4
  %62 = load i32, i32* %15, align 4
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 3
  %65 = load i32*, i32** %64, align 8
  %66 = load i32, i32* %10, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = add nsw i32 %62, %69
  %71 = icmp slt i32 %61, %70
  br i1 %71, label %72, label %158

72:                                               ; preds = %60
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 4
  %75 = load i32*, i32** %74, align 8
  %76 = load i32, i32* %11, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  %79 = load i32, i32* %78, align 4
  store i32 %79, i32* %16, align 4
  %80 = load i32*, i32** %8, align 8
  %81 = load i32, i32* %16, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @UFUNC_CORE_DIM_CAN_IGNORE, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %154

88:                                               ; preds = %72
  %89 = load i32, i32* @UFUNC_CORE_DIM_MISSING, align 4
  %90 = load i32*, i32** %8, align 8
  %91 = load i32, i32* %16, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %90, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = or i32 %94, %89
  store i32 %95, i32* %93, align 4
  %96 = load i32, i32* @UFUNC_CORE_DIM_CAN_IGNORE, align 4
  %97 = load i32*, i32** %8, align 8
  %98 = load i32, i32* %16, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %97, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = xor i32 %101, %96
  store i32 %102, i32* %100, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %19, align 4
  br label %103

103:                                              ; preds = %141, %88
  %104 = load i32, i32* %17, align 4
  %105 = load i32, i32* %13, align 4
  %106 = icmp slt i32 %104, %105
  br i1 %106, label %107, label %144

107:                                              ; preds = %103
  store i32 0, i32* %18, align 4
  br label %108

108:                                              ; preds = %137, %107
  %109 = load i32, i32* %18, align 4
  %110 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 3
  %112 = load i32*, i32** %111, align 8
  %113 = load i32, i32* %17, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %112, i64 %114
  %116 = load i32, i32* %115, align 4
  %117 = icmp slt i32 %109, %116
  br i1 %117, label %118, label %140

118:                                              ; preds = %108
  %119 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 4
  %121 = load i32*, i32** %120, align 8
  %122 = load i32, i32* %19, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %19, align 4
  %124 = sext i32 %122 to i64
  %125 = getelementptr inbounds i32, i32* %121, i64 %124
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* %16, align 4
  %128 = icmp eq i32 %126, %127
  br i1 %128, label %129, label %136

129:                                              ; preds = %118
  %130 = load i32*, i32** %9, align 8
  %131 = load i32, i32* %17, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32, i32* %130, i64 %132
  %134 = load i32, i32* %133, align 4
  %135 = add nsw i32 %134, -1
  store i32 %135, i32* %133, align 4
  br label %136

136:                                              ; preds = %129, %118
  br label %137

137:                                              ; preds = %136
  %138 = load i32, i32* %18, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %18, align 4
  br label %108

140:                                              ; preds = %108
  br label %141

141:                                              ; preds = %140
  %142 = load i32, i32* %17, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %17, align 4
  br label %103

144:                                              ; preds = %103
  %145 = load i32, i32* %14, align 4
  %146 = load i32*, i32** %9, align 8
  %147 = load i32, i32* %10, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i32, i32* %146, i64 %148
  %150 = load i32, i32* %149, align 4
  %151 = icmp eq i32 %145, %150
  br i1 %151, label %152, label %153

152:                                              ; preds = %144
  br label %158

153:                                              ; preds = %144
  br label %154

154:                                              ; preds = %153, %72
  br label %155

155:                                              ; preds = %154
  %156 = load i32, i32* %11, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %11, align 4
  br label %60

158:                                              ; preds = %152, %60
  %159 = load i32, i32* %14, align 4
  %160 = load i32*, i32** %9, align 8
  %161 = load i32, i32* %10, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i32, i32* %160, i64 %162
  %164 = load i32, i32* %163, align 4
  %165 = icmp slt i32 %159, %164
  br i1 %165, label %166, label %201

166:                                              ; preds = %158
  %167 = load i32, i32* @PyExc_ValueError, align 4
  %168 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %169 = call i32 @ufunc_get_name_cstr(%struct.TYPE_4__* %168)
  %170 = load i32, i32* %10, align 4
  %171 = load i32, i32* %12, align 4
  %172 = icmp slt i32 %170, %171
  %173 = zext i1 %172 to i64
  %174 = select i1 %172, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0)
  %175 = load i32, i32* %10, align 4
  %176 = load i32, i32* %12, align 4
  %177 = icmp slt i32 %175, %176
  br i1 %177, label %178, label %180

178:                                              ; preds = %166
  %179 = load i32, i32* %10, align 4
  br label %184

180:                                              ; preds = %166
  %181 = load i32, i32* %10, align 4
  %182 = load i32, i32* %12, align 4
  %183 = sub nsw i32 %181, %182
  br label %184

184:                                              ; preds = %180, %178
  %185 = phi i32 [ %179, %178 ], [ %183, %180 ]
  %186 = load i32**, i32*** %7, align 8
  %187 = load i32, i32* %10, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i32*, i32** %186, i64 %188
  %190 = load i32*, i32** %189, align 8
  %191 = call i32 @PyArray_NDIM(i32* %190)
  %192 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %193 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %192, i32 0, i32 5
  %194 = load i32, i32* %193, align 8
  %195 = load i32*, i32** %9, align 8
  %196 = load i32, i32* %10, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds i32, i32* %195, i64 %197
  %199 = load i32, i32* %198, align 4
  %200 = call i32 @PyErr_Format(i32 %167, i8* getelementptr inbounds ([102 x i8], [102 x i8]* @.str, i64 0, i64 0), i32 %169, i8* %174, i32 %185, i32 %191, i32 %194, i32 %199)
  store i32 -1, i32* %5, align 4
  br label %208

201:                                              ; preds = %158
  br label %202

202:                                              ; preds = %201, %37
  br label %203

203:                                              ; preds = %202, %30
  br label %204

204:                                              ; preds = %203
  %205 = load i32, i32* %10, align 4
  %206 = add nsw i32 %205, 1
  store i32 %206, i32* %10, align 4
  br label %26

207:                                              ; preds = %26
  store i32 0, i32* %5, align 4
  br label %208

208:                                              ; preds = %207, %184
  %209 = load i32, i32* %5, align 4
  ret i32 %209
}

declare dso_local i32 @PyArray_NDIM(i32*) #1

declare dso_local i32 @PyErr_Format(i32, i8*, i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @ufunc_get_name_cstr(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
