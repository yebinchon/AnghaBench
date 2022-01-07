; ModuleID = '/home/carl/AnghaBench/mpv/video/extr_sws_utils.c_cache_valid.c'
source_filename = "/home/carl/AnghaBench/mpv/video/extr_sws_utils.c_cache_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_sws_context = type { i64, i64, i64, i64, i64, i32, i32, i32, i64, %struct.mp_sws_context* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mp_sws_context*)* @cache_valid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cache_valid(%struct.mp_sws_context* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mp_sws_context*, align 8
  %4 = alloca %struct.mp_sws_context*, align 8
  store %struct.mp_sws_context* %0, %struct.mp_sws_context** %3, align 8
  %5 = load %struct.mp_sws_context*, %struct.mp_sws_context** %3, align 8
  %6 = getelementptr inbounds %struct.mp_sws_context, %struct.mp_sws_context* %5, i32 0, i32 9
  %7 = load %struct.mp_sws_context*, %struct.mp_sws_context** %6, align 8
  store %struct.mp_sws_context* %7, %struct.mp_sws_context** %4, align 8
  %8 = load %struct.mp_sws_context*, %struct.mp_sws_context** %3, align 8
  %9 = getelementptr inbounds %struct.mp_sws_context, %struct.mp_sws_context* %8, i32 0, i32 8
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %84

13:                                               ; preds = %1
  %14 = load %struct.mp_sws_context*, %struct.mp_sws_context** %3, align 8
  %15 = getelementptr inbounds %struct.mp_sws_context, %struct.mp_sws_context* %14, i32 0, i32 7
  %16 = load %struct.mp_sws_context*, %struct.mp_sws_context** %4, align 8
  %17 = getelementptr inbounds %struct.mp_sws_context, %struct.mp_sws_context* %16, i32 0, i32 7
  %18 = call i64 @mp_image_params_equal(i32* %15, i32* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %81

20:                                               ; preds = %13
  %21 = load %struct.mp_sws_context*, %struct.mp_sws_context** %3, align 8
  %22 = getelementptr inbounds %struct.mp_sws_context, %struct.mp_sws_context* %21, i32 0, i32 6
  %23 = load %struct.mp_sws_context*, %struct.mp_sws_context** %4, align 8
  %24 = getelementptr inbounds %struct.mp_sws_context, %struct.mp_sws_context* %23, i32 0, i32 6
  %25 = call i64 @mp_image_params_equal(i32* %22, i32* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %81

27:                                               ; preds = %20
  %28 = load %struct.mp_sws_context*, %struct.mp_sws_context** %3, align 8
  %29 = getelementptr inbounds %struct.mp_sws_context, %struct.mp_sws_context* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.mp_sws_context*, %struct.mp_sws_context** %4, align 8
  %32 = getelementptr inbounds %struct.mp_sws_context, %struct.mp_sws_context* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp eq i64 %30, %33
  br i1 %34, label %35, label %81

35:                                               ; preds = %27
  %36 = load %struct.mp_sws_context*, %struct.mp_sws_context** %3, align 8
  %37 = getelementptr inbounds %struct.mp_sws_context, %struct.mp_sws_context* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.mp_sws_context*, %struct.mp_sws_context** %4, align 8
  %40 = getelementptr inbounds %struct.mp_sws_context, %struct.mp_sws_context* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp eq i64 %38, %41
  br i1 %42, label %43, label %81

43:                                               ; preds = %35
  %44 = load %struct.mp_sws_context*, %struct.mp_sws_context** %3, align 8
  %45 = getelementptr inbounds %struct.mp_sws_context, %struct.mp_sws_context* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.mp_sws_context*, %struct.mp_sws_context** %4, align 8
  %48 = getelementptr inbounds %struct.mp_sws_context, %struct.mp_sws_context* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = icmp eq i64 %46, %49
  br i1 %50, label %51, label %81

51:                                               ; preds = %43
  %52 = load %struct.mp_sws_context*, %struct.mp_sws_context** %3, align 8
  %53 = getelementptr inbounds %struct.mp_sws_context, %struct.mp_sws_context* %52, i32 0, i32 3
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.mp_sws_context*, %struct.mp_sws_context** %4, align 8
  %56 = getelementptr inbounds %struct.mp_sws_context, %struct.mp_sws_context* %55, i32 0, i32 3
  %57 = load i64, i64* %56, align 8
  %58 = icmp eq i64 %54, %57
  br i1 %58, label %59, label %81

59:                                               ; preds = %51
  %60 = load %struct.mp_sws_context*, %struct.mp_sws_context** %3, align 8
  %61 = getelementptr inbounds %struct.mp_sws_context, %struct.mp_sws_context* %60, i32 0, i32 4
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.mp_sws_context*, %struct.mp_sws_context** %4, align 8
  %64 = getelementptr inbounds %struct.mp_sws_context, %struct.mp_sws_context* %63, i32 0, i32 4
  %65 = load i64, i64* %64, align 8
  %66 = icmp eq i64 %62, %65
  br i1 %66, label %67, label %81

67:                                               ; preds = %59
  %68 = load %struct.mp_sws_context*, %struct.mp_sws_context** %3, align 8
  %69 = getelementptr inbounds %struct.mp_sws_context, %struct.mp_sws_context* %68, i32 0, i32 5
  %70 = load i32, i32* %69, align 8
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %79

72:                                               ; preds = %67
  %73 = load %struct.mp_sws_context*, %struct.mp_sws_context** %3, align 8
  %74 = getelementptr inbounds %struct.mp_sws_context, %struct.mp_sws_context* %73, i32 0, i32 5
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @m_config_cache_update(i32 %75)
  %77 = icmp ne i32 %76, 0
  %78 = xor i1 %77, true
  br label %79

79:                                               ; preds = %72, %67
  %80 = phi i1 [ true, %67 ], [ %78, %72 ]
  br label %81

81:                                               ; preds = %79, %59, %51, %43, %35, %27, %20, %13
  %82 = phi i1 [ false, %59 ], [ false, %51 ], [ false, %43 ], [ false, %35 ], [ false, %27 ], [ false, %20 ], [ false, %13 ], [ %80, %79 ]
  %83 = zext i1 %82 to i32
  store i32 %83, i32* %2, align 4
  br label %84

84:                                               ; preds = %81, %12
  %85 = load i32, i32* %2, align 4
  ret i32 %85
}

declare dso_local i64 @mp_image_params_equal(i32*, i32*) #1

declare dso_local i32 @m_config_cache_update(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
