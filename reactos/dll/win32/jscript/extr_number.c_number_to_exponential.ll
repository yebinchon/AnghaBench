; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_number.c_number_to_exponential.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_number.c_number_to_exponential.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NUMBER_DTOA_SIZE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (double, i32)* @number_to_exponential to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @number_to_exponential(double %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca double, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  store double %0, double* %4, align 8
  store i32 %1, i32* %5, align 4
  %17 = load i32, i32* @NUMBER_DTOA_SIZE, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %6, align 8
  %20 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %7, align 8
  store i32 1, i32* %12, align 4
  %21 = load i64, i64* @FALSE, align 8
  store i64 %21, i64* %13, align 8
  %22 = load double, double* %4, align 8
  %23 = fcmp olt double %22, 0.000000e+00
  br i1 %23, label %24, label %28

24:                                               ; preds = %2
  %25 = load i64, i64* @TRUE, align 8
  store i64 %25, i64* %13, align 8
  %26 = load double, double* %4, align 8
  %27 = fneg double %26
  store double %27, double* %4, align 8
  br label %28

28:                                               ; preds = %24, %2
  %29 = load i32, i32* %5, align 4
  %30 = add nsw i32 %29, 2
  store i32 %30, i32* %11, align 4
  %31 = load i32, i32* %11, align 4
  %32 = icmp slt i32 %31, 2
  br i1 %32, label %37, label %33

33:                                               ; preds = %28
  %34 = load i32, i32* %11, align 4
  %35 = load i32, i32* @NUMBER_DTOA_SIZE, align 4
  %36 = icmp sgt i32 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %33, %28
  %38 = load i32, i32* @NUMBER_DTOA_SIZE, align 4
  store i32 %38, i32* %11, align 4
  br label %39

39:                                               ; preds = %37, %33
  %40 = load double, double* %4, align 8
  %41 = load i32, i32* %11, align 4
  %42 = call i32 @number_to_str(double %40, i8* %20, i32 %41, i32* %9)
  %43 = load i32, i32* %11, align 4
  %44 = add nsw i32 %43, -1
  store i32 %44, i32* %11, align 4
  %45 = load i32, i32* %5, align 4
  %46 = icmp eq i32 %45, -1
  br i1 %46, label %47, label %70

47:                                               ; preds = %39
  br label %48

48:                                               ; preds = %66, %47
  %49 = load i32, i32* %11, align 4
  %50 = icmp sgt i32 %49, 1
  br i1 %50, label %51, label %59

51:                                               ; preds = %48
  %52 = load i32, i32* %11, align 4
  %53 = sub nsw i32 %52, 1
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8, i8* %20, i64 %54
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp eq i32 %57, 48
  br label %59

59:                                               ; preds = %51, %48
  %60 = phi i1 [ false, %48 ], [ %58, %51 ]
  br i1 %60, label %61, label %69

61:                                               ; preds = %59
  %62 = load i32, i32* %11, align 4
  %63 = sub nsw i32 %62, 1
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i8, i8* %20, i64 %64
  store i8 0, i8* %65, align 1
  br label %66

66:                                               ; preds = %61
  %67 = load i32, i32* %11, align 4
  %68 = add nsw i32 %67, -1
  store i32 %68, i32* %11, align 4
  br label %48

69:                                               ; preds = %59
  br label %70

70:                                               ; preds = %69, %39
  store i32 10, i32* %10, align 4
  br label %71

71:                                               ; preds = %82, %70
  %72 = load i32, i32* %9, align 4
  %73 = load i32, i32* %10, align 4
  %74 = icmp sge i32 %72, %73
  br i1 %74, label %80, label %75

75:                                               ; preds = %71
  %76 = load i32, i32* %9, align 4
  %77 = load i32, i32* %10, align 4
  %78 = sub nsw i32 0, %77
  %79 = icmp sle i32 %76, %78
  br label %80

80:                                               ; preds = %75, %71
  %81 = phi i1 [ true, %71 ], [ %79, %75 ]
  br i1 %81, label %82, label %87

82:                                               ; preds = %80
  %83 = load i32, i32* %10, align 4
  %84 = mul nsw i32 %83, 10
  store i32 %84, i32* %10, align 4
  %85 = load i32, i32* %12, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %12, align 4
  br label %71

87:                                               ; preds = %80
  %88 = load i32, i32* %11, align 4
  %89 = icmp eq i32 %88, 1
  br i1 %89, label %90, label %95

90:                                               ; preds = %87
  %91 = load i32, i32* %11, align 4
  %92 = add nsw i32 %91, 2
  %93 = load i32, i32* %12, align 4
  %94 = add nsw i32 %92, %93
  store i32 %94, i32* %10, align 4
  br label %109

95:                                               ; preds = %87
  %96 = load i32, i32* %5, align 4
  %97 = icmp eq i32 %96, -1
  br i1 %97, label %98, label %103

98:                                               ; preds = %95
  %99 = load i32, i32* %11, align 4
  %100 = add nsw i32 %99, 3
  %101 = load i32, i32* %12, align 4
  %102 = add nsw i32 %100, %101
  store i32 %102, i32* %10, align 4
  br label %108

103:                                              ; preds = %95
  %104 = load i32, i32* %5, align 4
  %105 = add nsw i32 %104, 4
  %106 = load i32, i32* %12, align 4
  %107 = add nsw i32 %105, %106
  store i32 %107, i32* %10, align 4
  br label %108

108:                                              ; preds = %103, %98
  br label %109

109:                                              ; preds = %108, %90
  %110 = load i64, i64* %13, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %109
  %113 = load i32, i32* %10, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %10, align 4
  br label %115

115:                                              ; preds = %112, %109
  %116 = load i32, i32* %10, align 4
  %117 = call i32* @jsstr_alloc_buf(i32 %116, i8** %15)
  store i32* %117, i32** %14, align 8
  %118 = load i32*, i32** %14, align 8
  %119 = icmp ne i32* %118, null
  br i1 %119, label %121, label %120

120:                                              ; preds = %115
  store i32* null, i32** %3, align 8
  store i32 1, i32* %16, align 4
  br label %226

121:                                              ; preds = %115
  store i32 0, i32* %10, align 4
  store i8* %20, i8** %8, align 8
  %122 = load i64, i64* %13, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %130

124:                                              ; preds = %121
  %125 = load i8*, i8** %15, align 8
  %126 = load i32, i32* %10, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %10, align 4
  %128 = sext i32 %126 to i64
  %129 = getelementptr inbounds i8, i8* %125, i64 %128
  store i8 45, i8* %129, align 1
  br label %130

130:                                              ; preds = %124, %121
  %131 = load i8*, i8** %8, align 8
  %132 = getelementptr inbounds i8, i8* %131, i32 1
  store i8* %132, i8** %8, align 8
  %133 = load i8, i8* %131, align 1
  %134 = load i8*, i8** %15, align 8
  %135 = load i32, i32* %10, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %10, align 4
  %137 = sext i32 %135 to i64
  %138 = getelementptr inbounds i8, i8* %134, i64 %137
  store i8 %133, i8* %138, align 1
  %139 = load i32, i32* %11, align 4
  %140 = icmp ne i32 %139, 1
  br i1 %140, label %141, label %176

141:                                              ; preds = %130
  %142 = load i8*, i8** %15, align 8
  %143 = load i32, i32* %10, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %10, align 4
  %145 = sext i32 %143 to i64
  %146 = getelementptr inbounds i8, i8* %142, i64 %145
  store i8 46, i8* %146, align 1
  br label %147

147:                                              ; preds = %151, %141
  %148 = load i8*, i8** %8, align 8
  %149 = load i8, i8* %148, align 1
  %150 = icmp ne i8 %149, 0
  br i1 %150, label %151, label %160

151:                                              ; preds = %147
  %152 = load i8*, i8** %8, align 8
  %153 = getelementptr inbounds i8, i8* %152, i32 1
  store i8* %153, i8** %8, align 8
  %154 = load i8, i8* %152, align 1
  %155 = load i8*, i8** %15, align 8
  %156 = load i32, i32* %10, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %10, align 4
  %158 = sext i32 %156 to i64
  %159 = getelementptr inbounds i8, i8* %155, i64 %158
  store i8 %154, i8* %159, align 1
  br label %147

160:                                              ; preds = %147
  br label %161

161:                                              ; preds = %172, %160
  %162 = load i32, i32* %5, align 4
  %163 = load i32, i32* %11, align 4
  %164 = sub nsw i32 %163, 1
  %165 = icmp sgt i32 %162, %164
  br i1 %165, label %166, label %175

166:                                              ; preds = %161
  %167 = load i8*, i8** %15, align 8
  %168 = load i32, i32* %10, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %10, align 4
  %170 = sext i32 %168 to i64
  %171 = getelementptr inbounds i8, i8* %167, i64 %170
  store i8 48, i8* %171, align 1
  br label %172

172:                                              ; preds = %166
  %173 = load i32, i32* %5, align 4
  %174 = add nsw i32 %173, -1
  store i32 %174, i32* %5, align 4
  br label %161

175:                                              ; preds = %161
  br label %176

176:                                              ; preds = %175, %130
  %177 = load i8*, i8** %15, align 8
  %178 = load i32, i32* %10, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %10, align 4
  %180 = sext i32 %178 to i64
  %181 = getelementptr inbounds i8, i8* %177, i64 %180
  store i8 101, i8* %181, align 1
  %182 = load i32, i32* %9, align 4
  %183 = icmp sge i32 %182, 0
  br i1 %183, label %184, label %190

184:                                              ; preds = %176
  %185 = load i8*, i8** %15, align 8
  %186 = load i32, i32* %10, align 4
  %187 = add nsw i32 %186, 1
  store i32 %187, i32* %10, align 4
  %188 = sext i32 %186 to i64
  %189 = getelementptr inbounds i8, i8* %185, i64 %188
  store i8 43, i8* %189, align 1
  br label %198

190:                                              ; preds = %176
  %191 = load i8*, i8** %15, align 8
  %192 = load i32, i32* %10, align 4
  %193 = add nsw i32 %192, 1
  store i32 %193, i32* %10, align 4
  %194 = sext i32 %192 to i64
  %195 = getelementptr inbounds i8, i8* %191, i64 %194
  store i8 45, i8* %195, align 1
  %196 = load i32, i32* %9, align 4
  %197 = sub nsw i32 0, %196
  store i32 %197, i32* %9, align 4
  br label %198

198:                                              ; preds = %190, %184
  %199 = load i32, i32* %12, align 4
  %200 = load i32, i32* %10, align 4
  %201 = add nsw i32 %200, %199
  store i32 %201, i32* %10, align 4
  br label %202

202:                                              ; preds = %214, %198
  %203 = load i32, i32* %9, align 4
  %204 = srem i32 %203, 10
  %205 = add nsw i32 48, %204
  %206 = trunc i32 %205 to i8
  %207 = load i8*, i8** %15, align 8
  %208 = load i32, i32* %10, align 4
  %209 = add nsw i32 %208, -1
  store i32 %209, i32* %10, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds i8, i8* %207, i64 %210
  store i8 %206, i8* %211, align 1
  %212 = load i32, i32* %9, align 4
  %213 = sdiv i32 %212, 10
  store i32 %213, i32* %9, align 4
  br label %214

214:                                              ; preds = %202
  %215 = load i32, i32* %9, align 4
  %216 = icmp sgt i32 %215, 0
  br i1 %216, label %202, label %217

217:                                              ; preds = %214
  %218 = load i32, i32* %12, align 4
  %219 = load i32, i32* %10, align 4
  %220 = add nsw i32 %219, %218
  store i32 %220, i32* %10, align 4
  %221 = load i8*, i8** %15, align 8
  %222 = load i32, i32* %10, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds i8, i8* %221, i64 %223
  store i8 0, i8* %224, align 1
  %225 = load i32*, i32** %14, align 8
  store i32* %225, i32** %3, align 8
  store i32 1, i32* %16, align 4
  br label %226

226:                                              ; preds = %217, %120
  %227 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %227)
  %228 = load i32*, i32** %3, align 8
  ret i32* %228
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

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
