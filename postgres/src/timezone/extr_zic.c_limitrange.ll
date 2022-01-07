; ModuleID = '/home/carl/AnghaBench/postgres/src/timezone/extr_zic.c_limitrange.c'
source_filename = "/home/carl/AnghaBench/postgres/src/timezone/extr_zic.c_limitrange.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timerange = type { i32, i64, i8, i32, i64 }

@trans = common dso_local global i64* null, align 8
@ZIC_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timerange*, %struct.timerange*, i64, i64, i64*, i8*)* @limitrange to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @limitrange(%struct.timerange* noalias sret %0, %struct.timerange* byval(%struct.timerange) align 8 %1, i64 %2, i64 %3, i64* %4, i8* %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i8*, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  store i64* %4, i64** %9, align 8
  store i8* %5, i8** %10, align 8
  br label %11

11:                                               ; preds = %25, %6
  %12 = getelementptr inbounds %struct.timerange, %struct.timerange* %1, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp slt i32 0, %13
  br i1 %14, label %15, label %23

15:                                               ; preds = %11
  %16 = load i64*, i64** %9, align 8
  %17 = getelementptr inbounds %struct.timerange, %struct.timerange* %1, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = getelementptr inbounds i64, i64* %16, i64 %18
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* %7, align 8
  %22 = icmp slt i64 %20, %21
  br label %23

23:                                               ; preds = %15, %11
  %24 = phi i1 [ false, %11 ], [ %22, %15 ]
  br i1 %24, label %25, label %38

25:                                               ; preds = %23
  %26 = load i8*, i8** %10, align 8
  %27 = getelementptr inbounds %struct.timerange, %struct.timerange* %1, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds i8, i8* %26, i64 %28
  %30 = load i8, i8* %29, align 1
  %31 = getelementptr inbounds %struct.timerange, %struct.timerange* %1, i32 0, i32 2
  store i8 %30, i8* %31, align 8
  %32 = getelementptr inbounds %struct.timerange, %struct.timerange* %1, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = add nsw i32 %33, -1
  store i32 %34, i32* %32, align 8
  %35 = getelementptr inbounds %struct.timerange, %struct.timerange* %1, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = add i64 %36, 1
  store i64 %37, i64* %35, align 8
  br label %11

38:                                               ; preds = %23
  br label %39

39:                                               ; preds = %53, %38
  %40 = getelementptr inbounds %struct.timerange, %struct.timerange* %1, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = icmp slt i32 0, %41
  br i1 %42, label %43, label %51

43:                                               ; preds = %39
  %44 = load i64*, i64** @trans, align 8
  %45 = getelementptr inbounds %struct.timerange, %struct.timerange* %1, i32 0, i32 4
  %46 = load i64, i64* %45, align 8
  %47 = getelementptr inbounds i64, i64* %44, i64 %46
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* %7, align 8
  %50 = icmp slt i64 %48, %49
  br label %51

51:                                               ; preds = %43, %39
  %52 = phi i1 [ false, %39 ], [ %50, %43 ]
  br i1 %52, label %53, label %60

53:                                               ; preds = %51
  %54 = getelementptr inbounds %struct.timerange, %struct.timerange* %1, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = add nsw i32 %55, -1
  store i32 %56, i32* %54, align 4
  %57 = getelementptr inbounds %struct.timerange, %struct.timerange* %1, i32 0, i32 4
  %58 = load i64, i64* %57, align 8
  %59 = add i64 %58, 1
  store i64 %59, i64* %57, align 8
  br label %39

60:                                               ; preds = %51
  %61 = load i64, i64* %8, align 8
  %62 = load i64, i64* @ZIC_MAX, align 8
  %63 = icmp slt i64 %61, %62
  br i1 %63, label %64, label %115

64:                                               ; preds = %60
  br label %65

65:                                               ; preds = %85, %64
  %66 = getelementptr inbounds %struct.timerange, %struct.timerange* %1, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = icmp slt i32 0, %67
  br i1 %68, label %69, label %83

69:                                               ; preds = %65
  %70 = load i64, i64* %8, align 8
  %71 = add nsw i64 %70, 1
  %72 = load i64*, i64** %9, align 8
  %73 = getelementptr inbounds %struct.timerange, %struct.timerange* %1, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = getelementptr inbounds %struct.timerange, %struct.timerange* %1, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = sext i32 %76 to i64
  %78 = add i64 %74, %77
  %79 = sub i64 %78, 1
  %80 = getelementptr inbounds i64, i64* %72, i64 %79
  %81 = load i64, i64* %80, align 8
  %82 = icmp slt i64 %71, %81
  br label %83

83:                                               ; preds = %69, %65
  %84 = phi i1 [ false, %65 ], [ %82, %69 ]
  br i1 %84, label %85, label %89

85:                                               ; preds = %83
  %86 = getelementptr inbounds %struct.timerange, %struct.timerange* %1, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = add nsw i32 %87, -1
  store i32 %88, i32* %86, align 8
  br label %65

89:                                               ; preds = %83
  br label %90

90:                                               ; preds = %110, %89
  %91 = getelementptr inbounds %struct.timerange, %struct.timerange* %1, i32 0, i32 3
  %92 = load i32, i32* %91, align 4
  %93 = icmp slt i32 0, %92
  br i1 %93, label %94, label %108

94:                                               ; preds = %90
  %95 = load i64, i64* %8, align 8
  %96 = add nsw i64 %95, 1
  %97 = load i64*, i64** @trans, align 8
  %98 = getelementptr inbounds %struct.timerange, %struct.timerange* %1, i32 0, i32 4
  %99 = load i64, i64* %98, align 8
  %100 = getelementptr inbounds %struct.timerange, %struct.timerange* %1, i32 0, i32 3
  %101 = load i32, i32* %100, align 4
  %102 = sext i32 %101 to i64
  %103 = add i64 %99, %102
  %104 = sub i64 %103, 1
  %105 = getelementptr inbounds i64, i64* %97, i64 %104
  %106 = load i64, i64* %105, align 8
  %107 = icmp slt i64 %96, %106
  br label %108

108:                                              ; preds = %94, %90
  %109 = phi i1 [ false, %90 ], [ %107, %94 ]
  br i1 %109, label %110, label %114

110:                                              ; preds = %108
  %111 = getelementptr inbounds %struct.timerange, %struct.timerange* %1, i32 0, i32 3
  %112 = load i32, i32* %111, align 4
  %113 = add nsw i32 %112, -1
  store i32 %113, i32* %111, align 4
  br label %90

114:                                              ; preds = %108
  br label %115

115:                                              ; preds = %114, %60
  %116 = bitcast %struct.timerange* %0 to i8*
  %117 = bitcast %struct.timerange* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %116, i8* align 8 %117, i64 32, i1 false)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
