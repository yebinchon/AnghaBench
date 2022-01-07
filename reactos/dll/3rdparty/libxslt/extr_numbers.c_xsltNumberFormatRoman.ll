; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libxslt/extr_numbers.c_xsltNumberFormatRoman.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libxslt/extr_numbers.c_xsltNumberFormatRoman.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [2 x i8] c"M\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"m\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"CM\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"cm\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"D\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"d\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"CD\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"cd\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"XC\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"xc\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"L\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"l\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"XL\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"xl\00", align 1
@.str.16 = private unnamed_addr constant [2 x i8] c"X\00", align 1
@.str.17 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"IX\00", align 1
@.str.19 = private unnamed_addr constant [3 x i8] c"ix\00", align 1
@.str.20 = private unnamed_addr constant [2 x i8] c"V\00", align 1
@.str.21 = private unnamed_addr constant [2 x i8] c"v\00", align 1
@.str.22 = private unnamed_addr constant [3 x i8] c"IV\00", align 1
@.str.23 = private unnamed_addr constant [3 x i8] c"iv\00", align 1
@.str.24 = private unnamed_addr constant [2 x i8] c"I\00", align 1
@.str.25 = private unnamed_addr constant [2 x i8] c"i\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i32, double, i32)* @xsltNumberFormatRoman to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xsltNumberFormatRoman(%struct.TYPE_3__* %0, i32 %1, double %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca double, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i32 %1, i32* %6, align 4
  store double %2, double* %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load double, double* %7, align 8
  %10 = fcmp olt double %9, 1.000000e+00
  br i1 %10, label %14, label %11

11:                                               ; preds = %4
  %12 = load double, double* %7, align 8
  %13 = fcmp ogt double %12, 5.000000e+03
  br i1 %13, label %14, label %27

14:                                               ; preds = %11, %4
  %15 = load i32, i32* %6, align 4
  %16 = load double, double* %7, align 8
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @xsltNumberFormatDecimal(i32 %15, double %16, i32 48, i32 1, i32 %19, i32 %22, i32 %25)
  br label %190

27:                                               ; preds = %11
  br label %28

28:                                               ; preds = %31, %27
  %29 = load double, double* %7, align 8
  %30 = fcmp oge double %29, 1.000000e+03
  br i1 %30, label %31, label %40

31:                                               ; preds = %28
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* %8, align 4
  %34 = icmp ne i32 %33, 0
  %35 = zext i1 %34 to i64
  %36 = select i1 %34, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)
  %37 = call i32 @xmlBufferCCat(i32 %32, i8* %36)
  %38 = load double, double* %7, align 8
  %39 = fsub double %38, 1.000000e+03
  store double %39, double* %7, align 8
  br label %28

40:                                               ; preds = %28
  %41 = load double, double* %7, align 8
  %42 = fcmp oge double %41, 9.000000e+02
  br i1 %42, label %43, label %52

43:                                               ; preds = %40
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* %8, align 4
  %46 = icmp ne i32 %45, 0
  %47 = zext i1 %46 to i64
  %48 = select i1 %46, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)
  %49 = call i32 @xmlBufferCCat(i32 %44, i8* %48)
  %50 = load double, double* %7, align 8
  %51 = fsub double %50, 9.000000e+02
  store double %51, double* %7, align 8
  br label %52

52:                                               ; preds = %43, %40
  br label %53

53:                                               ; preds = %56, %52
  %54 = load double, double* %7, align 8
  %55 = fcmp oge double %54, 5.000000e+02
  br i1 %55, label %56, label %65

56:                                               ; preds = %53
  %57 = load i32, i32* %6, align 4
  %58 = load i32, i32* %8, align 4
  %59 = icmp ne i32 %58, 0
  %60 = zext i1 %59 to i64
  %61 = select i1 %59, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0)
  %62 = call i32 @xmlBufferCCat(i32 %57, i8* %61)
  %63 = load double, double* %7, align 8
  %64 = fsub double %63, 5.000000e+02
  store double %64, double* %7, align 8
  br label %53

65:                                               ; preds = %53
  %66 = load double, double* %7, align 8
  %67 = fcmp oge double %66, 4.000000e+02
  br i1 %67, label %68, label %77

68:                                               ; preds = %65
  %69 = load i32, i32* %6, align 4
  %70 = load i32, i32* %8, align 4
  %71 = icmp ne i32 %70, 0
  %72 = zext i1 %71 to i64
  %73 = select i1 %71, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0)
  %74 = call i32 @xmlBufferCCat(i32 %69, i8* %73)
  %75 = load double, double* %7, align 8
  %76 = fsub double %75, 4.000000e+02
  store double %76, double* %7, align 8
  br label %77

77:                                               ; preds = %68, %65
  br label %78

78:                                               ; preds = %81, %77
  %79 = load double, double* %7, align 8
  %80 = fcmp oge double %79, 1.000000e+02
  br i1 %80, label %81, label %90

81:                                               ; preds = %78
  %82 = load i32, i32* %6, align 4
  %83 = load i32, i32* %8, align 4
  %84 = icmp ne i32 %83, 0
  %85 = zext i1 %84 to i64
  %86 = select i1 %84, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0)
  %87 = call i32 @xmlBufferCCat(i32 %82, i8* %86)
  %88 = load double, double* %7, align 8
  %89 = fsub double %88, 1.000000e+02
  store double %89, double* %7, align 8
  br label %78

90:                                               ; preds = %78
  %91 = load double, double* %7, align 8
  %92 = fcmp oge double %91, 9.000000e+01
  br i1 %92, label %93, label %102

93:                                               ; preds = %90
  %94 = load i32, i32* %6, align 4
  %95 = load i32, i32* %8, align 4
  %96 = icmp ne i32 %95, 0
  %97 = zext i1 %96 to i64
  %98 = select i1 %96, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0)
  %99 = call i32 @xmlBufferCCat(i32 %94, i8* %98)
  %100 = load double, double* %7, align 8
  %101 = fsub double %100, 9.000000e+01
  store double %101, double* %7, align 8
  br label %102

102:                                              ; preds = %93, %90
  br label %103

103:                                              ; preds = %106, %102
  %104 = load double, double* %7, align 8
  %105 = fcmp oge double %104, 5.000000e+01
  br i1 %105, label %106, label %115

106:                                              ; preds = %103
  %107 = load i32, i32* %6, align 4
  %108 = load i32, i32* %8, align 4
  %109 = icmp ne i32 %108, 0
  %110 = zext i1 %109 to i64
  %111 = select i1 %109, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0)
  %112 = call i32 @xmlBufferCCat(i32 %107, i8* %111)
  %113 = load double, double* %7, align 8
  %114 = fsub double %113, 5.000000e+01
  store double %114, double* %7, align 8
  br label %103

115:                                              ; preds = %103
  %116 = load double, double* %7, align 8
  %117 = fcmp oge double %116, 4.000000e+01
  br i1 %117, label %118, label %127

118:                                              ; preds = %115
  %119 = load i32, i32* %6, align 4
  %120 = load i32, i32* %8, align 4
  %121 = icmp ne i32 %120, 0
  %122 = zext i1 %121 to i64
  %123 = select i1 %121, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0)
  %124 = call i32 @xmlBufferCCat(i32 %119, i8* %123)
  %125 = load double, double* %7, align 8
  %126 = fsub double %125, 4.000000e+01
  store double %126, double* %7, align 8
  br label %127

127:                                              ; preds = %118, %115
  br label %128

128:                                              ; preds = %131, %127
  %129 = load double, double* %7, align 8
  %130 = fcmp oge double %129, 1.000000e+01
  br i1 %130, label %131, label %140

131:                                              ; preds = %128
  %132 = load i32, i32* %6, align 4
  %133 = load i32, i32* %8, align 4
  %134 = icmp ne i32 %133, 0
  %135 = zext i1 %134 to i64
  %136 = select i1 %134, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0)
  %137 = call i32 @xmlBufferCCat(i32 %132, i8* %136)
  %138 = load double, double* %7, align 8
  %139 = fsub double %138, 1.000000e+01
  store double %139, double* %7, align 8
  br label %128

140:                                              ; preds = %128
  %141 = load double, double* %7, align 8
  %142 = fcmp oge double %141, 9.000000e+00
  br i1 %142, label %143, label %152

143:                                              ; preds = %140
  %144 = load i32, i32* %6, align 4
  %145 = load i32, i32* %8, align 4
  %146 = icmp ne i32 %145, 0
  %147 = zext i1 %146 to i64
  %148 = select i1 %146, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i64 0, i64 0)
  %149 = call i32 @xmlBufferCCat(i32 %144, i8* %148)
  %150 = load double, double* %7, align 8
  %151 = fsub double %150, 9.000000e+00
  store double %151, double* %7, align 8
  br label %152

152:                                              ; preds = %143, %140
  br label %153

153:                                              ; preds = %156, %152
  %154 = load double, double* %7, align 8
  %155 = fcmp oge double %154, 5.000000e+00
  br i1 %155, label %156, label %165

156:                                              ; preds = %153
  %157 = load i32, i32* %6, align 4
  %158 = load i32, i32* %8, align 4
  %159 = icmp ne i32 %158, 0
  %160 = zext i1 %159 to i64
  %161 = select i1 %159, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i64 0, i64 0)
  %162 = call i32 @xmlBufferCCat(i32 %157, i8* %161)
  %163 = load double, double* %7, align 8
  %164 = fsub double %163, 5.000000e+00
  store double %164, double* %7, align 8
  br label %153

165:                                              ; preds = %153
  %166 = load double, double* %7, align 8
  %167 = fcmp oge double %166, 4.000000e+00
  br i1 %167, label %168, label %177

168:                                              ; preds = %165
  %169 = load i32, i32* %6, align 4
  %170 = load i32, i32* %8, align 4
  %171 = icmp ne i32 %170, 0
  %172 = zext i1 %171 to i64
  %173 = select i1 %171, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.22, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.23, i64 0, i64 0)
  %174 = call i32 @xmlBufferCCat(i32 %169, i8* %173)
  %175 = load double, double* %7, align 8
  %176 = fsub double %175, 4.000000e+00
  store double %176, double* %7, align 8
  br label %177

177:                                              ; preds = %168, %165
  br label %178

178:                                              ; preds = %181, %177
  %179 = load double, double* %7, align 8
  %180 = fcmp oge double %179, 1.000000e+00
  br i1 %180, label %181, label %190

181:                                              ; preds = %178
  %182 = load i32, i32* %6, align 4
  %183 = load i32, i32* %8, align 4
  %184 = icmp ne i32 %183, 0
  %185 = zext i1 %184 to i64
  %186 = select i1 %184, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.24, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i64 0, i64 0)
  %187 = call i32 @xmlBufferCCat(i32 %182, i8* %186)
  %188 = load double, double* %7, align 8
  %189 = fadd double %188, -1.000000e+00
  store double %189, double* %7, align 8
  br label %178

190:                                              ; preds = %14, %178
  ret void
}

declare dso_local i32 @xsltNumberFormatDecimal(i32, double, i32, i32, i32, i32, i32) #1

declare dso_local i32 @xmlBufferCCat(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
