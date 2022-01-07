; ModuleID = '/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_misc.c_gl_GetString.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_misc.c_gl_GetString.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i8* (...)* }

@gl_GetString.renderer = internal global [1000 x i8] zeroinitializer, align 16
@gl_GetString.vendor = internal global i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i32 0, i32 0), align 8
@.str = private unnamed_addr constant [32 x i8] c"Brian Paul & ReactOS Developers\00", align 1
@gl_GetString.version = internal global i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"1.1\00", align 1
@gl_GetString.extensions = internal global i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i32 0, i32 0), align 8
@.str.2 = private unnamed_addr constant [53 x i8] c"GL_EXT_paletted_texture GL_EXT_bgra GL_WIN_swap_hint\00", align 1
@GL_INVALID_OPERATION = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [12 x i8] c"glGetString\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"Mesa\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c" \00", align 1
@GL_INVALID_ENUM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @gl_GetString(%struct.TYPE_7__* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %7 = call i64 @INSIDE_BEGIN_END(%struct.TYPE_7__* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %2
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %11 = load i32, i32* @GL_INVALID_OPERATION, align 4
  %12 = call i32 @gl_error(%struct.TYPE_7__* %10, i32 %11, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  store i32* null, i32** %3, align 8
  br label %44

13:                                               ; preds = %2
  %14 = load i32, i32* %5, align 4
  switch i32 %14, label %40 [
    i32 129, label %15
    i32 130, label %18
    i32 128, label %34
    i32 131, label %37
  ]

15:                                               ; preds = %13
  %16 = load i8*, i8** @gl_GetString.vendor, align 8
  %17 = bitcast i8* %16 to i32*
  store i32* %17, i32** %3, align 8
  br label %44

18:                                               ; preds = %13
  %19 = call i32 @strcpy(i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @gl_GetString.renderer, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i8* (...)*, i8* (...)** %22, align 8
  %24 = icmp ne i8* (...)* %23, null
  br i1 %24, label %25, label %33

25:                                               ; preds = %18
  %26 = call i32 @strcat(i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @gl_GetString.renderer, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i8* (...)*, i8* (...)** %29, align 8
  %31 = call i8* (...) %30()
  %32 = call i32 @strcat(i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @gl_GetString.renderer, i64 0, i64 0), i8* %31)
  br label %33

33:                                               ; preds = %25, %18
  store i32* bitcast ([1000 x i8]* @gl_GetString.renderer to i32*), i32** %3, align 8
  br label %44

34:                                               ; preds = %13
  %35 = load i8*, i8** @gl_GetString.version, align 8
  %36 = bitcast i8* %35 to i32*
  store i32* %36, i32** %3, align 8
  br label %44

37:                                               ; preds = %13
  %38 = load i8*, i8** @gl_GetString.extensions, align 8
  %39 = bitcast i8* %38 to i32*
  store i32* %39, i32** %3, align 8
  br label %44

40:                                               ; preds = %13
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %42 = load i32, i32* @GL_INVALID_ENUM, align 4
  %43 = call i32 @gl_error(%struct.TYPE_7__* %41, i32 %42, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  store i32* null, i32** %3, align 8
  br label %44

44:                                               ; preds = %40, %37, %34, %33, %15, %9
  %45 = load i32*, i32** %3, align 8
  ret i32* %45
}

declare dso_local i64 @INSIDE_BEGIN_END(%struct.TYPE_7__*) #1

declare dso_local i32 @gl_error(%struct.TYPE_7__*, i32, i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @strcat(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
