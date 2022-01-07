; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/cmdutils/reg/extr_export.c_export_registry_data.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/cmdutils/reg/extr_export.c_export_registry_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ERROR_SUCCESS = common dso_local global i64 0, align 8
@ERROR_MORE_DATA = common dso_local global i64 0, align 8
@MAX_SUBKEY_LEN = common dso_local global i32 0, align 4
@KEY_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32*)* @export_registry_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @export_registry_data(i32 %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  store i32 256, i32* %8, align 4
  store i32 2048, i32* %10, align 4
  %21 = load i32, i32* %4, align 4
  %22 = load i32*, i32** %6, align 8
  %23 = call i32 @export_key_name(i32 %21, i32* %22)
  %24 = load i32, i32* %8, align 4
  %25 = sext i32 %24 to i64
  %26 = mul i64 %25, 4
  %27 = trunc i64 %26 to i32
  %28 = call i32* @heap_xalloc(i32 %27)
  store i32* %28, i32** %16, align 8
  %29 = load i32, i32* %10, align 4
  %30 = call i32* @heap_xalloc(i32 %29)
  store i32* %30, i32** %19, align 8
  store i32 0, i32* %13, align 4
  br label %31

31:                                               ; preds = %77, %3
  %32 = load i32, i32* %8, align 4
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %10, align 4
  store i32 %33, i32* %11, align 4
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* %13, align 4
  %36 = load i32*, i32** %16, align 8
  %37 = load i32*, i32** %19, align 8
  %38 = call i64 @RegEnumValueW(i32 %34, i32 %35, i32* %36, i32* %9, i32* null, i32* %14, i32* %37, i32* %11)
  store i64 %38, i64* %7, align 8
  %39 = load i64, i64* %7, align 8
  %40 = load i64, i64* @ERROR_SUCCESS, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %52

42:                                               ; preds = %31
  %43 = load i32, i32* %4, align 4
  %44 = load i32*, i32** %16, align 8
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* %14, align 4
  %47 = load i32*, i32** %19, align 8
  %48 = load i32, i32* %11, align 4
  %49 = call i32 @export_data(i32 %43, i32* %44, i32 %45, i32 %46, i32* %47, i32 %48)
  %50 = load i32, i32* %13, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %13, align 4
  br label %77

52:                                               ; preds = %31
  %53 = load i64, i64* %7, align 8
  %54 = load i64, i64* @ERROR_MORE_DATA, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %75

56:                                               ; preds = %52
  %57 = load i32, i32* %11, align 4
  %58 = load i32, i32* %10, align 4
  %59 = icmp sgt i32 %57, %58
  br i1 %59, label %60, label %65

60:                                               ; preds = %56
  %61 = load i32, i32* %11, align 4
  store i32 %61, i32* %10, align 4
  %62 = load i32*, i32** %19, align 8
  %63 = load i32, i32* %10, align 4
  %64 = call i32* @heap_xrealloc(i32* %62, i32 %63)
  store i32* %64, i32** %19, align 8
  br label %74

65:                                               ; preds = %56
  %66 = load i32, i32* %8, align 4
  %67 = mul nsw i32 %66, 2
  store i32 %67, i32* %8, align 4
  %68 = load i32*, i32** %16, align 8
  %69 = load i32, i32* %8, align 4
  %70 = sext i32 %69 to i64
  %71 = mul i64 %70, 4
  %72 = trunc i64 %71 to i32
  %73 = call i32* @heap_xrealloc(i32* %68, i32 %72)
  store i32* %73, i32** %16, align 8
  br label %74

74:                                               ; preds = %65, %60
  br label %76

75:                                               ; preds = %52
  br label %78

76:                                               ; preds = %74
  br label %77

77:                                               ; preds = %76, %42
  br label %31

78:                                               ; preds = %75
  %79 = load i32*, i32** %19, align 8
  %80 = call i32 @heap_free(i32* %79)
  %81 = load i32*, i32** %16, align 8
  %82 = call i32 @heap_free(i32* %81)
  %83 = load i32, i32* @MAX_SUBKEY_LEN, align 4
  %84 = sext i32 %83 to i64
  %85 = mul i64 %84, 4
  %86 = trunc i64 %85 to i32
  %87 = call i32* @heap_xalloc(i32 %86)
  store i32* %87, i32** %17, align 8
  %88 = load i32*, i32** %6, align 8
  %89 = call i32 @lstrlenW(i32* %88)
  store i32 %89, i32* %15, align 4
  store i32 0, i32* %13, align 4
  br label %90

90:                                               ; preds = %123, %78
  %91 = load i32, i32* @MAX_SUBKEY_LEN, align 4
  store i32 %91, i32* %12, align 4
  %92 = load i32, i32* %5, align 4
  %93 = load i32, i32* %13, align 4
  %94 = load i32*, i32** %17, align 8
  %95 = call i64 @RegEnumKeyExW(i32 %92, i32 %93, i32* %94, i32* %12, i32* null, i32* null, i32* null, i32* null)
  store i64 %95, i64* %7, align 8
  %96 = load i64, i64* %7, align 8
  %97 = load i64, i64* @ERROR_SUCCESS, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %122

99:                                               ; preds = %90
  %100 = load i32*, i32** %6, align 8
  %101 = load i32, i32* %15, align 4
  %102 = load i32*, i32** %17, align 8
  %103 = load i32, i32* %12, align 4
  %104 = call i32* @build_subkey_path(i32* %100, i32 %101, i32* %102, i32 %103)
  store i32* %104, i32** %18, align 8
  %105 = load i32, i32* %5, align 4
  %106 = load i32*, i32** %17, align 8
  %107 = load i32, i32* @KEY_READ, align 4
  %108 = call i32 @RegOpenKeyExW(i32 %105, i32* %106, i32 0, i32 %107, i32* %20)
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %117, label %110

110:                                              ; preds = %99
  %111 = load i32, i32* %4, align 4
  %112 = load i32, i32* %20, align 4
  %113 = load i32*, i32** %18, align 8
  %114 = call i32 @export_registry_data(i32 %111, i32 %112, i32* %113)
  %115 = load i32, i32* %20, align 4
  %116 = call i32 @RegCloseKey(i32 %115)
  br label %117

117:                                              ; preds = %110, %99
  %118 = load i32*, i32** %18, align 8
  %119 = call i32 @heap_free(i32* %118)
  %120 = load i32, i32* %13, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %13, align 4
  br label %123

122:                                              ; preds = %90
  br label %124

123:                                              ; preds = %117
  br label %90

124:                                              ; preds = %122
  %125 = load i32*, i32** %17, align 8
  %126 = call i32 @heap_free(i32* %125)
  ret i32 0
}

declare dso_local i32 @export_key_name(i32, i32*) #1

declare dso_local i32* @heap_xalloc(i32) #1

declare dso_local i64 @RegEnumValueW(i32, i32, i32*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @export_data(i32, i32*, i32, i32, i32*, i32) #1

declare dso_local i32* @heap_xrealloc(i32*, i32) #1

declare dso_local i32 @heap_free(i32*) #1

declare dso_local i32 @lstrlenW(i32*) #1

declare dso_local i64 @RegEnumKeyExW(i32, i32, i32*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32* @build_subkey_path(i32*, i32, i32*, i32) #1

declare dso_local i32 @RegOpenKeyExW(i32, i32*, i32, i32, i32*) #1

declare dso_local i32 @RegCloseKey(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
