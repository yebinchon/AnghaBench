; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/obs-outputs/extr_flv-mux.c_flv_meta_data.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/obs-outputs/extr_flv-mux.c_flv_meta_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.array_output_data = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i64 }
%struct.serializer = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"FLV\00", align 1
@RTMP_PACKET_TYPE_INFO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @flv_meta_data(i32* %0, i8** %1, i64* %2, i32 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.array_output_data, align 8
  %13 = alloca %struct.serializer, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i8** %1, i8*** %8, align 8
  store i64* %2, i64** %9, align 8
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  store i8* null, i8** %14, align 8
  %17 = call i32 @array_output_serializer_init(%struct.serializer* %13, %struct.array_output_data* %12)
  %18 = load i32*, i32** %7, align 8
  %19 = load i64, i64* %11, align 8
  %20 = call i32 @build_flv_meta_data(i32* %18, i8** %14, i64* %15, i64 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %5
  %23 = load i8*, i8** %14, align 8
  %24 = call i32 @bfree(i8* %23)
  store i32 0, i32* %6, align 4
  br label %61

25:                                               ; preds = %5
  %26 = load i32, i32* %10, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %25
  %29 = call i32 @s_write(%struct.serializer* %13, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i64 3)
  %30 = call i32 @s_w8(%struct.serializer* %13, i32 1)
  %31 = call i32 @s_w8(%struct.serializer* %13, i32 5)
  %32 = call i32 @s_wb32(%struct.serializer* %13, i32 9)
  %33 = call i32 @s_wb32(%struct.serializer* %13, i32 0)
  br label %34

34:                                               ; preds = %28, %25
  %35 = call i32 @serializer_get_pos(%struct.serializer* %13)
  store i32 %35, i32* %16, align 4
  %36 = load i32, i32* @RTMP_PACKET_TYPE_INFO, align 4
  %37 = call i32 @s_w8(%struct.serializer* %13, i32 %36)
  %38 = load i64, i64* %15, align 8
  %39 = trunc i64 %38 to i32
  %40 = call i32 @s_wb24(%struct.serializer* %13, i32 %39)
  %41 = call i32 @s_wb32(%struct.serializer* %13, i32 0)
  %42 = call i32 @s_wb24(%struct.serializer* %13, i32 0)
  %43 = load i8*, i8** %14, align 8
  %44 = load i64, i64* %15, align 8
  %45 = call i32 @s_write(%struct.serializer* %13, i8* %43, i64 %44)
  %46 = call i32 @serializer_get_pos(%struct.serializer* %13)
  %47 = load i32, i32* %16, align 4
  %48 = sub nsw i32 %46, %47
  %49 = sub nsw i32 %48, 1
  %50 = call i32 @s_wb32(%struct.serializer* %13, i32 %49)
  %51 = getelementptr inbounds %struct.array_output_data, %struct.array_output_data* %12, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i8*, i8** %52, align 8
  %54 = load i8**, i8*** %8, align 8
  store i8* %53, i8** %54, align 8
  %55 = getelementptr inbounds %struct.array_output_data, %struct.array_output_data* %12, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load i64*, i64** %9, align 8
  store i64 %57, i64* %58, align 8
  %59 = load i8*, i8** %14, align 8
  %60 = call i32 @bfree(i8* %59)
  store i32 1, i32* %6, align 4
  br label %61

61:                                               ; preds = %34, %22
  %62 = load i32, i32* %6, align 4
  ret i32 %62
}

declare dso_local i32 @array_output_serializer_init(%struct.serializer*, %struct.array_output_data*) #1

declare dso_local i32 @build_flv_meta_data(i32*, i8**, i64*, i64) #1

declare dso_local i32 @bfree(i8*) #1

declare dso_local i32 @s_write(%struct.serializer*, i8*, i64) #1

declare dso_local i32 @s_w8(%struct.serializer*, i32) #1

declare dso_local i32 @s_wb32(%struct.serializer*, i32) #1

declare dso_local i32 @serializer_get_pos(%struct.serializer*) #1

declare dso_local i32 @s_wb24(%struct.serializer*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
