; ModuleID = '/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_context.c_gl_create_visual.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_context.c_gl_create_visual.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { double, double, double, double, float, float, float, float, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i8*, i8*, i8* }

@GL_TRUE = common dso_local global i8* null, align 8
@GL_FALSE = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_3__* @gl_create_visual(i8* %0, i8* %1, i8* %2, i32 %3, i32 %4, i32 %5, i32 %6, double %7, double %8, double %9, double %10, i32 %11, i32 %12, i32 %13, i32 %14) #0 {
  %16 = alloca %struct.TYPE_3__*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca double, align 8
  %25 = alloca double, align 8
  %26 = alloca double, align 8
  %27 = alloca double, align 8
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca %struct.TYPE_3__*, align 8
  store i8* %0, i8** %17, align 8
  store i8* %1, i8** %18, align 8
  store i8* %2, i8** %19, align 8
  store i32 %3, i32* %20, align 4
  store i32 %4, i32* %21, align 4
  store i32 %5, i32* %22, align 4
  store i32 %6, i32* %23, align 4
  store double %7, double* %24, align 8
  store double %8, double* %25, align 8
  store double %9, double* %26, align 8
  store double %10, double* %27, align 8
  store i32 %11, i32* %28, align 4
  store i32 %12, i32* %29, align 4
  store i32 %13, i32* %30, align 4
  store i32 %14, i32* %31, align 4
  %33 = load double, double* %24, align 8
  %34 = fcmp ole double %33, 2.550000e+02
  %35 = zext i1 %34 to i32
  %36 = call i32 @assert(i32 %35)
  %37 = load double, double* %25, align 8
  %38 = fcmp ole double %37, 2.550000e+02
  %39 = zext i1 %38 to i32
  %40 = call i32 @assert(i32 %39)
  %41 = load double, double* %26, align 8
  %42 = fcmp ole double %41, 2.550000e+02
  %43 = zext i1 %42 to i32
  %44 = call i32 @assert(i32 %43)
  %45 = load double, double* %27, align 8
  %46 = fcmp ole double %45, 2.550000e+02
  %47 = zext i1 %46 to i32
  %48 = call i32 @assert(i32 %47)
  %49 = load i32, i32* %20, align 4
  %50 = sext i32 %49 to i64
  %51 = icmp ugt i64 %50, 32
  br i1 %51, label %52, label %53

52:                                               ; preds = %15
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %16, align 8
  br label %203

53:                                               ; preds = %15
  %54 = load i32, i32* %21, align 4
  %55 = sext i32 %54 to i64
  %56 = icmp ugt i64 %55, 32
  br i1 %56, label %57, label %58

57:                                               ; preds = %53
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %16, align 8
  br label %203

58:                                               ; preds = %53
  %59 = load i32, i32* %22, align 4
  %60 = sext i32 %59 to i64
  %61 = icmp ugt i64 %60, 32
  br i1 %61, label %62, label %63

62:                                               ; preds = %58
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %16, align 8
  br label %203

63:                                               ; preds = %58
  %64 = call i64 @calloc(i32 1, i32 120)
  %65 = inttoptr i64 %64 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %65, %struct.TYPE_3__** %32, align 8
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %67 = icmp ne %struct.TYPE_3__* %66, null
  br i1 %67, label %69, label %68

68:                                               ; preds = %63
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %16, align 8
  br label %203

69:                                               ; preds = %63
  %70 = load i8*, i8** %17, align 8
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 20
  store i8* %70, i8** %72, align 8
  %73 = load i8*, i8** %19, align 8
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 19
  store i8* %73, i8** %75, align 8
  %76 = load double, double* %24, align 8
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 0
  store double %76, double* %78, align 8
  %79 = load double, double* %25, align 8
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 1
  store double %79, double* %81, align 8
  %82 = load double, double* %26, align 8
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 2
  store double %82, double* %84, align 8
  %85 = load double, double* %27, align 8
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 3
  store double %85, double* %87, align 8
  %88 = load double, double* %24, align 8
  %89 = fcmp une double %88, 0.000000e+00
  br i1 %89, label %90, label %96

90:                                               ; preds = %69
  %91 = load double, double* %24, align 8
  %92 = fdiv double 1.000000e+00, %91
  %93 = fptrunc double %92 to float
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 4
  store float %93, float* %95, align 8
  br label %96

96:                                               ; preds = %90, %69
  %97 = load double, double* %25, align 8
  %98 = fcmp une double %97, 0.000000e+00
  br i1 %98, label %99, label %105

99:                                               ; preds = %96
  %100 = load double, double* %25, align 8
  %101 = fdiv double 1.000000e+00, %100
  %102 = fptrunc double %101 to float
  %103 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 5
  store float %102, float* %104, align 4
  br label %105

105:                                              ; preds = %99, %96
  %106 = load double, double* %26, align 8
  %107 = fcmp une double %106, 0.000000e+00
  br i1 %107, label %108, label %114

108:                                              ; preds = %105
  %109 = load double, double* %26, align 8
  %110 = fdiv double 1.000000e+00, %109
  %111 = fptrunc double %110 to float
  %112 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 6
  store float %111, float* %113, align 8
  br label %114

114:                                              ; preds = %108, %105
  %115 = load double, double* %27, align 8
  %116 = fcmp une double %115, 0.000000e+00
  br i1 %116, label %117, label %123

117:                                              ; preds = %114
  %118 = load double, double* %27, align 8
  %119 = fdiv double 1.000000e+00, %118
  %120 = fptrunc double %119 to float
  %121 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 7
  store float %120, float* %122, align 4
  br label %123

123:                                              ; preds = %117, %114
  %124 = load i32, i32* %28, align 4
  %125 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i32 0, i32 8
  store i32 %124, i32* %126, align 8
  %127 = load i32, i32* %29, align 4
  %128 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %129 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %128, i32 0, i32 9
  store i32 %127, i32* %129, align 4
  %130 = load i32, i32* %30, align 4
  %131 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %132 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %131, i32 0, i32 10
  store i32 %130, i32* %132, align 8
  %133 = load i8*, i8** %18, align 8
  %134 = icmp ne i8* %133, null
  br i1 %134, label %135, label %136

135:                                              ; preds = %123
  br label %139

136:                                              ; preds = %123
  %137 = load i32, i32* %31, align 4
  %138 = sext i32 %137 to i64
  br label %139

139:                                              ; preds = %136, %135
  %140 = phi i64 [ 32, %135 ], [ %138, %136 ]
  %141 = trunc i64 %140 to i32
  %142 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %143 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %142, i32 0, i32 11
  store i32 %141, i32* %143, align 4
  %144 = load i32, i32* %23, align 4
  %145 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %146 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %145, i32 0, i32 12
  store i32 %144, i32* %146, align 8
  %147 = load i32, i32* %20, align 4
  %148 = icmp sgt i32 %147, 0
  %149 = zext i1 %148 to i64
  %150 = select i1 %148, i64 32, i64 0
  %151 = trunc i64 %150 to i32
  %152 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %153 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %152, i32 0, i32 13
  store i32 %151, i32* %153, align 4
  %154 = load i32, i32* %22, align 4
  %155 = icmp sgt i32 %154, 0
  %156 = zext i1 %155 to i64
  %157 = select i1 %155, i64 32, i64 0
  %158 = trunc i64 %157 to i32
  %159 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %160 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %159, i32 0, i32 14
  store i32 %158, i32* %160, align 8
  %161 = load i32, i32* %21, align 4
  %162 = icmp sgt i32 %161, 0
  %163 = zext i1 %162 to i64
  %164 = select i1 %162, i64 32, i64 0
  %165 = trunc i64 %164 to i32
  %166 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %167 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %166, i32 0, i32 15
  store i32 %165, i32* %167, align 4
  %168 = load double, double* %24, align 8
  %169 = fcmp oeq double %168, 2.550000e+02
  br i1 %169, label %170, label %183

170:                                              ; preds = %139
  %171 = load double, double* %25, align 8
  %172 = fcmp oeq double %171, 2.550000e+02
  br i1 %172, label %173, label %183

173:                                              ; preds = %170
  %174 = load double, double* %26, align 8
  %175 = fcmp oeq double %174, 2.550000e+02
  br i1 %175, label %176, label %183

176:                                              ; preds = %173
  %177 = load double, double* %27, align 8
  %178 = fcmp oeq double %177, 2.550000e+02
  br i1 %178, label %179, label %183

179:                                              ; preds = %176
  %180 = load i8*, i8** @GL_TRUE, align 8
  %181 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %182 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %181, i32 0, i32 18
  store i8* %180, i8** %182, align 8
  br label %187

183:                                              ; preds = %176, %173, %170, %139
  %184 = load i8*, i8** @GL_FALSE, align 8
  %185 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %186 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %185, i32 0, i32 18
  store i8* %184, i8** %186, align 8
  br label %187

187:                                              ; preds = %183, %179
  %188 = load i8*, i8** %18, align 8
  %189 = icmp ne i8* %188, null
  br i1 %189, label %190, label %201

190:                                              ; preds = %187
  %191 = load i8*, i8** @GL_TRUE, align 8
  %192 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %193 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %192, i32 0, i32 17
  store i8* %191, i8** %193, align 8
  %194 = load i8*, i8** %19, align 8
  %195 = icmp ne i8* %194, null
  br i1 %195, label %196, label %200

196:                                              ; preds = %190
  %197 = load i8*, i8** @GL_TRUE, align 8
  %198 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %199 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %198, i32 0, i32 16
  store i8* %197, i8** %199, align 8
  br label %200

200:                                              ; preds = %196, %190
  br label %201

201:                                              ; preds = %200, %187
  %202 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  store %struct.TYPE_3__* %202, %struct.TYPE_3__** %16, align 8
  br label %203

203:                                              ; preds = %201, %68, %62, %57, %52
  %204 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  ret %struct.TYPE_3__* %204
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @calloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
