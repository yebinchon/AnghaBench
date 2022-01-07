; ModuleID = '/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_nditer_constr.c_npyiter_replace_axisdata.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_nditer_constr.c_npyiter_replace_axisdata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32, i8*, i32*)* @npyiter_replace_axisdata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @npyiter_replace_axisdata(i32* %0, i32 %1, i32* %2, i32 %3, i8* %4, i32* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  store i32* %5, i32** %12, align 8
  %30 = load i32*, i32** %7, align 8
  %31 = call i32 @NIT_ITFLAGS(i32* %30)
  store i32 %31, i32* %13, align 4
  %32 = load i32*, i32** %7, align 8
  %33 = call i32 @NIT_NDIM(i32* %32)
  store i32 %33, i32* %15, align 4
  %34 = load i32*, i32** %7, align 8
  %35 = call i32 @NIT_NOP(i32* %34)
  store i32 %35, i32* %16, align 4
  store i32 0, i32* %21, align 4
  %36 = load i32*, i32** %7, align 8
  %37 = call i32* @NIT_PERM(i32* %36)
  store i32* %37, i32** %20, align 8
  %38 = load i32*, i32** %7, align 8
  %39 = call i32* @NIT_AXISDATA(i32* %38)
  store i32* %39, i32** %17, align 8
  %40 = load i32, i32* %13, align 4
  %41 = load i32, i32* %15, align 4
  %42 = load i32, i32* %16, align 4
  %43 = call i32 @NIT_AXISDATA_SIZEOF(i32 %40, i32 %41, i32 %42)
  store i32 %43, i32* %19, align 4
  %44 = load i32*, i32** %17, align 8
  store i32* %44, i32** %18, align 8
  %45 = load i32*, i32** %12, align 8
  %46 = icmp ne i32* %45, null
  br i1 %46, label %47, label %126

47:                                               ; preds = %6
  store i32 0, i32* %14, align 4
  br label %48

48:                                               ; preds = %120, %47
  %49 = load i32, i32* %14, align 4
  %50 = load i32, i32* %15, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %125

52:                                               ; preds = %48
  %53 = load i32*, i32** %20, align 8
  %54 = load i32, i32* %14, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %22, align 4
  %58 = load i32, i32* %22, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %68

60:                                               ; preds = %52
  %61 = load i32*, i32** %12, align 8
  %62 = load i32, i32* %15, align 4
  %63 = load i32, i32* %22, align 4
  %64 = add nsw i32 %62, %63
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %61, i64 %65
  %67 = load i32, i32* %66, align 4
  store i32 %67, i32* %23, align 4
  br label %77

68:                                               ; preds = %52
  %69 = load i32*, i32** %12, align 8
  %70 = load i32, i32* %15, align 4
  %71 = load i32, i32* %22, align 4
  %72 = sub nsw i32 %70, %71
  %73 = sub nsw i32 %72, 1
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %69, i64 %74
  %76 = load i32, i32* %75, align 4
  store i32 %76, i32* %23, align 4
  br label %77

77:                                               ; preds = %68, %60
  %78 = load i32, i32* %23, align 4
  %79 = icmp sle i32 0, %78
  br i1 %79, label %80, label %119

80:                                               ; preds = %77
  %81 = load i32, i32* %23, align 4
  %82 = load i32, i32* %10, align 4
  %83 = icmp slt i32 %81, %82
  br i1 %83, label %84, label %119

84:                                               ; preds = %80
  %85 = load i32*, i32** %9, align 8
  %86 = load i32, i32* %23, align 4
  %87 = call i32 @PyArray_DIM(i32* %85, i32 %86)
  store i32 %87, i32* %24, align 4
  %88 = load i32, i32* %24, align 4
  %89 = icmp ne i32 %88, 1
  br i1 %89, label %90, label %118

90:                                               ; preds = %84
  %91 = load i32*, i32** %9, align 8
  %92 = load i32, i32* %23, align 4
  %93 = call i32 @PyArray_STRIDE(i32* %91, i32 %92)
  store i32 %93, i32* %25, align 4
  %94 = load i32, i32* %22, align 4
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %96, label %110

96:                                               ; preds = %90
  %97 = load i32, i32* %25, align 4
  %98 = sub nsw i32 0, %97
  %99 = load i32*, i32** %18, align 8
  %100 = call i32* @NAD_STRIDES(i32* %99)
  %101 = load i32, i32* %8, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %100, i64 %102
  store i32 %98, i32* %103, align 4
  %104 = load i32, i32* %25, align 4
  %105 = load i32, i32* %24, align 4
  %106 = sub nsw i32 %105, 1
  %107 = mul nsw i32 %104, %106
  %108 = load i32, i32* %21, align 4
  %109 = add nsw i32 %108, %107
  store i32 %109, i32* %21, align 4
  br label %117

110:                                              ; preds = %90
  %111 = load i32, i32* %25, align 4
  %112 = load i32*, i32** %18, align 8
  %113 = call i32* @NAD_STRIDES(i32* %112)
  %114 = load i32, i32* %8, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %113, i64 %115
  store i32 %111, i32* %116, align 4
  br label %117

117:                                              ; preds = %110, %96
  br label %118

118:                                              ; preds = %117, %84
  br label %119

119:                                              ; preds = %118, %80, %77
  br label %120

120:                                              ; preds = %119
  %121 = load i32, i32* %14, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %14, align 4
  %123 = load i32*, i32** %18, align 8
  %124 = call i32 @NIT_ADVANCE_AXISDATA(i32* %123, i32 1)
  br label %48

125:                                              ; preds = %48
  br label %193

126:                                              ; preds = %6
  store i32 0, i32* %14, align 4
  br label %127

127:                                              ; preds = %187, %126
  %128 = load i32, i32* %14, align 4
  %129 = load i32, i32* %15, align 4
  %130 = icmp slt i32 %128, %129
  br i1 %130, label %131, label %192

131:                                              ; preds = %127
  %132 = load i32*, i32** %20, align 8
  %133 = load i32, i32* %14, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i32, i32* %132, i64 %134
  %136 = load i32, i32* %135, align 4
  store i32 %136, i32* %26, align 4
  %137 = load i32, i32* %26, align 4
  %138 = icmp slt i32 %137, 0
  br i1 %138, label %139, label %143

139:                                              ; preds = %131
  %140 = load i32, i32* %10, align 4
  %141 = load i32, i32* %26, align 4
  %142 = add nsw i32 %140, %141
  store i32 %142, i32* %27, align 4
  br label %148

143:                                              ; preds = %131
  %144 = load i32, i32* %10, align 4
  %145 = load i32, i32* %26, align 4
  %146 = sub nsw i32 %144, %145
  %147 = sub nsw i32 %146, 1
  store i32 %147, i32* %27, align 4
  br label %148

148:                                              ; preds = %143, %139
  %149 = load i32, i32* %27, align 4
  %150 = icmp sge i32 %149, 0
  br i1 %150, label %151, label %186

151:                                              ; preds = %148
  %152 = load i32*, i32** %9, align 8
  %153 = load i32, i32* %27, align 4
  %154 = call i32 @PyArray_DIM(i32* %152, i32 %153)
  store i32 %154, i32* %28, align 4
  %155 = load i32, i32* %28, align 4
  %156 = icmp ne i32 %155, 1
  br i1 %156, label %157, label %185

157:                                              ; preds = %151
  %158 = load i32*, i32** %9, align 8
  %159 = load i32, i32* %27, align 4
  %160 = call i32 @PyArray_STRIDE(i32* %158, i32 %159)
  store i32 %160, i32* %29, align 4
  %161 = load i32, i32* %26, align 4
  %162 = icmp slt i32 %161, 0
  br i1 %162, label %163, label %177

163:                                              ; preds = %157
  %164 = load i32, i32* %29, align 4
  %165 = sub nsw i32 0, %164
  %166 = load i32*, i32** %18, align 8
  %167 = call i32* @NAD_STRIDES(i32* %166)
  %168 = load i32, i32* %8, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i32, i32* %167, i64 %169
  store i32 %165, i32* %170, align 4
  %171 = load i32, i32* %29, align 4
  %172 = load i32, i32* %28, align 4
  %173 = sub nsw i32 %172, 1
  %174 = mul nsw i32 %171, %173
  %175 = load i32, i32* %21, align 4
  %176 = add nsw i32 %175, %174
  store i32 %176, i32* %21, align 4
  br label %184

177:                                              ; preds = %157
  %178 = load i32, i32* %29, align 4
  %179 = load i32*, i32** %18, align 8
  %180 = call i32* @NAD_STRIDES(i32* %179)
  %181 = load i32, i32* %8, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i32, i32* %180, i64 %182
  store i32 %178, i32* %183, align 4
  br label %184

184:                                              ; preds = %177, %163
  br label %185

185:                                              ; preds = %184, %151
  br label %186

186:                                              ; preds = %185, %148
  br label %187

187:                                              ; preds = %186
  %188 = load i32, i32* %14, align 4
  %189 = add nsw i32 %188, 1
  store i32 %189, i32* %14, align 4
  %190 = load i32*, i32** %18, align 8
  %191 = call i32 @NIT_ADVANCE_AXISDATA(i32* %190, i32 1)
  br label %127

192:                                              ; preds = %127
  br label %193

193:                                              ; preds = %192, %125
  %194 = load i32, i32* %21, align 4
  %195 = load i8*, i8** %11, align 8
  %196 = sext i32 %194 to i64
  %197 = getelementptr inbounds i8, i8* %195, i64 %196
  store i8* %197, i8** %11, align 8
  %198 = load i8*, i8** %11, align 8
  %199 = load i32*, i32** %7, align 8
  %200 = call i8** @NIT_RESETDATAPTR(i32* %199)
  %201 = load i32, i32* %8, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds i8*, i8** %200, i64 %202
  store i8* %198, i8** %203, align 8
  %204 = load i32, i32* %21, align 4
  %205 = load i32*, i32** %7, align 8
  %206 = call i32* @NIT_BASEOFFSETS(i32* %205)
  %207 = load i32, i32* %8, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds i32, i32* %206, i64 %208
  store i32 %204, i32* %209, align 4
  %210 = load i32*, i32** %17, align 8
  store i32* %210, i32** %18, align 8
  %211 = load i8*, i8** %11, align 8
  %212 = load i32*, i32** %18, align 8
  %213 = call i8** @NAD_PTRS(i32* %212)
  %214 = load i32, i32* %8, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds i8*, i8** %213, i64 %215
  store i8* %211, i8** %216, align 8
  %217 = load i32*, i32** %18, align 8
  %218 = call i32 @NIT_ADVANCE_AXISDATA(i32* %217, i32 1)
  store i32 1, i32* %14, align 4
  br label %219

219:                                              ; preds = %230, %193
  %220 = load i32, i32* %14, align 4
  %221 = load i32, i32* %15, align 4
  %222 = icmp slt i32 %220, %221
  br i1 %222, label %223, label %235

223:                                              ; preds = %219
  %224 = load i8*, i8** %11, align 8
  %225 = load i32*, i32** %18, align 8
  %226 = call i8** @NAD_PTRS(i32* %225)
  %227 = load i32, i32* %8, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds i8*, i8** %226, i64 %228
  store i8* %224, i8** %229, align 8
  br label %230

230:                                              ; preds = %223
  %231 = load i32, i32* %14, align 4
  %232 = add nsw i32 %231, 1
  store i32 %232, i32* %14, align 4
  %233 = load i32*, i32** %18, align 8
  %234 = call i32 @NIT_ADVANCE_AXISDATA(i32* %233, i32 1)
  br label %219

235:                                              ; preds = %219
  ret void
}

declare dso_local i32 @NIT_ITFLAGS(i32*) #1

declare dso_local i32 @NIT_NDIM(i32*) #1

declare dso_local i32 @NIT_NOP(i32*) #1

declare dso_local i32* @NIT_PERM(i32*) #1

declare dso_local i32* @NIT_AXISDATA(i32*) #1

declare dso_local i32 @NIT_AXISDATA_SIZEOF(i32, i32, i32) #1

declare dso_local i32 @PyArray_DIM(i32*, i32) #1

declare dso_local i32 @PyArray_STRIDE(i32*, i32) #1

declare dso_local i32* @NAD_STRIDES(i32*) #1

declare dso_local i32 @NIT_ADVANCE_AXISDATA(i32*, i32) #1

declare dso_local i8** @NIT_RESETDATAPTR(i32*) #1

declare dso_local i32* @NIT_BASEOFFSETS(i32*) #1

declare dso_local i8** @NAD_PTRS(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
