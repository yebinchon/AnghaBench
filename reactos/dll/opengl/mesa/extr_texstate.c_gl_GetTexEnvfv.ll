; ModuleID = '/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_texstate.c_gl_GetTexEnvfv.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_texstate.c_gl_GetTexEnvfv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }

@GL_TEXTURE_ENV = common dso_local global i64 0, align 8
@GL_INVALID_ENUM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"glGetTexEnvfv(target)\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"glGetTexEnvfv(pname)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gl_GetTexEnvfv(%struct.TYPE_6__* %0, i64 %1, i64 %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i32* %3, i32** %8, align 8
  %9 = load i64, i64* %6, align 8
  %10 = load i64, i64* @GL_TEXTURE_ENV, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %16

12:                                               ; preds = %4
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %14 = load i32, i32* @GL_INVALID_ENUM, align 4
  %15 = call i32 @gl_error(%struct.TYPE_6__* %13, i32 %14, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %36

16:                                               ; preds = %4
  %17 = load i64, i64* %7, align 8
  switch i64 %17, label %32 [
    i64 128, label %18
    i64 129, label %25
  ]

18:                                               ; preds = %16
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @ENUM_TO_FLOAT(i32 %22)
  %24 = load i32*, i32** %8, align 8
  store i32 %23, i32* %24, align 4
  br label %36

25:                                               ; preds = %16
  %26 = load i32*, i32** %8, align 8
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @COPY_4V(i32* %26, i32 %30)
  br label %36

32:                                               ; preds = %16
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %34 = load i32, i32* @GL_INVALID_ENUM, align 4
  %35 = call i32 @gl_error(%struct.TYPE_6__* %33, i32 %34, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %36

36:                                               ; preds = %12, %32, %25, %18
  ret void
}

declare dso_local i32 @gl_error(%struct.TYPE_6__*, i32, i8*) #1

declare dso_local i32 @ENUM_TO_FLOAT(i32) #1

declare dso_local i32 @COPY_4V(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
