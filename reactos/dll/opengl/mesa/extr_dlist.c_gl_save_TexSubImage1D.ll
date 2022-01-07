; ModuleID = '/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_dlist.c_gl_save_TexSubImage1D.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_dlist.c_gl_save_TexSubImage1D.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_8__, i64 }
%struct.TYPE_8__ = type { i32 (%struct.TYPE_10__*, i8*, i8*, i8*, i64, i8*, i8*, %struct.gl_image*)* }
%struct.gl_image = type { i32 }
%struct.TYPE_9__ = type { %struct.gl_image*, i8*, i8* }

@OPCODE_TEX_SUB_IMAGE1D = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gl_save_TexSubImage1D(%struct.TYPE_10__* %0, i8* %1, i8* %2, i8* %3, i64 %4, i8* %5, i8* %6, %struct.gl_image* %7) #0 {
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca %struct.gl_image*, align 8
  %17 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %9, align 8
  store i8* %1, i8** %10, align 8
  store i8* %2, i8** %11, align 8
  store i8* %3, i8** %12, align 8
  store i64 %4, i64* %13, align 8
  store i8* %5, i8** %14, align 8
  store i8* %6, i8** %15, align 8
  store %struct.gl_image* %7, %struct.gl_image** %16, align 8
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %19 = load i32, i32* @OPCODE_TEX_SUB_IMAGE1D, align 4
  %20 = call %struct.TYPE_9__* @alloc_instruction(%struct.TYPE_10__* %18, i32 %19, i32 7)
  store %struct.TYPE_9__* %20, %struct.TYPE_9__** %17, align 8
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %22 = icmp ne %struct.TYPE_9__* %21, null
  br i1 %22, label %23, label %59

23:                                               ; preds = %8
  %24 = load i8*, i8** %10, align 8
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i64 1
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 1
  store i8* %24, i8** %27, align 8
  %28 = load i8*, i8** %11, align 8
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i64 2
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 2
  store i8* %28, i8** %31, align 8
  %32 = load i8*, i8** %12, align 8
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i64 3
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 2
  store i8* %32, i8** %35, align 8
  %36 = load i64, i64* %13, align 8
  %37 = inttoptr i64 %36 to i8*
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i64 4
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 2
  store i8* %37, i8** %40, align 8
  %41 = load i8*, i8** %14, align 8
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i64 5
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 1
  store i8* %41, i8** %44, align 8
  %45 = load i8*, i8** %15, align 8
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i64 6
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 1
  store i8* %45, i8** %48, align 8
  %49 = load %struct.gl_image*, %struct.gl_image** %16, align 8
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i64 7
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 0
  store %struct.gl_image* %49, %struct.gl_image** %52, align 8
  %53 = load %struct.gl_image*, %struct.gl_image** %16, align 8
  %54 = icmp ne %struct.gl_image* %53, null
  br i1 %54, label %55, label %58

55:                                               ; preds = %23
  %56 = load %struct.gl_image*, %struct.gl_image** %16, align 8
  %57 = getelementptr inbounds %struct.gl_image, %struct.gl_image* %56, i32 0, i32 0
  store i32 1, i32* %57, align 4
  br label %58

58:                                               ; preds = %55, %23
  br label %59

59:                                               ; preds = %58, %8
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %78

64:                                               ; preds = %59
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 0
  %68 = load i32 (%struct.TYPE_10__*, i8*, i8*, i8*, i64, i8*, i8*, %struct.gl_image*)*, i32 (%struct.TYPE_10__*, i8*, i8*, i8*, i64, i8*, i8*, %struct.gl_image*)** %67, align 8
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %70 = load i8*, i8** %10, align 8
  %71 = load i8*, i8** %11, align 8
  %72 = load i8*, i8** %12, align 8
  %73 = load i64, i64* %13, align 8
  %74 = load i8*, i8** %14, align 8
  %75 = load i8*, i8** %15, align 8
  %76 = load %struct.gl_image*, %struct.gl_image** %16, align 8
  %77 = call i32 %68(%struct.TYPE_10__* %69, i8* %70, i8* %71, i8* %72, i64 %73, i8* %74, i8* %75, %struct.gl_image* %76)
  br label %78

78:                                               ; preds = %64, %59
  ret void
}

declare dso_local %struct.TYPE_9__* @alloc_instruction(%struct.TYPE_10__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
