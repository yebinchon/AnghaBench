; ModuleID = '/home/carl/AnghaBench/mpv/audio/extr_chmap_sel.c_replace_speakers.c'
source_filename = "/home/carl/AnghaBench/mpv/audio/extr_chmap_sel.c_replace_speakers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_chmap = type { i64, i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mp_chmap*, %struct.mp_chmap*)* @replace_speakers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @replace_speakers(%struct.mp_chmap* %0, %struct.mp_chmap* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mp_chmap*, align 8
  %5 = alloca %struct.mp_chmap*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.mp_chmap, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.mp_chmap* %0, %struct.mp_chmap** %4, align 8
  store %struct.mp_chmap* %1, %struct.mp_chmap** %5, align 8
  %13 = load %struct.mp_chmap*, %struct.mp_chmap** %5, align 8
  %14 = getelementptr inbounds %struct.mp_chmap, %struct.mp_chmap* %13, i64 0
  %15 = getelementptr inbounds %struct.mp_chmap, %struct.mp_chmap* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.mp_chmap*, %struct.mp_chmap** %5, align 8
  %18 = getelementptr inbounds %struct.mp_chmap, %struct.mp_chmap* %17, i64 1
  %19 = getelementptr inbounds %struct.mp_chmap, %struct.mp_chmap* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp eq i64 %16, %20
  %22 = zext i1 %21 to i32
  %23 = call i32 @assert(i32 %22)
  %24 = load %struct.mp_chmap*, %struct.mp_chmap** %4, align 8
  %25 = call i64 @mp_chmap_is_valid(%struct.mp_chmap* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %116

28:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %29

29:                                               ; preds = %112, %28
  %30 = load i32, i32* %6, align 4
  %31 = icmp slt i32 %30, 2
  br i1 %31, label %32, label %115

32:                                               ; preds = %29
  %33 = load i32, i32* %6, align 4
  %34 = icmp ne i32 %33, 0
  %35 = zext i1 %34 to i64
  %36 = select i1 %34, i32 0, i32 1
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp ne i32 %37, 0
  %39 = zext i1 %38 to i64
  %40 = select i1 %38, i32 1, i32 0
  store i32 %40, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %41 = load %struct.mp_chmap*, %struct.mp_chmap** %4, align 8
  %42 = bitcast %struct.mp_chmap* %10 to i8*
  %43 = bitcast %struct.mp_chmap* %41 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %42, i8* align 8 %43, i64 16, i1 false)
  store i32 0, i32* %11, align 4
  br label %44

44:                                               ; preds = %98, %32
  %45 = load i32, i32* %11, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.mp_chmap, %struct.mp_chmap* %10, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp slt i64 %46, %48
  br i1 %49, label %50, label %101

50:                                               ; preds = %44
  store i32 0, i32* %12, align 4
  br label %51

51:                                               ; preds = %94, %50
  %52 = load i32, i32* %12, align 4
  %53 = sext i32 %52 to i64
  %54 = load %struct.mp_chmap*, %struct.mp_chmap** %5, align 8
  %55 = getelementptr inbounds %struct.mp_chmap, %struct.mp_chmap* %54, i64 0
  %56 = getelementptr inbounds %struct.mp_chmap, %struct.mp_chmap* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp slt i64 %53, %57
  br i1 %58, label %59, label %97

59:                                               ; preds = %51
  %60 = getelementptr inbounds %struct.mp_chmap, %struct.mp_chmap* %10, i32 0, i32 1
  %61 = load i64*, i64** %60, align 8
  %62 = load i32, i32* %11, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i64, i64* %61, i64 %63
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.mp_chmap*, %struct.mp_chmap** %5, align 8
  %67 = load i32, i32* %7, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.mp_chmap, %struct.mp_chmap* %66, i64 %68
  %70 = getelementptr inbounds %struct.mp_chmap, %struct.mp_chmap* %69, i32 0, i32 1
  %71 = load i64*, i64** %70, align 8
  %72 = load i32, i32* %12, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i64, i64* %71, i64 %73
  %75 = load i64, i64* %74, align 8
  %76 = icmp eq i64 %65, %75
  br i1 %76, label %77, label %93

77:                                               ; preds = %59
  %78 = load %struct.mp_chmap*, %struct.mp_chmap** %5, align 8
  %79 = load i32, i32* %8, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.mp_chmap, %struct.mp_chmap* %78, i64 %80
  %82 = getelementptr inbounds %struct.mp_chmap, %struct.mp_chmap* %81, i32 0, i32 1
  %83 = load i64*, i64** %82, align 8
  %84 = load i32, i32* %12, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i64, i64* %83, i64 %85
  %87 = load i64, i64* %86, align 8
  %88 = getelementptr inbounds %struct.mp_chmap, %struct.mp_chmap* %10, i32 0, i32 1
  %89 = load i64*, i64** %88, align 8
  %90 = load i32, i32* %11, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i64, i64* %89, i64 %91
  store i64 %87, i64* %92, align 8
  store i32 1, i32* %9, align 4
  br label %97

93:                                               ; preds = %59
  br label %94

94:                                               ; preds = %93
  %95 = load i32, i32* %12, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %12, align 4
  br label %51

97:                                               ; preds = %77, %51
  br label %98

98:                                               ; preds = %97
  %99 = load i32, i32* %11, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %11, align 4
  br label %44

101:                                              ; preds = %44
  %102 = load i32, i32* %9, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %111

104:                                              ; preds = %101
  %105 = call i64 @mp_chmap_is_valid(%struct.mp_chmap* %10)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %104
  %108 = load %struct.mp_chmap*, %struct.mp_chmap** %4, align 8
  %109 = bitcast %struct.mp_chmap* %108 to i8*
  %110 = bitcast %struct.mp_chmap* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %109, i8* align 8 %110, i64 16, i1 false)
  store i32 1, i32* %3, align 4
  br label %116

111:                                              ; preds = %104, %101
  br label %112

112:                                              ; preds = %111
  %113 = load i32, i32* %6, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %6, align 4
  br label %29

115:                                              ; preds = %29
  store i32 0, i32* %3, align 4
  br label %116

116:                                              ; preds = %115, %107, %27
  %117 = load i32, i32* %3, align 4
  ret i32 %117
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @mp_chmap_is_valid(%struct.mp_chmap*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
