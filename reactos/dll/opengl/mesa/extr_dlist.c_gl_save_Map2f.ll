; ModuleID = '/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_dlist.c_gl_save_Map2f.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_dlist.c_gl_save_Map2f.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_8__, i64 }
%struct.TYPE_8__ = type { i32 (%struct.TYPE_10__*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8**, i32)* }
%struct.TYPE_9__ = type { i8*, i8*, i8*, i32 }

@OPCODE_MAP2 = common dso_local global i32 0, align 4
@GL_TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gl_save_Map2f(%struct.TYPE_10__* %0, i32 %1, i8* %2, i8* %3, i8* %4, i8* %5, i8* %6, i8* %7, i8* %8, i8* %9, i8** %10, i32 %11) #0 {
  %13 = alloca %struct.TYPE_10__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i8**, align 8
  %24 = alloca i32, align 4
  %25 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %13, align 8
  store i32 %1, i32* %14, align 4
  store i8* %2, i8** %15, align 8
  store i8* %3, i8** %16, align 8
  store i8* %4, i8** %17, align 8
  store i8* %5, i8** %18, align 8
  store i8* %6, i8** %19, align 8
  store i8* %7, i8** %20, align 8
  store i8* %8, i8** %21, align 8
  store i8* %9, i8** %22, align 8
  store i8** %10, i8*** %23, align 8
  store i32 %11, i32* %24, align 4
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %27 = load i32, i32* @OPCODE_MAP2, align 4
  %28 = call %struct.TYPE_9__* @alloc_instruction(%struct.TYPE_10__* %26, i32 %27, i32 10)
  store %struct.TYPE_9__* %28, %struct.TYPE_9__** %25, align 8
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %25, align 8
  %30 = icmp ne %struct.TYPE_9__* %29, null
  br i1 %30, label %31, label %73

31:                                               ; preds = %12
  %32 = load i32, i32* %14, align 4
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %25, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i64 1
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 3
  store i32 %32, i32* %35, align 8
  %36 = load i8*, i8** %15, align 8
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %25, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i64 2
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 2
  store i8* %36, i8** %39, align 8
  %40 = load i8*, i8** %16, align 8
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %25, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i64 3
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 2
  store i8* %40, i8** %43, align 8
  %44 = load i8*, i8** %19, align 8
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %25, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i64 4
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 2
  store i8* %44, i8** %47, align 8
  %48 = load i8*, i8** %20, align 8
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %25, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i64 5
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 2
  store i8* %48, i8** %51, align 8
  %52 = load i8*, i8** %17, align 8
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %25, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i64 6
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 1
  store i8* %52, i8** %55, align 8
  %56 = load i8*, i8** %21, align 8
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %25, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i64 7
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 1
  store i8* %56, i8** %59, align 8
  %60 = load i8*, i8** %18, align 8
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %25, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i64 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 1
  store i8* %60, i8** %63, align 8
  %64 = load i8*, i8** %22, align 8
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %25, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i64 9
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 1
  store i8* %64, i8** %67, align 8
  %68 = load i8**, i8*** %23, align 8
  %69 = bitcast i8** %68 to i8*
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %25, align 8
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i64 10
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 0
  store i8* %69, i8** %72, align 8
  br label %73

73:                                               ; preds = %31, %12
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %96

78:                                               ; preds = %73
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 0
  %82 = load i32 (%struct.TYPE_10__*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8**, i32)*, i32 (%struct.TYPE_10__*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8**, i32)** %81, align 8
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %84 = load i32, i32* %14, align 4
  %85 = load i8*, i8** %15, align 8
  %86 = load i8*, i8** %16, align 8
  %87 = load i8*, i8** %17, align 8
  %88 = load i8*, i8** %18, align 8
  %89 = load i8*, i8** %19, align 8
  %90 = load i8*, i8** %20, align 8
  %91 = load i8*, i8** %21, align 8
  %92 = load i8*, i8** %22, align 8
  %93 = load i8**, i8*** %23, align 8
  %94 = load i32, i32* @GL_TRUE, align 4
  %95 = call i32 %82(%struct.TYPE_10__* %83, i32 %84, i8* %85, i8* %86, i8* %87, i8* %88, i8* %89, i8* %90, i8* %91, i8* %92, i8** %93, i32 %94)
  br label %96

96:                                               ; preds = %78, %73
  ret void
}

declare dso_local %struct.TYPE_9__* @alloc_instruction(%struct.TYPE_10__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
