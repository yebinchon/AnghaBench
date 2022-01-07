; ModuleID = '/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_texstate.c_gl_TexParameterfv.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_texstate.c_gl_TexParameterfv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__, %struct.TYPE_7__, i32 }
%struct.TYPE_8__ = type { i32 (%struct.TYPE_9__*, i32, %struct.gl_texture_object*, i32, double*)* }
%struct.gl_texture_object = type { i32, i32, i32, i32, i32, i8*, i8** }
%struct.TYPE_7__ = type { i8*, %struct.gl_texture_object*, %struct.gl_texture_object* }

@GL_INVALID_ENUM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"glTexParameter(target)\00", align 1
@GL_NEAREST = common dso_local global i32 0, align 4
@GL_LINEAR = common dso_local global i32 0, align 4
@GL_NEAREST_MIPMAP_NEAREST = common dso_local global i32 0, align 4
@GL_LINEAR_MIPMAP_NEAREST = common dso_local global i32 0, align 4
@GL_NEAREST_MIPMAP_LINEAR = common dso_local global i32 0, align 4
@GL_LINEAR_MIPMAP_LINEAR = common dso_local global i32 0, align 4
@NEW_TEXTURING = common dso_local global i32 0, align 4
@GL_INVALID_VALUE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"glTexParameter(param)\00", align 1
@GL_CLAMP = common dso_local global i32 0, align 4
@GL_REPEAT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"glTexParameter(pname)\00", align 1
@GL_TRUE = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gl_TexParameterfv(%struct.TYPE_9__* %0, i32 %1, i32 %2, double* %3) #0 {
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca double*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.gl_texture_object*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store double* %3, double** %8, align 8
  %11 = load double*, double** %8, align 8
  %12 = getelementptr inbounds double, double* %11, i64 0
  %13 = load double, double* %12, align 8
  %14 = fptosi double %13 to i32
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %6, align 4
  switch i32 %15, label %26 [
    i32 135, label %16
    i32 134, label %21
  ]

16:                                               ; preds = %4
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 2
  %20 = load %struct.gl_texture_object*, %struct.gl_texture_object** %19, align 8
  store %struct.gl_texture_object* %20, %struct.gl_texture_object** %10, align 8
  br label %30

21:                                               ; preds = %4
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 1
  %25 = load %struct.gl_texture_object*, %struct.gl_texture_object** %24, align 8
  store %struct.gl_texture_object* %25, %struct.gl_texture_object** %10, align 8
  br label %30

26:                                               ; preds = %4
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %28 = load i32, i32* @GL_INVALID_ENUM, align 4
  %29 = call i32 @gl_error(%struct.TYPE_9__* %27, i32 %28, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %212

30:                                               ; preds = %21, %16
  %31 = load i32, i32* %7, align 4
  switch i32 %31, label %184 [
    i32 131, label %32
    i32 132, label %70
    i32 129, label %92
    i32 128, label %109
    i32 130, label %126
    i32 133, label %143
  ]

32:                                               ; preds = %30
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* @GL_NEAREST, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %56, label %36

36:                                               ; preds = %32
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* @GL_LINEAR, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %56, label %40

40:                                               ; preds = %36
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* @GL_NEAREST_MIPMAP_NEAREST, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %56, label %44

44:                                               ; preds = %40
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* @GL_LINEAR_MIPMAP_NEAREST, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %56, label %48

48:                                               ; preds = %44
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* @GL_NEAREST_MIPMAP_LINEAR, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %56, label %52

52:                                               ; preds = %48
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* @GL_LINEAR_MIPMAP_LINEAR, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %65

56:                                               ; preds = %52, %48, %44, %40, %36, %32
  %57 = load i32, i32* %9, align 4
  %58 = load %struct.gl_texture_object*, %struct.gl_texture_object** %10, align 8
  %59 = getelementptr inbounds %struct.gl_texture_object, %struct.gl_texture_object* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 8
  %60 = load i32, i32* @NEW_TEXTURING, align 4
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = or i32 %63, %60
  store i32 %64, i32* %62, align 8
  br label %69

65:                                               ; preds = %52
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %67 = load i32, i32* @GL_INVALID_VALUE, align 4
  %68 = call i32 @gl_error(%struct.TYPE_9__* %66, i32 %67, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  br label %212

69:                                               ; preds = %56
  br label %188

70:                                               ; preds = %30
  %71 = load i32, i32* %9, align 4
  %72 = load i32, i32* @GL_NEAREST, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %78, label %74

74:                                               ; preds = %70
  %75 = load i32, i32* %9, align 4
  %76 = load i32, i32* @GL_LINEAR, align 4
  %77 = icmp eq i32 %75, %76
  br i1 %77, label %78, label %87

78:                                               ; preds = %74, %70
  %79 = load i32, i32* %9, align 4
  %80 = load %struct.gl_texture_object*, %struct.gl_texture_object** %10, align 8
  %81 = getelementptr inbounds %struct.gl_texture_object, %struct.gl_texture_object* %80, i32 0, i32 1
  store i32 %79, i32* %81, align 4
  %82 = load i32, i32* @NEW_TEXTURING, align 4
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = or i32 %85, %82
  store i32 %86, i32* %84, align 8
  br label %91

87:                                               ; preds = %74
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %89 = load i32, i32* @GL_INVALID_VALUE, align 4
  %90 = call i32 @gl_error(%struct.TYPE_9__* %88, i32 %89, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  br label %212

91:                                               ; preds = %78
  br label %188

92:                                               ; preds = %30
  %93 = load i32, i32* %9, align 4
  %94 = load i32, i32* @GL_CLAMP, align 4
  %95 = icmp eq i32 %93, %94
  br i1 %95, label %100, label %96

96:                                               ; preds = %92
  %97 = load i32, i32* %9, align 4
  %98 = load i32, i32* @GL_REPEAT, align 4
  %99 = icmp eq i32 %97, %98
  br i1 %99, label %100, label %104

100:                                              ; preds = %96, %92
  %101 = load i32, i32* %9, align 4
  %102 = load %struct.gl_texture_object*, %struct.gl_texture_object** %10, align 8
  %103 = getelementptr inbounds %struct.gl_texture_object, %struct.gl_texture_object* %102, i32 0, i32 2
  store i32 %101, i32* %103, align 8
  br label %108

104:                                              ; preds = %96
  %105 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %106 = load i32, i32* @GL_INVALID_VALUE, align 4
  %107 = call i32 @gl_error(%struct.TYPE_9__* %105, i32 %106, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  br label %212

108:                                              ; preds = %100
  br label %188

109:                                              ; preds = %30
  %110 = load i32, i32* %9, align 4
  %111 = load i32, i32* @GL_CLAMP, align 4
  %112 = icmp eq i32 %110, %111
  br i1 %112, label %117, label %113

113:                                              ; preds = %109
  %114 = load i32, i32* %9, align 4
  %115 = load i32, i32* @GL_REPEAT, align 4
  %116 = icmp eq i32 %114, %115
  br i1 %116, label %117, label %121

117:                                              ; preds = %113, %109
  %118 = load i32, i32* %9, align 4
  %119 = load %struct.gl_texture_object*, %struct.gl_texture_object** %10, align 8
  %120 = getelementptr inbounds %struct.gl_texture_object, %struct.gl_texture_object* %119, i32 0, i32 3
  store i32 %118, i32* %120, align 4
  br label %125

121:                                              ; preds = %113
  %122 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %123 = load i32, i32* @GL_INVALID_VALUE, align 4
  %124 = call i32 @gl_error(%struct.TYPE_9__* %122, i32 %123, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  br label %212

125:                                              ; preds = %117
  br label %188

126:                                              ; preds = %30
  %127 = load i32, i32* %9, align 4
  %128 = load i32, i32* @GL_CLAMP, align 4
  %129 = icmp eq i32 %127, %128
  br i1 %129, label %134, label %130

130:                                              ; preds = %126
  %131 = load i32, i32* %9, align 4
  %132 = load i32, i32* @GL_REPEAT, align 4
  %133 = icmp eq i32 %131, %132
  br i1 %133, label %134, label %138

134:                                              ; preds = %130, %126
  %135 = load i32, i32* %9, align 4
  %136 = load %struct.gl_texture_object*, %struct.gl_texture_object** %10, align 8
  %137 = getelementptr inbounds %struct.gl_texture_object, %struct.gl_texture_object* %136, i32 0, i32 4
  store i32 %135, i32* %137, align 8
  br label %142

138:                                              ; preds = %130
  %139 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %140 = load i32, i32* @GL_INVALID_VALUE, align 4
  %141 = call i32 @gl_error(%struct.TYPE_9__* %139, i32 %140, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  br label %142

142:                                              ; preds = %138, %134
  br label %188

143:                                              ; preds = %30
  %144 = load double*, double** %8, align 8
  %145 = getelementptr inbounds double, double* %144, i64 0
  %146 = load double, double* %145, align 8
  %147 = fmul double %146, 2.550000e+02
  %148 = fptosi double %147 to i32
  %149 = call i8* @CLAMP(i32 %148, i32 0, i32 255)
  %150 = load %struct.gl_texture_object*, %struct.gl_texture_object** %10, align 8
  %151 = getelementptr inbounds %struct.gl_texture_object, %struct.gl_texture_object* %150, i32 0, i32 6
  %152 = load i8**, i8*** %151, align 8
  %153 = getelementptr inbounds i8*, i8** %152, i64 0
  store i8* %149, i8** %153, align 8
  %154 = load double*, double** %8, align 8
  %155 = getelementptr inbounds double, double* %154, i64 1
  %156 = load double, double* %155, align 8
  %157 = fmul double %156, 2.550000e+02
  %158 = fptosi double %157 to i32
  %159 = call i8* @CLAMP(i32 %158, i32 0, i32 255)
  %160 = load %struct.gl_texture_object*, %struct.gl_texture_object** %10, align 8
  %161 = getelementptr inbounds %struct.gl_texture_object, %struct.gl_texture_object* %160, i32 0, i32 6
  %162 = load i8**, i8*** %161, align 8
  %163 = getelementptr inbounds i8*, i8** %162, i64 1
  store i8* %159, i8** %163, align 8
  %164 = load double*, double** %8, align 8
  %165 = getelementptr inbounds double, double* %164, i64 2
  %166 = load double, double* %165, align 8
  %167 = fmul double %166, 2.550000e+02
  %168 = fptosi double %167 to i32
  %169 = call i8* @CLAMP(i32 %168, i32 0, i32 255)
  %170 = load %struct.gl_texture_object*, %struct.gl_texture_object** %10, align 8
  %171 = getelementptr inbounds %struct.gl_texture_object, %struct.gl_texture_object* %170, i32 0, i32 6
  %172 = load i8**, i8*** %171, align 8
  %173 = getelementptr inbounds i8*, i8** %172, i64 2
  store i8* %169, i8** %173, align 8
  %174 = load double*, double** %8, align 8
  %175 = getelementptr inbounds double, double* %174, i64 3
  %176 = load double, double* %175, align 8
  %177 = fmul double %176, 2.550000e+02
  %178 = fptosi double %177 to i32
  %179 = call i8* @CLAMP(i32 %178, i32 0, i32 255)
  %180 = load %struct.gl_texture_object*, %struct.gl_texture_object** %10, align 8
  %181 = getelementptr inbounds %struct.gl_texture_object, %struct.gl_texture_object* %180, i32 0, i32 6
  %182 = load i8**, i8*** %181, align 8
  %183 = getelementptr inbounds i8*, i8** %182, i64 3
  store i8* %179, i8** %183, align 8
  br label %188

184:                                              ; preds = %30
  %185 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %186 = load i32, i32* @GL_INVALID_ENUM, align 4
  %187 = call i32 @gl_error(%struct.TYPE_9__* %185, i32 %186, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  br label %212

188:                                              ; preds = %143, %142, %125, %108, %91, %69
  %189 = load i8*, i8** @GL_TRUE, align 8
  %190 = load %struct.gl_texture_object*, %struct.gl_texture_object** %10, align 8
  %191 = getelementptr inbounds %struct.gl_texture_object, %struct.gl_texture_object* %190, i32 0, i32 5
  store i8* %189, i8** %191, align 8
  %192 = load i8*, i8** @GL_TRUE, align 8
  %193 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %194 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %193, i32 0, i32 1
  %195 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %194, i32 0, i32 0
  store i8* %192, i8** %195, align 8
  %196 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %197 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %196, i32 0, i32 0
  %198 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %197, i32 0, i32 0
  %199 = load i32 (%struct.TYPE_9__*, i32, %struct.gl_texture_object*, i32, double*)*, i32 (%struct.TYPE_9__*, i32, %struct.gl_texture_object*, i32, double*)** %198, align 8
  %200 = icmp ne i32 (%struct.TYPE_9__*, i32, %struct.gl_texture_object*, i32, double*)* %199, null
  br i1 %200, label %201, label %212

201:                                              ; preds = %188
  %202 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %203 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %202, i32 0, i32 0
  %204 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %203, i32 0, i32 0
  %205 = load i32 (%struct.TYPE_9__*, i32, %struct.gl_texture_object*, i32, double*)*, i32 (%struct.TYPE_9__*, i32, %struct.gl_texture_object*, i32, double*)** %204, align 8
  %206 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %207 = load i32, i32* %6, align 4
  %208 = load %struct.gl_texture_object*, %struct.gl_texture_object** %10, align 8
  %209 = load i32, i32* %7, align 4
  %210 = load double*, double** %8, align 8
  %211 = call i32 %205(%struct.TYPE_9__* %206, i32 %207, %struct.gl_texture_object* %208, i32 %209, double* %210)
  br label %212

212:                                              ; preds = %26, %65, %87, %104, %121, %184, %201, %188
  ret void
}

declare dso_local i32 @gl_error(%struct.TYPE_9__*, i32, i8*) #1

declare dso_local i8* @CLAMP(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
