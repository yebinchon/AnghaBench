; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_utils.c_query_format_flag.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_utils.c_query_format_flag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_gl_info = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (i32, i64, i32, i32, i64*)* }
%struct.wined3d_format = type { i32*, i32 }

@GL_FULL_SUPPORT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [42 x i8] c"Format %s supports %s, resource type %u.\0A\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"Format %s doesn't support %s, resource type %u.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_gl_info*, %struct.wined3d_format*, i64, i32, i32, i8*)* @query_format_flag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @query_format_flag(%struct.wined3d_gl_info* %0, %struct.wined3d_format* %1, i64 %2, i32 %3, i32 %4, i8* %5) #0 {
  %7 = alloca %struct.wined3d_gl_info*, align 8
  %8 = alloca %struct.wined3d_format*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.wined3d_gl_info* %0, %struct.wined3d_gl_info** %7, align 8
  store %struct.wined3d_format* %1, %struct.wined3d_format** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i8* %5, i8** %12, align 8
  store i32 0, i32* %14, align 4
  br label %15

15:                                               ; preds = %72, %6
  %16 = load i32, i32* %14, align 4
  %17 = load %struct.wined3d_format*, %struct.wined3d_format** %8, align 8
  %18 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = call i32 @ARRAY_SIZE(i32* %19)
  %21 = icmp ult i32 %16, %20
  br i1 %21, label %22, label %75

22:                                               ; preds = %15
  %23 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %7, align 8
  %24 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32 (i32, i64, i32, i32, i64*)*, i32 (i32, i64, i32, i32, i64*)** %26, align 8
  %28 = load i32, i32* %14, align 4
  %29 = call i32 @wined3d_gl_type_to_enum(i32 %28)
  %30 = load i64, i64* %9, align 8
  %31 = load i32, i32* %10, align 4
  %32 = call i32 %27(i32 %29, i64 %30, i32 %31, i32 1, i64* %13)
  %33 = load i64, i64* %13, align 8
  %34 = load i64, i64* @GL_FULL_SUPPORT, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %53

36:                                               ; preds = %22
  %37 = load %struct.wined3d_format*, %struct.wined3d_format** %8, align 8
  %38 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @debug_d3dformat(i32 %39)
  %41 = load i8*, i8** %12, align 8
  %42 = load i32, i32* %14, align 4
  %43 = call i32 @TRACE(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %40, i8* %41, i32 %42)
  %44 = load i32, i32* %11, align 4
  %45 = load %struct.wined3d_format*, %struct.wined3d_format** %8, align 8
  %46 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* %14, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = or i32 %51, %44
  store i32 %52, i32* %50, align 4
  br label %71

53:                                               ; preds = %22
  %54 = load %struct.wined3d_format*, %struct.wined3d_format** %8, align 8
  %55 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @debug_d3dformat(i32 %56)
  %58 = load i8*, i8** %12, align 8
  %59 = load i32, i32* %14, align 4
  %60 = call i32 @TRACE(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32 %57, i8* %58, i32 %59)
  %61 = load i32, i32* %11, align 4
  %62 = xor i32 %61, -1
  %63 = load %struct.wined3d_format*, %struct.wined3d_format** %8, align 8
  %64 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = load i32, i32* %14, align 4
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = and i32 %69, %62
  store i32 %70, i32* %68, align 4
  br label %71

71:                                               ; preds = %53, %36
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %14, align 4
  %74 = add i32 %73, 1
  store i32 %74, i32* %14, align 4
  br label %15

75:                                               ; preds = %15
  ret void
}

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @wined3d_gl_type_to_enum(i32) #1

declare dso_local i32 @TRACE(i8*, i32, i8*, i32) #1

declare dso_local i32 @debug_d3dformat(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
