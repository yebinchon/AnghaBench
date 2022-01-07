; ModuleID = '/home/carl/AnghaBench/mpv/video/out/hwdec/extr_hwdec_cuda.c_check_cu.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/hwdec/extr_hwdec_cuda.c_check_cu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ra_hwdec = type { %struct.cuda_hw_priv* }
%struct.cuda_hw_priv = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i32, i8**)*, i32 (i32, i8**)* }

@.str = private unnamed_addr constant [12 x i8] c"Calling %s\0A\00", align 1
@CUDA_SUCCESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"%s failed\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c" -> %s: %s\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @check_cu(%struct.ra_hwdec* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ra_hwdec*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.cuda_hw_priv*, align 8
  store %struct.ra_hwdec* %0, %struct.ra_hwdec** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %11 = load %struct.ra_hwdec*, %struct.ra_hwdec** %5, align 8
  %12 = getelementptr inbounds %struct.ra_hwdec, %struct.ra_hwdec* %11, i32 0, i32 0
  %13 = load %struct.cuda_hw_priv*, %struct.cuda_hw_priv** %12, align 8
  store %struct.cuda_hw_priv* %13, %struct.cuda_hw_priv** %10, align 8
  %14 = load %struct.ra_hwdec*, %struct.ra_hwdec** %5, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = call i32 @MP_TRACE(%struct.ra_hwdec* %14, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* %15)
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @CUDA_SUCCESS, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %52

21:                                               ; preds = %3
  %22 = load %struct.cuda_hw_priv*, %struct.cuda_hw_priv** %10, align 8
  %23 = getelementptr inbounds %struct.cuda_hw_priv, %struct.cuda_hw_priv* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i32 (i32, i8**)*, i32 (i32, i8**)** %25, align 8
  %27 = load i32, i32* %6, align 4
  %28 = call i32 %26(i32 %27, i8** %8)
  %29 = load %struct.cuda_hw_priv*, %struct.cuda_hw_priv** %10, align 8
  %30 = getelementptr inbounds %struct.cuda_hw_priv, %struct.cuda_hw_priv* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32 (i32, i8**)*, i32 (i32, i8**)** %32, align 8
  %34 = load i32, i32* %6, align 4
  %35 = call i32 %33(i32 %34, i8** %9)
  %36 = load %struct.ra_hwdec*, %struct.ra_hwdec** %5, align 8
  %37 = load i8*, i8** %7, align 8
  %38 = call i32 (%struct.ra_hwdec*, i8*, ...) @MP_ERR(%struct.ra_hwdec* %36, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* %37)
  %39 = load i8*, i8** %8, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %41, label %49

41:                                               ; preds = %21
  %42 = load i8*, i8** %9, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %44, label %49

44:                                               ; preds = %41
  %45 = load %struct.ra_hwdec*, %struct.ra_hwdec** %5, align 8
  %46 = load i8*, i8** %8, align 8
  %47 = load i8*, i8** %9, align 8
  %48 = call i32 (%struct.ra_hwdec*, i8*, ...) @MP_ERR(%struct.ra_hwdec* %45, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* %46, i8* %47)
  br label %49

49:                                               ; preds = %44, %41, %21
  %50 = load %struct.ra_hwdec*, %struct.ra_hwdec** %5, align 8
  %51 = call i32 (%struct.ra_hwdec*, i8*, ...) @MP_ERR(%struct.ra_hwdec* %50, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %52

52:                                               ; preds = %49, %20
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local i32 @MP_TRACE(%struct.ra_hwdec*, i8*, i8*) #1

declare dso_local i32 @MP_ERR(%struct.ra_hwdec*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
