; ModuleID = '/home/carl/AnghaBench/php-src/ext/soap/extr_php_sdl.c_delete_function.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/soap/extr_php_sdl.c_delete_function.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, %struct.TYPE_8__*, %struct.TYPE_8__*, %struct.TYPE_7__*, %struct.TYPE_8__*, %struct.TYPE_8__*, %struct.TYPE_8__*, %struct.TYPE_8__*, %struct.TYPE_8__*, %struct.TYPE_8__* }
%struct.TYPE_7__ = type { i64 }

@BINDING_SOAP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @delete_function to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @delete_function(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  store i32* %0, i32** %2, align 8
  %5 = load i32*, i32** %2, align 8
  %6 = call %struct.TYPE_8__* @Z_PTR_P(i32* %5)
  store %struct.TYPE_8__* %6, %struct.TYPE_8__** %3, align 8
  %7 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 10
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %10 = icmp ne %struct.TYPE_8__* %9, null
  br i1 %10, label %11, label %16

11:                                               ; preds = %1
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 10
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %15 = call i32 @efree(%struct.TYPE_8__* %14)
  br label %16

16:                                               ; preds = %11, %1
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 9
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %20 = icmp ne %struct.TYPE_8__* %19, null
  br i1 %20, label %21, label %26

21:                                               ; preds = %16
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 9
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  %25 = call i32 @efree(%struct.TYPE_8__* %24)
  br label %26

26:                                               ; preds = %21, %16
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 8
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %28, align 8
  %30 = icmp ne %struct.TYPE_8__* %29, null
  br i1 %30, label %31, label %36

31:                                               ; preds = %26
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 8
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %33, align 8
  %35 = call i32 @efree(%struct.TYPE_8__* %34)
  br label %36

36:                                               ; preds = %31, %26
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 7
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %38, align 8
  %40 = icmp ne %struct.TYPE_8__* %39, null
  br i1 %40, label %41, label %50

41:                                               ; preds = %36
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 7
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %43, align 8
  %45 = call i32 @zend_hash_destroy(%struct.TYPE_8__* %44)
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 7
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %47, align 8
  %49 = call i32 @efree(%struct.TYPE_8__* %48)
  br label %50

50:                                               ; preds = %41, %36
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 6
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %52, align 8
  %54 = icmp ne %struct.TYPE_8__* %53, null
  br i1 %54, label %55, label %64

55:                                               ; preds = %50
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 6
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %57, align 8
  %59 = call i32 @zend_hash_destroy(%struct.TYPE_8__* %58)
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 6
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %61, align 8
  %63 = call i32 @efree(%struct.TYPE_8__* %62)
  br label %64

64:                                               ; preds = %55, %50
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 5
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %66, align 8
  %68 = icmp ne %struct.TYPE_8__* %67, null
  br i1 %68, label %69, label %78

69:                                               ; preds = %64
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 5
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %71, align 8
  %73 = call i32 @zend_hash_destroy(%struct.TYPE_8__* %72)
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 5
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %75, align 8
  %77 = call i32 @efree(%struct.TYPE_8__* %76)
  br label %78

78:                                               ; preds = %69, %64
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 3
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %80, align 8
  %82 = icmp ne %struct.TYPE_8__* %81, null
  br i1 %82, label %83, label %120

83:                                               ; preds = %78
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 4
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %85, align 8
  %87 = icmp ne %struct.TYPE_7__* %86, null
  br i1 %87, label %88, label %120

88:                                               ; preds = %83
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 4
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @BINDING_SOAP, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %120

96:                                               ; preds = %88
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 3
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %98, align 8
  store %struct.TYPE_8__* %99, %struct.TYPE_8__** %4, align 8
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 2
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** %101, align 8
  %103 = icmp ne %struct.TYPE_8__* %102, null
  br i1 %103, label %104, label %109

104:                                              ; preds = %96
  %105 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 2
  %107 = load %struct.TYPE_8__*, %struct.TYPE_8__** %106, align 8
  %108 = call i32 @efree(%struct.TYPE_8__* %107)
  br label %109

109:                                              ; preds = %104, %96
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @delete_sdl_soap_binding_function_body(i32 %112)
  %114 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = call i32 @delete_sdl_soap_binding_function_body(i32 %116)
  %118 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %119 = call i32 @efree(%struct.TYPE_8__* %118)
  br label %120

120:                                              ; preds = %109, %88, %83, %78
  %121 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %122 = call i32 @efree(%struct.TYPE_8__* %121)
  ret void
}

declare dso_local %struct.TYPE_8__* @Z_PTR_P(i32*) #1

declare dso_local i32 @efree(%struct.TYPE_8__*) #1

declare dso_local i32 @zend_hash_destroy(%struct.TYPE_8__*) #1

declare dso_local i32 @delete_sdl_soap_binding_function_body(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
