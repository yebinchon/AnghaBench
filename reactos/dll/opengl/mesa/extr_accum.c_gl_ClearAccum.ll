; ModuleID = '/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_accum.c_gl_ClearAccum.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_accum.c_gl_ClearAccum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i8** }

@GL_INVALID_OPERATION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"glAccum\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gl_ClearAccum(%struct.TYPE_7__* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %12 = call i64 @INSIDE_BEGIN_END(%struct.TYPE_7__* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %5
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %16 = load i32, i32* @GL_INVALID_OPERATION, align 4
  %17 = call i32 @gl_error(%struct.TYPE_7__* %15, i32 %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  br label %47

18:                                               ; preds = %5
  %19 = load i32, i32* %7, align 4
  %20 = call i8* @CLAMP(i32 %19, double -1.000000e+00, double 1.000000e+00)
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i8**, i8*** %23, align 8
  %25 = getelementptr inbounds i8*, i8** %24, i64 0
  store i8* %20, i8** %25, align 8
  %26 = load i32, i32* %8, align 4
  %27 = call i8* @CLAMP(i32 %26, double -1.000000e+00, double 1.000000e+00)
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i8**, i8*** %30, align 8
  %32 = getelementptr inbounds i8*, i8** %31, i64 1
  store i8* %27, i8** %32, align 8
  %33 = load i32, i32* %9, align 4
  %34 = call i8* @CLAMP(i32 %33, double -1.000000e+00, double 1.000000e+00)
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i8**, i8*** %37, align 8
  %39 = getelementptr inbounds i8*, i8** %38, i64 2
  store i8* %34, i8** %39, align 8
  %40 = load i32, i32* %10, align 4
  %41 = call i8* @CLAMP(i32 %40, double -1.000000e+00, double 1.000000e+00)
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load i8**, i8*** %44, align 8
  %46 = getelementptr inbounds i8*, i8** %45, i64 3
  store i8* %41, i8** %46, align 8
  br label %47

47:                                               ; preds = %18, %14
  ret void
}

declare dso_local i64 @INSIDE_BEGIN_END(%struct.TYPE_7__*) #1

declare dso_local i32 @gl_error(%struct.TYPE_7__*, i32, i8*) #1

declare dso_local i8* @CLAMP(i32, double, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
