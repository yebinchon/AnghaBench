; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs-opengl/extr_gl-shader.c_gs_shader_set_val.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs-opengl/extr_gl-shader.c_gs_shader_set_val.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32 }

@LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [82 x i8] c"gs_shader_set_val (GL): Size of shader param does not match the size of the input\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gs_shader_set_val(%struct.TYPE_4__* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %7, align 4
  store i64 0, i64* %8, align 8
  %12 = load i32, i32* %7, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  store i32 1, i32* %7, align 4
  br label %15

15:                                               ; preds = %14, %3
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  switch i32 %18, label %29 [
    i32 137, label %19
    i32 138, label %20
    i32 136, label %20
    i32 135, label %21
    i32 134, label %22
    i32 133, label %23
    i32 130, label %24
    i32 129, label %25
    i32 128, label %26
    i32 132, label %27
    i32 131, label %28
  ]

19:                                               ; preds = %15
  store i64 4, i64* %8, align 8
  br label %30

20:                                               ; preds = %15, %15
  store i64 4, i64* %8, align 8
  br label %30

21:                                               ; preds = %15
  store i64 8, i64* %8, align 8
  br label %30

22:                                               ; preds = %15
  store i64 12, i64* %8, align 8
  br label %30

23:                                               ; preds = %15
  store i64 16, i64* %8, align 8
  br label %30

24:                                               ; preds = %15
  store i64 8, i64* %8, align 8
  br label %30

25:                                               ; preds = %15
  store i64 12, i64* %8, align 8
  br label %30

26:                                               ; preds = %15
  store i64 16, i64* %8, align 8
  br label %30

27:                                               ; preds = %15
  store i64 64, i64* %8, align 8
  br label %30

28:                                               ; preds = %15
  store i64 8, i64* %8, align 8
  br label %30

29:                                               ; preds = %15
  store i64 0, i64* %8, align 8
  br label %30

30:                                               ; preds = %29, %28, %27, %26, %25, %24, %23, %22, %21, %20, %19
  %31 = load i32, i32* %7, align 4
  %32 = sext i32 %31 to i64
  %33 = load i64, i64* %8, align 8
  %34 = mul i64 %33, %32
  store i64 %34, i64* %8, align 8
  %35 = load i64, i64* %8, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %30
  br label %63

38:                                               ; preds = %30
  %39 = load i64, i64* %8, align 8
  %40 = load i64, i64* %6, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %38
  %43 = load i32, i32* @LOG_ERROR, align 4
  %44 = call i32 @blog(i32 %43, i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str, i64 0, i64 0))
  br label %63

45:                                               ; preds = %38
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = icmp eq i32 %48, 131
  br i1 %49, label %50, label %56

50:                                               ; preds = %45
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %52 = load i8*, i8** %5, align 8
  %53 = bitcast i8* %52 to i32**
  %54 = load i32*, i32** %53, align 8
  %55 = call i32 @gs_shader_set_texture(%struct.TYPE_4__* %51, i32* %54)
  br label %63

56:                                               ; preds = %45
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = load i8*, i8** %5, align 8
  %61 = load i64, i64* %6, align 8
  %62 = call i32 @da_copy_array(i32 %59, i8* %60, i64 %61)
  br label %63

63:                                               ; preds = %37, %42, %56, %50
  ret void
}

declare dso_local i32 @blog(i32, i8*) #1

declare dso_local i32 @gs_shader_set_texture(%struct.TYPE_4__*, i32*) #1

declare dso_local i32 @da_copy_array(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
