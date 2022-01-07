; ModuleID = '/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_dlist.c_gl_save_CopyPixels.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_dlist.c_gl_save_CopyPixels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_8__, i64 }
%struct.TYPE_8__ = type { i32 (%struct.TYPE_10__*, i8*, i8*, i64, i64, i32)* }
%struct.TYPE_9__ = type { i32, i8* }

@OPCODE_COPY_PIXELS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gl_save_CopyPixels(%struct.TYPE_10__* %0, i8* %1, i8* %2, i64 %3, i64 %4, i32 %5) #0 {
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  store i32 %5, i32* %12, align 4
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %15 = load i32, i32* @OPCODE_COPY_PIXELS, align 4
  %16 = call %struct.TYPE_9__* @alloc_instruction(%struct.TYPE_10__* %14, i32 %15, i32 5)
  store %struct.TYPE_9__* %16, %struct.TYPE_9__** %13, align 8
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %18 = icmp ne %struct.TYPE_9__* %17, null
  br i1 %18, label %19, label %42

19:                                               ; preds = %6
  %20 = load i8*, i8** %8, align 8
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i64 1
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 1
  store i8* %20, i8** %23, align 8
  %24 = load i8*, i8** %9, align 8
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i64 2
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 1
  store i8* %24, i8** %27, align 8
  %28 = load i64, i64* %10, align 8
  %29 = inttoptr i64 %28 to i8*
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i64 3
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 1
  store i8* %29, i8** %32, align 8
  %33 = load i64, i64* %11, align 8
  %34 = inttoptr i64 %33 to i8*
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i64 4
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 1
  store i8* %34, i8** %37, align 8
  %38 = load i32, i32* %12, align 4
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i64 5
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 0
  store i32 %38, i32* %41, align 8
  br label %42

42:                                               ; preds = %19, %6
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %59

47:                                               ; preds = %42
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  %51 = load i32 (%struct.TYPE_10__*, i8*, i8*, i64, i64, i32)*, i32 (%struct.TYPE_10__*, i8*, i8*, i64, i64, i32)** %50, align 8
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %53 = load i8*, i8** %8, align 8
  %54 = load i8*, i8** %9, align 8
  %55 = load i64, i64* %10, align 8
  %56 = load i64, i64* %11, align 8
  %57 = load i32, i32* %12, align 4
  %58 = call i32 %51(%struct.TYPE_10__* %52, i8* %53, i8* %54, i64 %55, i64 %56, i32 %57)
  br label %59

59:                                               ; preds = %47, %42
  ret void
}

declare dso_local %struct.TYPE_9__* @alloc_instruction(%struct.TYPE_10__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
