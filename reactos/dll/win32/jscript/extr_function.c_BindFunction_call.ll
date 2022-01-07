; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_function.c_BindFunction_call.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_function.c_BindFunction_call.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, %struct.TYPE_7__*, i32* }
%struct.TYPE_7__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (i32*, %struct.TYPE_7__*, i32, i32, i32, i32*, i32*)* }

@.str = private unnamed_addr constant [4 x i8] c"%p\0A\00", align 1
@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*, i32, i32, i32*, i32*)* @BindFunction_call to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @BindFunction_call(i32* %0, i32* %1, i32* %2, i32 %3, i32 %4, i32* %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.TYPE_6__*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i32* %0, i32** %9, align 8
  store i32* %1, i32** %10, align 8
  store i32* %2, i32** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32* %5, i32** %14, align 8
  store i32* %6, i32** %15, align 8
  %20 = load i32*, i32** %10, align 8
  %21 = bitcast i32* %20 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %21, %struct.TYPE_6__** %16, align 8
  store i32* null, i32** %17, align 8
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %23 = call i32 @TRACE(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), %struct.TYPE_6__* %22)
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* %13, align 4
  %28 = add i32 %26, %27
  store i32 %28, i32* %18, align 4
  %29 = load i32, i32* %18, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %77

31:                                               ; preds = %7
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = zext i32 %34 to i64
  %36 = mul i64 %35, 4
  %37 = trunc i64 %36 to i32
  %38 = call i32* @heap_alloc(i32 %37)
  store i32* %38, i32** %17, align 8
  %39 = load i32*, i32** %17, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %43, label %41

41:                                               ; preds = %31
  %42 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %42, i32* %8, align 4
  br label %100

43:                                               ; preds = %31
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %60

48:                                               ; preds = %43
  %49 = load i32*, i32** %17, align 8
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 3
  %52 = load i32*, i32** %51, align 8
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = zext i32 %55 to i64
  %57 = mul i64 %56, 4
  %58 = trunc i64 %57 to i32
  %59 = call i32 @memcpy(i32* %49, i32* %52, i32 %58)
  br label %60

60:                                               ; preds = %48, %43
  %61 = load i32, i32* %13, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %76

63:                                               ; preds = %60
  %64 = load i32*, i32** %17, align 8
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %64, i64 %68
  %70 = load i32*, i32** %14, align 8
  %71 = load i32, i32* %13, align 4
  %72 = zext i32 %71 to i64
  %73 = mul i64 %72, 4
  %74 = trunc i64 %73 to i32
  %75 = call i32 @memcpy(i32* %69, i32* %70, i32 %74)
  br label %76

76:                                               ; preds = %63, %60
  br label %77

77:                                               ; preds = %76, %7
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 2
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 0
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 0
  %84 = load i32 (i32*, %struct.TYPE_7__*, i32, i32, i32, i32*, i32*)*, i32 (i32*, %struct.TYPE_7__*, i32, i32, i32, i32*, i32*)** %83, align 8
  %85 = load i32*, i32** %9, align 8
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 2
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %87, align 8
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* %12, align 4
  %93 = load i32, i32* %18, align 4
  %94 = load i32*, i32** %17, align 8
  %95 = load i32*, i32** %15, align 8
  %96 = call i32 %84(i32* %85, %struct.TYPE_7__* %88, i32 %91, i32 %92, i32 %93, i32* %94, i32* %95)
  store i32 %96, i32* %19, align 4
  %97 = load i32*, i32** %17, align 8
  %98 = call i32 @heap_free(i32* %97)
  %99 = load i32, i32* %19, align 4
  store i32 %99, i32* %8, align 4
  br label %100

100:                                              ; preds = %77, %41
  %101 = load i32, i32* %8, align 4
  ret i32 %101
}

declare dso_local i32 @TRACE(i8*, %struct.TYPE_6__*) #1

declare dso_local i32* @heap_alloc(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @heap_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
