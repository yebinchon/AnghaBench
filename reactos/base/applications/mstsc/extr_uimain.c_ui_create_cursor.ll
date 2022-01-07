; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/mstsc/extr_uimain.c_ui_create_cursor.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/mstsc/extr_uimain.c_ui_create_cursor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @ui_create_cursor(i32 %0, i32 %1, i32 %2, i32 %3, i32* %4, i32* %5, i32 %6) #0 {
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca [128 x i8], align 16
  %19 = alloca [128 x i8], align 16
  store i32 %0, i32* %9, align 4
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32* %4, i32** %13, align 8
  store i32* %5, i32** %14, align 8
  store i32 %6, i32* %15, align 4
  %20 = load i32, i32* %11, align 4
  %21 = icmp ne i32 %20, 32
  br i1 %21, label %25, label %22

22:                                               ; preds = %7
  %23 = load i32, i32* %12, align 4
  %24 = icmp ne i32 %23, 32
  br i1 %24, label %25, label %26

25:                                               ; preds = %22, %7
  store i8* null, i8** %8, align 8
  br label %96

26:                                               ; preds = %22
  %27 = load i32, i32* %15, align 4
  %28 = icmp eq i32 %27, 1
  br i1 %28, label %29, label %40

29:                                               ; preds = %26
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* %11, align 4
  %33 = load i32, i32* %12, align 4
  %34 = load i32*, i32** %13, align 8
  %35 = bitcast i32* %34 to i8*
  %36 = load i32*, i32** %14, align 8
  %37 = bitcast i32* %36 to i8*
  %38 = call i64 @mi_create_cursor(i32 %30, i32 %31, i32 %32, i32 %33, i8* %35, i8* %37)
  %39 = inttoptr i64 %38 to i8*
  store i8* %39, i8** %8, align 8
  br label %96

40:                                               ; preds = %26
  %41 = getelementptr inbounds [128 x i8], [128 x i8]* %18, i64 0, i64 0
  %42 = call i32 @memset(i8* %41, i32 0, i32 128)
  %43 = getelementptr inbounds [128 x i8], [128 x i8]* %19, i64 0, i64 0
  %44 = call i32 @memset(i8* %43, i32 0, i32 128)
  store i32 0, i32* %16, align 4
  br label %45

45:                                               ; preds = %84, %40
  %46 = load i32, i32* %16, align 4
  %47 = icmp slt i32 %46, 32
  br i1 %47, label %48, label %87

48:                                               ; preds = %45
  store i32 0, i32* %17, align 4
  br label %49

49:                                               ; preds = %80, %48
  %50 = load i32, i32* %17, align 4
  %51 = icmp slt i32 %50, 32
  br i1 %51, label %52, label %83

52:                                               ; preds = %49
  %53 = load i32*, i32** %13, align 8
  %54 = bitcast i32* %53 to i8*
  %55 = load i32, i32* %17, align 4
  %56 = load i32, i32* %16, align 4
  %57 = call i64 @bs_is_pixel_on(i8* %54, i32 %55, i32 %56, i32 32, i32 1)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %52
  %60 = getelementptr inbounds [128 x i8], [128 x i8]* %18, i64 0, i64 0
  %61 = load i32, i32* %17, align 4
  %62 = load i32, i32* %16, align 4
  %63 = sub nsw i32 31, %62
  %64 = call i32 @bs_set_pixel_on(i8* %60, i32 %61, i32 %63, i32 32, i32 1, i32 1)
  br label %65

65:                                               ; preds = %59, %52
  %66 = load i32*, i32** %14, align 8
  %67 = bitcast i32* %66 to i8*
  %68 = load i32, i32* %17, align 4
  %69 = load i32, i32* %16, align 4
  %70 = load i32, i32* %15, align 4
  %71 = call i64 @bs_is_pixel_on(i8* %67, i32 %68, i32 %69, i32 32, i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %65
  %74 = getelementptr inbounds [128 x i8], [128 x i8]* %19, i64 0, i64 0
  %75 = load i32, i32* %17, align 4
  %76 = load i32, i32* %16, align 4
  %77 = sub nsw i32 31, %76
  %78 = call i32 @bs_set_pixel_on(i8* %74, i32 %75, i32 %77, i32 32, i32 1, i32 1)
  br label %79

79:                                               ; preds = %73, %65
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* %17, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %17, align 4
  br label %49

83:                                               ; preds = %49
  br label %84

84:                                               ; preds = %83
  %85 = load i32, i32* %16, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %16, align 4
  br label %45

87:                                               ; preds = %45
  %88 = load i32, i32* %9, align 4
  %89 = load i32, i32* %10, align 4
  %90 = load i32, i32* %11, align 4
  %91 = load i32, i32* %12, align 4
  %92 = getelementptr inbounds [128 x i8], [128 x i8]* %18, i64 0, i64 0
  %93 = getelementptr inbounds [128 x i8], [128 x i8]* %19, i64 0, i64 0
  %94 = call i64 @mi_create_cursor(i32 %88, i32 %89, i32 %90, i32 %91, i8* %92, i8* %93)
  %95 = inttoptr i64 %94 to i8*
  store i8* %95, i8** %8, align 8
  br label %96

96:                                               ; preds = %87, %29, %25
  %97 = load i8*, i8** %8, align 8
  ret i8* %97
}

declare dso_local i64 @mi_create_cursor(i32, i32, i32, i32, i8*, i8*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i64 @bs_is_pixel_on(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @bs_set_pixel_on(i8*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
