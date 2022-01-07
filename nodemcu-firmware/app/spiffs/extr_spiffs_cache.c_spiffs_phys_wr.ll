; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/spiffs/extr_spiffs_cache.c_spiffs_phys_wr.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/spiffs/extr_spiffs_cache.c_spiffs_phys_wr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i32, i64, i32 }

@SPIFFS_OP_COM_MASK = common dso_local global i32 0, align 4
@SPIFFS_OP_C_WRTHRU = common dso_local global i32 0, align 4
@SPIFFS_OP_C_DELE = common dso_local global i32 0, align 4
@SPIFFS_OP_TYPE_MASK = common dso_local global i32 0, align 4
@SPIFFS_OP_T_OBJ_LU = common dso_local global i32 0, align 4
@SPIFFS_CACHE_FLAG_WRTHRU = common dso_local global i32 0, align 4
@SPIFFS_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @spiffs_phys_wr(i32* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_7__*, align 8
  %16 = alloca %struct.TYPE_6__*, align 8
  %17 = alloca i32*, align 8
  store i32* %0, i32** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  %18 = load i32, i32* %10, align 4
  %19 = load i32*, i32** %8, align 8
  %20 = load i32, i32* %11, align 4
  %21 = call i32 @SPIFFS_PADDR_TO_PAGE(i32* %19, i32 %20)
  store i32 %21, i32* %14, align 4
  %22 = load i32*, i32** %8, align 8
  %23 = call %struct.TYPE_7__* @spiffs_get_cache(i32* %22)
  store %struct.TYPE_7__* %23, %struct.TYPE_7__** %15, align 8
  %24 = load i32*, i32** %8, align 8
  %25 = load i32, i32* %14, align 4
  %26 = call %struct.TYPE_6__* @spiffs_cache_page_get(i32* %24, i32 %25)
  store %struct.TYPE_6__* %26, %struct.TYPE_6__** %16, align 8
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %28 = icmp ne %struct.TYPE_6__* %27, null
  br i1 %28, label %29, label %96

29:                                               ; preds = %6
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* @SPIFFS_OP_COM_MASK, align 4
  %32 = and i32 %30, %31
  %33 = load i32, i32* @SPIFFS_OP_C_WRTHRU, align 4
  %34 = icmp ne i32 %32, %33
  br i1 %34, label %35, label %96

35:                                               ; preds = %29
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* @SPIFFS_OP_COM_MASK, align 4
  %38 = and i32 %36, %37
  %39 = load i32, i32* @SPIFFS_OP_C_DELE, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %58

41:                                               ; preds = %35
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* @SPIFFS_OP_TYPE_MASK, align 4
  %44 = and i32 %42, %43
  %45 = load i32, i32* @SPIFFS_OP_T_OBJ_LU, align 4
  %46 = icmp ne i32 %44, %45
  br i1 %46, label %47, label %58

47:                                               ; preds = %41
  %48 = load i32*, i32** %8, align 8
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @spiffs_cache_page_free(i32* %48, i32 %51, i32 0)
  %53 = load i32*, i32** %8, align 8
  %54 = load i32, i32* %11, align 4
  %55 = load i32, i32* %12, align 4
  %56 = load i32*, i32** %13, align 8
  %57 = call i32 @SPIFFS_HAL_WRITE(i32* %53, i32 %54, i32 %55, i32* %56)
  store i32 %57, i32* %7, align 4
  br label %102

58:                                               ; preds = %41, %35
  %59 = load i32*, i32** %8, align 8
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = call i32* @spiffs_get_cache_page(i32* %59, %struct.TYPE_7__* %60, i32 %63)
  store i32* %64, i32** %17, align 8
  %65 = load i32*, i32** %17, align 8
  %66 = load i32*, i32** %8, align 8
  %67 = load i32, i32* %11, align 4
  %68 = call i64 @SPIFFS_PADDR_TO_PAGE_OFFSET(i32* %66, i32 %67)
  %69 = getelementptr inbounds i32, i32* %65, i64 %68
  %70 = load i32*, i32** %13, align 8
  %71 = load i32, i32* %12, align 4
  %72 = call i32 @_SPIFFS_MEMCPY(i32* %69, i32* %70, i32 %71)
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = add nsw i64 %75, 1
  store i64 %76, i64* %74, align 8
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 1
  store i64 %79, i64* %81, align 8
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @SPIFFS_CACHE_FLAG_WRTHRU, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %94

88:                                               ; preds = %58
  %89 = load i32*, i32** %8, align 8
  %90 = load i32, i32* %11, align 4
  %91 = load i32, i32* %12, align 4
  %92 = load i32*, i32** %13, align 8
  %93 = call i32 @SPIFFS_HAL_WRITE(i32* %89, i32 %90, i32 %91, i32* %92)
  store i32 %93, i32* %7, align 4
  br label %102

94:                                               ; preds = %58
  %95 = load i32, i32* @SPIFFS_OK, align 4
  store i32 %95, i32* %7, align 4
  br label %102

96:                                               ; preds = %29, %6
  %97 = load i32*, i32** %8, align 8
  %98 = load i32, i32* %11, align 4
  %99 = load i32, i32* %12, align 4
  %100 = load i32*, i32** %13, align 8
  %101 = call i32 @SPIFFS_HAL_WRITE(i32* %97, i32 %98, i32 %99, i32* %100)
  store i32 %101, i32* %7, align 4
  br label %102

102:                                              ; preds = %96, %94, %88, %47
  %103 = load i32, i32* %7, align 4
  ret i32 %103
}

declare dso_local i32 @SPIFFS_PADDR_TO_PAGE(i32*, i32) #1

declare dso_local %struct.TYPE_7__* @spiffs_get_cache(i32*) #1

declare dso_local %struct.TYPE_6__* @spiffs_cache_page_get(i32*, i32) #1

declare dso_local i32 @spiffs_cache_page_free(i32*, i32, i32) #1

declare dso_local i32 @SPIFFS_HAL_WRITE(i32*, i32, i32, i32*) #1

declare dso_local i32* @spiffs_get_cache_page(i32*, %struct.TYPE_7__*, i32) #1

declare dso_local i32 @_SPIFFS_MEMCPY(i32*, i32*, i32) #1

declare dso_local i64 @SPIFFS_PADDR_TO_PAGE_OFFSET(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
