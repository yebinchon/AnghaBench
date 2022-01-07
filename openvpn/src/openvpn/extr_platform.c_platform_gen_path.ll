; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_platform.c_platform_gen_path.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_platform.c_platform_gen_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gc_arena = type { i32 }
%struct.buffer = type { i32 }

@CC_SLASH = common dso_local global i32 0, align 4
@CC_PRINT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@OS_SPECIFIC_DIRSEP = common dso_local global i8 0, align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@CC_ASTERISK = common dso_local global i32 0, align 4
@CC_BACKSLASH = common dso_local global i32 0, align 4
@CC_COLON = common dso_local global i32 0, align 4
@CC_DOUBLE_QUOTE = common dso_local global i32 0, align 4
@CC_GREATER_THAN = common dso_local global i32 0, align 4
@CC_LESS_THAN = common dso_local global i32 0, align 4
@CC_PIPE = common dso_local global i32 0, align 4
@CC_QUESTION_MARK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @platform_gen_path(i8* %0, i8* %1, %struct.gc_arena* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.gc_arena*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.buffer, align 4
  %12 = alloca [2 x i8], align 1
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.gc_arena* %2, %struct.gc_arena** %7, align 8
  %13 = load i32, i32* @CC_SLASH, align 4
  store i32 %13, i32* %8, align 4
  %14 = load %struct.gc_arena*, %struct.gc_arena** %7, align 8
  %15 = icmp ne %struct.gc_arena* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %3
  store i8* null, i8** %4, align 8
  br label %65

17:                                               ; preds = %3
  %18 = load i8*, i8** %6, align 8
  %19 = load i32, i32* @CC_PRINT, align 4
  %20 = load i32, i32* %8, align 4
  %21 = load %struct.gc_arena*, %struct.gc_arena** %7, align 8
  %22 = call i8* @string_mod_const(i8* %18, i32 %19, i32 %20, i8 signext 95, %struct.gc_arena* %21)
  store i8* %22, i8** %9, align 8
  %23 = load i8*, i8** %9, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %64

25:                                               ; preds = %17
  %26 = load i8*, i8** %9, align 8
  %27 = call i64 @strcmp(i8* %26, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %64

29:                                               ; preds = %25
  %30 = load i8*, i8** %9, align 8
  %31 = call i64 @strcmp(i8* %30, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %64

33:                                               ; preds = %29
  %34 = load i8*, i8** %9, align 8
  %35 = call i32 @strlen(i8* %34)
  %36 = load i8*, i8** %5, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = load i8*, i8** %5, align 8
  %40 = call i32 @strlen(i8* %39)
  br label %42

41:                                               ; preds = %33
  br label %42

42:                                               ; preds = %41, %38
  %43 = phi i32 [ %40, %38 ], [ 0, %41 ]
  %44 = add nsw i32 %35, %43
  %45 = add nsw i32 %44, 16
  %46 = sext i32 %45 to i64
  store i64 %46, i64* %10, align 8
  %47 = load i64, i64* %10, align 8
  %48 = load %struct.gc_arena*, %struct.gc_arena** %7, align 8
  %49 = call i32 @alloc_buf_gc(i64 %47, %struct.gc_arena* %48)
  %50 = getelementptr inbounds %struct.buffer, %struct.buffer* %11, i32 0, i32 0
  store i32 %49, i32* %50, align 4
  %51 = load i8, i8* @OS_SPECIFIC_DIRSEP, align 1
  %52 = getelementptr inbounds [2 x i8], [2 x i8]* %12, i64 0, i64 0
  store i8 %51, i8* %52, align 1
  %53 = getelementptr inbounds [2 x i8], [2 x i8]* %12, i64 0, i64 1
  store i8 0, i8* %53, align 1
  %54 = load i8*, i8** %5, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %56, label %60

56:                                               ; preds = %42
  %57 = load i8*, i8** %5, align 8
  %58 = getelementptr inbounds [2 x i8], [2 x i8]* %12, i64 0, i64 0
  %59 = call i32 (%struct.buffer*, i8*, i8*, ...) @buf_printf(%struct.buffer* %11, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* %57, i8* %58)
  br label %60

60:                                               ; preds = %56, %42
  %61 = load i8*, i8** %9, align 8
  %62 = call i32 (%struct.buffer*, i8*, i8*, ...) @buf_printf(%struct.buffer* %11, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %61)
  %63 = call i8* @BSTR(%struct.buffer* %11)
  store i8* %63, i8** %4, align 8
  br label %65

64:                                               ; preds = %29, %25, %17
  store i8* null, i8** %4, align 8
  br label %65

65:                                               ; preds = %64, %60, %16
  %66 = load i8*, i8** %4, align 8
  ret i8* %66
}

declare dso_local i8* @string_mod_const(i8*, i32, i32, i8 signext, %struct.gc_arena*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @alloc_buf_gc(i64, %struct.gc_arena*) #1

declare dso_local i32 @buf_printf(%struct.buffer*, i8*, i8*, ...) #1

declare dso_local i8* @BSTR(%struct.buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
