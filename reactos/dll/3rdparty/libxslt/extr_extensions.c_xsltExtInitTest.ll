; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libxslt/extr_extensions.c_xsltExtInitTest.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libxslt/extr_extensions.c_xsltExtInitTest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@testStyleData = common dso_local global i32* null, align 8
@xsltGenericErrorContext = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [63 x i8] c"xsltExtInitTest: not initialized, calling xsltStyleGetExtData\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"xsltExtInitTest: not initialized\0A\00", align 1
@testData = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [38 x i8] c"xsltExtInitTest: already initialized\0A\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"test data\00", align 1
@xsltGenericDebugContext = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [29 x i8] c"Registered test module : %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_4__*, i32*)* @xsltExtInitTest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @xsltExtInitTest(%struct.TYPE_4__* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i32* %1, i32** %5, align 8
  %6 = load i32*, i32** @testStyleData, align 8
  %7 = icmp eq i32* %6, null
  br i1 %7, label %8, label %22

8:                                                ; preds = %2
  %9 = load i32, i32* @xsltGenericErrorContext, align 4
  %10 = call i32 (i32, i8*, ...) @xsltGenericDebug(i32 %9, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32*, i32** %5, align 8
  %15 = call i32* @xsltStyleGetExtData(i32 %13, i32* %14)
  store i32* %15, i32** @testStyleData, align 8
  %16 = load i32*, i32** @testStyleData, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %8
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %20 = call i32 @xsltTransformError(%struct.TYPE_4__* %19, i32* null, i32* null, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  store i8* null, i8** %3, align 8
  br label %33

21:                                               ; preds = %8
  br label %22

22:                                               ; preds = %21, %2
  %23 = load i8*, i8** @testData, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %22
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %27 = call i32 @xsltTransformError(%struct.TYPE_4__* %26, i32* null, i32* null, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  store i8* null, i8** %3, align 8
  br label %33

28:                                               ; preds = %22
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8** @testData, align 8
  %29 = load i32, i32* @xsltGenericDebugContext, align 4
  %30 = load i32*, i32** %5, align 8
  %31 = call i32 (i32, i8*, ...) @xsltGenericDebug(i32 %29, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i32* %30)
  %32 = load i8*, i8** @testData, align 8
  store i8* %32, i8** %3, align 8
  br label %33

33:                                               ; preds = %28, %25, %18
  %34 = load i8*, i8** %3, align 8
  ret i8* %34
}

declare dso_local i32 @xsltGenericDebug(i32, i8*, ...) #1

declare dso_local i32* @xsltStyleGetExtData(i32, i32*) #1

declare dso_local i32 @xsltTransformError(%struct.TYPE_4__*, i32*, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
