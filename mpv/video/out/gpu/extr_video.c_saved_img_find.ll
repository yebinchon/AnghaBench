; ModuleID = '/home/carl/AnghaBench/mpv/video/out/gpu/extr_video.c_saved_img_find.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/gpu/extr_video.c_saved_img_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gl_video = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.image, i32 }
%struct.image = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gl_video*, i8*, %struct.image*)* @saved_img_find to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @saved_img_find(%struct.gl_video* %0, i8* %1, %struct.image* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.gl_video*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.image*, align 8
  %8 = alloca i32, align 4
  store %struct.gl_video* %0, %struct.gl_video** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.image* %2, %struct.image** %7, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %3
  %12 = load %struct.image*, %struct.image** %7, align 8
  %13 = icmp ne %struct.image* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %11, %3
  store i32 0, i32* %4, align 4
  br label %50

15:                                               ; preds = %11
  store i32 0, i32* %8, align 4
  br label %16

16:                                               ; preds = %46, %15
  %17 = load i32, i32* %8, align 4
  %18 = load %struct.gl_video*, %struct.gl_video** %5, align 8
  %19 = getelementptr inbounds %struct.gl_video, %struct.gl_video* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp slt i32 %17, %20
  br i1 %21, label %22, label %49

22:                                               ; preds = %16
  %23 = load %struct.gl_video*, %struct.gl_video** %5, align 8
  %24 = getelementptr inbounds %struct.gl_video, %struct.gl_video* %23, i32 0, i32 1
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = load i32, i32* %8, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i8*, i8** %6, align 8
  %32 = call i64 @strcmp(i32 %30, i8* %31)
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %45

34:                                               ; preds = %22
  %35 = load %struct.image*, %struct.image** %7, align 8
  %36 = load %struct.gl_video*, %struct.gl_video** %5, align 8
  %37 = getelementptr inbounds %struct.gl_video, %struct.gl_video* %36, i32 0, i32 1
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = load i32, i32* %8, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = bitcast %struct.image* %35 to i8*
  %44 = bitcast %struct.image* %42 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %43, i8* align 4 %44, i64 4, i1 false)
  store i32 1, i32* %4, align 4
  br label %50

45:                                               ; preds = %22
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %8, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %8, align 4
  br label %16

49:                                               ; preds = %16
  store i32 0, i32* %4, align 4
  br label %50

50:                                               ; preds = %49, %34, %14
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

declare dso_local i64 @strcmp(i32, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
