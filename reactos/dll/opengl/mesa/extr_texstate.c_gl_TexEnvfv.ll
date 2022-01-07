; ModuleID = '/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_texstate.c_gl_TexEnvfv.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_texstate.c_gl_TexEnvfv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i32 (%struct.TYPE_10__*, i64, i64*)* }
%struct.TYPE_8__ = type { i8**, i64 }

@GL_INVALID_OPERATION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"glTexEnv\00", align 1
@GL_TEXTURE_ENV = common dso_local global i64 0, align 8
@GL_INVALID_ENUM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"glTexEnv(target)\00", align 1
@GL_TEXTURE_ENV_MODE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [16 x i8] c"glTexEnv(param)\00", align 1
@GL_TEXTURE_ENV_COLOR = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [16 x i8] c"glTexEnv(pname)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gl_TexEnvfv(%struct.TYPE_10__* %0, i64 %1, i64 %2, i64* %3) #0 {
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64* %3, i64** %8, align 8
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %11 = call i64 @INSIDE_BEGIN_END(%struct.TYPE_10__* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %4
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %15 = load i32, i32* @GL_INVALID_OPERATION, align 4
  %16 = call i32 @gl_error(%struct.TYPE_10__* %14, i32 %15, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  br label %106

17:                                               ; preds = %4
  %18 = load i64, i64* %6, align 8
  %19 = load i64, i64* @GL_TEXTURE_ENV, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %17
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %23 = load i32, i32* @GL_INVALID_ENUM, align 4
  %24 = call i32 @gl_error(%struct.TYPE_10__* %22, i32 %23, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  br label %106

25:                                               ; preds = %17
  %26 = load i64, i64* %7, align 8
  %27 = load i64, i64* @GL_TEXTURE_ENV_MODE, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %45

29:                                               ; preds = %25
  %30 = load i64*, i64** %8, align 8
  %31 = load i64, i64* %30, align 8
  %32 = trunc i64 %31 to i32
  %33 = sext i32 %32 to i64
  store i64 %33, i64* %9, align 8
  %34 = load i64, i64* %9, align 8
  switch i64 %34, label %40 [
    i64 129, label %35
    i64 131, label %35
    i64 130, label %35
    i64 128, label %35
  ]

35:                                               ; preds = %29, %29, %29, %29
  %36 = load i64, i64* %9, align 8
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 1
  store i64 %36, i64* %39, align 8
  br label %44

40:                                               ; preds = %29
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %42 = load i32, i32* @GL_INVALID_ENUM, align 4
  %43 = call i32 @gl_error(%struct.TYPE_10__* %41, i32 %42, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  br label %106

44:                                               ; preds = %35
  br label %91

45:                                               ; preds = %25
  %46 = load i64, i64* %7, align 8
  %47 = load i64, i64* @GL_TEXTURE_ENV_COLOR, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %86

49:                                               ; preds = %45
  %50 = load i64*, i64** %8, align 8
  %51 = getelementptr inbounds i64, i64* %50, i64 0
  %52 = load i64, i64* %51, align 8
  %53 = call i8* @CLAMP(i64 %52, double 0.000000e+00, double 1.000000e+00)
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  %57 = load i8**, i8*** %56, align 8
  %58 = getelementptr inbounds i8*, i8** %57, i64 0
  store i8* %53, i8** %58, align 8
  %59 = load i64*, i64** %8, align 8
  %60 = getelementptr inbounds i64, i64* %59, i64 1
  %61 = load i64, i64* %60, align 8
  %62 = call i8* @CLAMP(i64 %61, double 0.000000e+00, double 1.000000e+00)
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 0
  %66 = load i8**, i8*** %65, align 8
  %67 = getelementptr inbounds i8*, i8** %66, i64 1
  store i8* %62, i8** %67, align 8
  %68 = load i64*, i64** %8, align 8
  %69 = getelementptr inbounds i64, i64* %68, i64 2
  %70 = load i64, i64* %69, align 8
  %71 = call i8* @CLAMP(i64 %70, double 0.000000e+00, double 1.000000e+00)
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 0
  %75 = load i8**, i8*** %74, align 8
  %76 = getelementptr inbounds i8*, i8** %75, i64 2
  store i8* %71, i8** %76, align 8
  %77 = load i64*, i64** %8, align 8
  %78 = getelementptr inbounds i64, i64* %77, i64 3
  %79 = load i64, i64* %78, align 8
  %80 = call i8* @CLAMP(i64 %79, double 0.000000e+00, double 1.000000e+00)
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 0
  %84 = load i8**, i8*** %83, align 8
  %85 = getelementptr inbounds i8*, i8** %84, i64 3
  store i8* %80, i8** %85, align 8
  br label %90

86:                                               ; preds = %45
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %88 = load i32, i32* @GL_INVALID_ENUM, align 4
  %89 = call i32 @gl_error(%struct.TYPE_10__* %87, i32 %88, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  br label %106

90:                                               ; preds = %49
  br label %91

91:                                               ; preds = %90, %44
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 0
  %95 = load i32 (%struct.TYPE_10__*, i64, i64*)*, i32 (%struct.TYPE_10__*, i64, i64*)** %94, align 8
  %96 = icmp ne i32 (%struct.TYPE_10__*, i64, i64*)* %95, null
  br i1 %96, label %97, label %106

97:                                               ; preds = %91
  %98 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 0
  %101 = load i32 (%struct.TYPE_10__*, i64, i64*)*, i32 (%struct.TYPE_10__*, i64, i64*)** %100, align 8
  %102 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %103 = load i64, i64* %7, align 8
  %104 = load i64*, i64** %8, align 8
  %105 = call i32 %101(%struct.TYPE_10__* %102, i64 %103, i64* %104)
  br label %106

106:                                              ; preds = %13, %21, %40, %86, %97, %91
  ret void
}

declare dso_local i64 @INSIDE_BEGIN_END(%struct.TYPE_10__*) #1

declare dso_local i32 @gl_error(%struct.TYPE_10__*, i32, i8*) #1

declare dso_local i8* @CLAMP(i64, double, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
