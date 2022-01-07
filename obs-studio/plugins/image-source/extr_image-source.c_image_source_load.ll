; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/image-source/extr_image-source.c_image_source_load.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/image-source/extr_image-source.c_image_source_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.image_source = type { i8*, %struct.TYPE_6__, i64, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"loading texture '%s'\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"failed to load texture '%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.image_source*)* @image_source_load to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @image_source_load(%struct.image_source* %0) #0 {
  %2 = alloca %struct.image_source*, align 8
  %3 = alloca i8*, align 8
  store %struct.image_source* %0, %struct.image_source** %2, align 8
  %4 = load %struct.image_source*, %struct.image_source** %2, align 8
  %5 = getelementptr inbounds %struct.image_source, %struct.image_source* %4, i32 0, i32 0
  %6 = load i8*, i8** %5, align 8
  store i8* %6, i8** %3, align 8
  %7 = call i32 (...) @obs_enter_graphics()
  %8 = load %struct.image_source*, %struct.image_source** %2, align 8
  %9 = getelementptr inbounds %struct.image_source, %struct.image_source* %8, i32 0, i32 1
  %10 = call i32 @gs_image_file2_free(%struct.TYPE_6__* %9)
  %11 = call i32 (...) @obs_leave_graphics()
  %12 = load i8*, i8** %3, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %14, label %47

14:                                               ; preds = %1
  %15 = load i8*, i8** %3, align 8
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %47

19:                                               ; preds = %14
  %20 = load i8*, i8** %3, align 8
  %21 = call i32 @debug(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* %20)
  %22 = load i8*, i8** %3, align 8
  %23 = call i32 @get_modified_timestamp(i8* %22)
  %24 = load %struct.image_source*, %struct.image_source** %2, align 8
  %25 = getelementptr inbounds %struct.image_source, %struct.image_source* %24, i32 0, i32 3
  store i32 %23, i32* %25, align 8
  %26 = load %struct.image_source*, %struct.image_source** %2, align 8
  %27 = getelementptr inbounds %struct.image_source, %struct.image_source* %26, i32 0, i32 1
  %28 = load i8*, i8** %3, align 8
  %29 = call i32 @gs_image_file2_init(%struct.TYPE_6__* %27, i8* %28)
  %30 = load %struct.image_source*, %struct.image_source** %2, align 8
  %31 = getelementptr inbounds %struct.image_source, %struct.image_source* %30, i32 0, i32 2
  store i64 0, i64* %31, align 8
  %32 = call i32 (...) @obs_enter_graphics()
  %33 = load %struct.image_source*, %struct.image_source** %2, align 8
  %34 = getelementptr inbounds %struct.image_source, %struct.image_source* %33, i32 0, i32 1
  %35 = call i32 @gs_image_file2_init_texture(%struct.TYPE_6__* %34)
  %36 = call i32 (...) @obs_leave_graphics()
  %37 = load %struct.image_source*, %struct.image_source** %2, align 8
  %38 = getelementptr inbounds %struct.image_source, %struct.image_source* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %19
  %44 = load i8*, i8** %3, align 8
  %45 = call i32 @warn(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i8* %44)
  br label %46

46:                                               ; preds = %43, %19
  br label %47

47:                                               ; preds = %46, %14, %1
  ret void
}

declare dso_local i32 @obs_enter_graphics(...) #1

declare dso_local i32 @gs_image_file2_free(%struct.TYPE_6__*) #1

declare dso_local i32 @obs_leave_graphics(...) #1

declare dso_local i32 @debug(i8*, i8*) #1

declare dso_local i32 @get_modified_timestamp(i8*) #1

declare dso_local i32 @gs_image_file2_init(%struct.TYPE_6__*, i8*) #1

declare dso_local i32 @gs_image_file2_init_texture(%struct.TYPE_6__*) #1

declare dso_local i32 @warn(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
