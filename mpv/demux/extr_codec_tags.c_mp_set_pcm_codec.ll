; ModuleID = '/home/carl/AnghaBench/mpv/demux/extr_codec_tags.c_mp_set_pcm_codec.c'
source_filename = "/home/carl/AnghaBench/mpv/demux/extr_codec_tags.c_mp_set_pcm_codec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_codec_params = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"f\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"u\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"be\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"le\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mp_set_pcm_codec(%struct.mp_codec_params* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.mp_codec_params*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [64 x i8], align 16
  store %struct.mp_codec_params* %0, %struct.mp_codec_params** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %12 = bitcast [64 x i8]* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %12, i8 0, i64 64, i1 false)
  %13 = bitcast i8* %12 to [64 x i8]*
  %14 = getelementptr inbounds [64 x i8], [64 x i8]* %13, i32 0, i32 0
  store i8 112, i8* %14, align 16
  %15 = getelementptr inbounds [64 x i8], [64 x i8]* %13, i32 0, i32 1
  store i8 99, i8* %15, align 1
  %16 = getelementptr inbounds [64 x i8], [64 x i8]* %13, i32 0, i32 2
  store i8 109, i8* %16, align 2
  %17 = getelementptr inbounds [64 x i8], [64 x i8]* %13, i32 0, i32 3
  store i8 95, i8* %17, align 1
  %18 = load i32, i32* %8, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %5
  %21 = getelementptr inbounds [64 x i8], [64 x i8]* %11, i64 0, i64 0
  %22 = call i32 (i8*, i32, i8*, ...) @mp_snprintf_cat(i8* %21, i32 64, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %30

23:                                               ; preds = %5
  %24 = getelementptr inbounds [64 x i8], [64 x i8]* %11, i64 0, i64 0
  %25 = load i32, i32* %7, align 4
  %26 = icmp ne i32 %25, 0
  %27 = zext i1 %26 to i64
  %28 = select i1 %26, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)
  %29 = call i32 (i8*, i32, i8*, ...) @mp_snprintf_cat(i8* %24, i32 64, i8* %28)
  br label %30

30:                                               ; preds = %23, %20
  %31 = getelementptr inbounds [64 x i8], [64 x i8]* %11, i64 0, i64 0
  %32 = load i32, i32* %9, align 4
  %33 = call i32 (i8*, i32, i8*, ...) @mp_snprintf_cat(i8* %31, i32 64, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %32)
  %34 = load i32, i32* %9, align 4
  %35 = icmp ne i32 %34, 8
  br i1 %35, label %36, label %43

36:                                               ; preds = %30
  %37 = getelementptr inbounds [64 x i8], [64 x i8]* %11, i64 0, i64 0
  %38 = load i32, i32* %10, align 4
  %39 = icmp ne i32 %38, 0
  %40 = zext i1 %39 to i64
  %41 = select i1 %39, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0)
  %42 = call i32 (i8*, i32, i8*, ...) @mp_snprintf_cat(i8* %37, i32 64, i8* %41)
  br label %43

43:                                               ; preds = %36, %30
  %44 = load %struct.mp_codec_params*, %struct.mp_codec_params** %6, align 8
  %45 = getelementptr inbounds [64 x i8], [64 x i8]* %11, i64 0, i64 0
  %46 = call i32 @talloc_strdup(%struct.mp_codec_params* %44, i8* %45)
  %47 = load %struct.mp_codec_params*, %struct.mp_codec_params** %6, align 8
  %48 = getelementptr inbounds %struct.mp_codec_params, %struct.mp_codec_params* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 4
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @mp_snprintf_cat(i8*, i32, i8*, ...) #2

declare dso_local i32 @talloc_strdup(%struct.mp_codec_params*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
