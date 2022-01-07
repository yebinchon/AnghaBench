; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/hlink/extr_link.c___GetMoniker.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/hlink/extr_link.c___GetMoniker.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i32, i64 }

@HLINKGETREF_DEFAULT = common dso_local global i64 0, align 8
@HLINKGETREF_RELATIVE = common dso_local global i64 0, align 8
@MKSYS_NONE = common dso_local global i64 0, align 8
@S_OK = common dso_local global i32 0, align 4
@HLINKGETREF_ABSOLUTE = common dso_local global i64 0, align 8
@OLEGETMONIKER_FORCEASSIGN = common dso_local global i32 0, align 4
@OLEWHICHMK_CONTAINER = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32**, i64)* @__GetMoniker to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__GetMoniker(%struct.TYPE_3__* %0, i32** %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i32** %1, i32*** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load i64, i64* %7, align 8
  %12 = load i64, i64* @HLINKGETREF_DEFAULT, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = load i64, i64* @HLINKGETREF_RELATIVE, align 8
  store i64 %15, i64* %7, align 8
  br label %16

16:                                               ; preds = %14, %3
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %44

21:                                               ; preds = %16
  %22 = load i64, i64* @MKSYS_NONE, align 8
  store i64 %22, i64* %9, align 8
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = call i32 @IMoniker_IsSystemMoniker(i32* %25, i64* %9)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* @S_OK, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %43

30:                                               ; preds = %21
  %31 = load i64, i64* %9, align 8
  %32 = load i64, i64* @MKSYS_NONE, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %43

34:                                               ; preds = %30
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = load i32**, i32*** %6, align 8
  store i32* %37, i32** %38, align 8
  %39 = load i32**, i32*** %6, align 8
  %40 = load i32*, i32** %39, align 8
  %41 = call i32 @IMoniker_AddRef(i32* %40)
  %42 = load i32, i32* @S_OK, align 4
  store i32 %42, i32* %4, align 4
  br label %102

43:                                               ; preds = %30, %21
  br label %44

44:                                               ; preds = %43, %16
  %45 = load i64, i64* %7, align 8
  %46 = load i64, i64* @HLINKGETREF_ABSOLUTE, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %88

48:                                               ; preds = %44
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %88

53:                                               ; preds = %48
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @OLEGETMONIKER_FORCEASSIGN, align 4
  %61 = load i32, i32* @OLEWHICHMK_CONTAINER, align 4
  %62 = call i32 @IHlinkSite_GetMoniker(i64 %56, i32 %59, i32 %60, i32 %61, i32** %10)
  store i32 %62, i32* %8, align 4
  %63 = load i32, i32* %8, align 4
  %64 = call i64 @FAILED(i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %53
  %67 = load i32, i32* %8, align 4
  store i32 %67, i32* %4, align 4
  br label %102

68:                                               ; preds = %53
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = icmp ne i32* %71, null
  br i1 %72, label %73, label %84

73:                                               ; preds = %68
  %74 = load i32*, i32** %10, align 8
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = load i32, i32* @FALSE, align 4
  %79 = load i32**, i32*** %6, align 8
  %80 = call i32 @IMoniker_ComposeWith(i32* %74, i32* %77, i32 %78, i32** %79)
  store i32 %80, i32* %8, align 4
  %81 = load i32*, i32** %10, align 8
  %82 = call i32 @IMoniker_Release(i32* %81)
  %83 = load i32, i32* %8, align 4
  store i32 %83, i32* %4, align 4
  br label %102

84:                                               ; preds = %68
  %85 = load i32*, i32** %10, align 8
  %86 = load i32**, i32*** %6, align 8
  store i32* %85, i32** %86, align 8
  %87 = load i32, i32* @S_OK, align 4
  store i32 %87, i32* %4, align 4
  br label %102

88:                                               ; preds = %48, %44
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 0
  %91 = load i32*, i32** %90, align 8
  %92 = load i32**, i32*** %6, align 8
  store i32* %91, i32** %92, align 8
  %93 = load i32**, i32*** %6, align 8
  %94 = load i32*, i32** %93, align 8
  %95 = icmp ne i32* %94, null
  br i1 %95, label %96, label %100

96:                                               ; preds = %88
  %97 = load i32**, i32*** %6, align 8
  %98 = load i32*, i32** %97, align 8
  %99 = call i32 @IMoniker_AddRef(i32* %98)
  br label %100

100:                                              ; preds = %96, %88
  %101 = load i32, i32* @S_OK, align 4
  store i32 %101, i32* %4, align 4
  br label %102

102:                                              ; preds = %100, %84, %73, %66, %34
  %103 = load i32, i32* %4, align 4
  ret i32 %103
}

declare dso_local i32 @IMoniker_IsSystemMoniker(i32*, i64*) #1

declare dso_local i32 @IMoniker_AddRef(i32*) #1

declare dso_local i32 @IHlinkSite_GetMoniker(i64, i32, i32, i32, i32**) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @IMoniker_ComposeWith(i32*, i32*, i32, i32**) #1

declare dso_local i32 @IMoniker_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
