; ModuleID = '/home/carl/AnghaBench/mpv/video/extr_sws_utils.c_mp_sws_scale.c'
source_filename = "/home/carl/AnghaBench/mpv/video/extr_sws_utils.c_mp_sws_scale.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_sws_context = type { i32, i32, i64, i32, i32 }
%struct.mp_image = type { i32, i64, i32, i32 }

@.str = private unnamed_addr constant [35 x i8] c"libswscale initialization failed.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mp_sws_scale(%struct.mp_sws_context* %0, %struct.mp_image* %1, %struct.mp_image* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mp_sws_context*, align 8
  %6 = alloca %struct.mp_image*, align 8
  %7 = alloca %struct.mp_image*, align 8
  %8 = alloca i32, align 4
  store %struct.mp_sws_context* %0, %struct.mp_sws_context** %5, align 8
  store %struct.mp_image* %1, %struct.mp_image** %6, align 8
  store %struct.mp_image* %2, %struct.mp_image** %7, align 8
  %9 = load %struct.mp_image*, %struct.mp_image** %7, align 8
  %10 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.mp_sws_context*, %struct.mp_sws_context** %5, align 8
  %13 = getelementptr inbounds %struct.mp_sws_context, %struct.mp_sws_context* %12, i32 0, i32 4
  store i32 %11, i32* %13, align 4
  %14 = load %struct.mp_image*, %struct.mp_image** %6, align 8
  %15 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.mp_sws_context*, %struct.mp_sws_context** %5, align 8
  %18 = getelementptr inbounds %struct.mp_sws_context, %struct.mp_sws_context* %17, i32 0, i32 3
  store i32 %16, i32* %18, align 8
  %19 = load %struct.mp_sws_context*, %struct.mp_sws_context** %5, align 8
  %20 = call i32 @mp_sws_reinit(%struct.mp_sws_context* %19)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %3
  %24 = load %struct.mp_sws_context*, %struct.mp_sws_context** %5, align 8
  %25 = call i32 @MP_ERR(%struct.mp_sws_context* %24, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* %8, align 4
  store i32 %26, i32* %4, align 4
  br label %48

27:                                               ; preds = %3
  %28 = load %struct.mp_sws_context*, %struct.mp_sws_context** %5, align 8
  %29 = getelementptr inbounds %struct.mp_sws_context, %struct.mp_sws_context* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.mp_image*, %struct.mp_image** %7, align 8
  %32 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = inttoptr i64 %33 to i32**
  %35 = load %struct.mp_image*, %struct.mp_image** %7, align 8
  %36 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.mp_image*, %struct.mp_image** %7, align 8
  %39 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.mp_image*, %struct.mp_image** %6, align 8
  %42 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.mp_image*, %struct.mp_image** %6, align 8
  %45 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @sws_scale(i32 %30, i32** %34, i32 %37, i32 0, i32 %40, i64 %43, i32 %46)
  store i32 0, i32* %4, align 4
  br label %48

48:                                               ; preds = %27, %23
  %49 = load i32, i32* %4, align 4
  ret i32 %49
}

declare dso_local i32 @mp_sws_reinit(%struct.mp_sws_context*) #1

declare dso_local i32 @MP_ERR(%struct.mp_sws_context*, i8*) #1

declare dso_local i32 @sws_scale(i32, i32**, i32, i32, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
