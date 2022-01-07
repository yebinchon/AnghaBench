; ModuleID = '/home/carl/AnghaBench/mpv/demux/extr_demux_mkv.c_get_header_element.c'
source_filename = "/home/carl/AnghaBench/mpv/demux/extr_demux_mkv.c_get_header_element.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.header_elem = type { i64, i64 }
%struct.demuxer = type { %struct.mkv_demuxer* }
%struct.mkv_demuxer = type { i32, %struct.header_elem* }

@MATROSKA_ID_CLUSTER = common dso_local global i64 0, align 8
@MATROSKA_ID_SEEKHEAD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.header_elem* (%struct.demuxer*, i64, i64)* @get_header_element to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.header_elem* @get_header_element(%struct.demuxer* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.header_elem*, align 8
  %5 = alloca %struct.demuxer*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.mkv_demuxer*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.header_elem*, align 8
  %11 = alloca %struct.header_elem, align 8
  store %struct.demuxer* %0, %struct.demuxer** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load %struct.demuxer*, %struct.demuxer** %5, align 8
  %13 = getelementptr inbounds %struct.demuxer, %struct.demuxer* %12, i32 0, i32 0
  %14 = load %struct.mkv_demuxer*, %struct.mkv_demuxer** %13, align 8
  store %struct.mkv_demuxer* %14, %struct.mkv_demuxer** %8, align 8
  %15 = load i64, i64* %6, align 8
  %16 = call i32 @ebml_is_mkv_level1_id(i64 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %3
  %19 = load i64, i64* %6, align 8
  %20 = load i64, i64* @MATROSKA_ID_CLUSTER, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %18, %3
  store %struct.header_elem* null, %struct.header_elem** %4, align 8
  br label %85

23:                                               ; preds = %18
  store i32 0, i32* %9, align 4
  br label %24

24:                                               ; preds = %55, %23
  %25 = load i32, i32* %9, align 4
  %26 = load %struct.mkv_demuxer*, %struct.mkv_demuxer** %8, align 8
  %27 = getelementptr inbounds %struct.mkv_demuxer, %struct.mkv_demuxer* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp slt i32 %25, %28
  br i1 %29, label %30, label %58

30:                                               ; preds = %24
  %31 = load %struct.mkv_demuxer*, %struct.mkv_demuxer** %8, align 8
  %32 = getelementptr inbounds %struct.mkv_demuxer, %struct.mkv_demuxer* %31, i32 0, i32 1
  %33 = load %struct.header_elem*, %struct.header_elem** %32, align 8
  %34 = load i32, i32* %9, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.header_elem, %struct.header_elem* %33, i64 %35
  store %struct.header_elem* %36, %struct.header_elem** %10, align 8
  %37 = load %struct.header_elem*, %struct.header_elem** %10, align 8
  %38 = getelementptr inbounds %struct.header_elem, %struct.header_elem* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* %6, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %54

42:                                               ; preds = %30
  %43 = load i64, i64* %6, align 8
  %44 = load i64, i64* @MATROSKA_ID_SEEKHEAD, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %52, label %46

46:                                               ; preds = %42
  %47 = load %struct.header_elem*, %struct.header_elem** %10, align 8
  %48 = getelementptr inbounds %struct.header_elem, %struct.header_elem* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* %7, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %46, %42
  %53 = load %struct.header_elem*, %struct.header_elem** %10, align 8
  store %struct.header_elem* %53, %struct.header_elem** %4, align 8
  br label %85

54:                                               ; preds = %46, %30
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %9, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %9, align 4
  br label %24

58:                                               ; preds = %24
  %59 = getelementptr inbounds %struct.header_elem, %struct.header_elem* %11, i32 0, i32 0
  %60 = load i64, i64* %6, align 8
  store i64 %60, i64* %59, align 8
  %61 = getelementptr inbounds %struct.header_elem, %struct.header_elem* %11, i32 0, i32 1
  %62 = load i64, i64* %7, align 8
  store i64 %62, i64* %61, align 8
  %63 = load %struct.mkv_demuxer*, %struct.mkv_demuxer** %8, align 8
  %64 = load %struct.mkv_demuxer*, %struct.mkv_demuxer** %8, align 8
  %65 = getelementptr inbounds %struct.mkv_demuxer, %struct.mkv_demuxer* %64, i32 0, i32 1
  %66 = load %struct.header_elem*, %struct.header_elem** %65, align 8
  %67 = load %struct.mkv_demuxer*, %struct.mkv_demuxer** %8, align 8
  %68 = getelementptr inbounds %struct.mkv_demuxer, %struct.mkv_demuxer* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = bitcast %struct.header_elem* %11 to { i64, i64 }*
  %71 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %70, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = call i32 @MP_TARRAY_APPEND(%struct.mkv_demuxer* %63, %struct.header_elem* %66, i32 %69, i64 %72, i64 %74)
  %76 = load %struct.mkv_demuxer*, %struct.mkv_demuxer** %8, align 8
  %77 = getelementptr inbounds %struct.mkv_demuxer, %struct.mkv_demuxer* %76, i32 0, i32 1
  %78 = load %struct.header_elem*, %struct.header_elem** %77, align 8
  %79 = load %struct.mkv_demuxer*, %struct.mkv_demuxer** %8, align 8
  %80 = getelementptr inbounds %struct.mkv_demuxer, %struct.mkv_demuxer* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = sub nsw i32 %81, 1
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.header_elem, %struct.header_elem* %78, i64 %83
  store %struct.header_elem* %84, %struct.header_elem** %4, align 8
  br label %85

85:                                               ; preds = %58, %52, %22
  %86 = load %struct.header_elem*, %struct.header_elem** %4, align 8
  ret %struct.header_elem* %86
}

declare dso_local i32 @ebml_is_mkv_level1_id(i64) #1

declare dso_local i32 @MP_TARRAY_APPEND(%struct.mkv_demuxer*, %struct.header_elem*, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
