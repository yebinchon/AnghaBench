; ModuleID = '/home/carl/AnghaBench/mpv/sub/extr_sd_lavc.c_alloc_sub.c'
source_filename = "/home/carl/AnghaBench/mpv/sub/extr_sd_lavc.c_alloc_sub.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sd_lavc_priv = type { i32, %struct.sub* }
%struct.sub = type { i32, i64, i64, i64, i64 }

@MAX_QUEUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sd_lavc_priv*)* @alloc_sub to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @alloc_sub(%struct.sd_lavc_priv* %0) #0 {
  %2 = alloca %struct.sd_lavc_priv*, align 8
  %3 = alloca %struct.sub, align 8
  %4 = alloca i32, align 4
  store %struct.sd_lavc_priv* %0, %struct.sd_lavc_priv** %2, align 8
  %5 = load %struct.sd_lavc_priv*, %struct.sd_lavc_priv** %2, align 8
  %6 = getelementptr inbounds %struct.sd_lavc_priv, %struct.sd_lavc_priv* %5, i32 0, i32 1
  %7 = load %struct.sub*, %struct.sub** %6, align 8
  %8 = load i32, i32* @MAX_QUEUE, align 4
  %9 = sub nsw i32 %8, 1
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds %struct.sub, %struct.sub* %7, i64 %10
  %12 = call i32 @clear_sub(%struct.sub* %11)
  %13 = load %struct.sd_lavc_priv*, %struct.sd_lavc_priv** %2, align 8
  %14 = getelementptr inbounds %struct.sd_lavc_priv, %struct.sd_lavc_priv* %13, i32 0, i32 1
  %15 = load %struct.sub*, %struct.sub** %14, align 8
  %16 = load i32, i32* @MAX_QUEUE, align 4
  %17 = sub nsw i32 %16, 1
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.sub, %struct.sub* %15, i64 %18
  %20 = bitcast %struct.sub* %3 to i8*
  %21 = bitcast %struct.sub* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %20, i8* align 8 %21, i64 40, i1 false)
  %22 = load i32, i32* @MAX_QUEUE, align 4
  %23 = sub nsw i32 %22, 1
  store i32 %23, i32* %4, align 4
  br label %24

24:                                               ; preds = %43, %1
  %25 = load i32, i32* %4, align 4
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %46

27:                                               ; preds = %24
  %28 = load %struct.sd_lavc_priv*, %struct.sd_lavc_priv** %2, align 8
  %29 = getelementptr inbounds %struct.sd_lavc_priv, %struct.sd_lavc_priv* %28, i32 0, i32 1
  %30 = load %struct.sub*, %struct.sub** %29, align 8
  %31 = load i32, i32* %4, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.sub, %struct.sub* %30, i64 %32
  %34 = load %struct.sd_lavc_priv*, %struct.sd_lavc_priv** %2, align 8
  %35 = getelementptr inbounds %struct.sd_lavc_priv, %struct.sd_lavc_priv* %34, i32 0, i32 1
  %36 = load %struct.sub*, %struct.sub** %35, align 8
  %37 = load i32, i32* %4, align 4
  %38 = sub nsw i32 %37, 1
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.sub, %struct.sub* %36, i64 %39
  %41 = bitcast %struct.sub* %33 to i8*
  %42 = bitcast %struct.sub* %40 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %41, i8* align 8 %42, i64 40, i1 false)
  br label %43

43:                                               ; preds = %27
  %44 = load i32, i32* %4, align 4
  %45 = add nsw i32 %44, -1
  store i32 %45, i32* %4, align 4
  br label %24

46:                                               ; preds = %24
  %47 = load %struct.sd_lavc_priv*, %struct.sd_lavc_priv** %2, align 8
  %48 = getelementptr inbounds %struct.sd_lavc_priv, %struct.sd_lavc_priv* %47, i32 0, i32 1
  %49 = load %struct.sub*, %struct.sub** %48, align 8
  %50 = getelementptr inbounds %struct.sub, %struct.sub* %49, i64 0
  %51 = bitcast %struct.sub* %50 to i8*
  %52 = bitcast %struct.sub* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %51, i8* align 8 %52, i64 40, i1 false)
  %53 = load %struct.sd_lavc_priv*, %struct.sd_lavc_priv** %2, align 8
  %54 = getelementptr inbounds %struct.sd_lavc_priv, %struct.sd_lavc_priv* %53, i32 0, i32 1
  %55 = load %struct.sub*, %struct.sub** %54, align 8
  %56 = getelementptr inbounds %struct.sub, %struct.sub* %55, i64 0
  %57 = getelementptr inbounds %struct.sub, %struct.sub* %56, i32 0, i32 0
  store i32 0, i32* %57, align 8
  %58 = load %struct.sd_lavc_priv*, %struct.sd_lavc_priv** %2, align 8
  %59 = getelementptr inbounds %struct.sd_lavc_priv, %struct.sd_lavc_priv* %58, i32 0, i32 1
  %60 = load %struct.sub*, %struct.sub** %59, align 8
  %61 = getelementptr inbounds %struct.sub, %struct.sub* %60, i64 0
  %62 = getelementptr inbounds %struct.sub, %struct.sub* %61, i32 0, i32 4
  store i64 0, i64* %62, align 8
  %63 = load %struct.sd_lavc_priv*, %struct.sd_lavc_priv** %2, align 8
  %64 = getelementptr inbounds %struct.sd_lavc_priv, %struct.sd_lavc_priv* %63, i32 0, i32 1
  %65 = load %struct.sub*, %struct.sub** %64, align 8
  %66 = getelementptr inbounds %struct.sub, %struct.sub* %65, i64 0
  %67 = getelementptr inbounds %struct.sub, %struct.sub* %66, i32 0, i32 3
  store i64 0, i64* %67, align 8
  %68 = load %struct.sd_lavc_priv*, %struct.sd_lavc_priv** %2, align 8
  %69 = getelementptr inbounds %struct.sd_lavc_priv, %struct.sd_lavc_priv* %68, i32 0, i32 1
  %70 = load %struct.sub*, %struct.sub** %69, align 8
  %71 = getelementptr inbounds %struct.sub, %struct.sub* %70, i64 0
  %72 = getelementptr inbounds %struct.sub, %struct.sub* %71, i32 0, i32 2
  store i64 0, i64* %72, align 8
  %73 = load %struct.sd_lavc_priv*, %struct.sd_lavc_priv** %2, align 8
  %74 = getelementptr inbounds %struct.sd_lavc_priv, %struct.sd_lavc_priv* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %74, align 8
  %77 = sext i32 %75 to i64
  %78 = load %struct.sd_lavc_priv*, %struct.sd_lavc_priv** %2, align 8
  %79 = getelementptr inbounds %struct.sd_lavc_priv, %struct.sd_lavc_priv* %78, i32 0, i32 1
  %80 = load %struct.sub*, %struct.sub** %79, align 8
  %81 = getelementptr inbounds %struct.sub, %struct.sub* %80, i64 0
  %82 = getelementptr inbounds %struct.sub, %struct.sub* %81, i32 0, i32 1
  store i64 %77, i64* %82, align 8
  ret void
}

declare dso_local i32 @clear_sub(%struct.sub*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
