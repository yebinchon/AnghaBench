; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/arch/arm/gnu/extr_floatformat.c_floatformat_from_double.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/arch/arm/gnu/extr_floatformat.c_floatformat_from_double.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.floatformat = type { i32, i32, i32, i32, i64, i32, i32, i32, i64, i32 }

@FLOATFORMAT_CHAR_BIT = common dso_local global i32 0, align 4
@floatformat_intbit_no = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @floatformat_from_double(%struct.floatformat* %0, double* %1, i8* %2) #0 {
  %4 = alloca %struct.floatformat*, align 8
  %5 = alloca double*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca double, align 8
  %8 = alloca i32, align 4
  %9 = alloca double, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  store %struct.floatformat* %0, %struct.floatformat** %4, align 8
  store double* %1, double** %5, align 8
  store i8* %2, i8** %6, align 8
  %15 = load i8*, i8** %6, align 8
  store i8* %15, i8** %13, align 8
  %16 = load double*, double** %5, align 8
  %17 = load double, double* %16, align 8
  store double %17, double* %7, align 8
  %18 = load i8*, i8** %13, align 8
  %19 = load %struct.floatformat*, %struct.floatformat** %4, align 8
  %20 = getelementptr inbounds %struct.floatformat, %struct.floatformat* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @FLOATFORMAT_CHAR_BIT, align 4
  %23 = sdiv i32 %21, %22
  %24 = call i32 @memset(i8* %18, i32 0, i32 %23)
  %25 = load double, double* %7, align 8
  %26 = fcmp olt double %25, 0.000000e+00
  br i1 %26, label %27, label %41

27:                                               ; preds = %3
  %28 = load i8*, i8** %13, align 8
  %29 = load %struct.floatformat*, %struct.floatformat** %4, align 8
  %30 = getelementptr inbounds %struct.floatformat, %struct.floatformat* %29, i32 0, i32 9
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.floatformat*, %struct.floatformat** %4, align 8
  %33 = getelementptr inbounds %struct.floatformat, %struct.floatformat* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.floatformat*, %struct.floatformat** %4, align 8
  %36 = getelementptr inbounds %struct.floatformat, %struct.floatformat* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @put_field(i8* %28, i32 %31, i32 %34, i32 %37, i32 1, i64 1)
  %39 = load double, double* %7, align 8
  %40 = fneg double %39
  store double %40, double* %7, align 8
  br label %41

41:                                               ; preds = %27, %3
  %42 = load double, double* %7, align 8
  %43 = fcmp oeq double %42, 0.000000e+00
  br i1 %43, label %44, label %45

44:                                               ; preds = %41
  br label %235

45:                                               ; preds = %41
  %46 = load double, double* %7, align 8
  %47 = load double, double* %7, align 8
  %48 = fcmp une double %46, %47
  br i1 %48, label %49, label %78

49:                                               ; preds = %45
  %50 = load i8*, i8** %13, align 8
  %51 = load %struct.floatformat*, %struct.floatformat** %4, align 8
  %52 = getelementptr inbounds %struct.floatformat, %struct.floatformat* %51, i32 0, i32 9
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.floatformat*, %struct.floatformat** %4, align 8
  %55 = getelementptr inbounds %struct.floatformat, %struct.floatformat* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.floatformat*, %struct.floatformat** %4, align 8
  %58 = getelementptr inbounds %struct.floatformat, %struct.floatformat* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.floatformat*, %struct.floatformat** %4, align 8
  %61 = getelementptr inbounds %struct.floatformat, %struct.floatformat* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.floatformat*, %struct.floatformat** %4, align 8
  %64 = getelementptr inbounds %struct.floatformat, %struct.floatformat* %63, i32 0, i32 4
  %65 = load i64, i64* %64, align 8
  %66 = call i32 @put_field(i8* %50, i32 %53, i32 %56, i32 %59, i32 %62, i64 %65)
  %67 = load i8*, i8** %13, align 8
  %68 = load %struct.floatformat*, %struct.floatformat** %4, align 8
  %69 = getelementptr inbounds %struct.floatformat, %struct.floatformat* %68, i32 0, i32 9
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.floatformat*, %struct.floatformat** %4, align 8
  %72 = getelementptr inbounds %struct.floatformat, %struct.floatformat* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.floatformat*, %struct.floatformat** %4, align 8
  %75 = getelementptr inbounds %struct.floatformat, %struct.floatformat* %74, i32 0, i32 5
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @put_field(i8* %67, i32 %70, i32 %73, i32 %76, i32 32, i64 1)
  br label %235

78:                                               ; preds = %45
  %79 = load double, double* %7, align 8
  %80 = load double, double* %7, align 8
  %81 = fadd double %79, %80
  %82 = load double, double* %7, align 8
  %83 = fcmp oeq double %81, %82
  br i1 %83, label %84, label %102

84:                                               ; preds = %78
  %85 = load i8*, i8** %13, align 8
  %86 = load %struct.floatformat*, %struct.floatformat** %4, align 8
  %87 = getelementptr inbounds %struct.floatformat, %struct.floatformat* %86, i32 0, i32 9
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.floatformat*, %struct.floatformat** %4, align 8
  %90 = getelementptr inbounds %struct.floatformat, %struct.floatformat* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.floatformat*, %struct.floatformat** %4, align 8
  %93 = getelementptr inbounds %struct.floatformat, %struct.floatformat* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.floatformat*, %struct.floatformat** %4, align 8
  %96 = getelementptr inbounds %struct.floatformat, %struct.floatformat* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.floatformat*, %struct.floatformat** %4, align 8
  %99 = getelementptr inbounds %struct.floatformat, %struct.floatformat* %98, i32 0, i32 4
  %100 = load i64, i64* %99, align 8
  %101 = call i32 @put_field(i8* %85, i32 %88, i32 %91, i32 %94, i32 %97, i64 %100)
  br label %235

102:                                              ; preds = %78
  %103 = load double, double* %7, align 8
  %104 = call double @frexp(double %103, i32* %8) #3
  store double %104, double* %9, align 8
  %105 = load i32, i32* %8, align 4
  %106 = load %struct.floatformat*, %struct.floatformat** %4, align 8
  %107 = getelementptr inbounds %struct.floatformat, %struct.floatformat* %106, i32 0, i32 6
  %108 = load i32, i32* %107, align 4
  %109 = add nsw i32 %105, %108
  %110 = sub nsw i32 %109, 1
  %111 = icmp sgt i32 %110, 0
  br i1 %111, label %112, label %134

112:                                              ; preds = %102
  %113 = load i8*, i8** %13, align 8
  %114 = load %struct.floatformat*, %struct.floatformat** %4, align 8
  %115 = getelementptr inbounds %struct.floatformat, %struct.floatformat* %114, i32 0, i32 9
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.floatformat*, %struct.floatformat** %4, align 8
  %118 = getelementptr inbounds %struct.floatformat, %struct.floatformat* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = load %struct.floatformat*, %struct.floatformat** %4, align 8
  %121 = getelementptr inbounds %struct.floatformat, %struct.floatformat* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 8
  %123 = load %struct.floatformat*, %struct.floatformat** %4, align 8
  %124 = getelementptr inbounds %struct.floatformat, %struct.floatformat* %123, i32 0, i32 3
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* %8, align 4
  %127 = load %struct.floatformat*, %struct.floatformat** %4, align 8
  %128 = getelementptr inbounds %struct.floatformat, %struct.floatformat* %127, i32 0, i32 6
  %129 = load i32, i32* %128, align 4
  %130 = add nsw i32 %126, %129
  %131 = sub nsw i32 %130, 1
  %132 = sext i32 %131 to i64
  %133 = call i32 @put_field(i8* %113, i32 %116, i32 %119, i32 %122, i32 %125, i64 %132)
  br label %157

134:                                              ; preds = %102
  %135 = load i8*, i8** %13, align 8
  %136 = load %struct.floatformat*, %struct.floatformat** %4, align 8
  %137 = getelementptr inbounds %struct.floatformat, %struct.floatformat* %136, i32 0, i32 9
  %138 = load i32, i32* %137, align 8
  %139 = load %struct.floatformat*, %struct.floatformat** %4, align 8
  %140 = getelementptr inbounds %struct.floatformat, %struct.floatformat* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = load %struct.floatformat*, %struct.floatformat** %4, align 8
  %143 = getelementptr inbounds %struct.floatformat, %struct.floatformat* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 8
  %145 = load %struct.floatformat*, %struct.floatformat** %4, align 8
  %146 = getelementptr inbounds %struct.floatformat, %struct.floatformat* %145, i32 0, i32 3
  %147 = load i32, i32* %146, align 4
  %148 = call i32 @put_field(i8* %135, i32 %138, i32 %141, i32 %144, i32 %147, i64 0)
  %149 = load double, double* %9, align 8
  %150 = load i32, i32* %8, align 4
  %151 = load %struct.floatformat*, %struct.floatformat** %4, align 8
  %152 = getelementptr inbounds %struct.floatformat, %struct.floatformat* %151, i32 0, i32 6
  %153 = load i32, i32* %152, align 4
  %154 = add nsw i32 %150, %153
  %155 = sub nsw i32 %154, 1
  %156 = call double @ldexp(double %149, i32 %155) #3
  store double %156, double* %9, align 8
  br label %157

157:                                              ; preds = %134, %112
  %158 = load %struct.floatformat*, %struct.floatformat** %4, align 8
  %159 = getelementptr inbounds %struct.floatformat, %struct.floatformat* %158, i32 0, i32 7
  %160 = load i32, i32* %159, align 8
  store i32 %160, i32* %12, align 4
  %161 = load %struct.floatformat*, %struct.floatformat** %4, align 8
  %162 = getelementptr inbounds %struct.floatformat, %struct.floatformat* %161, i32 0, i32 5
  %163 = load i32, i32* %162, align 8
  store i32 %163, i32* %11, align 4
  br label %164

164:                                              ; preds = %217, %157
  %165 = load i32, i32* %12, align 4
  %166 = icmp sgt i32 %165, 0
  br i1 %166, label %167, label %235

167:                                              ; preds = %164
  %168 = load i32, i32* %12, align 4
  %169 = icmp slt i32 %168, 32
  br i1 %169, label %170, label %172

170:                                              ; preds = %167
  %171 = load i32, i32* %12, align 4
  br label %173

172:                                              ; preds = %167
  br label %173

173:                                              ; preds = %172, %170
  %174 = phi i32 [ %171, %170 ], [ 32, %172 ]
  store i32 %174, i32* %10, align 4
  %175 = load double, double* %9, align 8
  %176 = fmul double %175, 0x41F0000000000000
  store double %176, double* %9, align 8
  %177 = load double, double* %9, align 8
  %178 = fptoui double %177 to i64
  store i64 %178, i64* %14, align 8
  %179 = load i64, i64* %14, align 8
  %180 = uitofp i64 %179 to double
  %181 = load double, double* %9, align 8
  %182 = fsub double %181, %180
  store double %182, double* %9, align 8
  %183 = load i32, i32* %12, align 4
  %184 = load %struct.floatformat*, %struct.floatformat** %4, align 8
  %185 = getelementptr inbounds %struct.floatformat, %struct.floatformat* %184, i32 0, i32 7
  %186 = load i32, i32* %185, align 8
  %187 = icmp eq i32 %183, %186
  br i1 %187, label %188, label %207

188:                                              ; preds = %173
  %189 = load %struct.floatformat*, %struct.floatformat** %4, align 8
  %190 = getelementptr inbounds %struct.floatformat, %struct.floatformat* %189, i32 0, i32 8
  %191 = load i64, i64* %190, align 8
  %192 = load i64, i64* @floatformat_intbit_no, align 8
  %193 = icmp eq i64 %191, %192
  br i1 %193, label %194, label %207

194:                                              ; preds = %188
  %195 = load i32, i32* %8, align 4
  %196 = load %struct.floatformat*, %struct.floatformat** %4, align 8
  %197 = getelementptr inbounds %struct.floatformat, %struct.floatformat* %196, i32 0, i32 6
  %198 = load i32, i32* %197, align 4
  %199 = add nsw i32 %195, %198
  %200 = sub nsw i32 %199, 1
  %201 = icmp sgt i32 %200, 0
  br i1 %201, label %202, label %207

202:                                              ; preds = %194
  %203 = load i64, i64* %14, align 8
  %204 = and i64 %203, 2147483647
  store i64 %204, i64* %14, align 8
  %205 = load i32, i32* %10, align 4
  %206 = sub i32 %205, 1
  store i32 %206, i32* %10, align 4
  br label %217

207:                                              ; preds = %194, %188, %173
  %208 = load i32, i32* %10, align 4
  %209 = icmp ult i32 %208, 32
  br i1 %209, label %210, label %216

210:                                              ; preds = %207
  %211 = load i32, i32* %10, align 4
  %212 = sub i32 32, %211
  %213 = load i64, i64* %14, align 8
  %214 = zext i32 %212 to i64
  %215 = lshr i64 %213, %214
  store i64 %215, i64* %14, align 8
  br label %216

216:                                              ; preds = %210, %207
  br label %217

217:                                              ; preds = %216, %202
  %218 = load i8*, i8** %13, align 8
  %219 = load %struct.floatformat*, %struct.floatformat** %4, align 8
  %220 = getelementptr inbounds %struct.floatformat, %struct.floatformat* %219, i32 0, i32 9
  %221 = load i32, i32* %220, align 8
  %222 = load %struct.floatformat*, %struct.floatformat** %4, align 8
  %223 = getelementptr inbounds %struct.floatformat, %struct.floatformat* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 8
  %225 = load i32, i32* %11, align 4
  %226 = load i32, i32* %10, align 4
  %227 = load i64, i64* %14, align 8
  %228 = call i32 @put_field(i8* %218, i32 %221, i32 %224, i32 %225, i32 %226, i64 %227)
  %229 = load i32, i32* %10, align 4
  %230 = load i32, i32* %11, align 4
  %231 = add i32 %230, %229
  store i32 %231, i32* %11, align 4
  %232 = load i32, i32* %10, align 4
  %233 = load i32, i32* %12, align 4
  %234 = sub i32 %233, %232
  store i32 %234, i32* %12, align 4
  br label %164

235:                                              ; preds = %44, %49, %84, %164
  ret void
}

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @put_field(i8*, i32, i32, i32, i32, i64) #1

; Function Attrs: nounwind
declare dso_local double @frexp(double, i32*) #2

; Function Attrs: nounwind
declare dso_local double @ldexp(double, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
