; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_options.c_options_warning_safe_ml.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_options.c_options_warning_safe_ml.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gc_arena = type { i32 }
%struct.buffer = type { i32 }

@OPTION_PARM_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [11 x i8] c"version %s\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"local\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"remote\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*, i8*, i64)* @options_warning_safe_ml to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @options_warning_safe_ml(i32 %0, i8* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.gc_arena, align 4
  %10 = alloca %struct.buffer, align 4
  %11 = alloca %struct.buffer, align 4
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %12 = call i32 (...) @gc_new()
  %13 = getelementptr inbounds %struct.gc_arena, %struct.gc_arena* %9, i32 0, i32 0
  store i32 %12, i32* %13, align 4
  %14 = load i64, i64* %8, align 8
  %15 = icmp ugt i64 %14, 0
  br i1 %15, label %16, label %37

16:                                               ; preds = %4
  %17 = load i64, i64* @OPTION_PARM_SIZE, align 8
  %18 = add nsw i64 %17, 16
  %19 = call i32 @alloc_buf_gc(i64 %18, %struct.gc_arena* %9)
  %20 = getelementptr inbounds %struct.buffer, %struct.buffer* %10, i32 0, i32 0
  store i32 %19, i32* %20, align 4
  %21 = load i64, i64* @OPTION_PARM_SIZE, align 8
  %22 = add nsw i64 %21, 16
  %23 = call i32 @alloc_buf_gc(i64 %22, %struct.gc_arena* %9)
  %24 = getelementptr inbounds %struct.buffer, %struct.buffer* %11, i32 0, i32 0
  store i32 %23, i32* %24, align 4
  %25 = load i8*, i8** %6, align 8
  %26 = load i64, i64* %8, align 8
  %27 = sub i64 %26, 1
  %28 = getelementptr inbounds i8, i8* %25, i64 %27
  store i8 0, i8* %28, align 1
  %29 = load i8*, i8** %7, align 8
  %30 = call i32 @buf_printf(%struct.buffer* %10, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* %29)
  %31 = load i8*, i8** %6, align 8
  %32 = call i32 @buf_printf(%struct.buffer* %11, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* %31)
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @options_warning_safe_scan1(i32 %33, i8 signext 44, i32 1, %struct.buffer* %10, %struct.buffer* %11, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @options_warning_safe_scan1(i32 %35, i8 signext 44, i32 0, %struct.buffer* %11, %struct.buffer* %10, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  br label %37

37:                                               ; preds = %16, %4
  %38 = call i32 @gc_free(%struct.gc_arena* %9)
  ret void
}

declare dso_local i32 @gc_new(...) #1

declare dso_local i32 @alloc_buf_gc(i64, %struct.gc_arena*) #1

declare dso_local i32 @buf_printf(%struct.buffer*, i8*, i8*) #1

declare dso_local i32 @options_warning_safe_scan1(i32, i8 signext, i32, %struct.buffer*, %struct.buffer*, i8*, i8*) #1

declare dso_local i32 @gc_free(%struct.gc_arena*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
