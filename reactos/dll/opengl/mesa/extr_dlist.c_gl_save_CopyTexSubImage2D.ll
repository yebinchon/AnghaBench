; ModuleID = '/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_dlist.c_gl_save_CopyTexSubImage2D.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_dlist.c_gl_save_CopyTexSubImage2D.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_8__, i64 }
%struct.TYPE_8__ = type { i32 (%struct.TYPE_10__*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*)* }
%struct.TYPE_9__ = type { i8*, i32 }

@OPCODE_COPY_TEX_SUB_IMAGE2D = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gl_save_CopyTexSubImage2D(%struct.TYPE_10__* %0, i32 %1, i8* %2, i8* %3, i8* %4, i8* %5, i8* %6, i8* %7, i8* %8) #0 {
  %10 = alloca %struct.TYPE_10__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %10, align 8
  store i32 %1, i32* %11, align 4
  store i8* %2, i8** %12, align 8
  store i8* %3, i8** %13, align 8
  store i8* %4, i8** %14, align 8
  store i8* %5, i8** %15, align 8
  store i8* %6, i8** %16, align 8
  store i8* %7, i8** %17, align 8
  store i8* %8, i8** %18, align 8
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %21 = load i32, i32* @OPCODE_COPY_TEX_SUB_IMAGE2D, align 4
  %22 = call %struct.TYPE_9__* @alloc_instruction(%struct.TYPE_10__* %20, i32 %21, i32 8)
  store %struct.TYPE_9__* %22, %struct.TYPE_9__** %19, align 8
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %24 = icmp ne %struct.TYPE_9__* %23, null
  br i1 %24, label %25, label %58

25:                                               ; preds = %9
  %26 = load i32, i32* %11, align 4
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i64 1
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 1
  store i32 %26, i32* %29, align 8
  %30 = load i8*, i8** %12, align 8
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i64 2
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 0
  store i8* %30, i8** %33, align 8
  %34 = load i8*, i8** %13, align 8
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i64 3
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 0
  store i8* %34, i8** %37, align 8
  %38 = load i8*, i8** %14, align 8
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i64 4
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 0
  store i8* %38, i8** %41, align 8
  %42 = load i8*, i8** %15, align 8
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i64 5
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 0
  store i8* %42, i8** %45, align 8
  %46 = load i8*, i8** %16, align 8
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i64 6
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 0
  store i8* %46, i8** %49, align 8
  %50 = load i8*, i8** %17, align 8
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i64 7
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 0
  store i8* %50, i8** %53, align 8
  %54 = load i8*, i8** %18, align 8
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i64 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 0
  store i8* %54, i8** %57, align 8
  br label %58

58:                                               ; preds = %25, %9
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %78

63:                                               ; preds = %58
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  %67 = load i32 (%struct.TYPE_10__*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*)*, i32 (%struct.TYPE_10__*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*)** %66, align 8
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %69 = load i32, i32* %11, align 4
  %70 = load i8*, i8** %12, align 8
  %71 = load i8*, i8** %13, align 8
  %72 = load i8*, i8** %14, align 8
  %73 = load i8*, i8** %15, align 8
  %74 = load i8*, i8** %16, align 8
  %75 = load i8*, i8** %17, align 8
  %76 = load i8*, i8** %18, align 8
  %77 = call i32 %67(%struct.TYPE_10__* %68, i32 %69, i8* %70, i8* %71, i8* %72, i8* %73, i8* %74, i8* %75, i8* %76)
  br label %78

78:                                               ; preds = %63, %58
  ret void
}

declare dso_local %struct.TYPE_9__* @alloc_instruction(%struct.TYPE_10__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
