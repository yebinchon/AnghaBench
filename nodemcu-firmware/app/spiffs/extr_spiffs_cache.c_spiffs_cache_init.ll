; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/spiffs/extr_spiffs_cache.c_spiffs_cache_init.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/spiffs/extr_spiffs_cache.c_spiffs_cache_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64, i32 }
%struct.TYPE_13__ = type { i32, i32, i32, %struct.TYPE_13__* }
%struct.TYPE_15__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @spiffs_cache_init(%struct.TYPE_14__* %0) #0 {
  %2 = alloca %struct.TYPE_14__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_13__, align 8
  %8 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %2, align 8
  %9 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %94

14:                                               ; preds = %1
  %15 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %18 = load i32, i32* %3, align 4
  %19 = sext i32 %18 to i64
  %20 = sub i64 %19, 24
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %22 = call i32 @SPIFFS_CACHE_PAGE_SIZE(%struct.TYPE_14__* %21)
  %23 = sext i32 %22 to i64
  %24 = udiv i64 %20, %23
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp sle i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %14
  br label %94

29:                                               ; preds = %14
  store i32 0, i32* %5, align 4
  br label %30

30:                                               ; preds = %39, %29
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* %6, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %42

34:                                               ; preds = %30
  %35 = load i32, i32* %4, align 4
  %36 = shl i32 %35, 1
  store i32 %36, i32* %4, align 4
  %37 = load i32, i32* %4, align 4
  %38 = or i32 %37, 1
  store i32 %38, i32* %4, align 4
  br label %39

39:                                               ; preds = %34
  %40 = load i32, i32* %5, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %5, align 4
  br label %30

42:                                               ; preds = %30
  %43 = call i32 @memset(%struct.TYPE_13__* %7, i32 0, i32 24)
  %44 = load i32, i32* %6, align 4
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 0
  store i32 %44, i32* %45, align 8
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = inttoptr i64 %48 to %struct.TYPE_13__*
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %49, i64 24
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 3
  store %struct.TYPE_13__* %50, %struct.TYPE_13__** %51, align 8
  %52 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 1
  store i32 -1, i32* %52, align 4
  %53 = load i32, i32* %4, align 4
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 2
  store i32 %53, i32* %54, align 8
  %55 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %56 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = call i32 @_SPIFFS_MEMCPY(i64 %57, %struct.TYPE_13__* %7, i32 24)
  %59 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %60 = call %struct.TYPE_13__* @spiffs_get_cache(%struct.TYPE_14__* %59)
  store %struct.TYPE_13__* %60, %struct.TYPE_13__** %8, align 8
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 3
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %62, align 8
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %68 = call i32 @SPIFFS_CACHE_PAGE_SIZE(%struct.TYPE_14__* %67)
  %69 = mul nsw i32 %66, %68
  %70 = call i32 @memset(%struct.TYPE_13__* %63, i32 0, i32 %69)
  %71 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = xor i32 %73, -1
  %75 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = and i32 %77, %74
  store i32 %78, i32* %76, align 4
  store i32 0, i32* %5, align 4
  br label %79

79:                                               ; preds = %91, %42
  %80 = load i32, i32* %5, align 4
  %81 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = icmp slt i32 %80, %82
  br i1 %83, label %84, label %94

84:                                               ; preds = %79
  %85 = load i32, i32* %5, align 4
  %86 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %87 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %88 = load i32, i32* %5, align 4
  %89 = call %struct.TYPE_15__* @spiffs_get_cache_page_hdr(%struct.TYPE_14__* %86, %struct.TYPE_13__* %87, i32 %88)
  %90 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %89, i32 0, i32 0
  store i32 %85, i32* %90, align 4
  br label %91

91:                                               ; preds = %84
  %92 = load i32, i32* %5, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %5, align 4
  br label %79

94:                                               ; preds = %13, %28, %79
  ret void
}

declare dso_local i32 @SPIFFS_CACHE_PAGE_SIZE(%struct.TYPE_14__*) #1

declare dso_local i32 @memset(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i32 @_SPIFFS_MEMCPY(i64, %struct.TYPE_13__*, i32) #1

declare dso_local %struct.TYPE_13__* @spiffs_get_cache(%struct.TYPE_14__*) #1

declare dso_local %struct.TYPE_15__* @spiffs_get_cache_page_hdr(%struct.TYPE_14__*, %struct.TYPE_13__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
