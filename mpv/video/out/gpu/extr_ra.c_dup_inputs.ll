; ModuleID = '/home/carl/AnghaBench/mpv/video/out/gpu/extr_ra.c_dup_inputs.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/gpu/extr_ra.c_dup_inputs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ra_renderpass_input = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ra_renderpass_input* (i8*, %struct.ra_renderpass_input*, i32)* @dup_inputs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ra_renderpass_input* @dup_inputs(i8* %0, %struct.ra_renderpass_input* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ra_renderpass_input*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ra_renderpass_input*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.ra_renderpass_input* %1, %struct.ra_renderpass_input** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i8*, i8** %4, align 8
  %10 = load %struct.ra_renderpass_input*, %struct.ra_renderpass_input** %5, align 8
  %11 = bitcast %struct.ra_renderpass_input* %10 to i8*
  %12 = load i32, i32* %6, align 4
  %13 = sext i32 %12 to i64
  %14 = mul i64 %13, 4
  %15 = trunc i64 %14 to i32
  %16 = call %struct.ra_renderpass_input* @talloc_memdup(i8* %9, i8* %11, i32 %15)
  store %struct.ra_renderpass_input* %16, %struct.ra_renderpass_input** %7, align 8
  store i32 0, i32* %8, align 4
  br label %17

17:                                               ; preds = %35, %3
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %38

21:                                               ; preds = %17
  %22 = load %struct.ra_renderpass_input*, %struct.ra_renderpass_input** %7, align 8
  %23 = load %struct.ra_renderpass_input*, %struct.ra_renderpass_input** %7, align 8
  %24 = load i32, i32* %8, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.ra_renderpass_input, %struct.ra_renderpass_input* %23, i64 %25
  %27 = getelementptr inbounds %struct.ra_renderpass_input, %struct.ra_renderpass_input* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @talloc_strdup(%struct.ra_renderpass_input* %22, i32 %28)
  %30 = load %struct.ra_renderpass_input*, %struct.ra_renderpass_input** %7, align 8
  %31 = load i32, i32* %8, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.ra_renderpass_input, %struct.ra_renderpass_input* %30, i64 %32
  %34 = getelementptr inbounds %struct.ra_renderpass_input, %struct.ra_renderpass_input* %33, i32 0, i32 0
  store i32 %29, i32* %34, align 4
  br label %35

35:                                               ; preds = %21
  %36 = load i32, i32* %8, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %8, align 4
  br label %17

38:                                               ; preds = %17
  %39 = load %struct.ra_renderpass_input*, %struct.ra_renderpass_input** %7, align 8
  ret %struct.ra_renderpass_input* %39
}

declare dso_local %struct.ra_renderpass_input* @talloc_memdup(i8*, i8*, i32) #1

declare dso_local i32 @talloc_strdup(%struct.ra_renderpass_input*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
