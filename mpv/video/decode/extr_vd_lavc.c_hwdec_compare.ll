; ModuleID = '/home/carl/AnghaBench/mpv/video/decode/extr_vd_lavc.c_hwdec_compare.c'
source_filename = "/home/carl/AnghaBench/mpv/video/decode/extr_vd_lavc.c_hwdec_compare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hwdec_info = type { i64, i64, i64 }

@INT_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @hwdec_compare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hwdec_compare(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.hwdec_info*, align 8
  %7 = alloca %struct.hwdec_info*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.hwdec_info*
  store %struct.hwdec_info* %9, %struct.hwdec_info** %6, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.hwdec_info*
  store %struct.hwdec_info* %11, %struct.hwdec_info** %7, align 8
  %12 = load %struct.hwdec_info*, %struct.hwdec_info** %6, align 8
  %13 = load %struct.hwdec_info*, %struct.hwdec_info** %7, align 8
  %14 = icmp eq %struct.hwdec_info* %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %81

16:                                               ; preds = %2
  %17 = load %struct.hwdec_info*, %struct.hwdec_info** %6, align 8
  %18 = getelementptr inbounds %struct.hwdec_info, %struct.hwdec_info* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @INT_MAX, align 8
  %21 = icmp eq i64 %19, %20
  %22 = zext i1 %21 to i32
  %23 = load %struct.hwdec_info*, %struct.hwdec_info** %7, align 8
  %24 = getelementptr inbounds %struct.hwdec_info, %struct.hwdec_info* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @INT_MAX, align 8
  %27 = icmp eq i64 %25, %26
  %28 = zext i1 %27 to i32
  %29 = icmp ne i32 %22, %28
  br i1 %29, label %30, label %38

30:                                               ; preds = %16
  %31 = load %struct.hwdec_info*, %struct.hwdec_info** %6, align 8
  %32 = getelementptr inbounds %struct.hwdec_info, %struct.hwdec_info* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @INT_MAX, align 8
  %35 = icmp eq i64 %33, %34
  %36 = zext i1 %35 to i64
  %37 = select i1 %35, i32 1, i32 -1
  store i32 %37, i32* %3, align 4
  br label %81

38:                                               ; preds = %16
  %39 = load %struct.hwdec_info*, %struct.hwdec_info** %6, align 8
  %40 = getelementptr inbounds %struct.hwdec_info, %struct.hwdec_info* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.hwdec_info*, %struct.hwdec_info** %7, align 8
  %43 = getelementptr inbounds %struct.hwdec_info, %struct.hwdec_info* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %41, %44
  br i1 %45, label %46, label %53

46:                                               ; preds = %38
  %47 = load %struct.hwdec_info*, %struct.hwdec_info** %6, align 8
  %48 = getelementptr inbounds %struct.hwdec_info, %struct.hwdec_info* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  %51 = zext i1 %50 to i64
  %52 = select i1 %50, i32 1, i32 -1
  store i32 %52, i32* %3, align 4
  br label %81

53:                                               ; preds = %38
  %54 = load %struct.hwdec_info*, %struct.hwdec_info** %6, align 8
  %55 = getelementptr inbounds %struct.hwdec_info, %struct.hwdec_info* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.hwdec_info*, %struct.hwdec_info** %7, align 8
  %58 = getelementptr inbounds %struct.hwdec_info, %struct.hwdec_info* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %56, %59
  br i1 %60, label %61, label %71

61:                                               ; preds = %53
  %62 = load %struct.hwdec_info*, %struct.hwdec_info** %6, align 8
  %63 = getelementptr inbounds %struct.hwdec_info, %struct.hwdec_info* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.hwdec_info*, %struct.hwdec_info** %7, align 8
  %66 = getelementptr inbounds %struct.hwdec_info, %struct.hwdec_info* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp sgt i64 %64, %67
  %69 = zext i1 %68 to i64
  %70 = select i1 %68, i32 1, i32 -1
  store i32 %70, i32* %3, align 4
  br label %81

71:                                               ; preds = %53
  %72 = load %struct.hwdec_info*, %struct.hwdec_info** %6, align 8
  %73 = getelementptr inbounds %struct.hwdec_info, %struct.hwdec_info* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.hwdec_info*, %struct.hwdec_info** %7, align 8
  %76 = getelementptr inbounds %struct.hwdec_info, %struct.hwdec_info* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = icmp sgt i64 %74, %77
  %79 = zext i1 %78 to i64
  %80 = select i1 %78, i32 1, i32 -1
  store i32 %80, i32* %3, align 4
  br label %81

81:                                               ; preds = %71, %61, %46, %30, %15
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
