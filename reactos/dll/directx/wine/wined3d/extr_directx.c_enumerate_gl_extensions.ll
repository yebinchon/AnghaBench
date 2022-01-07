; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_directx.c_enumerate_gl_extensions.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_directx.c_enumerate_gl_extensions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_gl_info = type { i32*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (i32, i32*)* }
%struct.wined3d_extension_map = type { i64, i32 }

@GL_NUM_EXTENSIONS = common dso_local global i32 0, align 4
@GL_EXTENSIONS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"- %s.\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"FOUND: %s support.\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_gl_info*, %struct.wined3d_extension_map*, i32)* @enumerate_gl_extensions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @enumerate_gl_extensions(%struct.wined3d_gl_info* %0, %struct.wined3d_extension_map* %1, i32 %2) #0 {
  %4 = alloca %struct.wined3d_gl_info*, align 8
  %5 = alloca %struct.wined3d_extension_map*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.wined3d_gl_info* %0, %struct.wined3d_gl_info** %4, align 8
  store %struct.wined3d_extension_map* %1, %struct.wined3d_extension_map** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %4, align 8
  %12 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32 (i32, i32*)*, i32 (i32, i32*)** %14, align 8
  %16 = load i32, i32* @GL_NUM_EXTENSIONS, align 4
  %17 = call i32 %15(i32 %16, i32* %10)
  store i32 0, i32* %8, align 4
  br label %18

18:                                               ; preds = %69, %3
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* %10, align 4
  %21 = icmp ult i32 %19, %20
  br i1 %21, label %22, label %72

22:                                               ; preds = %18
  %23 = load i32, i32* @GL_EXTENSIONS, align 4
  %24 = load i32, i32* %8, align 4
  %25 = call i32 @glGetStringi(i32 %23, i32 %24)
  %26 = call i64 @GL_EXTCALL(i32 %25)
  %27 = inttoptr i64 %26 to i8*
  store i8* %27, i8** %7, align 8
  %28 = load i8*, i8** %7, align 8
  %29 = call i32 @debugstr_a(i8* %28)
  %30 = call i32 @TRACE(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %29)
  store i32 0, i32* %9, align 4
  br label %31

31:                                               ; preds = %65, %22
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp ult i32 %32, %33
  br i1 %34, label %35, label %68

35:                                               ; preds = %31
  %36 = load i8*, i8** %7, align 8
  %37 = load %struct.wined3d_extension_map*, %struct.wined3d_extension_map** %5, align 8
  %38 = load i32, i32* %9, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds %struct.wined3d_extension_map, %struct.wined3d_extension_map* %37, i64 %39
  %41 = getelementptr inbounds %struct.wined3d_extension_map, %struct.wined3d_extension_map* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @strcmp(i8* %36, i32 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %64, label %45

45:                                               ; preds = %35
  %46 = load %struct.wined3d_extension_map*, %struct.wined3d_extension_map** %5, align 8
  %47 = load i32, i32* %9, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds %struct.wined3d_extension_map, %struct.wined3d_extension_map* %46, i64 %48
  %50 = getelementptr inbounds %struct.wined3d_extension_map, %struct.wined3d_extension_map* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @TRACE(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %51)
  %53 = load i32, i32* @TRUE, align 4
  %54 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %4, align 8
  %55 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = load %struct.wined3d_extension_map*, %struct.wined3d_extension_map** %5, align 8
  %58 = load i32, i32* %9, align 4
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds %struct.wined3d_extension_map, %struct.wined3d_extension_map* %57, i64 %59
  %61 = getelementptr inbounds %struct.wined3d_extension_map, %struct.wined3d_extension_map* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = getelementptr inbounds i32, i32* %56, i64 %62
  store i32 %53, i32* %63, align 4
  br label %68

64:                                               ; preds = %35
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %9, align 4
  %67 = add i32 %66, 1
  store i32 %67, i32* %9, align 4
  br label %31

68:                                               ; preds = %45, %31
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* %8, align 4
  %71 = add i32 %70, 1
  store i32 %71, i32* %8, align 4
  br label %18

72:                                               ; preds = %18
  ret void
}

declare dso_local i64 @GL_EXTCALL(i32) #1

declare dso_local i32 @glGetStringi(i32, i32) #1

declare dso_local i32 @TRACE(i8*, i32) #1

declare dso_local i32 @debugstr_a(i8*) #1

declare dso_local i32 @strcmp(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
