; ModuleID = '/home/carl/AnghaBench/mpv/video/decode/extr_vd_lavc.c_add_hwdec_item.c'
source_filename = "/home/carl/AnghaBench/mpv/video/decode/extr_vd_lavc.c_add_hwdec_item.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hwdec_info = type { i8*, i32, i32, %struct.TYPE_2__*, i32, i64 }
%struct.TYPE_2__ = type { i8* }

@.str = private unnamed_addr constant [6 x i8] c"-copy\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%s-%s\00", align 1
@INT_MAX = common dso_local global i32 0, align 4
@hwdec_autoprobe_order = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hwdec_info**, i32*, %struct.hwdec_info*)* @add_hwdec_item to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_hwdec_item(%struct.hwdec_info** %0, i32* %1, %struct.hwdec_info* byval(%struct.hwdec_info) align 8 %2) #0 {
  %4 = alloca %struct.hwdec_info**, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.hwdec_info** %0, %struct.hwdec_info*** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = getelementptr inbounds %struct.hwdec_info, %struct.hwdec_info* %2, i32 0, i32 5
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.hwdec_info, %struct.hwdec_info* %2, i32 0, i32 0
  %12 = load i8*, i8** %11, align 8
  %13 = call i32 @mp_snprintf_cat(i8* %12, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  br label %14

14:                                               ; preds = %10, %3
  %15 = getelementptr inbounds %struct.hwdec_info, %struct.hwdec_info* %2, i32 0, i32 4
  %16 = load i32, i32* %15, align 8
  %17 = getelementptr inbounds %struct.hwdec_info, %struct.hwdec_info* %2, i32 0, i32 3
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  %21 = getelementptr inbounds %struct.hwdec_info, %struct.hwdec_info* %2, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  %23 = call i32 @snprintf(i32 %16, i32 4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %20, i8* %22)
  %24 = load i32*, i32** %5, align 8
  %25 = load i32, i32* %24, align 4
  %26 = getelementptr inbounds %struct.hwdec_info, %struct.hwdec_info* %2, i32 0, i32 1
  store i32 %25, i32* %26, align 8
  %27 = load i32, i32* @INT_MAX, align 4
  %28 = getelementptr inbounds %struct.hwdec_info, %struct.hwdec_info* %2, i32 0, i32 2
  store i32 %27, i32* %28, align 4
  store i32 0, i32* %6, align 4
  br label %29

29:                                               ; preds = %50, %14
  %30 = load i64*, i64** @hwdec_autoprobe_order, align 8
  %31 = load i32, i32* %6, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i64, i64* %30, i64 %32
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %53

36:                                               ; preds = %29
  %37 = load i64*, i64** @hwdec_autoprobe_order, align 8
  %38 = load i32, i32* %6, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i64, i64* %37, i64 %39
  %41 = load i64, i64* %40, align 8
  %42 = getelementptr inbounds %struct.hwdec_info, %struct.hwdec_info* %2, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  %44 = call i64 @strcmp(i64 %41, i8* %43)
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %36
  %47 = load i32, i32* %6, align 4
  %48 = getelementptr inbounds %struct.hwdec_info, %struct.hwdec_info* %2, i32 0, i32 2
  store i32 %47, i32* %48, align 4
  br label %49

49:                                               ; preds = %46, %36
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %6, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %6, align 4
  br label %29

53:                                               ; preds = %29
  %54 = load %struct.hwdec_info**, %struct.hwdec_info*** %4, align 8
  %55 = load %struct.hwdec_info*, %struct.hwdec_info** %54, align 8
  %56 = load i32*, i32** %5, align 8
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @MP_TARRAY_APPEND(i32* null, %struct.hwdec_info* %55, i32 %57, %struct.hwdec_info* byval(%struct.hwdec_info) align 8 %2)
  ret void
}

declare dso_local i32 @mp_snprintf_cat(i8*, i32, i8*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*, i8*) #1

declare dso_local i64 @strcmp(i64, i8*) #1

declare dso_local i32 @MP_TARRAY_APPEND(i32*, %struct.hwdec_info*, i32, %struct.hwdec_info* byval(%struct.hwdec_info) align 8) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
