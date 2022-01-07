; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_number.c_number_to_fixed.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_number.c_number_to_fixed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NUMBER_DTOA_SIZE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [8 x i8] c"%lf %d\0A\00", align 1
@TRUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (double, i32)* @number_to_fixed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @number_to_fixed(double %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca double, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  store double %0, double* %4, align 8
  store i32 %1, i32* %5, align 4
  %16 = load i32, i32* @NUMBER_DTOA_SIZE, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %6, align 8
  %19 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %7, align 8
  %20 = load i64, i64* @FALSE, align 8
  store i64 %20, i64* %12, align 8
  %21 = load double, double* %4, align 8
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @TRACE(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), double %21, i32 %22)
  %24 = load double, double* %4, align 8
  %25 = fcmp olt double %24, 0.000000e+00
  br i1 %25, label %26, label %30

26:                                               ; preds = %2
  %27 = load i64, i64* @TRUE, align 8
  store i64 %27, i64* %12, align 8
  %28 = load double, double* %4, align 8
  %29 = fneg double %28
  store double %29, double* %4, align 8
  br label %30

30:                                               ; preds = %26, %2
  %31 = load double, double* %4, align 8
  %32 = fcmp oge double %31, 1.000000e+00
  br i1 %32, label %33, label %39

33:                                               ; preds = %30
  %34 = load double, double* %4, align 8
  %35 = call i32 @log10(double %34)
  %36 = load i32, i32* %5, align 4
  %37 = add nsw i32 %35, %36
  %38 = add nsw i32 %37, 2
  store i32 %38, i32* %10, align 4
  br label %48

39:                                               ; preds = %30
  %40 = load i32, i32* %5, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %39
  %43 = load i32, i32* %5, align 4
  %44 = add nsw i32 %43, 1
  br label %46

45:                                               ; preds = %39
  br label %46

46:                                               ; preds = %45, %42
  %47 = phi i32 [ %44, %42 ], [ 2, %45 ]
  store i32 %47, i32* %10, align 4
  br label %48

48:                                               ; preds = %46, %33
  %49 = load i32, i32* %10, align 4
  %50 = load i32, i32* @NUMBER_DTOA_SIZE, align 4
  %51 = icmp sgt i32 %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %48
  %53 = load i32, i32* @NUMBER_DTOA_SIZE, align 4
  store i32 %53, i32* %10, align 4
  br label %54

54:                                               ; preds = %52, %48
  %55 = load double, double* %4, align 8
  %56 = load i32, i32* %10, align 4
  %57 = call i32 @number_to_str(double %55, i8* %19, i32 %56, i32* %8)
  %58 = load i32, i32* %8, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %60 = load i64, i64* %12, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %54
  %63 = load i32, i32* %9, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %9, align 4
  br label %65

65:                                               ; preds = %62, %54
  %66 = load i32, i32* %8, align 4
  %67 = icmp sgt i32 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %65
  %69 = load i32, i32* %8, align 4
  %70 = load i32, i32* %9, align 4
  %71 = add nsw i32 %70, %69
  store i32 %71, i32* %9, align 4
  br label %75

72:                                               ; preds = %65
  %73 = load i32, i32* %9, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %9, align 4
  br label %75

75:                                               ; preds = %72, %68
  %76 = load i32, i32* %5, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %75
  %79 = load i32, i32* %5, align 4
  %80 = add nsw i32 %79, 1
  %81 = load i32, i32* %9, align 4
  %82 = add nsw i32 %81, %80
  store i32 %82, i32* %9, align 4
  br label %83

83:                                               ; preds = %78, %75
  %84 = load i32, i32* %9, align 4
  %85 = call i32* @jsstr_alloc_buf(i32 %84, i8** %14)
  store i32* %85, i32** %13, align 8
  %86 = load i32*, i32** %13, align 8
  %87 = icmp ne i32* %86, null
  br i1 %87, label %89, label %88

88:                                               ; preds = %83
  store i32* null, i32** %3, align 8
  store i32 1, i32* %15, align 4
  br label %220

89:                                               ; preds = %83
  store i32 0, i32* %11, align 4
  store i32 0, i32* %9, align 4
  %90 = load i64, i64* %12, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %98

92:                                               ; preds = %89
  %93 = load i8*, i8** %14, align 8
  %94 = load i32, i32* %9, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %9, align 4
  %96 = sext i32 %94 to i64
  %97 = getelementptr inbounds i8, i8* %93, i64 %96
  store i8 45, i8* %97, align 1
  br label %98

98:                                               ; preds = %92, %89
  %99 = load i32, i32* %8, align 4
  %100 = icmp sgt i32 %99, 0
  br i1 %100, label %101, label %127

101:                                              ; preds = %98
  br label %102

102:                                              ; preds = %123, %101
  %103 = load i32, i32* %11, align 4
  %104 = load i32, i32* %10, align 4
  %105 = sub nsw i32 %104, 1
  %106 = icmp slt i32 %103, %105
  br i1 %106, label %107, label %110

107:                                              ; preds = %102
  %108 = load i32, i32* %8, align 4
  %109 = icmp ne i32 %108, 0
  br label %110

110:                                              ; preds = %107, %102
  %111 = phi i1 [ false, %102 ], [ %109, %107 ]
  br i1 %111, label %112, label %126

112:                                              ; preds = %110
  %113 = load i32, i32* %11, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %11, align 4
  %115 = sext i32 %113 to i64
  %116 = getelementptr inbounds i8, i8* %19, i64 %115
  %117 = load i8, i8* %116, align 1
  %118 = load i8*, i8** %14, align 8
  %119 = load i32, i32* %9, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %9, align 4
  %121 = sext i32 %119 to i64
  %122 = getelementptr inbounds i8, i8* %118, i64 %121
  store i8 %117, i8* %122, align 1
  br label %123

123:                                              ; preds = %112
  %124 = load i32, i32* %8, align 4
  %125 = add nsw i32 %124, -1
  store i32 %125, i32* %8, align 4
  br label %102

126:                                              ; preds = %110
  br label %133

127:                                              ; preds = %98
  %128 = load i8*, i8** %14, align 8
  %129 = load i32, i32* %9, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %9, align 4
  %131 = sext i32 %129 to i64
  %132 = getelementptr inbounds i8, i8* %128, i64 %131
  store i8 48, i8* %132, align 1
  br label %133

133:                                              ; preds = %127, %126
  br label %134

134:                                              ; preds = %143, %133
  %135 = load i32, i32* %8, align 4
  %136 = icmp sgt i32 %135, 0
  br i1 %136, label %137, label %146

137:                                              ; preds = %134
  %138 = load i8*, i8** %14, align 8
  %139 = load i32, i32* %9, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %9, align 4
  %141 = sext i32 %139 to i64
  %142 = getelementptr inbounds i8, i8* %138, i64 %141
  store i8 48, i8* %142, align 1
  br label %143

143:                                              ; preds = %137
  %144 = load i32, i32* %8, align 4
  %145 = add nsw i32 %144, -1
  store i32 %145, i32* %8, align 4
  br label %134

146:                                              ; preds = %134
  %147 = load i32, i32* %5, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %213

149:                                              ; preds = %146
  %150 = load i8*, i8** %14, align 8
  %151 = load i32, i32* %9, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %9, align 4
  %153 = sext i32 %151 to i64
  %154 = getelementptr inbounds i8, i8* %150, i64 %153
  store i8 46, i8* %154, align 1
  br label %155

155:                                              ; preds = %169, %149
  %156 = load i32, i32* %8, align 4
  %157 = icmp slt i32 %156, 0
  br i1 %157, label %158, label %161

158:                                              ; preds = %155
  %159 = load i32, i32* %5, align 4
  %160 = icmp ne i32 %159, 0
  br label %161

161:                                              ; preds = %158, %155
  %162 = phi i1 [ false, %155 ], [ %160, %158 ]
  br i1 %162, label %163, label %174

163:                                              ; preds = %161
  %164 = load i8*, i8** %14, align 8
  %165 = load i32, i32* %9, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %9, align 4
  %167 = sext i32 %165 to i64
  %168 = getelementptr inbounds i8, i8* %164, i64 %167
  store i8 48, i8* %168, align 1
  br label %169

169:                                              ; preds = %163
  %170 = load i32, i32* %8, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %8, align 4
  %172 = load i32, i32* %5, align 4
  %173 = add nsw i32 %172, -1
  store i32 %173, i32* %5, align 4
  br label %155

174:                                              ; preds = %161
  br label %175

175:                                              ; preds = %196, %174
  %176 = load i32, i32* %11, align 4
  %177 = load i32, i32* %10, align 4
  %178 = sub nsw i32 %177, 1
  %179 = icmp slt i32 %176, %178
  br i1 %179, label %180, label %183

180:                                              ; preds = %175
  %181 = load i32, i32* %5, align 4
  %182 = icmp ne i32 %181, 0
  br label %183

183:                                              ; preds = %180, %175
  %184 = phi i1 [ false, %175 ], [ %182, %180 ]
  br i1 %184, label %185, label %199

185:                                              ; preds = %183
  %186 = load i32, i32* %11, align 4
  %187 = add nsw i32 %186, 1
  store i32 %187, i32* %11, align 4
  %188 = sext i32 %186 to i64
  %189 = getelementptr inbounds i8, i8* %19, i64 %188
  %190 = load i8, i8* %189, align 1
  %191 = load i8*, i8** %14, align 8
  %192 = load i32, i32* %9, align 4
  %193 = add nsw i32 %192, 1
  store i32 %193, i32* %9, align 4
  %194 = sext i32 %192 to i64
  %195 = getelementptr inbounds i8, i8* %191, i64 %194
  store i8 %190, i8* %195, align 1
  br label %196

196:                                              ; preds = %185
  %197 = load i32, i32* %5, align 4
  %198 = add nsw i32 %197, -1
  store i32 %198, i32* %5, align 4
  br label %175

199:                                              ; preds = %183
  br label %200

200:                                              ; preds = %209, %199
  %201 = load i32, i32* %5, align 4
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %212

203:                                              ; preds = %200
  %204 = load i8*, i8** %14, align 8
  %205 = load i32, i32* %9, align 4
  %206 = add nsw i32 %205, 1
  store i32 %206, i32* %9, align 4
  %207 = sext i32 %205 to i64
  %208 = getelementptr inbounds i8, i8* %204, i64 %207
  store i8 48, i8* %208, align 1
  br label %209

209:                                              ; preds = %203
  %210 = load i32, i32* %5, align 4
  %211 = add nsw i32 %210, -1
  store i32 %211, i32* %5, align 4
  br label %200

212:                                              ; preds = %200
  br label %213

213:                                              ; preds = %212, %146
  %214 = load i8*, i8** %14, align 8
  %215 = load i32, i32* %9, align 4
  %216 = add nsw i32 %215, 1
  store i32 %216, i32* %9, align 4
  %217 = sext i32 %215 to i64
  %218 = getelementptr inbounds i8, i8* %214, i64 %217
  store i8 0, i8* %218, align 1
  %219 = load i32*, i32** %13, align 8
  store i32* %219, i32** %3, align 8
  store i32 1, i32* %15, align 4
  br label %220

220:                                              ; preds = %213, %88
  %221 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %221)
  %222 = load i32*, i32** %3, align 8
  ret i32* %222
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @TRACE(i8*, double, i32) #2

declare dso_local i32 @log10(double) #2

declare dso_local i32 @number_to_str(double, i8*, i32, i32*) #2

declare dso_local i32* @jsstr_alloc_buf(i32, i8**) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
