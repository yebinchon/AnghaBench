; ModuleID = '/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_dlist.c_gl_save_TexSubImage2D.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_dlist.c_gl_save_TexSubImage2D.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_8__, i64 }
%struct.TYPE_8__ = type { i32 (%struct.TYPE_10__*, i8*, i8*, i8*, i8*, i64, i64, i8*, i8*, %struct.gl_image*)* }
%struct.gl_image = type { i32 }
%struct.TYPE_9__ = type { %struct.gl_image*, i8*, i8* }

@OPCODE_TEX_SUB_IMAGE2D = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gl_save_TexSubImage2D(%struct.TYPE_10__* %0, i8* %1, i8* %2, i8* %3, i8* %4, i64 %5, i64 %6, i8* %7, i8* %8, %struct.gl_image* %9) #0 {
  %11 = alloca %struct.TYPE_10__*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca %struct.gl_image*, align 8
  %21 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %11, align 8
  store i8* %1, i8** %12, align 8
  store i8* %2, i8** %13, align 8
  store i8* %3, i8** %14, align 8
  store i8* %4, i8** %15, align 8
  store i64 %5, i64* %16, align 8
  store i64 %6, i64* %17, align 8
  store i8* %7, i8** %18, align 8
  store i8* %8, i8** %19, align 8
  store %struct.gl_image* %9, %struct.gl_image** %20, align 8
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %23 = load i32, i32* @OPCODE_TEX_SUB_IMAGE2D, align 4
  %24 = call %struct.TYPE_9__* @alloc_instruction(%struct.TYPE_10__* %22, i32 %23, i32 9)
  store %struct.TYPE_9__* %24, %struct.TYPE_9__** %21, align 8
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %21, align 8
  %26 = icmp ne %struct.TYPE_9__* %25, null
  br i1 %26, label %27, label %72

27:                                               ; preds = %10
  %28 = load i8*, i8** %12, align 8
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %21, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i64 1
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 1
  store i8* %28, i8** %31, align 8
  %32 = load i8*, i8** %13, align 8
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %21, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i64 2
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 2
  store i8* %32, i8** %35, align 8
  %36 = load i8*, i8** %14, align 8
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %21, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i64 3
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 2
  store i8* %36, i8** %39, align 8
  %40 = load i8*, i8** %15, align 8
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %21, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i64 4
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 2
  store i8* %40, i8** %43, align 8
  %44 = load i64, i64* %16, align 8
  %45 = inttoptr i64 %44 to i8*
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %21, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i64 5
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 2
  store i8* %45, i8** %48, align 8
  %49 = load i64, i64* %17, align 8
  %50 = inttoptr i64 %49 to i8*
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %21, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i64 6
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 2
  store i8* %50, i8** %53, align 8
  %54 = load i8*, i8** %18, align 8
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %21, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i64 7
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 1
  store i8* %54, i8** %57, align 8
  %58 = load i8*, i8** %19, align 8
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %21, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i64 8
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 1
  store i8* %58, i8** %61, align 8
  %62 = load %struct.gl_image*, %struct.gl_image** %20, align 8
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %21, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i64 9
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 0
  store %struct.gl_image* %62, %struct.gl_image** %65, align 8
  %66 = load %struct.gl_image*, %struct.gl_image** %20, align 8
  %67 = icmp ne %struct.gl_image* %66, null
  br i1 %67, label %68, label %71

68:                                               ; preds = %27
  %69 = load %struct.gl_image*, %struct.gl_image** %20, align 8
  %70 = getelementptr inbounds %struct.gl_image, %struct.gl_image* %69, i32 0, i32 0
  store i32 1, i32* %70, align 4
  br label %71

71:                                               ; preds = %68, %27
  br label %72

72:                                               ; preds = %71, %10
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %93

77:                                               ; preds = %72
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 0
  %81 = load i32 (%struct.TYPE_10__*, i8*, i8*, i8*, i8*, i64, i64, i8*, i8*, %struct.gl_image*)*, i32 (%struct.TYPE_10__*, i8*, i8*, i8*, i8*, i64, i64, i8*, i8*, %struct.gl_image*)** %80, align 8
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %83 = load i8*, i8** %12, align 8
  %84 = load i8*, i8** %13, align 8
  %85 = load i8*, i8** %14, align 8
  %86 = load i8*, i8** %15, align 8
  %87 = load i64, i64* %16, align 8
  %88 = load i64, i64* %17, align 8
  %89 = load i8*, i8** %18, align 8
  %90 = load i8*, i8** %19, align 8
  %91 = load %struct.gl_image*, %struct.gl_image** %20, align 8
  %92 = call i32 %81(%struct.TYPE_10__* %82, i8* %83, i8* %84, i8* %85, i8* %86, i64 %87, i64 %88, i8* %89, i8* %90, %struct.gl_image* %91)
  br label %93

93:                                               ; preds = %77, %72
  ret void
}

declare dso_local %struct.TYPE_9__* @alloc_instruction(%struct.TYPE_10__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
