; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/imm32/extr_imm.c_convert_candidatelist_WtoA.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/imm32/extr_imm.c_convert_candidatelist_WtoA.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64, i64* }

@CANDIDATELIST = common dso_local global i32 0, align 4
@dwOffset = common dso_local global i32* null, align 8
@CP_ACP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_4__*, %struct.TYPE_4__*, i64)* @convert_candidatelist_WtoA to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @convert_candidatelist_WtoA(%struct.TYPE_4__* %0, %struct.TYPE_4__* %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %5, align 8
  store i64 %2, i64* %6, align 8
  %12 = load i32, i32* @CANDIDATELIST, align 4
  %13 = load i32*, i32** @dwOffset, align 8
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds i32, i32* %13, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @FIELD_OFFSET(i32 %12, i32 %18)
  store i64 %19, i64* %7, align 8
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %21 = icmp ne %struct.TYPE_4__* %20, null
  br i1 %21, label %22, label %35

22:                                               ; preds = %3
  %23 = load i64, i64* %6, align 8
  %24 = icmp sgt i64 %23, 0
  br i1 %24, label %25, label %35

25:                                               ; preds = %22
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %28 = bitcast %struct.TYPE_4__* %26 to i8*
  %29 = bitcast %struct.TYPE_4__* %27 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %28, i8* align 8 %29, i64 24, i1 false)
  %30 = load i64, i64* %7, align 8
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 2
  %33 = load i64*, i64** %32, align 8
  %34 = getelementptr inbounds i64, i64* %33, i64 0
  store i64 %30, i64* %34, align 8
  br label %35

35:                                               ; preds = %25, %22, %3
  store i64 0, i64* %8, align 8
  br label %36

36:                                               ; preds = %111, %35
  %37 = load i64, i64* %8, align 8
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ult i64 %37, %40
  br i1 %41, label %42, label %114

42:                                               ; preds = %36
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %44 = ptrtoint %struct.TYPE_4__* %43 to i64
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 2
  %47 = load i64*, i64** %46, align 8
  %48 = load i64, i64* %8, align 8
  %49 = getelementptr inbounds i64, i64* %47, i64 %48
  %50 = load i64, i64* %49, align 8
  %51 = add nsw i64 %44, %50
  store i64 %51, i64* %10, align 8
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %53 = icmp ne %struct.TYPE_4__* %52, null
  br i1 %53, label %54, label %101

54:                                               ; preds = %42
  %55 = load i64, i64* %6, align 8
  %56 = icmp sgt i64 %55, 0
  br i1 %56, label %57, label %101

57:                                               ; preds = %54
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %59 = ptrtoint %struct.TYPE_4__* %58 to i64
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 2
  %62 = load i64*, i64** %61, align 8
  %63 = load i64, i64* %8, align 8
  %64 = getelementptr inbounds i64, i64* %62, i64 %63
  %65 = load i64, i64* %64, align 8
  %66 = add nsw i64 %59, %65
  store i64 %66, i64* %11, align 8
  %67 = load i32, i32* @CP_ACP, align 4
  %68 = load i64, i64* %10, align 8
  %69 = trunc i64 %68 to i32
  %70 = load i64, i64* %11, align 8
  %71 = inttoptr i64 %70 to i32*
  %72 = load i64, i64* %6, align 8
  %73 = call i64 @WideCharToMultiByte(i32 %67, i32 0, i32 %69, i32 -1, i32* %71, i64 %72, i32* null, i32* null)
  store i64 %73, i64* %9, align 8
  %74 = load i64, i64* %8, align 8
  %75 = add nsw i64 %74, 1
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = icmp ult i64 %75, %78
  br i1 %79, label %80, label %96

80:                                               ; preds = %57
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 2
  %83 = load i64*, i64** %82, align 8
  %84 = load i64, i64* %8, align 8
  %85 = getelementptr inbounds i64, i64* %83, i64 %84
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* %9, align 8
  %88 = mul i64 %87, 1
  %89 = add i64 %86, %88
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 2
  %92 = load i64*, i64** %91, align 8
  %93 = load i64, i64* %8, align 8
  %94 = add nsw i64 %93, 1
  %95 = getelementptr inbounds i64, i64* %92, i64 %94
  store i64 %89, i64* %95, align 8
  br label %96

96:                                               ; preds = %80, %57
  %97 = load i64, i64* %9, align 8
  %98 = mul i64 %97, 1
  %99 = load i64, i64* %6, align 8
  %100 = sub i64 %99, %98
  store i64 %100, i64* %6, align 8
  br label %106

101:                                              ; preds = %54, %42
  %102 = load i32, i32* @CP_ACP, align 4
  %103 = load i64, i64* %10, align 8
  %104 = trunc i64 %103 to i32
  %105 = call i64 @WideCharToMultiByte(i32 %102, i32 0, i32 %104, i32 -1, i32* null, i64 0, i32* null, i32* null)
  store i64 %105, i64* %9, align 8
  br label %106

106:                                              ; preds = %101, %96
  %107 = load i64, i64* %9, align 8
  %108 = mul i64 %107, 1
  %109 = load i64, i64* %7, align 8
  %110 = add i64 %109, %108
  store i64 %110, i64* %7, align 8
  br label %111

111:                                              ; preds = %106
  %112 = load i64, i64* %8, align 8
  %113 = add nsw i64 %112, 1
  store i64 %113, i64* %8, align 8
  br label %36

114:                                              ; preds = %36
  %115 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %116 = icmp ne %struct.TYPE_4__* %115, null
  br i1 %116, label %117, label %121

117:                                              ; preds = %114
  %118 = load i64, i64* %7, align 8
  %119 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 1
  store i64 %118, i64* %120, align 8
  br label %121

121:                                              ; preds = %117, %114
  %122 = load i64, i64* %7, align 8
  ret i64 %122
}

declare dso_local i64 @FIELD_OFFSET(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @WideCharToMultiByte(i32, i32, i32, i32, i32*, i64, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
