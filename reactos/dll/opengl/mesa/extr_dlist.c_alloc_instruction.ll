; ModuleID = '/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_dlist.c_alloc_instruction.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_dlist.c_alloc_instruction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i64, %struct.TYPE_6__* }

@InstSize = common dso_local global i64* null, align 8
@BLOCK_SIZE = common dso_local global i64 0, align 8
@OPCODE_CONTINUE = common dso_local global i64 0, align 8
@GL_OUT_OF_MEMORY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Building display list\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_6__* (%struct.TYPE_7__*, i64, i64)* @alloc_instruction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_6__* @alloc_instruction(%struct.TYPE_7__* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load i64*, i64** @InstSize, align 8
  %12 = load i64, i64* %6, align 8
  %13 = getelementptr inbounds i64, i64* %11, i64 %12
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %10, align 8
  %15 = load i64, i64* %10, align 8
  %16 = load i64, i64* %7, align 8
  %17 = add nsw i64 %16, 1
  %18 = icmp eq i64 %15, %17
  %19 = zext i1 %18 to i32
  %20 = call i32 @assert(i32 %19)
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* %10, align 8
  %25 = add nsw i64 %23, %24
  %26 = add nsw i64 %25, 2
  %27 = load i64, i64* @BLOCK_SIZE, align 8
  %28 = icmp sgt i64 %26, %27
  br i1 %28, label %29, label %62

29:                                               ; preds = %3
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 1
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %31, align 8
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i64 %35
  store %struct.TYPE_6__* %36, %struct.TYPE_6__** %8, align 8
  %37 = load i64, i64* @OPCODE_CONTINUE, align 8
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i64 0
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  store i64 %37, i64* %40, align 8
  %41 = load i64, i64* @BLOCK_SIZE, align 8
  %42 = mul i64 16, %41
  %43 = trunc i64 %42 to i32
  %44 = call i64 @malloc(i32 %43)
  %45 = inttoptr i64 %44 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %45, %struct.TYPE_6__** %9, align 8
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %47 = icmp ne %struct.TYPE_6__* %46, null
  br i1 %47, label %52, label %48

48:                                               ; preds = %29
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %50 = load i32, i32* @GL_OUT_OF_MEMORY, align 4
  %51 = call i32 @gl_error(%struct.TYPE_7__* %49, i32 %50, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %4, align 8
  br label %80

52:                                               ; preds = %29
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i64 1
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 1
  store %struct.TYPE_6__* %53, %struct.TYPE_6__** %56, align 8
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 1
  store %struct.TYPE_6__* %57, %struct.TYPE_6__** %59, align 8
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  store i64 0, i64* %61, align 8
  br label %62

62:                                               ; preds = %52, %3
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 1
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %64, align 8
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i64 %68
  store %struct.TYPE_6__* %69, %struct.TYPE_6__** %8, align 8
  %70 = load i64, i64* %10, align 8
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = add nsw i64 %73, %70
  store i64 %74, i64* %72, align 8
  %75 = load i64, i64* %6, align 8
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i64 0
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  store i64 %75, i64* %78, align 8
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  store %struct.TYPE_6__* %79, %struct.TYPE_6__** %4, align 8
  br label %80

80:                                               ; preds = %62, %48
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  ret %struct.TYPE_6__* %81
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @gl_error(%struct.TYPE_7__*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
