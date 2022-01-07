; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/crypt32/extr_provstore.c_ProvStore_addCTL.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/crypt32/extr_provstore.c_ProvStore_addCTL.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_15__*, i32, i64 (i32, i32, i32)*, %struct.TYPE_9__ }
%struct.TYPE_15__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64 (%struct.TYPE_15__*, i32*, i32*, i32**, i64)* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32* }

@.str = private unnamed_addr constant [18 x i8] c"(%p, %p, %p, %p)\0A\00", align 1
@TRUE = common dso_local global i64 0, align 8
@CERT_STORE_READONLY_FLAG = common dso_local global i32 0, align 4
@ERROR_ACCESS_DENIED = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@CERT_STORE_PROV_WRITE_ADD_FLAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i32*, i32*, i32**, i64)* @ProvStore_addCTL to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ProvStore_addCTL(i32* %0, i32* %1, i32* %2, i32** %3, i64 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32**, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_14__*, align 8
  %12 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32** %3, i32*** %9, align 8
  store i64 %4, i64* %10, align 8
  %13 = load i32*, i32** %6, align 8
  %14 = bitcast i32* %13 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %14, %struct.TYPE_14__** %11, align 8
  %15 = load i32*, i32** %6, align 8
  %16 = load i32*, i32** %7, align 8
  %17 = load i32*, i32** %8, align 8
  %18 = load i32**, i32*** %9, align 8
  %19 = call i32 @TRACE(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32* %15, i32* %16, i32* %17, i32** %18)
  %20 = load i32*, i32** %8, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %39

22:                                               ; preds = %5
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %24 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_15__*, %struct.TYPE_15__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 0
  %30 = load i64 (%struct.TYPE_15__*, i32*, i32*, i32**, i64)*, i64 (%struct.TYPE_15__*, i32*, i32*, i32**, i64)** %29, align 8
  %31 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %32 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** %32, align 8
  %34 = load i32*, i32** %7, align 8
  %35 = load i32*, i32** %8, align 8
  %36 = load i32**, i32*** %9, align 8
  %37 = load i64, i64* @TRUE, align 8
  %38 = call i64 %30(%struct.TYPE_15__* %33, i32* %34, i32* %35, i32** %36, i64 %37)
  store i64 %38, i64* %12, align 8
  br label %89

39:                                               ; preds = %5
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %40, i32 0, i32 3
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @CERT_STORE_READONLY_FLAG, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %39
  %48 = load i32, i32* @ERROR_ACCESS_DENIED, align 4
  %49 = call i32 @SetLastError(i32 %48)
  %50 = load i64, i64* @FALSE, align 8
  store i64 %50, i64* %12, align 8
  br label %88

51:                                               ; preds = %39
  %52 = load i64, i64* @TRUE, align 8
  store i64 %52, i64* %12, align 8
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %54 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %53, i32 0, i32 2
  %55 = load i64 (i32, i32, i32)*, i64 (i32, i32, i32)** %54, align 8
  %56 = icmp ne i64 (i32, i32, i32)* %55, null
  br i1 %56, label %57, label %68

57:                                               ; preds = %51
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %58, i32 0, i32 2
  %60 = load i64 (i32, i32, i32)*, i64 (i32, i32, i32)** %59, align 8
  %61 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %62 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = load i32*, i32** %7, align 8
  %65 = call i32 @context_ptr(i32* %64)
  %66 = load i32, i32* @CERT_STORE_PROV_WRITE_ADD_FLAG, align 4
  %67 = call i64 %60(i32 %63, i32 %65, i32 %66)
  store i64 %67, i64* %12, align 8
  br label %68

68:                                               ; preds = %57, %51
  %69 = load i64, i64* %12, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %87

71:                                               ; preds = %68
  %72 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %73 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %72, i32 0, i32 0
  %74 = load %struct.TYPE_15__*, %struct.TYPE_15__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 0
  %79 = load i64 (%struct.TYPE_15__*, i32*, i32*, i32**, i64)*, i64 (%struct.TYPE_15__*, i32*, i32*, i32**, i64)** %78, align 8
  %80 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %81 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %80, i32 0, i32 0
  %82 = load %struct.TYPE_15__*, %struct.TYPE_15__** %81, align 8
  %83 = load i32*, i32** %7, align 8
  %84 = load i32**, i32*** %9, align 8
  %85 = load i64, i64* @TRUE, align 8
  %86 = call i64 %79(%struct.TYPE_15__* %82, i32* %83, i32* null, i32** %84, i64 %85)
  store i64 %86, i64* %12, align 8
  br label %87

87:                                               ; preds = %71, %68
  br label %88

88:                                               ; preds = %87, %47
  br label %89

89:                                               ; preds = %88, %22
  %90 = load i64, i64* %12, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %102

92:                                               ; preds = %89
  %93 = load i32**, i32*** %9, align 8
  %94 = icmp ne i32** %93, null
  br i1 %94, label %95, label %102

95:                                               ; preds = %92
  %96 = load i32*, i32** %6, align 8
  %97 = load i32**, i32*** %9, align 8
  %98 = bitcast i32** %97 to %struct.TYPE_13__**
  %99 = load %struct.TYPE_13__*, %struct.TYPE_13__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %100, i32 0, i32 0
  store i32* %96, i32** %101, align 8
  br label %102

102:                                              ; preds = %95, %92, %89
  %103 = load i64, i64* %12, align 8
  ret i64 %103
}

declare dso_local i32 @TRACE(i8*, i32*, i32*, i32*, i32**) #1

declare dso_local i32 @SetLastError(i32) #1

declare dso_local i32 @context_ptr(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
