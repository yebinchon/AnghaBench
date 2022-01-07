; ModuleID = '/home/carl/AnghaBench/php-src/ext/soap/extr_soap.c_find_function.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/soap/extr_soap.c_find_function.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64, i32*, i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_11__ = type { i64, i32* }
%struct.TYPE_12__ = type { i64 }

@BINDING_SOAP = common dso_local global i64 0, align 8
@SOAP_DOCUMENT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_13__* (i32*, %struct.TYPE_11__*, i32*)* @find_function to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_13__* @find_function(i32* %0, %struct.TYPE_11__* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca %struct.TYPE_12__*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %5, align 8
  store i32* %2, i32** %6, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to i8*
  %14 = call %struct.TYPE_13__* @get_function(i32* %9, i8* %13)
  store %struct.TYPE_13__* %14, %struct.TYPE_13__** %7, align 8
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %16 = icmp ne %struct.TYPE_13__* %15, null
  br i1 %16, label %17, label %60

17:                                               ; preds = %3
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 3
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %21 = icmp ne %struct.TYPE_10__* %20, null
  br i1 %21, label %22, label %60

22:                                               ; preds = %17
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 3
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @BINDING_SOAP, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %60

30:                                               ; preds = %22
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = sext i32 %33 to i64
  %35 = inttoptr i64 %34 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %35, %struct.TYPE_12__** %8, align 8
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @SOAP_DOCUMENT, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %59

41:                                               ; preds = %30
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %57, label %46

46:                                               ; preds = %41
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = icmp ne i32* %49, null
  br i1 %50, label %51, label %58

51:                                               ; preds = %46
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  %55 = call i64 @zend_hash_num_elements(i32* %54)
  %56 = icmp sgt i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %51, %41
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %7, align 8
  br label %58

58:                                               ; preds = %57, %51, %46
  br label %59

59:                                               ; preds = %58, %30
  br label %60

60:                                               ; preds = %59, %22, %17, %3
  %61 = load i32*, i32** %4, align 8
  %62 = icmp ne i32* %61, null
  br i1 %62, label %63, label %70

63:                                               ; preds = %60
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %65 = icmp eq %struct.TYPE_13__* %64, null
  br i1 %65, label %66, label %70

66:                                               ; preds = %63
  %67 = load i32*, i32** %4, align 8
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %69 = call %struct.TYPE_13__* @get_doc_function(i32* %67, %struct.TYPE_11__* %68)
  store %struct.TYPE_13__* %69, %struct.TYPE_13__** %7, align 8
  br label %70

70:                                               ; preds = %66, %63, %60
  %71 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %72 = icmp ne %struct.TYPE_13__* %71, null
  br i1 %72, label %73, label %80

73:                                               ; preds = %70
  %74 = load i32*, i32** %6, align 8
  %75 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = inttoptr i64 %77 to i8*
  %79 = call i32 @ZVAL_STRING(i32* %74, i8* %78)
  br label %87

80:                                               ; preds = %70
  %81 = load i32*, i32** %6, align 8
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = inttoptr i64 %84 to i8*
  %86 = call i32 @ZVAL_STRING(i32* %81, i8* %85)
  br label %87

87:                                               ; preds = %80, %73
  %88 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  ret %struct.TYPE_13__* %88
}

declare dso_local %struct.TYPE_13__* @get_function(i32*, i8*) #1

declare dso_local i64 @zend_hash_num_elements(i32*) #1

declare dso_local %struct.TYPE_13__* @get_doc_function(i32*, %struct.TYPE_11__*) #1

declare dso_local i32 @ZVAL_STRING(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
