; ModuleID = '/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_dlist.c_gl_save_LightModelfv.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_dlist.c_gl_save_LightModelfv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_8__, i64 }
%struct.TYPE_8__ = type { i32 (%struct.TYPE_10__*, i32, i32*)* }
%struct.TYPE_9__ = type { i32, i32 }

@OPCODE_LIGHT_MODEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gl_save_LightModelfv(%struct.TYPE_10__* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %8 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %9 = load i32, i32* @OPCODE_LIGHT_MODEL, align 4
  %10 = call %struct.TYPE_9__* @alloc_instruction(%struct.TYPE_10__* %8, i32 %9, i32 5)
  store %struct.TYPE_9__* %10, %struct.TYPE_9__** %7, align 8
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %12 = icmp ne %struct.TYPE_9__* %11, null
  br i1 %12, label %13, label %42

13:                                               ; preds = %3
  %14 = load i32, i32* %5, align 4
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i64 1
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 1
  store i32 %14, i32* %17, align 4
  %18 = load i32*, i32** %6, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i64 2
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  store i32 %20, i32* %23, align 4
  %24 = load i32*, i32** %6, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i64 3
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  store i32 %26, i32* %29, align 4
  %30 = load i32*, i32** %6, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 2
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i64 4
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 0
  store i32 %32, i32* %35, align 4
  %36 = load i32*, i32** %6, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 3
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i64 5
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 0
  store i32 %38, i32* %41, align 4
  br label %42

42:                                               ; preds = %13, %3
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %56

47:                                               ; preds = %42
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  %51 = load i32 (%struct.TYPE_10__*, i32, i32*)*, i32 (%struct.TYPE_10__*, i32, i32*)** %50, align 8
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %53 = load i32, i32* %5, align 4
  %54 = load i32*, i32** %6, align 8
  %55 = call i32 %51(%struct.TYPE_10__* %52, i32 %53, i32* %54)
  br label %56

56:                                               ; preds = %47, %42
  ret void
}

declare dso_local %struct.TYPE_9__* @alloc_instruction(%struct.TYPE_10__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
