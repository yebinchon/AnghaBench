; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_error.c_msg_flags_string.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_error.c_msg_flags_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gc_arena = type { i32 }
%struct.buffer = type { i32 }

@M_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"I\00", align 1
@M_FATAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"F\00", align 1
@M_NONFATAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c"N\00", align 1
@M_WARN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [2 x i8] c"W\00", align 1
@M_DEBUG = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [2 x i8] c"D\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @msg_flags_string(i32 %0, %struct.gc_arena* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gc_arena*, align 8
  %5 = alloca %struct.buffer, align 4
  store i32 %0, i32* %3, align 4
  store %struct.gc_arena* %1, %struct.gc_arena** %4, align 8
  %6 = load %struct.gc_arena*, %struct.gc_arena** %4, align 8
  %7 = call i32 @alloc_buf_gc(i32 16, %struct.gc_arena* %6)
  %8 = getelementptr inbounds %struct.buffer, %struct.buffer* %5, i32 0, i32 0
  store i32 %7, i32* %8, align 4
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @M_INFO, align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = call i32 @buf_printf(%struct.buffer* %5, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %14

14:                                               ; preds = %12, %2
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* @M_FATAL, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %14
  %20 = call i32 @buf_printf(%struct.buffer* %5, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %21

21:                                               ; preds = %19, %14
  %22 = load i32, i32* %3, align 4
  %23 = load i32, i32* @M_NONFATAL, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = call i32 @buf_printf(%struct.buffer* %5, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %28

28:                                               ; preds = %26, %21
  %29 = load i32, i32* %3, align 4
  %30 = load i32, i32* @M_WARN, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = call i32 @buf_printf(%struct.buffer* %5, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %35

35:                                               ; preds = %33, %28
  %36 = load i32, i32* %3, align 4
  %37 = load i32, i32* @M_DEBUG, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %35
  %41 = call i32 @buf_printf(%struct.buffer* %5, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  br label %42

42:                                               ; preds = %40, %35
  %43 = call i8* @BSTR(%struct.buffer* %5)
  ret i8* %43
}

declare dso_local i32 @alloc_buf_gc(i32, %struct.gc_arena*) #1

declare dso_local i32 @buf_printf(%struct.buffer*, i8*) #1

declare dso_local i8* @BSTR(%struct.buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
