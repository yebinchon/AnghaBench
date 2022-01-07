; ModuleID = '/home/carl/AnghaBench/mpv/audio/extr_chmap_sel.c_mp_chmap_is_better.c'
source_filename = "/home/carl/AnghaBench/mpv/audio/extr_chmap_sel.c_mp_chmap_is_better.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_chmap = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mp_chmap*, %struct.mp_chmap*, %struct.mp_chmap*)* @mp_chmap_is_better to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mp_chmap_is_better(%struct.mp_chmap* %0, %struct.mp_chmap* %1, %struct.mp_chmap* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mp_chmap*, align 8
  %6 = alloca %struct.mp_chmap*, align 8
  %7 = alloca %struct.mp_chmap*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.mp_chmap, align 8
  %13 = alloca %struct.mp_chmap, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.mp_chmap* %0, %struct.mp_chmap** %5, align 8
  store %struct.mp_chmap* %1, %struct.mp_chmap** %6, align 8
  store %struct.mp_chmap* %2, %struct.mp_chmap** %7, align 8
  %18 = load %struct.mp_chmap*, %struct.mp_chmap** %6, align 8
  %19 = getelementptr inbounds %struct.mp_chmap, %struct.mp_chmap* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %143

23:                                               ; preds = %3
  %24 = load %struct.mp_chmap*, %struct.mp_chmap** %5, align 8
  %25 = load %struct.mp_chmap*, %struct.mp_chmap** %6, align 8
  %26 = call i64 @mp_chmap_equals(%struct.mp_chmap* %24, %struct.mp_chmap* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  store i32 0, i32* %4, align 4
  br label %143

29:                                               ; preds = %23
  %30 = load %struct.mp_chmap*, %struct.mp_chmap** %5, align 8
  %31 = load %struct.mp_chmap*, %struct.mp_chmap** %7, align 8
  %32 = call i64 @mp_chmap_equals(%struct.mp_chmap* %30, %struct.mp_chmap* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  store i32 1, i32* %4, align 4
  br label %143

35:                                               ; preds = %29
  %36 = load %struct.mp_chmap*, %struct.mp_chmap** %5, align 8
  %37 = load %struct.mp_chmap*, %struct.mp_chmap** %6, align 8
  %38 = call i32 @test_preferred_remix(%struct.mp_chmap* %36, %struct.mp_chmap* %37)
  store i32 %38, i32* %8, align 4
  %39 = load %struct.mp_chmap*, %struct.mp_chmap** %5, align 8
  %40 = load %struct.mp_chmap*, %struct.mp_chmap** %7, align 8
  %41 = call i32 @test_preferred_remix(%struct.mp_chmap* %39, %struct.mp_chmap* %40)
  store i32 %41, i32* %9, align 4
  %42 = load i32, i32* %8, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %35
  %45 = load i32, i32* %9, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %44
  store i32 0, i32* %4, align 4
  br label %143

48:                                               ; preds = %44, %35
  %49 = load i32, i32* %8, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %55, label %51

51:                                               ; preds = %48
  %52 = load i32, i32* %9, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %51
  store i32 1, i32* %4, align 4
  br label %143

55:                                               ; preds = %51, %48
  %56 = load %struct.mp_chmap*, %struct.mp_chmap** %5, align 8
  %57 = load %struct.mp_chmap*, %struct.mp_chmap** %6, align 8
  %58 = call i32 @mp_chmap_diffn_r(%struct.mp_chmap* %56, %struct.mp_chmap* %57)
  store i32 %58, i32* %10, align 4
  %59 = load %struct.mp_chmap*, %struct.mp_chmap** %5, align 8
  %60 = load %struct.mp_chmap*, %struct.mp_chmap** %7, align 8
  %61 = call i32 @mp_chmap_diffn_r(%struct.mp_chmap* %59, %struct.mp_chmap* %60)
  store i32 %61, i32* %11, align 4
  %62 = load i32, i32* %11, align 4
  %63 = load i32, i32* %10, align 4
  %64 = icmp ne i32 %62, %63
  br i1 %64, label %65, label %70

65:                                               ; preds = %55
  %66 = load i32, i32* %11, align 4
  %67 = load i32, i32* %10, align 4
  %68 = icmp slt i32 %66, %67
  %69 = zext i1 %68 to i32
  store i32 %69, i32* %4, align 4
  br label %143

70:                                               ; preds = %55
  %71 = load %struct.mp_chmap*, %struct.mp_chmap** %6, align 8
  %72 = bitcast %struct.mp_chmap* %12 to i8*
  %73 = bitcast %struct.mp_chmap* %71 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %72, i8* align 8 %73, i64 8, i1 false)
  %74 = load %struct.mp_chmap*, %struct.mp_chmap** %7, align 8
  %75 = bitcast %struct.mp_chmap* %13 to i8*
  %76 = bitcast %struct.mp_chmap* %74 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %75, i8* align 8 %76, i64 8, i1 false)
  %77 = call i32 @mp_chmap_remove_na(%struct.mp_chmap* %12)
  %78 = call i32 @mp_chmap_remove_na(%struct.mp_chmap* %13)
  %79 = load i32, i32* %11, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %87, label %81

81:                                               ; preds = %70
  %82 = getelementptr inbounds %struct.mp_chmap, %struct.mp_chmap* %13, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = getelementptr inbounds %struct.mp_chmap, %struct.mp_chmap* %12, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = icmp sle i64 %83, %85
  br label %87

87:                                               ; preds = %81, %70
  %88 = phi i1 [ false, %70 ], [ %86, %81 ]
  %89 = zext i1 %88 to i32
  store i32 %89, i32* %14, align 4
  %90 = load i32, i32* %10, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %98, label %92

92:                                               ; preds = %87
  %93 = getelementptr inbounds %struct.mp_chmap, %struct.mp_chmap* %12, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = getelementptr inbounds %struct.mp_chmap, %struct.mp_chmap* %13, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = icmp sle i64 %94, %96
  br label %98

98:                                               ; preds = %92, %87
  %99 = phi i1 [ false, %87 ], [ %97, %92 ]
  %100 = zext i1 %99 to i32
  store i32 %100, i32* %15, align 4
  %101 = load i32, i32* %14, align 4
  %102 = load i32, i32* %15, align 4
  %103 = icmp ne i32 %101, %102
  br i1 %103, label %104, label %106

104:                                              ; preds = %98
  %105 = load i32, i32* %14, align 4
  store i32 %105, i32* %4, align 4
  br label %143

106:                                              ; preds = %98
  %107 = load %struct.mp_chmap*, %struct.mp_chmap** %5, align 8
  %108 = load %struct.mp_chmap*, %struct.mp_chmap** %6, align 8
  %109 = call i32 @mp_chmap_diffn(%struct.mp_chmap* %107, %struct.mp_chmap* %108)
  store i32 %109, i32* %16, align 4
  %110 = load %struct.mp_chmap*, %struct.mp_chmap** %5, align 8
  %111 = load %struct.mp_chmap*, %struct.mp_chmap** %7, align 8
  %112 = call i32 @mp_chmap_diffn(%struct.mp_chmap* %110, %struct.mp_chmap* %111)
  store i32 %112, i32* %17, align 4
  %113 = load i32, i32* %17, align 4
  %114 = load i32, i32* %16, align 4
  %115 = icmp ne i32 %113, %114
  br i1 %115, label %116, label %121

116:                                              ; preds = %106
  %117 = load i32, i32* %17, align 4
  %118 = load i32, i32* %16, align 4
  %119 = icmp slt i32 %117, %118
  %120 = zext i1 %119 to i32
  store i32 %120, i32* %4, align 4
  br label %143

121:                                              ; preds = %106
  %122 = getelementptr inbounds %struct.mp_chmap, %struct.mp_chmap* %13, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = getelementptr inbounds %struct.mp_chmap, %struct.mp_chmap* %12, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = icmp ne i64 %123, %125
  br i1 %126, label %127, label %134

127:                                              ; preds = %121
  %128 = getelementptr inbounds %struct.mp_chmap, %struct.mp_chmap* %13, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = getelementptr inbounds %struct.mp_chmap, %struct.mp_chmap* %12, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = icmp slt i64 %129, %131
  %133 = zext i1 %132 to i32
  store i32 %133, i32* %4, align 4
  br label %143

134:                                              ; preds = %121
  %135 = load %struct.mp_chmap*, %struct.mp_chmap** %7, align 8
  %136 = getelementptr inbounds %struct.mp_chmap, %struct.mp_chmap* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = load %struct.mp_chmap*, %struct.mp_chmap** %6, align 8
  %139 = getelementptr inbounds %struct.mp_chmap, %struct.mp_chmap* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = icmp slt i64 %137, %140
  %142 = zext i1 %141 to i32
  store i32 %142, i32* %4, align 4
  br label %143

143:                                              ; preds = %134, %127, %116, %104, %65, %54, %47, %34, %28, %22
  %144 = load i32, i32* %4, align 4
  ret i32 %144
}

declare dso_local i64 @mp_chmap_equals(%struct.mp_chmap*, %struct.mp_chmap*) #1

declare dso_local i32 @test_preferred_remix(%struct.mp_chmap*, %struct.mp_chmap*) #1

declare dso_local i32 @mp_chmap_diffn_r(%struct.mp_chmap*, %struct.mp_chmap*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @mp_chmap_remove_na(%struct.mp_chmap*) #1

declare dso_local i32 @mp_chmap_diffn(%struct.mp_chmap*, %struct.mp_chmap*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
