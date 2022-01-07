; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-avc.c_obs_parse_avc_header.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-avc.c_obs_parse_avc_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.array_output_data = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32* }
%struct.serializer = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @obs_parse_avc_header(i32** %0, i32* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.array_output_data, align 8
  %9 = alloca %struct.serializer, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store i32** %0, i32*** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32* null, i32** %10, align 8
  store i32* null, i32** %11, align 8
  store i64 0, i64* %12, align 8
  store i64 0, i64* %13, align 8
  %14 = call i32 @array_output_serializer_init(%struct.serializer* %9, %struct.array_output_data* %8)
  %15 = load i64, i64* %7, align 8
  %16 = icmp ule i64 %15, 6
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  store i64 0, i64* %4, align 8
  br label %68

18:                                               ; preds = %3
  %19 = load i32*, i32** %6, align 8
  %20 = call i32 @has_start_code(i32* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %28, label %22

22:                                               ; preds = %18
  %23 = load i32*, i32** %6, align 8
  %24 = load i64, i64* %7, align 8
  %25 = call i32* @bmemdup(i32* %23, i64 %24)
  %26 = load i32**, i32*** %5, align 8
  store i32* %25, i32** %26, align 8
  %27 = load i64, i64* %7, align 8
  store i64 %27, i64* %4, align 8
  br label %68

28:                                               ; preds = %18
  %29 = load i32*, i32** %6, align 8
  %30 = load i64, i64* %7, align 8
  %31 = call i32 @get_sps_pps(i32* %29, i64 %30, i32** %10, i64* %12, i32** %11, i64* %13)
  %32 = load i32*, i32** %10, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %40

34:                                               ; preds = %28
  %35 = load i32*, i32** %11, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %37, label %40

37:                                               ; preds = %34
  %38 = load i64, i64* %12, align 8
  %39 = icmp ult i64 %38, 4
  br i1 %39, label %40, label %41

40:                                               ; preds = %37, %34, %28
  store i64 0, i64* %4, align 8
  br label %68

41:                                               ; preds = %37
  %42 = call i32 @s_w8(%struct.serializer* %9, i32 1)
  %43 = load i32*, i32** %10, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 1
  %45 = call i32 @s_write(%struct.serializer* %9, i32* %44, i64 3)
  %46 = call i32 @s_w8(%struct.serializer* %9, i32 255)
  %47 = call i32 @s_w8(%struct.serializer* %9, i32 225)
  %48 = load i64, i64* %12, align 8
  %49 = trunc i64 %48 to i32
  %50 = call i32 @s_wb16(%struct.serializer* %9, i32 %49)
  %51 = load i32*, i32** %10, align 8
  %52 = load i64, i64* %12, align 8
  %53 = call i32 @s_write(%struct.serializer* %9, i32* %51, i64 %52)
  %54 = call i32 @s_w8(%struct.serializer* %9, i32 1)
  %55 = load i64, i64* %13, align 8
  %56 = trunc i64 %55 to i32
  %57 = call i32 @s_wb16(%struct.serializer* %9, i32 %56)
  %58 = load i32*, i32** %11, align 8
  %59 = load i64, i64* %13, align 8
  %60 = call i32 @s_write(%struct.serializer* %9, i32* %58, i64 %59)
  %61 = getelementptr inbounds %struct.array_output_data, %struct.array_output_data* %8, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  %64 = load i32**, i32*** %5, align 8
  store i32* %63, i32** %64, align 8
  %65 = getelementptr inbounds %struct.array_output_data, %struct.array_output_data* %8, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  store i64 %67, i64* %4, align 8
  br label %68

68:                                               ; preds = %41, %40, %22, %17
  %69 = load i64, i64* %4, align 8
  ret i64 %69
}

declare dso_local i32 @array_output_serializer_init(%struct.serializer*, %struct.array_output_data*) #1

declare dso_local i32 @has_start_code(i32*) #1

declare dso_local i32* @bmemdup(i32*, i64) #1

declare dso_local i32 @get_sps_pps(i32*, i64, i32**, i64*, i32**, i64*) #1

declare dso_local i32 @s_w8(%struct.serializer*, i32) #1

declare dso_local i32 @s_write(%struct.serializer*, i32*, i64) #1

declare dso_local i32 @s_wb16(%struct.serializer*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
