; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_screenshot.c_cmd_screenshot_to_file.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_screenshot.c_cmd_screenshot_to_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_cmd_ctx = type { i32, %struct.TYPE_5__*, %struct.MPContext* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8*, i32 }
%struct.MPContext = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.image_writer_opts* }
%struct.image_writer_opts = type { i32 }
%struct.mp_image = type { i32 }

@MSGL_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Taking screenshot failed.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cmd_screenshot_to_file(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.mp_cmd_ctx*, align 8
  %4 = alloca %struct.MPContext*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.image_writer_opts, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.mp_image*, align 8
  store i8* %0, i8** %2, align 8
  %12 = load i8*, i8** %2, align 8
  %13 = bitcast i8* %12 to %struct.mp_cmd_ctx*
  store %struct.mp_cmd_ctx* %13, %struct.mp_cmd_ctx** %3, align 8
  %14 = load %struct.mp_cmd_ctx*, %struct.mp_cmd_ctx** %3, align 8
  %15 = getelementptr inbounds %struct.mp_cmd_ctx, %struct.mp_cmd_ctx* %14, i32 0, i32 2
  %16 = load %struct.MPContext*, %struct.MPContext** %15, align 8
  store %struct.MPContext* %16, %struct.MPContext** %4, align 8
  %17 = load %struct.mp_cmd_ctx*, %struct.mp_cmd_ctx** %3, align 8
  %18 = getelementptr inbounds %struct.mp_cmd_ctx, %struct.mp_cmd_ctx* %17, i32 0, i32 1
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i64 0
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  store i8* %23, i8** %5, align 8
  %24 = load %struct.mp_cmd_ctx*, %struct.mp_cmd_ctx** %3, align 8
  %25 = getelementptr inbounds %struct.mp_cmd_ctx, %struct.mp_cmd_ctx* %24, i32 0, i32 1
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i64 1
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %6, align 4
  %31 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %32 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %31, i32 0, i32 0
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load %struct.image_writer_opts*, %struct.image_writer_opts** %34, align 8
  %36 = bitcast %struct.image_writer_opts* %7 to i8*
  %37 = bitcast %struct.image_writer_opts* %35 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %36, i8* align 4 %37, i64 4, i1 false)
  %38 = load i8*, i8** %5, align 8
  %39 = call i8* @mp_splitext(i8* %38, i32* null)
  store i8* %39, i8** %8, align 8
  %40 = load i8*, i8** %8, align 8
  %41 = call i32 @image_writer_format_from_ext(i8* %40)
  store i32 %41, i32* %9, align 4
  %42 = load i32, i32* %9, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %1
  %45 = load i32, i32* %9, align 4
  %46 = getelementptr inbounds %struct.image_writer_opts, %struct.image_writer_opts* %7, i32 0, i32 0
  store i32 %45, i32* %46, align 4
  br label %47

47:                                               ; preds = %44, %1
  %48 = call i32 @image_writer_high_depth(%struct.image_writer_opts* %7)
  store i32 %48, i32* %10, align 4
  %49 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* %10, align 4
  %52 = call %struct.mp_image* @screenshot_get(%struct.MPContext* %49, i32 %50, i32 %51)
  store %struct.mp_image* %52, %struct.mp_image** %11, align 8
  %53 = load %struct.mp_image*, %struct.mp_image** %11, align 8
  %54 = icmp ne %struct.mp_image* %53, null
  br i1 %54, label %61, label %55

55:                                               ; preds = %47
  %56 = load %struct.mp_cmd_ctx*, %struct.mp_cmd_ctx** %3, align 8
  %57 = load i32, i32* @MSGL_ERR, align 4
  %58 = call i32 @mp_cmd_msg(%struct.mp_cmd_ctx* %56, i32 %57, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %59 = load %struct.mp_cmd_ctx*, %struct.mp_cmd_ctx** %3, align 8
  %60 = getelementptr inbounds %struct.mp_cmd_ctx, %struct.mp_cmd_ctx* %59, i32 0, i32 0
  store i32 0, i32* %60, align 8
  br label %70

61:                                               ; preds = %47
  %62 = load %struct.mp_cmd_ctx*, %struct.mp_cmd_ctx** %3, align 8
  %63 = load %struct.mp_image*, %struct.mp_image** %11, align 8
  %64 = load i8*, i8** %5, align 8
  %65 = call i32 @write_screenshot(%struct.mp_cmd_ctx* %62, %struct.mp_image* %63, i8* %64, %struct.image_writer_opts* %7)
  %66 = load %struct.mp_cmd_ctx*, %struct.mp_cmd_ctx** %3, align 8
  %67 = getelementptr inbounds %struct.mp_cmd_ctx, %struct.mp_cmd_ctx* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 8
  %68 = load %struct.mp_image*, %struct.mp_image** %11, align 8
  %69 = call i32 @talloc_free(%struct.mp_image* %68)
  br label %70

70:                                               ; preds = %61, %55
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i8* @mp_splitext(i8*, i32*) #2

declare dso_local i32 @image_writer_format_from_ext(i8*) #2

declare dso_local i32 @image_writer_high_depth(%struct.image_writer_opts*) #2

declare dso_local %struct.mp_image* @screenshot_get(%struct.MPContext*, i32, i32) #2

declare dso_local i32 @mp_cmd_msg(%struct.mp_cmd_ctx*, i32, i8*) #2

declare dso_local i32 @write_screenshot(%struct.mp_cmd_ctx*, %struct.mp_image*, i8*, %struct.image_writer_opts*) #2

declare dso_local i32 @talloc_free(%struct.mp_image*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
