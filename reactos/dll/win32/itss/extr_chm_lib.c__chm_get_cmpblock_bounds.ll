; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/itss/extr_chm_lib.c__chm_get_cmpblock_bounds.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/itss/extr_chm_lib.c__chm_get_cmpblock_bounds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.chmFile = type { i32, %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.chmFile*, i32, i32*, i32*)* @_chm_get_cmpblock_bounds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_chm_get_cmpblock_bounds(%struct.chmFile* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.chmFile*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca [8 x i32], align 16
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store %struct.chmFile* %0, %struct.chmFile** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %13 = load i32, i32* %7, align 4
  %14 = load %struct.chmFile*, %struct.chmFile** %6, align 8
  %15 = getelementptr inbounds %struct.chmFile, %struct.chmFile* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = sub nsw i32 %17, 1
  %19 = icmp slt i32 %13, %18
  br i1 %19, label %20, label %82

20:                                               ; preds = %4
  %21 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 0
  store i32* %21, i32** %11, align 8
  store i32 8, i32* %12, align 4
  %22 = load %struct.chmFile*, %struct.chmFile** %6, align 8
  %23 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 0
  %24 = load %struct.chmFile*, %struct.chmFile** %6, align 8
  %25 = getelementptr inbounds %struct.chmFile, %struct.chmFile* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.chmFile*, %struct.chmFile** %6, align 8
  %28 = getelementptr inbounds %struct.chmFile, %struct.chmFile* %27, i32 0, i32 3
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = add nsw i32 %26, %30
  %32 = load %struct.chmFile*, %struct.chmFile** %6, align 8
  %33 = getelementptr inbounds %struct.chmFile, %struct.chmFile* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = add nsw i32 %31, %35
  %37 = load i32, i32* %7, align 4
  %38 = mul nsw i32 %37, 8
  %39 = add nsw i32 %36, %38
  %40 = load i32, i32* %12, align 4
  %41 = call i32 @_chm_fetch_bytes(%struct.chmFile* %22, i32* %23, i32 %39, i32 %40)
  %42 = load i32, i32* %12, align 4
  %43 = icmp ne i32 %41, %42
  br i1 %43, label %48, label %44

44:                                               ; preds = %20
  %45 = load i32*, i32** %8, align 8
  %46 = call i32 @_unmarshal_uint64(i32** %11, i32* %12, i32* %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %50, label %48

48:                                               ; preds = %44, %20
  %49 = load i32, i32* @FALSE, align 4
  store i32 %49, i32* %5, align 4
  br label %136

50:                                               ; preds = %44
  %51 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 0
  store i32* %51, i32** %11, align 8
  store i32 8, i32* %12, align 4
  %52 = load %struct.chmFile*, %struct.chmFile** %6, align 8
  %53 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 0
  %54 = load %struct.chmFile*, %struct.chmFile** %6, align 8
  %55 = getelementptr inbounds %struct.chmFile, %struct.chmFile* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.chmFile*, %struct.chmFile** %6, align 8
  %58 = getelementptr inbounds %struct.chmFile, %struct.chmFile* %57, i32 0, i32 3
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = add nsw i32 %56, %60
  %62 = load %struct.chmFile*, %struct.chmFile** %6, align 8
  %63 = getelementptr inbounds %struct.chmFile, %struct.chmFile* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = add nsw i32 %61, %65
  %67 = load i32, i32* %7, align 4
  %68 = mul nsw i32 %67, 8
  %69 = add nsw i32 %66, %68
  %70 = add nsw i32 %69, 8
  %71 = load i32, i32* %12, align 4
  %72 = call i32 @_chm_fetch_bytes(%struct.chmFile* %52, i32* %53, i32 %70, i32 %71)
  %73 = load i32, i32* %12, align 4
  %74 = icmp ne i32 %72, %73
  br i1 %74, label %79, label %75

75:                                               ; preds = %50
  %76 = load i32*, i32** %9, align 8
  %77 = call i32 @_unmarshal_int64(i32** %11, i32* %12, i32* %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %81, label %79

79:                                               ; preds = %75, %50
  %80 = load i32, i32* @FALSE, align 4
  store i32 %80, i32* %5, align 4
  br label %136

81:                                               ; preds = %75
  br label %118

82:                                               ; preds = %4
  %83 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 0
  store i32* %83, i32** %11, align 8
  store i32 8, i32* %12, align 4
  %84 = load %struct.chmFile*, %struct.chmFile** %6, align 8
  %85 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 0
  %86 = load %struct.chmFile*, %struct.chmFile** %6, align 8
  %87 = getelementptr inbounds %struct.chmFile, %struct.chmFile* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.chmFile*, %struct.chmFile** %6, align 8
  %90 = getelementptr inbounds %struct.chmFile, %struct.chmFile* %89, i32 0, i32 3
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = add nsw i32 %88, %92
  %94 = load %struct.chmFile*, %struct.chmFile** %6, align 8
  %95 = getelementptr inbounds %struct.chmFile, %struct.chmFile* %94, i32 0, i32 2
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = add nsw i32 %93, %97
  %99 = load i32, i32* %7, align 4
  %100 = mul nsw i32 %99, 8
  %101 = add nsw i32 %98, %100
  %102 = load i32, i32* %12, align 4
  %103 = call i32 @_chm_fetch_bytes(%struct.chmFile* %84, i32* %85, i32 %101, i32 %102)
  %104 = load i32, i32* %12, align 4
  %105 = icmp ne i32 %103, %104
  br i1 %105, label %110, label %106

106:                                              ; preds = %82
  %107 = load i32*, i32** %8, align 8
  %108 = call i32 @_unmarshal_uint64(i32** %11, i32* %12, i32* %107)
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %112, label %110

110:                                              ; preds = %106, %82
  %111 = load i32, i32* @FALSE, align 4
  store i32 %111, i32* %5, align 4
  br label %136

112:                                              ; preds = %106
  %113 = load %struct.chmFile*, %struct.chmFile** %6, align 8
  %114 = getelementptr inbounds %struct.chmFile, %struct.chmFile* %113, i32 0, i32 2
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 4
  %117 = load i32*, i32** %9, align 8
  store i32 %116, i32* %117, align 4
  br label %118

118:                                              ; preds = %112, %81
  %119 = load i32*, i32** %8, align 8
  %120 = load i32, i32* %119, align 4
  %121 = load i32*, i32** %9, align 8
  %122 = load i32, i32* %121, align 4
  %123 = sub nsw i32 %122, %120
  store i32 %123, i32* %121, align 4
  %124 = load %struct.chmFile*, %struct.chmFile** %6, align 8
  %125 = getelementptr inbounds %struct.chmFile, %struct.chmFile* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.chmFile*, %struct.chmFile** %6, align 8
  %128 = getelementptr inbounds %struct.chmFile, %struct.chmFile* %127, i32 0, i32 1
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = add nsw i32 %126, %130
  %132 = load i32*, i32** %8, align 8
  %133 = load i32, i32* %132, align 4
  %134 = add nsw i32 %133, %131
  store i32 %134, i32* %132, align 4
  %135 = load i32, i32* @TRUE, align 4
  store i32 %135, i32* %5, align 4
  br label %136

136:                                              ; preds = %118, %110, %79, %48
  %137 = load i32, i32* %5, align 4
  ret i32 %137
}

declare dso_local i32 @_chm_fetch_bytes(%struct.chmFile*, i32*, i32, i32) #1

declare dso_local i32 @_unmarshal_uint64(i32**, i32*, i32*) #1

declare dso_local i32 @_unmarshal_int64(i32**, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
