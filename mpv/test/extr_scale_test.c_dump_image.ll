; ModuleID = '/home/carl/AnghaBench/mpv/test/extr_scale_test.c_dump_image.c'
source_filename = "/home/carl/AnghaBench/mpv/test/extr_scale_test.c_dump_image.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.image_writer_opts = type { i32 }
%struct.scale_test = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.mp_image = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"%s/%s.png\00", align 1
@image_writer_opts_defaults = common dso_local global %struct.image_writer_opts zeroinitializer, align 4
@AV_CODEC_ID_PNG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Failed to write '%s'.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scale_test*, i8*, %struct.mp_image*)* @dump_image to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_image(%struct.scale_test* %0, i8* %1, %struct.mp_image* %2) #0 {
  %4 = alloca %struct.scale_test*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.mp_image*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.image_writer_opts, align 4
  store %struct.scale_test* %0, %struct.scale_test** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.mp_image* %2, %struct.mp_image** %6, align 8
  %9 = load %struct.scale_test*, %struct.scale_test** %4, align 8
  %10 = getelementptr inbounds %struct.scale_test, %struct.scale_test* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = load i8*, i8** %5, align 8
  %15 = call i8* @mp_tprintf(i32 4096, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %13, i8* %14)
  store i8* %15, i8** %7, align 8
  %16 = bitcast %struct.image_writer_opts* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %16, i8* align 4 bitcast (%struct.image_writer_opts* @image_writer_opts_defaults to i8*), i64 4, i1 false)
  %17 = load i32, i32* @AV_CODEC_ID_PNG, align 4
  %18 = getelementptr inbounds %struct.image_writer_opts, %struct.image_writer_opts* %8, i32 0, i32 0
  store i32 %17, i32* %18, align 4
  %19 = load %struct.mp_image*, %struct.mp_image** %6, align 8
  %20 = load i8*, i8** %7, align 8
  %21 = load %struct.scale_test*, %struct.scale_test** %4, align 8
  %22 = getelementptr inbounds %struct.scale_test, %struct.scale_test* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.scale_test*, %struct.scale_test** %4, align 8
  %27 = getelementptr inbounds %struct.scale_test, %struct.scale_test* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @write_image(%struct.mp_image* %19, %struct.image_writer_opts* %8, i8* %20, i32 %25, i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %40, label %33

33:                                               ; preds = %3
  %34 = load %struct.scale_test*, %struct.scale_test** %4, align 8
  %35 = getelementptr inbounds %struct.scale_test, %struct.scale_test* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = load i8*, i8** %7, align 8
  %38 = call i32 @MP_FATAL(%struct.TYPE_2__* %36, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* %37)
  %39 = call i32 (...) @abort() #4
  unreachable

40:                                               ; preds = %3
  ret void
}

declare dso_local i8* @mp_tprintf(i32, i8*, i32, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @write_image(%struct.mp_image*, %struct.image_writer_opts*, i8*, i32, i32) #1

declare dso_local i32 @MP_FATAL(%struct.TYPE_2__*, i8*, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #3

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
