; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/crypt32/extr_provstore.c_ProvStore_addCert.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/crypt32/extr_provstore.c_ProvStore_addCert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_13__*, i32, i64 (i32, i32, i32)* }
%struct.TYPE_13__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 (%struct.TYPE_13__*, i32*, i32*, i32**, i64)* }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32* }

@.str = private unnamed_addr constant [18 x i8] c"(%p, %p, %p, %p)\0A\00", align 1
@TRUE = common dso_local global i64 0, align 8
@CERT_STORE_PROV_WRITE_ADD_FLAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i32*, i32*, i32**, i64)* @ProvStore_addCert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ProvStore_addCert(i32* %0, i32* %1, i32* %2, i32** %3, i64 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32**, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_12__*, align 8
  %12 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32** %3, i32*** %9, align 8
  store i64 %4, i64* %10, align 8
  %13 = load i32*, i32** %6, align 8
  %14 = bitcast i32* %13 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %14, %struct.TYPE_12__** %11, align 8
  %15 = load i32*, i32** %6, align 8
  %16 = load i32*, i32** %7, align 8
  %17 = load i32*, i32** %8, align 8
  %18 = load i32**, i32*** %9, align 8
  %19 = call i32 @TRACE(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32* %15, i32* %16, i32* %17, i32** %18)
  %20 = load i32*, i32** %8, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %39

22:                                               ; preds = %5
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = load i64 (%struct.TYPE_13__*, i32*, i32*, i32**, i64)*, i64 (%struct.TYPE_13__*, i32*, i32*, i32**, i64)** %29, align 8
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %32, align 8
  %34 = load i32*, i32** %7, align 8
  %35 = load i32*, i32** %8, align 8
  %36 = load i32**, i32*** %9, align 8
  %37 = load i64, i64* @TRUE, align 8
  %38 = call i64 %30(%struct.TYPE_13__* %33, i32* %34, i32* %35, i32** %36, i64 %37)
  store i64 %38, i64* %12, align 8
  br label %76

39:                                               ; preds = %5
  %40 = load i64, i64* @TRUE, align 8
  store i64 %40, i64* %12, align 8
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 2
  %43 = load i64 (i32, i32, i32)*, i64 (i32, i32, i32)** %42, align 8
  %44 = icmp ne i64 (i32, i32, i32)* %43, null
  br i1 %44, label %45, label %56

45:                                               ; preds = %39
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 2
  %48 = load i64 (i32, i32, i32)*, i64 (i32, i32, i32)** %47, align 8
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = load i32*, i32** %7, align 8
  %53 = call i32 @context_ptr(i32* %52)
  %54 = load i32, i32* @CERT_STORE_PROV_WRITE_ADD_FLAG, align 4
  %55 = call i64 %48(i32 %51, i32 %53, i32 %54)
  store i64 %55, i64* %12, align 8
  br label %56

56:                                               ; preds = %45, %39
  %57 = load i64, i64* %12, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %75

59:                                               ; preds = %56
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  %67 = load i64 (%struct.TYPE_13__*, i32*, i32*, i32**, i64)*, i64 (%struct.TYPE_13__*, i32*, i32*, i32**, i64)** %66, align 8
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %69, align 8
  %71 = load i32*, i32** %7, align 8
  %72 = load i32**, i32*** %9, align 8
  %73 = load i64, i64* @TRUE, align 8
  %74 = call i64 %67(%struct.TYPE_13__* %70, i32* %71, i32* null, i32** %72, i64 %73)
  store i64 %74, i64* %12, align 8
  br label %75

75:                                               ; preds = %59, %56
  br label %76

76:                                               ; preds = %75, %22
  %77 = load i64, i64* %12, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %89

79:                                               ; preds = %76
  %80 = load i32**, i32*** %9, align 8
  %81 = icmp ne i32** %80, null
  br i1 %81, label %82, label %89

82:                                               ; preds = %79
  %83 = load i32*, i32** %6, align 8
  %84 = load i32**, i32*** %9, align 8
  %85 = bitcast i32** %84 to %struct.TYPE_11__**
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 0
  store i32* %83, i32** %88, align 8
  br label %89

89:                                               ; preds = %82, %79, %76
  %90 = load i64, i64* %12, align 8
  ret i64 %90
}

declare dso_local i32 @TRACE(i8*, i32*, i32*, i32*, i32**) #1

declare dso_local i32 @context_ptr(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
