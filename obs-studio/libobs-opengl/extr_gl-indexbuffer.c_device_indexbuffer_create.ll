; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs-opengl/extr_gl-indexbuffer.c_device_indexbuffer_create.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs-opengl/extr_gl-indexbuffer.c_device_indexbuffer_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gs_index_buffer = type { i32, i64, i64, i64, i32, i32, i8*, i32* }

@GS_UNSIGNED_LONG = common dso_local global i32 0, align 4
@GS_DYNAMIC = common dso_local global i32 0, align 4
@GL_UNSIGNED_INT = common dso_local global i32 0, align 4
@GL_UNSIGNED_SHORT = common dso_local global i32 0, align 4
@LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"device_indexbuffer_create (GL) failed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.gs_index_buffer* @device_indexbuffer_create(i32* %0, i32 %1, i8* %2, i64 %3, i32 %4) #0 {
  %6 = alloca %struct.gs_index_buffer*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.gs_index_buffer*, align 8
  %13 = alloca i64, align 8
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %14 = call %struct.gs_index_buffer* @bzalloc(i32 56)
  store %struct.gs_index_buffer* %14, %struct.gs_index_buffer** %12, align 8
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* @GS_UNSIGNED_LONG, align 4
  %17 = icmp eq i32 %15, %16
  %18 = zext i1 %17 to i64
  %19 = select i1 %17, i32 4, i32 2
  %20 = sext i32 %19 to i64
  store i64 %20, i64* %13, align 8
  %21 = load i32*, i32** %7, align 8
  %22 = load %struct.gs_index_buffer*, %struct.gs_index_buffer** %12, align 8
  %23 = getelementptr inbounds %struct.gs_index_buffer, %struct.gs_index_buffer* %22, i32 0, i32 7
  store i32* %21, i32** %23, align 8
  %24 = load i8*, i8** %9, align 8
  %25 = load %struct.gs_index_buffer*, %struct.gs_index_buffer** %12, align 8
  %26 = getelementptr inbounds %struct.gs_index_buffer, %struct.gs_index_buffer* %25, i32 0, i32 6
  store i8* %24, i8** %26, align 8
  %27 = load i32, i32* %11, align 4
  %28 = load i32, i32* @GS_DYNAMIC, align 4
  %29 = and i32 %27, %28
  %30 = load %struct.gs_index_buffer*, %struct.gs_index_buffer** %12, align 8
  %31 = getelementptr inbounds %struct.gs_index_buffer, %struct.gs_index_buffer* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  %32 = load i64, i64* %10, align 8
  %33 = load %struct.gs_index_buffer*, %struct.gs_index_buffer** %12, align 8
  %34 = getelementptr inbounds %struct.gs_index_buffer, %struct.gs_index_buffer* %33, i32 0, i32 1
  store i64 %32, i64* %34, align 8
  %35 = load i64, i64* %13, align 8
  %36 = load %struct.gs_index_buffer*, %struct.gs_index_buffer** %12, align 8
  %37 = getelementptr inbounds %struct.gs_index_buffer, %struct.gs_index_buffer* %36, i32 0, i32 2
  store i64 %35, i64* %37, align 8
  %38 = load i64, i64* %13, align 8
  %39 = load i64, i64* %10, align 8
  %40 = mul i64 %38, %39
  %41 = load %struct.gs_index_buffer*, %struct.gs_index_buffer** %12, align 8
  %42 = getelementptr inbounds %struct.gs_index_buffer, %struct.gs_index_buffer* %41, i32 0, i32 3
  store i64 %40, i64* %42, align 8
  %43 = load i32, i32* %8, align 4
  %44 = load %struct.gs_index_buffer*, %struct.gs_index_buffer** %12, align 8
  %45 = getelementptr inbounds %struct.gs_index_buffer, %struct.gs_index_buffer* %44, i32 0, i32 4
  store i32 %43, i32* %45, align 8
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* @GS_UNSIGNED_LONG, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %5
  %50 = load i32, i32* @GL_UNSIGNED_INT, align 4
  br label %53

51:                                               ; preds = %5
  %52 = load i32, i32* @GL_UNSIGNED_SHORT, align 4
  br label %53

53:                                               ; preds = %51, %49
  %54 = phi i32 [ %50, %49 ], [ %52, %51 ]
  %55 = load %struct.gs_index_buffer*, %struct.gs_index_buffer** %12, align 8
  %56 = getelementptr inbounds %struct.gs_index_buffer, %struct.gs_index_buffer* %55, i32 0, i32 5
  store i32 %54, i32* %56, align 4
  %57 = load %struct.gs_index_buffer*, %struct.gs_index_buffer** %12, align 8
  %58 = call i32 @init_ib(%struct.gs_index_buffer* %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %65, label %60

60:                                               ; preds = %53
  %61 = load i32, i32* @LOG_ERROR, align 4
  %62 = call i32 @blog(i32 %61, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %63 = load %struct.gs_index_buffer*, %struct.gs_index_buffer** %12, align 8
  %64 = call i32 @gs_indexbuffer_destroy(%struct.gs_index_buffer* %63)
  store %struct.gs_index_buffer* null, %struct.gs_index_buffer** %6, align 8
  br label %67

65:                                               ; preds = %53
  %66 = load %struct.gs_index_buffer*, %struct.gs_index_buffer** %12, align 8
  store %struct.gs_index_buffer* %66, %struct.gs_index_buffer** %6, align 8
  br label %67

67:                                               ; preds = %65, %60
  %68 = load %struct.gs_index_buffer*, %struct.gs_index_buffer** %6, align 8
  ret %struct.gs_index_buffer* %68
}

declare dso_local %struct.gs_index_buffer* @bzalloc(i32) #1

declare dso_local i32 @init_ib(%struct.gs_index_buffer*) #1

declare dso_local i32 @blog(i32, i8*) #1

declare dso_local i32 @gs_indexbuffer_destroy(%struct.gs_index_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
