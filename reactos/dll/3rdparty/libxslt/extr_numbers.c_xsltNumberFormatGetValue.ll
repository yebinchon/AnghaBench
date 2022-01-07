; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libxslt/extr_numbers.c_xsltNumberFormatGetValue.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libxslt/extr_numbers.c_xsltNumberFormatGetValue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { double }

@.str = private unnamed_addr constant [8 x i8] c"number(\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c")\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i32, i32*, double*)* @xsltNumberFormatGetValue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xsltNumberFormatGetValue(%struct.TYPE_8__* %0, i32 %1, i32* %2, double* %3) #0 {
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca double*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store double* %3, double** %8, align 8
  store i32 0, i32* %9, align 4
  %12 = call i32* (...) @xmlBufferCreate()
  store i32* %12, i32** %10, align 8
  %13 = load i32*, i32** %10, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %44

15:                                               ; preds = %4
  %16 = load i32*, i32** %10, align 8
  %17 = call i32 @xmlBufferCCat(i32* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %18 = load i32*, i32** %10, align 8
  %19 = load i32*, i32** %7, align 8
  %20 = call i32 @xmlBufferCat(i32* %18, i32* %19)
  %21 = load i32*, i32** %10, align 8
  %22 = call i32 @xmlBufferCCat(i32* %21, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %23 = load i32, i32* %6, align 4
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  %26 = load i32*, i32** %10, align 8
  %27 = call i32 @xmlBufferContent(i32* %26)
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %29 = call %struct.TYPE_7__* @xmlXPathEvalExpression(i32 %27, %struct.TYPE_8__* %28)
  store %struct.TYPE_7__* %29, %struct.TYPE_7__** %11, align 8
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %31 = icmp ne %struct.TYPE_7__* %30, null
  br i1 %31, label %32, label %41

32:                                               ; preds = %15
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = load double, double* %34, align 8
  %36 = load double*, double** %8, align 8
  store double %35, double* %36, align 8
  %37 = load i32, i32* %9, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %9, align 4
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %40 = call i32 @xmlXPathFreeObject(%struct.TYPE_7__* %39)
  br label %41

41:                                               ; preds = %32, %15
  %42 = load i32*, i32** %10, align 8
  %43 = call i32 @xmlBufferFree(i32* %42)
  br label %44

44:                                               ; preds = %41, %4
  %45 = load i32, i32* %9, align 4
  ret i32 %45
}

declare dso_local i32* @xmlBufferCreate(...) #1

declare dso_local i32 @xmlBufferCCat(i32*, i8*) #1

declare dso_local i32 @xmlBufferCat(i32*, i32*) #1

declare dso_local %struct.TYPE_7__* @xmlXPathEvalExpression(i32, %struct.TYPE_8__*) #1

declare dso_local i32 @xmlBufferContent(i32*) #1

declare dso_local i32 @xmlXPathFreeObject(%struct.TYPE_7__*) #1

declare dso_local i32 @xmlBufferFree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
