; ModuleID = '/home/carl/AnghaBench/mpv/audio/extr_chmap_sel.c_mp_chmap_sel_add_map.c'
source_filename = "/home/carl/AnghaBench/mpv/audio/extr_chmap_sel.c_mp_chmap_sel_add_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_chmap_sel = type { i64, %struct.mp_chmap*, i32, %struct.mp_chmap* }
%struct.mp_chmap = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mp_chmap_sel_add_map(%struct.mp_chmap_sel* %0, %struct.mp_chmap* %1) #0 {
  %3 = alloca %struct.mp_chmap_sel*, align 8
  %4 = alloca %struct.mp_chmap*, align 8
  store %struct.mp_chmap_sel* %0, %struct.mp_chmap_sel** %3, align 8
  store %struct.mp_chmap* %1, %struct.mp_chmap** %4, align 8
  %5 = load %struct.mp_chmap*, %struct.mp_chmap** %4, align 8
  %6 = call i32 @mp_chmap_is_valid(%struct.mp_chmap* %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  br label %76

9:                                                ; preds = %2
  %10 = load %struct.mp_chmap_sel*, %struct.mp_chmap_sel** %3, align 8
  %11 = getelementptr inbounds %struct.mp_chmap_sel, %struct.mp_chmap_sel* %10, i32 0, i32 1
  %12 = load %struct.mp_chmap*, %struct.mp_chmap** %11, align 8
  %13 = icmp ne %struct.mp_chmap* %12, null
  br i1 %13, label %20, label %14

14:                                               ; preds = %9
  %15 = load %struct.mp_chmap_sel*, %struct.mp_chmap_sel** %3, align 8
  %16 = getelementptr inbounds %struct.mp_chmap_sel, %struct.mp_chmap_sel* %15, i32 0, i32 3
  %17 = load %struct.mp_chmap*, %struct.mp_chmap** %16, align 8
  %18 = load %struct.mp_chmap_sel*, %struct.mp_chmap_sel** %3, align 8
  %19 = getelementptr inbounds %struct.mp_chmap_sel, %struct.mp_chmap_sel* %18, i32 0, i32 1
  store %struct.mp_chmap* %17, %struct.mp_chmap** %19, align 8
  br label %20

20:                                               ; preds = %14, %9
  %21 = load %struct.mp_chmap_sel*, %struct.mp_chmap_sel** %3, align 8
  %22 = getelementptr inbounds %struct.mp_chmap_sel, %struct.mp_chmap_sel* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.mp_chmap_sel*, %struct.mp_chmap_sel** %3, align 8
  %25 = getelementptr inbounds %struct.mp_chmap_sel, %struct.mp_chmap_sel* %24, i32 0, i32 3
  %26 = load %struct.mp_chmap*, %struct.mp_chmap** %25, align 8
  %27 = call i64 @MP_ARRAY_SIZE(%struct.mp_chmap* %26)
  %28 = icmp eq i64 %23, %27
  br i1 %28, label %29, label %45

29:                                               ; preds = %20
  %30 = load %struct.mp_chmap_sel*, %struct.mp_chmap_sel** %3, align 8
  %31 = getelementptr inbounds %struct.mp_chmap_sel, %struct.mp_chmap_sel* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %29
  br label %76

35:                                               ; preds = %29
  %36 = load %struct.mp_chmap_sel*, %struct.mp_chmap_sel** %3, align 8
  %37 = getelementptr inbounds %struct.mp_chmap_sel, %struct.mp_chmap_sel* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.mp_chmap_sel*, %struct.mp_chmap_sel** %3, align 8
  %40 = getelementptr inbounds %struct.mp_chmap_sel, %struct.mp_chmap_sel* %39, i32 0, i32 1
  %41 = load %struct.mp_chmap*, %struct.mp_chmap** %40, align 8
  %42 = call %struct.mp_chmap* @talloc_memdup(i32 %38, %struct.mp_chmap* %41, i32 8)
  %43 = load %struct.mp_chmap_sel*, %struct.mp_chmap_sel** %3, align 8
  %44 = getelementptr inbounds %struct.mp_chmap_sel, %struct.mp_chmap_sel* %43, i32 0, i32 1
  store %struct.mp_chmap* %42, %struct.mp_chmap** %44, align 8
  br label %45

45:                                               ; preds = %35, %20
  %46 = load %struct.mp_chmap_sel*, %struct.mp_chmap_sel** %3, align 8
  %47 = getelementptr inbounds %struct.mp_chmap_sel, %struct.mp_chmap_sel* %46, i32 0, i32 1
  %48 = load %struct.mp_chmap*, %struct.mp_chmap** %47, align 8
  %49 = load %struct.mp_chmap_sel*, %struct.mp_chmap_sel** %3, align 8
  %50 = getelementptr inbounds %struct.mp_chmap_sel, %struct.mp_chmap_sel* %49, i32 0, i32 3
  %51 = load %struct.mp_chmap*, %struct.mp_chmap** %50, align 8
  %52 = icmp ne %struct.mp_chmap* %48, %51
  br i1 %52, label %53, label %64

53:                                               ; preds = %45
  %54 = load %struct.mp_chmap_sel*, %struct.mp_chmap_sel** %3, align 8
  %55 = getelementptr inbounds %struct.mp_chmap_sel, %struct.mp_chmap_sel* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.mp_chmap_sel*, %struct.mp_chmap_sel** %3, align 8
  %58 = getelementptr inbounds %struct.mp_chmap_sel, %struct.mp_chmap_sel* %57, i32 0, i32 1
  %59 = load %struct.mp_chmap*, %struct.mp_chmap** %58, align 8
  %60 = load %struct.mp_chmap_sel*, %struct.mp_chmap_sel** %3, align 8
  %61 = getelementptr inbounds %struct.mp_chmap_sel, %struct.mp_chmap_sel* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = call i32 @MP_TARRAY_GROW(i32 %56, %struct.mp_chmap* %59, i64 %62)
  br label %64

64:                                               ; preds = %53, %45
  %65 = load %struct.mp_chmap_sel*, %struct.mp_chmap_sel** %3, align 8
  %66 = getelementptr inbounds %struct.mp_chmap_sel, %struct.mp_chmap_sel* %65, i32 0, i32 1
  %67 = load %struct.mp_chmap*, %struct.mp_chmap** %66, align 8
  %68 = load %struct.mp_chmap_sel*, %struct.mp_chmap_sel** %3, align 8
  %69 = getelementptr inbounds %struct.mp_chmap_sel, %struct.mp_chmap_sel* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = add nsw i64 %70, 1
  store i64 %71, i64* %69, align 8
  %72 = getelementptr inbounds %struct.mp_chmap, %struct.mp_chmap* %67, i64 %70
  %73 = load %struct.mp_chmap*, %struct.mp_chmap** %4, align 8
  %74 = bitcast %struct.mp_chmap* %72 to i8*
  %75 = bitcast %struct.mp_chmap* %73 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %74, i8* align 4 %75, i64 4, i1 false)
  br label %76

76:                                               ; preds = %64, %34, %8
  ret void
}

declare dso_local i32 @mp_chmap_is_valid(%struct.mp_chmap*) #1

declare dso_local i64 @MP_ARRAY_SIZE(%struct.mp_chmap*) #1

declare dso_local %struct.mp_chmap* @talloc_memdup(i32, %struct.mp_chmap*, i32) #1

declare dso_local i32 @MP_TARRAY_GROW(i32, %struct.mp_chmap*, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
