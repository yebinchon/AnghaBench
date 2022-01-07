; ModuleID = '/home/carl/AnghaBench/mpv/video/out/gpu/extr_ra.c_ra_renderpass_params_copy.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/gpu/extr_ra.c_ra_renderpass_params_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ra_renderpass_params = type { i8*, i8*, i8*, i32, i32, i8*, i32, i8* }

@res = common dso_local global %struct.ra_renderpass_params* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ra_renderpass_params* @ra_renderpass_params_copy(i8* %0, %struct.ra_renderpass_params* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.ra_renderpass_params*, align 8
  %5 = alloca %struct.ra_renderpass_params*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.ra_renderpass_params* %1, %struct.ra_renderpass_params** %4, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = load %struct.ra_renderpass_params*, %struct.ra_renderpass_params** %5, align 8
  %8 = ptrtoint %struct.ra_renderpass_params* %7 to i32
  %9 = call %struct.ra_renderpass_params* @talloc_ptrtype(i8* %6, i32 %8)
  store %struct.ra_renderpass_params* %9, %struct.ra_renderpass_params** %5, align 8
  %10 = load %struct.ra_renderpass_params*, %struct.ra_renderpass_params** %5, align 8
  %11 = load %struct.ra_renderpass_params*, %struct.ra_renderpass_params** %4, align 8
  %12 = bitcast %struct.ra_renderpass_params* %10 to i8*
  %13 = bitcast %struct.ra_renderpass_params* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %12, i8* align 8 %13, i64 56, i1 false)
  %14 = load %struct.ra_renderpass_params*, %struct.ra_renderpass_params** %5, align 8
  %15 = load %struct.ra_renderpass_params*, %struct.ra_renderpass_params** %5, align 8
  %16 = getelementptr inbounds %struct.ra_renderpass_params, %struct.ra_renderpass_params* %15, i32 0, i32 7
  %17 = load i8*, i8** %16, align 8
  %18 = load %struct.ra_renderpass_params*, %struct.ra_renderpass_params** %5, align 8
  %19 = getelementptr inbounds %struct.ra_renderpass_params, %struct.ra_renderpass_params* %18, i32 0, i32 6
  %20 = load i32, i32* %19, align 8
  %21 = call i8* @dup_inputs(%struct.ra_renderpass_params* %14, i8* %17, i32 %20)
  %22 = load %struct.ra_renderpass_params*, %struct.ra_renderpass_params** %5, align 8
  %23 = getelementptr inbounds %struct.ra_renderpass_params, %struct.ra_renderpass_params* %22, i32 0, i32 7
  store i8* %21, i8** %23, align 8
  %24 = load %struct.ra_renderpass_params*, %struct.ra_renderpass_params** %5, align 8
  %25 = load %struct.ra_renderpass_params*, %struct.ra_renderpass_params** %5, align 8
  %26 = getelementptr inbounds %struct.ra_renderpass_params, %struct.ra_renderpass_params* %25, i32 0, i32 5
  %27 = load i8*, i8** %26, align 8
  %28 = load %struct.ra_renderpass_params*, %struct.ra_renderpass_params** %5, align 8
  %29 = getelementptr inbounds %struct.ra_renderpass_params, %struct.ra_renderpass_params* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 4
  %31 = call i8* @dup_inputs(%struct.ra_renderpass_params* %24, i8* %27, i32 %30)
  %32 = load %struct.ra_renderpass_params*, %struct.ra_renderpass_params** %5, align 8
  %33 = getelementptr inbounds %struct.ra_renderpass_params, %struct.ra_renderpass_params* %32, i32 0, i32 5
  store i8* %31, i8** %33, align 8
  %34 = load %struct.ra_renderpass_params*, %struct.ra_renderpass_params** %5, align 8
  %35 = load %struct.ra_renderpass_params*, %struct.ra_renderpass_params** %5, align 8
  %36 = getelementptr inbounds %struct.ra_renderpass_params, %struct.ra_renderpass_params* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @bstrdup(%struct.ra_renderpass_params* %34, i32 %37)
  %39 = load %struct.ra_renderpass_params*, %struct.ra_renderpass_params** %5, align 8
  %40 = getelementptr inbounds %struct.ra_renderpass_params, %struct.ra_renderpass_params* %39, i32 0, i32 3
  store i32 %38, i32* %40, align 8
  %41 = load %struct.ra_renderpass_params*, %struct.ra_renderpass_params** %5, align 8
  %42 = load %struct.ra_renderpass_params*, %struct.ra_renderpass_params** %5, align 8
  %43 = getelementptr inbounds %struct.ra_renderpass_params, %struct.ra_renderpass_params* %42, i32 0, i32 2
  %44 = load i8*, i8** %43, align 8
  %45 = call i8* @talloc_strdup(%struct.ra_renderpass_params* %41, i8* %44)
  %46 = load %struct.ra_renderpass_params*, %struct.ra_renderpass_params** %5, align 8
  %47 = getelementptr inbounds %struct.ra_renderpass_params, %struct.ra_renderpass_params* %46, i32 0, i32 2
  store i8* %45, i8** %47, align 8
  %48 = load %struct.ra_renderpass_params*, %struct.ra_renderpass_params** %5, align 8
  %49 = load %struct.ra_renderpass_params*, %struct.ra_renderpass_params** %5, align 8
  %50 = getelementptr inbounds %struct.ra_renderpass_params, %struct.ra_renderpass_params* %49, i32 0, i32 1
  %51 = load i8*, i8** %50, align 8
  %52 = call i8* @talloc_strdup(%struct.ra_renderpass_params* %48, i8* %51)
  %53 = load %struct.ra_renderpass_params*, %struct.ra_renderpass_params** %5, align 8
  %54 = getelementptr inbounds %struct.ra_renderpass_params, %struct.ra_renderpass_params* %53, i32 0, i32 1
  store i8* %52, i8** %54, align 8
  %55 = load %struct.ra_renderpass_params*, %struct.ra_renderpass_params** %5, align 8
  %56 = load %struct.ra_renderpass_params*, %struct.ra_renderpass_params** %5, align 8
  %57 = getelementptr inbounds %struct.ra_renderpass_params, %struct.ra_renderpass_params* %56, i32 0, i32 0
  %58 = load i8*, i8** %57, align 8
  %59 = call i8* @talloc_strdup(%struct.ra_renderpass_params* %55, i8* %58)
  %60 = load %struct.ra_renderpass_params*, %struct.ra_renderpass_params** %5, align 8
  %61 = getelementptr inbounds %struct.ra_renderpass_params, %struct.ra_renderpass_params* %60, i32 0, i32 0
  store i8* %59, i8** %61, align 8
  %62 = load %struct.ra_renderpass_params*, %struct.ra_renderpass_params** %5, align 8
  ret %struct.ra_renderpass_params* %62
}

declare dso_local %struct.ra_renderpass_params* @talloc_ptrtype(i8*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i8* @dup_inputs(%struct.ra_renderpass_params*, i8*, i32) #1

declare dso_local i32 @bstrdup(%struct.ra_renderpass_params*, i32) #1

declare dso_local i8* @talloc_strdup(%struct.ra_renderpass_params*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
