; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_constant_heap_init.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_constant_heap_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.constant_heap = type { i32*, i32, i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [27 x i8] c"Failed to allocate memory\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.constant_heap*, i32)* @constant_heap_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @constant_heap_init(%struct.constant_heap* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.constant_heap*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store %struct.constant_heap* %0, %struct.constant_heap** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = add i32 %8, 1
  %10 = zext i32 %9 to i64
  %11 = mul i64 %10, 8
  %12 = load i32, i32* %5, align 4
  %13 = zext i32 %12 to i64
  %14 = mul i64 %13, 4
  %15 = add i64 %11, %14
  %16 = load i32, i32* %5, align 4
  %17 = zext i32 %16 to i64
  %18 = mul i64 %17, 4
  %19 = add i64 %15, %18
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = call i8* @heap_alloc(i32 %21)
  store i8* %22, i8** %7, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %2
  %25 = call i32 @ERR(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* @FALSE, align 4
  store i32 %26, i32* %3, align 4
  br label %66

27:                                               ; preds = %2
  %28 = load i8*, i8** %7, align 8
  %29 = bitcast i8* %28 to %struct.TYPE_2__*
  %30 = load %struct.constant_heap*, %struct.constant_heap** %4, align 8
  %31 = getelementptr inbounds %struct.constant_heap, %struct.constant_heap* %30, i32 0, i32 3
  store %struct.TYPE_2__* %29, %struct.TYPE_2__** %31, align 8
  %32 = load %struct.constant_heap*, %struct.constant_heap** %4, align 8
  %33 = getelementptr inbounds %struct.constant_heap, %struct.constant_heap* %32, i32 0, i32 3
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i64 1
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  store i64 0, i64* %36, align 8
  %37 = load %struct.constant_heap*, %struct.constant_heap** %4, align 8
  %38 = getelementptr inbounds %struct.constant_heap, %struct.constant_heap* %37, i32 0, i32 3
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = load i32, i32* %5, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i64 1
  %44 = bitcast %struct.TYPE_2__* %43 to i32*
  %45 = load %struct.constant_heap*, %struct.constant_heap** %4, align 8
  %46 = getelementptr inbounds %struct.constant_heap, %struct.constant_heap* %45, i32 0, i32 2
  store i32* %44, i32** %46, align 8
  %47 = load %struct.constant_heap*, %struct.constant_heap** %4, align 8
  %48 = getelementptr inbounds %struct.constant_heap, %struct.constant_heap* %47, i32 0, i32 2
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %5, align 4
  %51 = zext i32 %50 to i64
  %52 = mul i64 %51, 4
  %53 = trunc i64 %52 to i32
  %54 = call i32 @memset(i32* %49, i32 0, i32 %53)
  %55 = load %struct.constant_heap*, %struct.constant_heap** %4, align 8
  %56 = getelementptr inbounds %struct.constant_heap, %struct.constant_heap* %55, i32 0, i32 2
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* %5, align 4
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load %struct.constant_heap*, %struct.constant_heap** %4, align 8
  %62 = getelementptr inbounds %struct.constant_heap, %struct.constant_heap* %61, i32 0, i32 0
  store i32* %60, i32** %62, align 8
  %63 = load %struct.constant_heap*, %struct.constant_heap** %4, align 8
  %64 = getelementptr inbounds %struct.constant_heap, %struct.constant_heap* %63, i32 0, i32 1
  store i32 1, i32* %64, align 8
  %65 = load i32, i32* @TRUE, align 4
  store i32 %65, i32* %3, align 4
  br label %66

66:                                               ; preds = %27, %24
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local i8* @heap_alloc(i32) #1

declare dso_local i32 @ERR(i8*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
