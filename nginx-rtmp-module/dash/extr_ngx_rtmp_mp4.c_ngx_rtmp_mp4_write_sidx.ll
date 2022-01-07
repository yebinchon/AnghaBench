; ModuleID = '/home/carl/AnghaBench/nginx-rtmp-module/dash/extr_ngx_rtmp_mp4.c_ngx_rtmp_mp4_write_sidx.c'
source_filename = "/home/carl/AnghaBench/nginx-rtmp-module/dash/extr_ngx_rtmp_mp4.c_ngx_rtmp_mp4_write_sidx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"sidx\00", align 1
@NGX_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ngx_rtmp_mp4_write_sidx(i32* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* %8, align 4
  %12 = load i32, i32* %7, align 4
  %13 = sub nsw i32 %11, %12
  store i32 %13, i32* %10, align 4
  %14 = load i32*, i32** %5, align 8
  %15 = call i32* @ngx_rtmp_mp4_start_box(i32* %14, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i32* %15, i32** %9, align 8
  %16 = load i32*, i32** %5, align 8
  %17 = call i32 @ngx_rtmp_mp4_field_32(i32* %16, i32 0)
  %18 = load i32*, i32** %5, align 8
  %19 = call i32 @ngx_rtmp_mp4_field_32(i32* %18, i32 1)
  %20 = load i32*, i32** %5, align 8
  %21 = call i32 @ngx_rtmp_mp4_field_32(i32* %20, i32 1000)
  %22 = load i32*, i32** %5, align 8
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @ngx_rtmp_mp4_field_32(i32* %22, i32 %23)
  %25 = load i32*, i32** %5, align 8
  %26 = load i32, i32* %10, align 4
  %27 = call i32 @ngx_rtmp_mp4_field_32(i32* %25, i32 %26)
  %28 = load i32*, i32** %5, align 8
  %29 = call i32 @ngx_rtmp_mp4_field_16(i32* %28, i32 0)
  %30 = load i32*, i32** %5, align 8
  %31 = call i32 @ngx_rtmp_mp4_field_16(i32* %30, i32 1)
  %32 = load i32*, i32** %5, align 8
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @ngx_rtmp_mp4_field_32(i32* %32, i32 %33)
  %35 = load i32*, i32** %5, align 8
  %36 = load i32, i32* %10, align 4
  %37 = call i32 @ngx_rtmp_mp4_field_32(i32* %35, i32 %36)
  %38 = load i32*, i32** %5, align 8
  %39 = call i32 @ngx_rtmp_mp4_field_8(i32* %38, i32 144)
  %40 = load i32*, i32** %5, align 8
  %41 = call i32 @ngx_rtmp_mp4_field_24(i32* %40, i32 0)
  %42 = load i32*, i32** %5, align 8
  %43 = load i32*, i32** %9, align 8
  %44 = call i32 @ngx_rtmp_mp4_update_box_size(i32* %42, i32* %43)
  %45 = load i32, i32* @NGX_OK, align 4
  ret i32 %45
}

declare dso_local i32* @ngx_rtmp_mp4_start_box(i32*, i8*) #1

declare dso_local i32 @ngx_rtmp_mp4_field_32(i32*, i32) #1

declare dso_local i32 @ngx_rtmp_mp4_field_16(i32*, i32) #1

declare dso_local i32 @ngx_rtmp_mp4_field_8(i32*, i32) #1

declare dso_local i32 @ngx_rtmp_mp4_field_24(i32*, i32) #1

declare dso_local i32 @ngx_rtmp_mp4_update_box_size(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
