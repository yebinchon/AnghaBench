; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libxslt/extr_functions.c_xsltCurrentFunction.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libxslt/extr_functions.c_xsltCurrentFunction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32* }

@.str = private unnamed_addr constant [39 x i8] c"current() : function uses no argument\0A\00", align 1
@XPATH_INVALID_ARITY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"current() : internal error tctxt == NULL\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*, i32)* @xsltCurrentFunction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xsltCurrentFunction(%struct.TYPE_9__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %15

8:                                                ; preds = %2
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %10 = call %struct.TYPE_8__* @xsltXPathGetTransformContext(%struct.TYPE_9__* %9)
  %11 = call i32 @xsltTransformError(%struct.TYPE_8__* %10, i32* null, i32* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %12 = load i32, i32* @XPATH_INVALID_ARITY, align 4
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 4
  br label %34

15:                                               ; preds = %2
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %17 = call %struct.TYPE_8__* @xsltXPathGetTransformContext(%struct.TYPE_9__* %16)
  store %struct.TYPE_8__* %17, %struct.TYPE_8__** %5, align 8
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %19 = icmp eq %struct.TYPE_8__* %18, null
  br i1 %19, label %20, label %27

20:                                               ; preds = %15
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %22 = call %struct.TYPE_8__* @xsltXPathGetTransformContext(%struct.TYPE_9__* %21)
  %23 = call i32 @xsltTransformError(%struct.TYPE_8__* %22, i32* null, i32* null, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %25 = call i32 @xmlXPathNewNodeSet(i32* null)
  %26 = call i32 @valuePush(%struct.TYPE_9__* %24, i32 %25)
  br label %34

27:                                               ; preds = %15
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = call i32 @xmlXPathNewNodeSet(i32* %31)
  %33 = call i32 @valuePush(%struct.TYPE_9__* %28, i32 %32)
  br label %34

34:                                               ; preds = %8, %27, %20
  ret void
}

declare dso_local i32 @xsltTransformError(%struct.TYPE_8__*, i32*, i32*, i8*) #1

declare dso_local %struct.TYPE_8__* @xsltXPathGetTransformContext(%struct.TYPE_9__*) #1

declare dso_local i32 @valuePush(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @xmlXPathNewNodeSet(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
