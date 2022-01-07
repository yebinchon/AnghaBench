; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_utils.c_init_format_block_info.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_utils.c_init_format_block_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32 }
%struct.wined3d_gl_info = type { i32 }
%struct.wined3d_format = type { i32, i32, i32 }

@format_block_info = common dso_local global %struct.TYPE_3__* null, align 8
@FALSE = common dso_local global i32 0, align 4
@WINED3DFMT_FLAG_BLOCKS = common dso_local global i32 0, align 4
@WINED3DFMT_FLAG_BLOCKS_NO_VERIFY = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wined3d_gl_info*)* @init_format_block_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_format_block_info(%struct.wined3d_gl_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.wined3d_gl_info*, align 8
  %4 = alloca %struct.wined3d_format*, align 8
  %5 = alloca i32, align 4
  store %struct.wined3d_gl_info* %0, %struct.wined3d_gl_info** %3, align 8
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %63, %1
  %7 = load i32, i32* %5, align 4
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** @format_block_info, align 8
  %9 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %8)
  %10 = icmp ult i32 %7, %9
  br i1 %10, label %11, label %66

11:                                               ; preds = %6
  %12 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %3, align 8
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** @format_block_info, align 8
  %14 = load i32, i32* %5, align 4
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.wined3d_format* @get_format_internal(%struct.wined3d_gl_info* %12, i32 %18)
  store %struct.wined3d_format* %19, %struct.wined3d_format** %4, align 8
  %20 = icmp ne %struct.wined3d_format* %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %11
  %22 = load i32, i32* @FALSE, align 4
  store i32 %22, i32* %2, align 4
  br label %68

23:                                               ; preds = %11
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** @format_block_info, align 8
  %25 = load i32, i32* %5, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.wined3d_format*, %struct.wined3d_format** %4, align 8
  %31 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %30, i32 0, i32 2
  store i32 %29, i32* %31, align 4
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** @format_block_info, align 8
  %33 = load i32, i32* %5, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.wined3d_format*, %struct.wined3d_format** %4, align 8
  %39 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** @format_block_info, align 8
  %41 = load i32, i32* %5, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.wined3d_format*, %struct.wined3d_format** %4, align 8
  %47 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 4
  %48 = load %struct.wined3d_format*, %struct.wined3d_format** %4, align 8
  %49 = load i32, i32* @WINED3DFMT_FLAG_BLOCKS, align 4
  %50 = call i32 @format_set_flag(%struct.wined3d_format* %48, i32 %49)
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** @format_block_info, align 8
  %52 = load i32, i32* %5, align 4
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %62, label %58

58:                                               ; preds = %23
  %59 = load %struct.wined3d_format*, %struct.wined3d_format** %4, align 8
  %60 = load i32, i32* @WINED3DFMT_FLAG_BLOCKS_NO_VERIFY, align 4
  %61 = call i32 @format_set_flag(%struct.wined3d_format* %59, i32 %60)
  br label %62

62:                                               ; preds = %58, %23
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %5, align 4
  %65 = add i32 %64, 1
  store i32 %65, i32* %5, align 4
  br label %6

66:                                               ; preds = %6
  %67 = load i32, i32* @TRUE, align 4
  store i32 %67, i32* %2, align 4
  br label %68

68:                                               ; preds = %66, %21
  %69 = load i32, i32* %2, align 4
  ret i32 %69
}

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #1

declare dso_local %struct.wined3d_format* @get_format_internal(%struct.wined3d_gl_info*, i32) #1

declare dso_local i32 @format_set_flag(%struct.wined3d_format*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
