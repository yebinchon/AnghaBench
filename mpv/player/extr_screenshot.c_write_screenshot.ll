; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_screenshot.c_write_screenshot.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_screenshot.c_write_screenshot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_cmd_ctx = type { %struct.MPContext* }
%struct.MPContext = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.image_writer_opts* }
%struct.mp_image = type { i32 }
%struct.image_writer_opts = type { i32 }

@MSGL_V = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Starting screenshot: '%s'\00", align 1
@MSGL_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"Screenshot: '%s'\00", align 1
@MSGL_ERR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"Error writing screenshot!\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mp_cmd_ctx*, %struct.mp_image*, i8*, %struct.image_writer_opts*)* @write_screenshot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_screenshot(%struct.mp_cmd_ctx* %0, %struct.mp_image* %1, i8* %2, %struct.image_writer_opts* %3) #0 {
  %5 = alloca %struct.mp_cmd_ctx*, align 8
  %6 = alloca %struct.mp_image*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.image_writer_opts*, align 8
  %9 = alloca %struct.MPContext*, align 8
  %10 = alloca %struct.image_writer_opts*, align 8
  %11 = alloca %struct.image_writer_opts, align 4
  %12 = alloca i32, align 4
  store %struct.mp_cmd_ctx* %0, %struct.mp_cmd_ctx** %5, align 8
  store %struct.mp_image* %1, %struct.mp_image** %6, align 8
  store i8* %2, i8** %7, align 8
  store %struct.image_writer_opts* %3, %struct.image_writer_opts** %8, align 8
  %13 = load %struct.mp_cmd_ctx*, %struct.mp_cmd_ctx** %5, align 8
  %14 = getelementptr inbounds %struct.mp_cmd_ctx, %struct.mp_cmd_ctx* %13, i32 0, i32 0
  %15 = load %struct.MPContext*, %struct.MPContext** %14, align 8
  store %struct.MPContext* %15, %struct.MPContext** %9, align 8
  %16 = load %struct.MPContext*, %struct.MPContext** %9, align 8
  %17 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %16, i32 0, i32 2
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load %struct.image_writer_opts*, %struct.image_writer_opts** %19, align 8
  store %struct.image_writer_opts* %20, %struct.image_writer_opts** %10, align 8
  %21 = load %struct.image_writer_opts*, %struct.image_writer_opts** %8, align 8
  %22 = icmp ne %struct.image_writer_opts* %21, null
  br i1 %22, label %23, label %27

23:                                               ; preds = %4
  %24 = load %struct.image_writer_opts*, %struct.image_writer_opts** %8, align 8
  %25 = bitcast %struct.image_writer_opts* %11 to i8*
  %26 = bitcast %struct.image_writer_opts* %24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %25, i8* align 4 %26, i64 4, i1 false)
  br label %31

27:                                               ; preds = %4
  %28 = load %struct.image_writer_opts*, %struct.image_writer_opts** %10, align 8
  %29 = bitcast %struct.image_writer_opts* %11 to i8*
  %30 = bitcast %struct.image_writer_opts* %28 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %29, i8* align 4 %30, i64 4, i1 false)
  br label %31

31:                                               ; preds = %27, %23
  %32 = load %struct.mp_cmd_ctx*, %struct.mp_cmd_ctx** %5, align 8
  %33 = load i32, i32* @MSGL_V, align 4
  %34 = load i8*, i8** %7, align 8
  %35 = call i32 (%struct.mp_cmd_ctx*, i32, i8*, ...) @mp_cmd_msg(%struct.mp_cmd_ctx* %32, i32 %33, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8* %34)
  %36 = load %struct.MPContext*, %struct.MPContext** %9, align 8
  %37 = call i32 @mp_core_unlock(%struct.MPContext* %36)
  %38 = load %struct.mp_image*, %struct.mp_image** %6, align 8
  %39 = icmp ne %struct.mp_image* %38, null
  br i1 %39, label %40, label %51

40:                                               ; preds = %31
  %41 = load %struct.mp_image*, %struct.mp_image** %6, align 8
  %42 = load i8*, i8** %7, align 8
  %43 = load %struct.MPContext*, %struct.MPContext** %9, align 8
  %44 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.MPContext*, %struct.MPContext** %9, align 8
  %47 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i64 @write_image(%struct.mp_image* %41, %struct.image_writer_opts* %11, i8* %42, i32 %45, i32 %48)
  %50 = icmp ne i64 %49, 0
  br label %51

51:                                               ; preds = %40, %31
  %52 = phi i1 [ false, %31 ], [ %50, %40 ]
  %53 = zext i1 %52 to i32
  store i32 %53, i32* %12, align 4
  %54 = load %struct.MPContext*, %struct.MPContext** %9, align 8
  %55 = call i32 @mp_core_lock(%struct.MPContext* %54)
  %56 = load i32, i32* %12, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %51
  %59 = load %struct.mp_cmd_ctx*, %struct.mp_cmd_ctx** %5, align 8
  %60 = load i32, i32* @MSGL_INFO, align 4
  %61 = load i8*, i8** %7, align 8
  %62 = call i32 (%struct.mp_cmd_ctx*, i32, i8*, ...) @mp_cmd_msg(%struct.mp_cmd_ctx* %59, i32 %60, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8* %61)
  br label %67

63:                                               ; preds = %51
  %64 = load %struct.mp_cmd_ctx*, %struct.mp_cmd_ctx** %5, align 8
  %65 = load i32, i32* @MSGL_ERR, align 4
  %66 = call i32 (%struct.mp_cmd_ctx*, i32, i8*, ...) @mp_cmd_msg(%struct.mp_cmd_ctx* %64, i32 %65, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  br label %67

67:                                               ; preds = %63, %58
  %68 = load i32, i32* %12, align 4
  ret i32 %68
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @mp_cmd_msg(%struct.mp_cmd_ctx*, i32, i8*, ...) #2

declare dso_local i32 @mp_core_unlock(%struct.MPContext*) #2

declare dso_local i64 @write_image(%struct.mp_image*, %struct.image_writer_opts*, i8*, i32, i32) #2

declare dso_local i32 @mp_core_lock(%struct.MPContext*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
