; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/itss/extr_chm_lib.c__chm_decompress_region.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/itss/extr_chm_lib.c__chm_decompress_region.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.chmFile = type { i64*, i64, i32, i32, i32, i64, i32, i32**, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.chmFile*, i32*, i64, i64)* @_chm_decompress_region to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @_chm_decompress_region(%struct.chmFile* %0, i32* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.chmFile*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  store %struct.chmFile* %0, %struct.chmFile** %6, align 8
  store i32* %1, i32** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i32* null, i32** %14, align 8
  %15 = load i64, i64* %9, align 8
  %16 = icmp sle i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %4
  store i64 0, i64* %5, align 8
  br label %146

18:                                               ; preds = %4
  %19 = load i64, i64* %8, align 8
  %20 = load %struct.chmFile*, %struct.chmFile** %6, align 8
  %21 = getelementptr inbounds %struct.chmFile, %struct.chmFile* %20, i32 0, i32 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = udiv i64 %19, %23
  store i64 %24, i64* %10, align 8
  %25 = load i64, i64* %8, align 8
  %26 = load %struct.chmFile*, %struct.chmFile** %6, align 8
  %27 = getelementptr inbounds %struct.chmFile, %struct.chmFile* %26, i32 0, i32 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = urem i64 %25, %29
  store i64 %30, i64* %11, align 8
  %31 = load i64, i64* %9, align 8
  store i64 %31, i64* %12, align 8
  %32 = load i64, i64* %12, align 8
  %33 = load %struct.chmFile*, %struct.chmFile** %6, align 8
  %34 = getelementptr inbounds %struct.chmFile, %struct.chmFile* %33, i32 0, i32 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* %11, align 8
  %38 = sub i64 %36, %37
  %39 = icmp ugt i64 %32, %38
  br i1 %39, label %40, label %47

40:                                               ; preds = %18
  %41 = load %struct.chmFile*, %struct.chmFile** %6, align 8
  %42 = getelementptr inbounds %struct.chmFile, %struct.chmFile* %41, i32 0, i32 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* %11, align 8
  %46 = sub i64 %44, %45
  store i64 %46, i64* %12, align 8
  br label %47

47:                                               ; preds = %40, %18
  %48 = load %struct.chmFile*, %struct.chmFile** %6, align 8
  %49 = getelementptr inbounds %struct.chmFile, %struct.chmFile* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @CHM_ACQUIRE_LOCK(i32 %50)
  %52 = load %struct.chmFile*, %struct.chmFile** %6, align 8
  %53 = getelementptr inbounds %struct.chmFile, %struct.chmFile* %52, i32 0, i32 6
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @CHM_ACQUIRE_LOCK(i32 %54)
  %56 = load %struct.chmFile*, %struct.chmFile** %6, align 8
  %57 = getelementptr inbounds %struct.chmFile, %struct.chmFile* %56, i32 0, i32 0
  %58 = load i64*, i64** %57, align 8
  %59 = load i64, i64* %10, align 8
  %60 = load %struct.chmFile*, %struct.chmFile** %6, align 8
  %61 = getelementptr inbounds %struct.chmFile, %struct.chmFile* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = urem i64 %59, %62
  %64 = getelementptr inbounds i64, i64* %58, i64 %63
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* %10, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %106

68:                                               ; preds = %47
  %69 = load %struct.chmFile*, %struct.chmFile** %6, align 8
  %70 = getelementptr inbounds %struct.chmFile, %struct.chmFile* %69, i32 0, i32 7
  %71 = load i32**, i32*** %70, align 8
  %72 = load i64, i64* %10, align 8
  %73 = load %struct.chmFile*, %struct.chmFile** %6, align 8
  %74 = getelementptr inbounds %struct.chmFile, %struct.chmFile* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = urem i64 %72, %75
  %77 = getelementptr inbounds i32*, i32** %71, i64 %76
  %78 = load i32*, i32** %77, align 8
  %79 = icmp ne i32* %78, null
  br i1 %79, label %80, label %106

80:                                               ; preds = %68
  %81 = load i32*, i32** %7, align 8
  %82 = load %struct.chmFile*, %struct.chmFile** %6, align 8
  %83 = getelementptr inbounds %struct.chmFile, %struct.chmFile* %82, i32 0, i32 7
  %84 = load i32**, i32*** %83, align 8
  %85 = load i64, i64* %10, align 8
  %86 = load %struct.chmFile*, %struct.chmFile** %6, align 8
  %87 = getelementptr inbounds %struct.chmFile, %struct.chmFile* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = urem i64 %85, %88
  %90 = getelementptr inbounds i32*, i32** %84, i64 %89
  %91 = load i32*, i32** %90, align 8
  %92 = load i64, i64* %11, align 8
  %93 = getelementptr inbounds i32, i32* %91, i64 %92
  %94 = load i64, i64* %12, align 8
  %95 = trunc i64 %94 to i32
  %96 = call i32 @memcpy(i32* %81, i32* %93, i32 %95)
  %97 = load %struct.chmFile*, %struct.chmFile** %6, align 8
  %98 = getelementptr inbounds %struct.chmFile, %struct.chmFile* %97, i32 0, i32 6
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @CHM_RELEASE_LOCK(i32 %99)
  %101 = load %struct.chmFile*, %struct.chmFile** %6, align 8
  %102 = getelementptr inbounds %struct.chmFile, %struct.chmFile* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @CHM_RELEASE_LOCK(i32 %103)
  %105 = load i64, i64* %12, align 8
  store i64 %105, i64* %5, align 8
  br label %146

106:                                              ; preds = %68, %47
  %107 = load %struct.chmFile*, %struct.chmFile** %6, align 8
  %108 = getelementptr inbounds %struct.chmFile, %struct.chmFile* %107, i32 0, i32 6
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @CHM_RELEASE_LOCK(i32 %109)
  %111 = load %struct.chmFile*, %struct.chmFile** %6, align 8
  %112 = getelementptr inbounds %struct.chmFile, %struct.chmFile* %111, i32 0, i32 5
  %113 = load i64, i64* %112, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %124, label %115

115:                                              ; preds = %106
  %116 = load %struct.chmFile*, %struct.chmFile** %6, align 8
  %117 = getelementptr inbounds %struct.chmFile, %struct.chmFile* %116, i32 0, i32 2
  store i32 -1, i32* %117, align 8
  %118 = load %struct.chmFile*, %struct.chmFile** %6, align 8
  %119 = getelementptr inbounds %struct.chmFile, %struct.chmFile* %118, i32 0, i32 4
  %120 = load i32, i32* %119, align 8
  %121 = call i64 @LZXinit(i32 %120)
  %122 = load %struct.chmFile*, %struct.chmFile** %6, align 8
  %123 = getelementptr inbounds %struct.chmFile, %struct.chmFile* %122, i32 0, i32 5
  store i64 %121, i64* %123, align 8
  br label %124

124:                                              ; preds = %115, %106
  %125 = load %struct.chmFile*, %struct.chmFile** %6, align 8
  %126 = load i64, i64* %10, align 8
  %127 = call i64 @_chm_decompress_block(%struct.chmFile* %125, i64 %126, i32** %14)
  store i64 %127, i64* %13, align 8
  %128 = load i64, i64* %13, align 8
  %129 = load i64, i64* %12, align 8
  %130 = icmp ult i64 %128, %129
  br i1 %130, label %131, label %133

131:                                              ; preds = %124
  %132 = load i64, i64* %13, align 8
  store i64 %132, i64* %12, align 8
  br label %133

133:                                              ; preds = %131, %124
  %134 = load i32*, i32** %7, align 8
  %135 = load i32*, i32** %14, align 8
  %136 = load i64, i64* %11, align 8
  %137 = getelementptr inbounds i32, i32* %135, i64 %136
  %138 = load i64, i64* %12, align 8
  %139 = trunc i64 %138 to i32
  %140 = call i32 @memcpy(i32* %134, i32* %137, i32 %139)
  %141 = load %struct.chmFile*, %struct.chmFile** %6, align 8
  %142 = getelementptr inbounds %struct.chmFile, %struct.chmFile* %141, i32 0, i32 3
  %143 = load i32, i32* %142, align 4
  %144 = call i32 @CHM_RELEASE_LOCK(i32 %143)
  %145 = load i64, i64* %12, align 8
  store i64 %145, i64* %5, align 8
  br label %146

146:                                              ; preds = %133, %80, %17
  %147 = load i64, i64* %5, align 8
  ret i64 %147
}

declare dso_local i32 @CHM_ACQUIRE_LOCK(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @CHM_RELEASE_LOCK(i32) #1

declare dso_local i64 @LZXinit(i32) #1

declare dso_local i64 @_chm_decompress_block(%struct.chmFile*, i64, i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
