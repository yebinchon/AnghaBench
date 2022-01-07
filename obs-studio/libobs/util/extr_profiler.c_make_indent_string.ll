; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/util/extr_profiler.c_make_indent_string.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/util/extr_profiler.c_make_indent_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dstr = type { i64 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@VPIPE_RIGHT = common dso_local global i8* null, align 8
@VPIPE = common dso_local global i8* null, align 8
@DOWN_RIGHT = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"  \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dstr*, i32, i64)* @make_indent_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @make_indent_string(%struct.dstr* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.dstr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.dstr* %0, %struct.dstr** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %10 = load %struct.dstr*, %struct.dstr** %4, align 8
  %11 = getelementptr inbounds %struct.dstr, %struct.dstr* %10, i32 0, i32 0
  store i64 0, i64* %11, align 8
  %12 = load i32, i32* %5, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %3
  %15 = load %struct.dstr*, %struct.dstr** %4, align 8
  %16 = call i32 @dstr_cat_ch(%struct.dstr* %15, i32 0)
  br label %59

17:                                               ; preds = %3
  store i64 0, i64* %7, align 8
  br label %18

18:                                               ; preds = %56, %17
  %19 = load i64, i64* %7, align 8
  %20 = load i32, i32* %5, align 4
  %21 = zext i32 %20 to i64
  %22 = icmp ult i64 %19, %21
  br i1 %22, label %23, label %59

23:                                               ; preds = %18
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %8, align 8
  %24 = load i64, i64* %7, align 8
  %25 = add i64 %24, 1
  %26 = load i32, i32* %5, align 4
  %27 = zext i32 %26 to i64
  %28 = icmp eq i64 %25, %27
  %29 = zext i1 %28 to i32
  store i32 %29, i32* %9, align 4
  %30 = load i64, i64* %6, align 8
  %31 = load i64, i64* %7, align 8
  %32 = shl i64 1, %31
  %33 = and i64 %30, %32
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %44

35:                                               ; preds = %23
  %36 = load i32, i32* %9, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %35
  %39 = load i8*, i8** @VPIPE_RIGHT, align 8
  br label %42

40:                                               ; preds = %35
  %41 = load i8*, i8** @VPIPE, align 8
  br label %42

42:                                               ; preds = %40, %38
  %43 = phi i8* [ %39, %38 ], [ %41, %40 ]
  store i8* %43, i8** %8, align 8
  br label %52

44:                                               ; preds = %23
  %45 = load i32, i32* %9, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %44
  %48 = load i8*, i8** @DOWN_RIGHT, align 8
  br label %50

49:                                               ; preds = %44
  br label %50

50:                                               ; preds = %49, %47
  %51 = phi i8* [ %48, %47 ], [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), %49 ]
  store i8* %51, i8** %8, align 8
  br label %52

52:                                               ; preds = %50, %42
  %53 = load %struct.dstr*, %struct.dstr** %4, align 8
  %54 = load i8*, i8** %8, align 8
  %55 = call i32 @dstr_cat(%struct.dstr* %53, i8* %54)
  br label %56

56:                                               ; preds = %52
  %57 = load i64, i64* %7, align 8
  %58 = add i64 %57, 1
  store i64 %58, i64* %7, align 8
  br label %18

59:                                               ; preds = %14, %18
  ret void
}

declare dso_local i32 @dstr_cat_ch(%struct.dstr*, i32) #1

declare dso_local i32 @dstr_cat(%struct.dstr*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
