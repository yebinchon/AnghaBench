; ModuleID = '/home/carl/AnghaBench/mpv/video/out/gpu/extr_video.c_handle_scaler_opt.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/gpu/extr_video.c_handle_scaler_opt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.filter_kernel = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i8* }

@fixed_tscale_filters = common dso_local global i8** null, align 8
@fixed_scale_filters = common dso_local global i8** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i32)* @handle_scaler_opt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @handle_scaler_opt(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.filter_kernel*, align 8
  %7 = alloca i8**, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i8*, i8** %4, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %10, label %61

10:                                               ; preds = %2
  %11 = load i8*, i8** %4, align 8
  %12 = getelementptr inbounds i8, i8* %11, i64 0
  %13 = load i8, i8* %12, align 1
  %14 = sext i8 %13 to i32
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %61

16:                                               ; preds = %10
  %17 = load i8*, i8** %4, align 8
  %18 = call %struct.filter_kernel* @mp_find_filter_kernel(i8* %17)
  store %struct.filter_kernel* %18, %struct.filter_kernel** %6, align 8
  %19 = load %struct.filter_kernel*, %struct.filter_kernel** %6, align 8
  %20 = icmp ne %struct.filter_kernel* %19, null
  br i1 %20, label %21, label %34

21:                                               ; preds = %16
  %22 = load i32, i32* %5, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %21
  %25 = load %struct.filter_kernel*, %struct.filter_kernel** %6, align 8
  %26 = getelementptr inbounds %struct.filter_kernel, %struct.filter_kernel* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %24, %21
  %30 = load %struct.filter_kernel*, %struct.filter_kernel** %6, align 8
  %31 = getelementptr inbounds %struct.filter_kernel, %struct.filter_kernel* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  store i8* %33, i8** %3, align 8
  br label %62

34:                                               ; preds = %24, %16
  %35 = load i32, i32* %5, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %34
  %38 = load i8**, i8*** @fixed_tscale_filters, align 8
  br label %41

39:                                               ; preds = %34
  %40 = load i8**, i8*** @fixed_scale_filters, align 8
  br label %41

41:                                               ; preds = %39, %37
  %42 = phi i8** [ %38, %37 ], [ %40, %39 ]
  store i8** %42, i8*** %7, align 8
  br label %43

43:                                               ; preds = %57, %41
  %44 = load i8**, i8*** %7, align 8
  %45 = load i8*, i8** %44, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %47, label %60

47:                                               ; preds = %43
  %48 = load i8**, i8*** %7, align 8
  %49 = load i8*, i8** %48, align 8
  %50 = load i8*, i8** %4, align 8
  %51 = call i64 @strcmp(i8* %49, i8* %50)
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %47
  %54 = load i8**, i8*** %7, align 8
  %55 = load i8*, i8** %54, align 8
  store i8* %55, i8** %3, align 8
  br label %62

56:                                               ; preds = %47
  br label %57

57:                                               ; preds = %56
  %58 = load i8**, i8*** %7, align 8
  %59 = getelementptr inbounds i8*, i8** %58, i32 1
  store i8** %59, i8*** %7, align 8
  br label %43

60:                                               ; preds = %43
  br label %61

61:                                               ; preds = %60, %10, %2
  store i8* null, i8** %3, align 8
  br label %62

62:                                               ; preds = %61, %53, %29
  %63 = load i8*, i8** %3, align 8
  ret i8* %63
}

declare dso_local %struct.filter_kernel* @mp_find_filter_kernel(i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
