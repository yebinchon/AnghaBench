; ModuleID = '/home/carl/AnghaBench/postgres/src/port/extr_snprintf.c_fmtfloat.c'
source_filename = "/home/carl/AnghaBench/postgres/src/port/extr_snprintf.c_fmtfloat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"NaN\00", align 1
@fmtfloat.dzero = internal constant double 0.000000e+00, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"Infinity\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (double, i8, i32, i32, i32, i32, i32, i32, %struct.TYPE_7__*)* @fmtfloat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fmtfloat(double %0, i8 signext %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, %struct.TYPE_7__* %8) #0 {
  %10 = alloca double, align 8
  %11 = alloca i8, align 1
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_7__*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca [8 x i8], align 1
  %23 = alloca [1024 x i8], align 16
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i8*, align 8
  store double %0, double* %10, align 8
  store i8 %1, i8* %11, align 1
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store %struct.TYPE_7__* %8, %struct.TYPE_7__** %18, align 8
  store i32 0, i32* %19, align 4
  store i32 0, i32* %24, align 4
  %27 = load i32, i32* %16, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %9
  store i32 0, i32* %16, align 4
  br label %30

30:                                               ; preds = %29, %9
  %31 = load i32, i32* %16, align 4
  %32 = call i32 @Min(i32 %31, i32 350)
  store i32 %32, i32* %20, align 4
  %33 = load double, double* %10, align 8
  %34 = call i64 @isnan(double %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %30
  %37 = getelementptr inbounds [1024 x i8], [1024 x i8]* %23, i64 0, i64 0
  %38 = call i32 @strcpy(i8* %37, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i32 3, i32* %21, align 4
  br label %100

39:                                               ; preds = %30
  %40 = load double, double* %10, align 8
  %41 = fcmp olt double %40, 0.000000e+00
  br i1 %41, label %50, label %42

42:                                               ; preds = %39
  %43 = load double, double* %10, align 8
  %44 = fcmp oeq double %43, 0.000000e+00
  br i1 %44, label %45, label %48

45:                                               ; preds = %42
  %46 = call i64 @memcmp(double* %10, double* @fmtfloat.dzero, i32 8)
  %47 = icmp ne i64 %46, 0
  br label %48

48:                                               ; preds = %45, %42
  %49 = phi i1 [ false, %42 ], [ %47, %45 ]
  br label %50

50:                                               ; preds = %48, %39
  %51 = phi i1 [ true, %39 ], [ %49, %48 ]
  %52 = zext i1 %51 to i32
  %53 = load i32, i32* %12, align 4
  %54 = call i64 @adjust_sign(i32 %52, i32 %53, i32* %19)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %50
  %57 = load double, double* %10, align 8
  %58 = fneg double %57
  store double %58, double* %10, align 8
  br label %59

59:                                               ; preds = %56, %50
  %60 = load double, double* %10, align 8
  %61 = call i64 @isinf(double %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %59
  %64 = getelementptr inbounds [1024 x i8], [1024 x i8]* %23, i64 0, i64 0
  %65 = call i32 @strcpy(i8* %64, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  store i32 8, i32* %21, align 4
  br label %95

66:                                               ; preds = %59
  %67 = load i32, i32* %17, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %85

69:                                               ; preds = %66
  %70 = load i32, i32* %16, align 4
  %71 = load i32, i32* %20, align 4
  %72 = sub nsw i32 %70, %71
  store i32 %72, i32* %24, align 4
  %73 = getelementptr inbounds [8 x i8], [8 x i8]* %22, i64 0, i64 0
  store i8 37, i8* %73, align 1
  %74 = getelementptr inbounds [8 x i8], [8 x i8]* %22, i64 0, i64 1
  store i8 46, i8* %74, align 1
  %75 = getelementptr inbounds [8 x i8], [8 x i8]* %22, i64 0, i64 2
  store i8 42, i8* %75, align 1
  %76 = load i8, i8* %11, align 1
  %77 = getelementptr inbounds [8 x i8], [8 x i8]* %22, i64 0, i64 3
  store i8 %76, i8* %77, align 1
  %78 = getelementptr inbounds [8 x i8], [8 x i8]* %22, i64 0, i64 4
  store i8 0, i8* %78, align 1
  %79 = getelementptr inbounds [1024 x i8], [1024 x i8]* %23, i64 0, i64 0
  %80 = getelementptr inbounds [8 x i8], [8 x i8]* %22, i64 0, i64 0
  %81 = load i32, i32* %20, align 4
  %82 = sitofp i32 %81 to double
  %83 = load double, double* %10, align 8
  %84 = call i32 (i8*, i8*, double, ...) @sprintf(i8* %79, i8* %80, double %82, double %83)
  store i32 %84, i32* %21, align 4
  br label %94

85:                                               ; preds = %66
  %86 = getelementptr inbounds [8 x i8], [8 x i8]* %22, i64 0, i64 0
  store i8 37, i8* %86, align 1
  %87 = load i8, i8* %11, align 1
  %88 = getelementptr inbounds [8 x i8], [8 x i8]* %22, i64 0, i64 1
  store i8 %87, i8* %88, align 1
  %89 = getelementptr inbounds [8 x i8], [8 x i8]* %22, i64 0, i64 2
  store i8 0, i8* %89, align 1
  %90 = getelementptr inbounds [1024 x i8], [1024 x i8]* %23, i64 0, i64 0
  %91 = getelementptr inbounds [8 x i8], [8 x i8]* %22, i64 0, i64 0
  %92 = load double, double* %10, align 8
  %93 = call i32 (i8*, i8*, double, ...) @sprintf(i8* %90, i8* %91, double %92)
  store i32 %93, i32* %21, align 4
  br label %94

94:                                               ; preds = %85, %69
  br label %95

95:                                               ; preds = %94, %63
  %96 = load i32, i32* %21, align 4
  %97 = icmp slt i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %95
  br label %175

99:                                               ; preds = %95
  br label %100

100:                                              ; preds = %99, %36
  %101 = load i32, i32* %14, align 4
  %102 = load i32, i32* %21, align 4
  %103 = load i32, i32* %24, align 4
  %104 = add nsw i32 %102, %103
  %105 = load i32, i32* %13, align 4
  %106 = call i32 @compute_padlen(i32 %101, i32 %104, i32 %105)
  store i32 %106, i32* %25, align 4
  %107 = load i32, i32* %15, align 4
  %108 = load i32, i32* %19, align 4
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %110 = call i32 @leading_pad(i32 %107, i32 %108, i32* %25, %struct.TYPE_7__* %109)
  %111 = load i32, i32* %24, align 4
  %112 = icmp sgt i32 %111, 0
  br i1 %112, label %113, label %166

113:                                              ; preds = %100
  %114 = getelementptr inbounds [1024 x i8], [1024 x i8]* %23, i64 0, i64 0
  %115 = call i8* @strrchr(i8* %114, i8 signext 101)
  store i8* %115, i8** %26, align 8
  %116 = load i8*, i8** %26, align 8
  %117 = icmp ne i8* %116, null
  br i1 %117, label %121, label %118

118:                                              ; preds = %113
  %119 = getelementptr inbounds [1024 x i8], [1024 x i8]* %23, i64 0, i64 0
  %120 = call i8* @strrchr(i8* %119, i8 signext 69)
  store i8* %120, i8** %26, align 8
  br label %121

121:                                              ; preds = %118, %113
  %122 = load i8*, i8** %26, align 8
  %123 = icmp ne i8* %122, null
  br i1 %123, label %124, label %153

124:                                              ; preds = %121
  %125 = getelementptr inbounds [1024 x i8], [1024 x i8]* %23, i64 0, i64 0
  %126 = load i8*, i8** %26, align 8
  %127 = getelementptr inbounds [1024 x i8], [1024 x i8]* %23, i64 0, i64 0
  %128 = ptrtoint i8* %126 to i64
  %129 = ptrtoint i8* %127 to i64
  %130 = sub i64 %128, %129
  %131 = trunc i64 %130 to i32
  %132 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %133 = call i32 @dostr(i8* %125, i32 %131, %struct.TYPE_7__* %132)
  %134 = load i32, i32* %24, align 4
  %135 = icmp sgt i32 %134, 0
  br i1 %135, label %136, label %140

136:                                              ; preds = %124
  %137 = load i32, i32* %24, align 4
  %138 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %139 = call i32 @dopr_outchmulti(i32 48, i32 %137, %struct.TYPE_7__* %138)
  br label %140

140:                                              ; preds = %136, %124
  %141 = load i8*, i8** %26, align 8
  %142 = load i32, i32* %21, align 4
  %143 = sext i32 %142 to i64
  %144 = load i8*, i8** %26, align 8
  %145 = getelementptr inbounds [1024 x i8], [1024 x i8]* %23, i64 0, i64 0
  %146 = ptrtoint i8* %144 to i64
  %147 = ptrtoint i8* %145 to i64
  %148 = sub i64 %146, %147
  %149 = sub nsw i64 %143, %148
  %150 = trunc i64 %149 to i32
  %151 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %152 = call i32 @dostr(i8* %141, i32 %150, %struct.TYPE_7__* %151)
  br label %165

153:                                              ; preds = %121
  %154 = getelementptr inbounds [1024 x i8], [1024 x i8]* %23, i64 0, i64 0
  %155 = load i32, i32* %21, align 4
  %156 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %157 = call i32 @dostr(i8* %154, i32 %155, %struct.TYPE_7__* %156)
  %158 = load i32, i32* %24, align 4
  %159 = icmp sgt i32 %158, 0
  br i1 %159, label %160, label %164

160:                                              ; preds = %153
  %161 = load i32, i32* %24, align 4
  %162 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %163 = call i32 @dopr_outchmulti(i32 48, i32 %161, %struct.TYPE_7__* %162)
  br label %164

164:                                              ; preds = %160, %153
  br label %165

165:                                              ; preds = %164, %140
  br label %171

166:                                              ; preds = %100
  %167 = getelementptr inbounds [1024 x i8], [1024 x i8]* %23, i64 0, i64 0
  %168 = load i32, i32* %21, align 4
  %169 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %170 = call i32 @dostr(i8* %167, i32 %168, %struct.TYPE_7__* %169)
  br label %171

171:                                              ; preds = %166, %165
  %172 = load i32, i32* %25, align 4
  %173 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %174 = call i32 @trailing_pad(i32 %172, %struct.TYPE_7__* %173)
  br label %178

175:                                              ; preds = %98
  %176 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %177 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %176, i32 0, i32 0
  store i32 1, i32* %177, align 4
  br label %178

178:                                              ; preds = %175, %171
  ret void
}

declare dso_local i32 @Min(i32, i32) #1

declare dso_local i64 @isnan(double) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i64 @adjust_sign(i32, i32, i32*) #1

declare dso_local i64 @memcmp(double*, double*, i32) #1

declare dso_local i64 @isinf(double) #1

declare dso_local i32 @sprintf(i8*, i8*, double, ...) #1

declare dso_local i32 @compute_padlen(i32, i32, i32) #1

declare dso_local i32 @leading_pad(i32, i32, i32*, %struct.TYPE_7__*) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i32 @dostr(i8*, i32, %struct.TYPE_7__*) #1

declare dso_local i32 @dopr_outchmulti(i32, i32, %struct.TYPE_7__*) #1

declare dso_local i32 @trailing_pad(i32, %struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
