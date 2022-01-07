; ModuleID = '/home/carl/AnghaBench/nginx-rtmp-module/hls/extr_ngx_rtmp_mpegts.c_ngx_rtmp_mpegts_write_pts.c'
source_filename = "/home/carl/AnghaBench/nginx-rtmp-module/hls/extr_ngx_rtmp_mpegts.c_ngx_rtmp_mpegts_write_pts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8** (i8**, i32, i32)* @ngx_rtmp_mpegts_write_pts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8** @ngx_rtmp_mpegts_write_pts(i8** %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8** %0, i8*** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %5, align 4
  %9 = shl i32 %8, 4
  %10 = load i32, i32* %6, align 4
  %11 = ashr i32 %10, 30
  %12 = and i32 %11, 7
  %13 = shl i32 %12, 1
  %14 = or i32 %9, %13
  %15 = or i32 %14, 1
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = sext i32 %16 to i64
  %18 = inttoptr i64 %17 to i8*
  %19 = load i8**, i8*** %4, align 8
  %20 = getelementptr inbounds i8*, i8** %19, i32 1
  store i8** %20, i8*** %4, align 8
  store i8* %18, i8** %19, align 8
  %21 = load i32, i32* %6, align 4
  %22 = ashr i32 %21, 15
  %23 = and i32 %22, 32767
  %24 = shl i32 %23, 1
  %25 = or i32 %24, 1
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = ashr i32 %26, 8
  %28 = sext i32 %27 to i64
  %29 = inttoptr i64 %28 to i8*
  %30 = load i8**, i8*** %4, align 8
  %31 = getelementptr inbounds i8*, i8** %30, i32 1
  store i8** %31, i8*** %4, align 8
  store i8* %29, i8** %30, align 8
  %32 = load i32, i32* %7, align 4
  %33 = sext i32 %32 to i64
  %34 = inttoptr i64 %33 to i8*
  %35 = load i8**, i8*** %4, align 8
  %36 = getelementptr inbounds i8*, i8** %35, i32 1
  store i8** %36, i8*** %4, align 8
  store i8* %34, i8** %35, align 8
  %37 = load i32, i32* %6, align 4
  %38 = and i32 %37, 32767
  %39 = shl i32 %38, 1
  %40 = or i32 %39, 1
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %7, align 4
  %42 = ashr i32 %41, 8
  %43 = sext i32 %42 to i64
  %44 = inttoptr i64 %43 to i8*
  %45 = load i8**, i8*** %4, align 8
  %46 = getelementptr inbounds i8*, i8** %45, i32 1
  store i8** %46, i8*** %4, align 8
  store i8* %44, i8** %45, align 8
  %47 = load i32, i32* %7, align 4
  %48 = sext i32 %47 to i64
  %49 = inttoptr i64 %48 to i8*
  %50 = load i8**, i8*** %4, align 8
  %51 = getelementptr inbounds i8*, i8** %50, i32 1
  store i8** %51, i8*** %4, align 8
  store i8* %49, i8** %50, align 8
  %52 = load i8**, i8*** %4, align 8
  ret i8** %52
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
