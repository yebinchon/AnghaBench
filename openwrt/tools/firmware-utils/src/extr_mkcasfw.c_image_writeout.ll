; ModuleID = '/home/carl/AnghaBench/openwrt/tools/firmware-utils/src/extr_mkcasfw.c_image_writeout.c'
source_filename = "/home/carl/AnghaBench/openwrt/tools/firmware-utils/src/extr_mkcasfw.c_image_writeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.image_desc = type { i64, i64, i32, i32, i32 }
%struct.csum_state = type { i32 }

@.str = private unnamed_addr constant [38 x i8] c"writing image, file=%s, file_size=%d\0A\00", align 1
@CSUM_TYPE_32 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"padding desc, length=%zu\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @image_writeout(i32* %0, %struct.image_desc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.image_desc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.csum_state, align 4
  %8 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store %struct.image_desc* %1, %struct.image_desc** %5, align 8
  store i32 0, i32* %6, align 4
  %9 = load %struct.image_desc*, %struct.image_desc** %5, align 8
  %10 = getelementptr inbounds %struct.image_desc, %struct.image_desc* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %52

14:                                               ; preds = %2
  %15 = load %struct.image_desc*, %struct.image_desc** %5, align 8
  %16 = getelementptr inbounds %struct.image_desc, %struct.image_desc* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 8
  %18 = sext i32 %17 to i64
  %19 = load %struct.image_desc*, %struct.image_desc** %5, align 8
  %20 = getelementptr inbounds %struct.image_desc, %struct.image_desc* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = call i32 (i32, i8*, i64, ...) @DBG(i32 2, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i64 %18, i64 %21)
  %23 = load i32, i32* @CSUM_TYPE_32, align 4
  %24 = call i32 @csum_init(%struct.csum_state* %7, i32 %23)
  %25 = load i32*, i32** %4, align 8
  %26 = load %struct.image_desc*, %struct.image_desc** %5, align 8
  %27 = call i32 @image_writeout_file(i32* %25, %struct.image_desc* %26, %struct.csum_state* %7)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %14
  %31 = load i32, i32* %6, align 4
  store i32 %31, i32* %3, align 4
  br label %52

32:                                               ; preds = %14
  %33 = load %struct.image_desc*, %struct.image_desc** %5, align 8
  %34 = getelementptr inbounds %struct.image_desc, %struct.image_desc* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.image_desc*, %struct.image_desc** %5, align 8
  %37 = getelementptr inbounds %struct.image_desc, %struct.image_desc* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = sub i64 %35, %38
  store i64 %39, i64* %8, align 8
  %40 = load i64, i64* %8, align 8
  %41 = call i32 (i32, i8*, i64, ...) @DBG(i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i64 %40)
  %42 = load i32*, i32** %4, align 8
  %43 = load i64, i64* %8, align 8
  %44 = load %struct.image_desc*, %struct.image_desc** %5, align 8
  %45 = getelementptr inbounds %struct.image_desc, %struct.image_desc* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @write_out_padding(i32* %42, i64 %43, i32 %46, %struct.csum_state* %7)
  store i32 %47, i32* %6, align 4
  %48 = call i32 @csum_get(%struct.csum_state* %7)
  %49 = load %struct.image_desc*, %struct.image_desc** %5, align 8
  %50 = getelementptr inbounds %struct.image_desc, %struct.image_desc* %49, i32 0, i32 2
  store i32 %48, i32* %50, align 8
  %51 = load i32, i32* %6, align 4
  store i32 %51, i32* %3, align 4
  br label %52

52:                                               ; preds = %32, %30, %13
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local i32 @DBG(i32, i8*, i64, ...) #1

declare dso_local i32 @csum_init(%struct.csum_state*, i32) #1

declare dso_local i32 @image_writeout_file(i32*, %struct.image_desc*, %struct.csum_state*) #1

declare dso_local i32 @write_out_padding(i32*, i64, i32, %struct.csum_state*) #1

declare dso_local i32 @csum_get(%struct.csum_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
