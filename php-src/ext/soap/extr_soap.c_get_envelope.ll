; ModuleID = '/home/carl/AnghaBench/php-src/ext/soap/extr_soap.c_get_envelope.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/soap/extr_soap.c_get_envelope.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, %struct.TYPE_5__* }

@XML_ELEMENT_NODE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [9 x i8] c"Envelope\00", align 1
@SOAP_1_1_ENV_NAMESPACE = common dso_local global i8* null, align 8
@SOAP_1_1 = common dso_local global i8* null, align 8
@SOAP_1_2_ENV_NAMESPACE = common dso_local global i8* null, align 8
@SOAP_1_2 = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [16 x i8] c"VersionMismatch\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"Wrong Version\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_5__* (%struct.TYPE_5__*, i32*, i8**)* @get_envelope to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_5__* @get_envelope(%struct.TYPE_5__* %0, i32* %1, i8** %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8** %2, i8*** %7, align 8
  br label %10

10:                                               ; preds = %47, %3
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %12 = icmp ne %struct.TYPE_5__* %11, null
  br i1 %12, label %13, label %51

13:                                               ; preds = %10
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @XML_ELEMENT_NODE, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %47

19:                                               ; preds = %13
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %21 = load i8*, i8** @SOAP_1_1_ENV_NAMESPACE, align 8
  %22 = call i64 @node_is_equal_ex(%struct.TYPE_5__* %20, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %19
  %25 = load i8*, i8** @SOAP_1_1, align 8
  %26 = ptrtoint i8* %25 to i32
  %27 = load i32*, i32** %6, align 8
  store i32 %26, i32* %27, align 4
  %28 = load i8*, i8** @SOAP_1_1_ENV_NAMESPACE, align 8
  %29 = load i8**, i8*** %7, align 8
  store i8* %28, i8** %29, align 8
  %30 = load i8*, i8** @SOAP_1_1, align 8
  store i8* %30, i8** %8, align 8
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  store %struct.TYPE_5__* %31, %struct.TYPE_5__** %4, align 8
  br label %52

32:                                               ; preds = %19
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %34 = load i8*, i8** @SOAP_1_2_ENV_NAMESPACE, align 8
  %35 = call i64 @node_is_equal_ex(%struct.TYPE_5__* %33, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %32
  %38 = load i8*, i8** @SOAP_1_2, align 8
  %39 = ptrtoint i8* %38 to i32
  %40 = load i32*, i32** %6, align 8
  store i32 %39, i32* %40, align 4
  %41 = load i8*, i8** @SOAP_1_2_ENV_NAMESPACE, align 8
  %42 = load i8**, i8*** %7, align 8
  store i8* %41, i8** %42, align 8
  %43 = load i8*, i8** @SOAP_1_2, align 8
  store i8* %43, i8** %9, align 8
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  store %struct.TYPE_5__* %44, %struct.TYPE_5__** %4, align 8
  br label %52

45:                                               ; preds = %32
  %46 = call i32 @soap_server_fault(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32* null, i32* null, i32* null)
  br label %47

47:                                               ; preds = %45, %13
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 1
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %49, align 8
  store %struct.TYPE_5__* %50, %struct.TYPE_5__** %5, align 8
  br label %10

51:                                               ; preds = %10
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %4, align 8
  br label %52

52:                                               ; preds = %51, %37, %24
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  ret %struct.TYPE_5__* %53
}

declare dso_local i64 @node_is_equal_ex(%struct.TYPE_5__*, i8*, i8*) #1

declare dso_local i32 @soap_server_fault(i8*, i8*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
