; ModuleID = '/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_dlist.c_gl_save_TexImage1D.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_dlist.c_gl_save_TexImage1D.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_8__, i64 }
%struct.TYPE_8__ = type { i32 (%struct.TYPE_10__*, i8*, i8*, i8*, i64, i8*, i8*, i8*, %struct.gl_image*)* }
%struct.gl_image = type { i32 }
%struct.TYPE_9__ = type { %struct.gl_image*, i8*, i8* }

@OPCODE_TEX_IMAGE1D = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gl_save_TexImage1D(%struct.TYPE_10__* %0, i8* %1, i8* %2, i8* %3, i64 %4, i8* %5, i8* %6, i8* %7, %struct.gl_image* %8) #0 {
  %10 = alloca %struct.TYPE_10__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca %struct.gl_image*, align 8
  %19 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %10, align 8
  store i8* %1, i8** %11, align 8
  store i8* %2, i8** %12, align 8
  store i8* %3, i8** %13, align 8
  store i64 %4, i64* %14, align 8
  store i8* %5, i8** %15, align 8
  store i8* %6, i8** %16, align 8
  store i8* %7, i8** %17, align 8
  store %struct.gl_image* %8, %struct.gl_image** %18, align 8
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %21 = load i32, i32* @OPCODE_TEX_IMAGE1D, align 4
  %22 = call %struct.TYPE_9__* @alloc_instruction(%struct.TYPE_10__* %20, i32 %21, i32 8)
  store %struct.TYPE_9__* %22, %struct.TYPE_9__** %19, align 8
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %24 = icmp ne %struct.TYPE_9__* %23, null
  br i1 %24, label %25, label %65

25:                                               ; preds = %9
  %26 = load i8*, i8** %11, align 8
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i64 1
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 1
  store i8* %26, i8** %29, align 8
  %30 = load i8*, i8** %12, align 8
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i64 2
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 2
  store i8* %30, i8** %33, align 8
  %34 = load i8*, i8** %13, align 8
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i64 3
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 2
  store i8* %34, i8** %37, align 8
  %38 = load i64, i64* %14, align 8
  %39 = inttoptr i64 %38 to i8*
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i64 4
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 2
  store i8* %39, i8** %42, align 8
  %43 = load i8*, i8** %15, align 8
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i64 5
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 2
  store i8* %43, i8** %46, align 8
  %47 = load i8*, i8** %16, align 8
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i64 6
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 1
  store i8* %47, i8** %50, align 8
  %51 = load i8*, i8** %17, align 8
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i64 7
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 1
  store i8* %51, i8** %54, align 8
  %55 = load %struct.gl_image*, %struct.gl_image** %18, align 8
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i64 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 0
  store %struct.gl_image* %55, %struct.gl_image** %58, align 8
  %59 = load %struct.gl_image*, %struct.gl_image** %18, align 8
  %60 = icmp ne %struct.gl_image* %59, null
  br i1 %60, label %61, label %64

61:                                               ; preds = %25
  %62 = load %struct.gl_image*, %struct.gl_image** %18, align 8
  %63 = getelementptr inbounds %struct.gl_image, %struct.gl_image* %62, i32 0, i32 0
  store i32 1, i32* %63, align 4
  br label %64

64:                                               ; preds = %61, %25
  br label %65

65:                                               ; preds = %64, %9
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %85

70:                                               ; preds = %65
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 0
  %74 = load i32 (%struct.TYPE_10__*, i8*, i8*, i8*, i64, i8*, i8*, i8*, %struct.gl_image*)*, i32 (%struct.TYPE_10__*, i8*, i8*, i8*, i64, i8*, i8*, i8*, %struct.gl_image*)** %73, align 8
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %76 = load i8*, i8** %11, align 8
  %77 = load i8*, i8** %12, align 8
  %78 = load i8*, i8** %13, align 8
  %79 = load i64, i64* %14, align 8
  %80 = load i8*, i8** %15, align 8
  %81 = load i8*, i8** %16, align 8
  %82 = load i8*, i8** %17, align 8
  %83 = load %struct.gl_image*, %struct.gl_image** %18, align 8
  %84 = call i32 %74(%struct.TYPE_10__* %75, i8* %76, i8* %77, i8* %78, i64 %79, i8* %80, i8* %81, i8* %82, %struct.gl_image* %83)
  br label %85

85:                                               ; preds = %70, %65
  ret void
}

declare dso_local %struct.TYPE_9__* @alloc_instruction(%struct.TYPE_10__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
