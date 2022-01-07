; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs-opengl/extr_gl-helpers.h_gl_error_to_str.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs-opengl/extr_gl-helpers.h_gl_error_to_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { i64, i8* }

@gl_error_to_str.err_to_str = internal constant [7 x %struct.anon] [%struct.anon { i64 134, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0) }, %struct.anon { i64 131, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0) }, %struct.anon { i64 132, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i32 0, i32 0) }, %struct.anon { i64 133, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i32 0, i32 0) }, %struct.anon { i64 130, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0) }, %struct.anon { i64 128, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i32 0, i32 0) }, %struct.anon { i64 129, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i32 0, i32 0) }], align 16
@.str = private unnamed_addr constant [16 x i8] c"GL_INVALID_ENUM\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"GL_INVALID_VALUE\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"GL_INVALID_OPERATION\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"GL_INVALID_FRAMEBUFFER_OPERATION\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"GL_OUT_OF_MEMORY\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"GL_STACK_UNDERFLOW\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"GL_STACK_OVERFLOW\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"Unknown\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i64)* @gl_error_to_str to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @gl_error_to_str(i64 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 0, i64* %4, align 8
  br label %5

5:                                                ; preds = %21, %1
  %6 = load i64, i64* %4, align 8
  %7 = icmp ult i64 %6, 7
  br i1 %7, label %8, label %24

8:                                                ; preds = %5
  %9 = load i64, i64* %4, align 8
  %10 = getelementptr inbounds [7 x %struct.anon], [7 x %struct.anon]* @gl_error_to_str.err_to_str, i64 0, i64 %9
  %11 = getelementptr inbounds %struct.anon, %struct.anon* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 16
  %13 = load i64, i64* %3, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %20

15:                                               ; preds = %8
  %16 = load i64, i64* %4, align 8
  %17 = getelementptr inbounds [7 x %struct.anon], [7 x %struct.anon]* @gl_error_to_str.err_to_str, i64 0, i64 %16
  %18 = getelementptr inbounds %struct.anon, %struct.anon* %17, i32 0, i32 1
  %19 = load i8*, i8** %18, align 8
  store i8* %19, i8** %2, align 8
  br label %25

20:                                               ; preds = %8
  br label %21

21:                                               ; preds = %20
  %22 = load i64, i64* %4, align 8
  %23 = add i64 %22, 1
  store i64 %23, i64* %4, align 8
  br label %5

24:                                               ; preds = %5
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i8** %2, align 8
  br label %25

25:                                               ; preds = %24, %15
  %26 = load i8*, i8** %2, align 8
  ret i8* %26
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
