; ModuleID = '/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_dlist.c_gl_save_Bitmap.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_dlist.c_gl_save_Bitmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_8__, i64 }
%struct.TYPE_8__ = type { i32 (%struct.TYPE_10__*, i64, i64, i8*, i8*, i8*, i8*, %struct.gl_image*)* }
%struct.gl_image = type { i32 }
%struct.TYPE_9__ = type { i8*, i8*, i8* }

@OPCODE_BITMAP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gl_save_Bitmap(%struct.TYPE_10__* %0, i64 %1, i64 %2, i8* %3, i8* %4, i8* %5, i8* %6, %struct.gl_image* %7) #0 {
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca %struct.gl_image*, align 8
  %17 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %9, align 8
  store i64 %1, i64* %10, align 8
  store i64 %2, i64* %11, align 8
  store i8* %3, i8** %12, align 8
  store i8* %4, i8** %13, align 8
  store i8* %5, i8** %14, align 8
  store i8* %6, i8** %15, align 8
  store %struct.gl_image* %7, %struct.gl_image** %16, align 8
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %19 = load i32, i32* @OPCODE_BITMAP, align 4
  %20 = call %struct.TYPE_9__* @alloc_instruction(%struct.TYPE_10__* %18, i32 %19, i32 7)
  store %struct.TYPE_9__* %20, %struct.TYPE_9__** %17, align 8
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %22 = icmp ne %struct.TYPE_9__* %21, null
  br i1 %22, label %23, label %55

23:                                               ; preds = %8
  %24 = load i64, i64* %10, align 8
  %25 = inttoptr i64 %24 to i8*
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i64 1
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 2
  store i8* %25, i8** %28, align 8
  %29 = load i64, i64* %11, align 8
  %30 = inttoptr i64 %29 to i8*
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i64 2
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 2
  store i8* %30, i8** %33, align 8
  %34 = load i8*, i8** %12, align 8
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i64 3
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 1
  store i8* %34, i8** %37, align 8
  %38 = load i8*, i8** %13, align 8
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i64 4
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 1
  store i8* %38, i8** %41, align 8
  %42 = load i8*, i8** %14, align 8
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i64 5
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 1
  store i8* %42, i8** %45, align 8
  %46 = load i8*, i8** %15, align 8
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i64 6
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 1
  store i8* %46, i8** %49, align 8
  %50 = load %struct.gl_image*, %struct.gl_image** %16, align 8
  %51 = bitcast %struct.gl_image* %50 to i8*
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i64 7
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 0
  store i8* %51, i8** %54, align 8
  br label %55

55:                                               ; preds = %23, %8
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %74

60:                                               ; preds = %55
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  %64 = load i32 (%struct.TYPE_10__*, i64, i64, i8*, i8*, i8*, i8*, %struct.gl_image*)*, i32 (%struct.TYPE_10__*, i64, i64, i8*, i8*, i8*, i8*, %struct.gl_image*)** %63, align 8
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %66 = load i64, i64* %10, align 8
  %67 = load i64, i64* %11, align 8
  %68 = load i8*, i8** %12, align 8
  %69 = load i8*, i8** %13, align 8
  %70 = load i8*, i8** %14, align 8
  %71 = load i8*, i8** %15, align 8
  %72 = load %struct.gl_image*, %struct.gl_image** %16, align 8
  %73 = call i32 %64(%struct.TYPE_10__* %65, i64 %66, i64 %67, i8* %68, i8* %69, i8* %70, i8* %71, %struct.gl_image* %72)
  br label %74

74:                                               ; preds = %60, %55
  ret void
}

declare dso_local %struct.TYPE_9__* @alloc_instruction(%struct.TYPE_10__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
