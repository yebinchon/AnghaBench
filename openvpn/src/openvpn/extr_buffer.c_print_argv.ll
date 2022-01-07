; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_buffer.c_print_argv.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_buffer.c_print_argv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gc_arena = type { i32 }
%struct.buffer = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c" \00", align 1
@PA_BRACKET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"[%s]\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @print_argv(i8** %0, %struct.gc_arena* %1, i32 %2) #0 {
  %4 = alloca i8**, align 8
  %5 = alloca %struct.gc_arena*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.buffer, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store i8** %0, i8*** %4, align 8
  store %struct.gc_arena* %1, %struct.gc_arena** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.gc_arena*, %struct.gc_arena** %5, align 8
  %11 = call i32 @alloc_buf_gc(i32 256, %struct.gc_arena* %10)
  %12 = getelementptr inbounds %struct.buffer, %struct.buffer* %7, i32 0, i32 0
  store i32 %11, i32* %12, align 4
  store i32 0, i32* %8, align 4
  br label %13

13:                                               ; preds = %36, %3
  %14 = load i8**, i8*** %4, align 8
  %15 = getelementptr inbounds i8*, i8** %14, i32 1
  store i8** %15, i8*** %4, align 8
  %16 = load i8*, i8** %14, align 8
  store i8* %16, i8** %9, align 8
  %17 = load i8*, i8** %9, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %13
  br label %39

20:                                               ; preds = %13
  %21 = load i32, i32* %8, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %20
  %24 = call i32 (%struct.buffer*, i8*, ...) @buf_printf(%struct.buffer* %7, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %25

25:                                               ; preds = %23, %20
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @PA_BRACKET, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = load i8*, i8** %9, align 8
  %32 = call i32 (%struct.buffer*, i8*, ...) @buf_printf(%struct.buffer* %7, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %31)
  br label %36

33:                                               ; preds = %25
  %34 = load i8*, i8** %9, align 8
  %35 = call i32 (%struct.buffer*, i8*, ...) @buf_printf(%struct.buffer* %7, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %34)
  br label %36

36:                                               ; preds = %33, %30
  %37 = load i32, i32* %8, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %8, align 4
  br label %13

39:                                               ; preds = %19
  %40 = call i8* @BSTR(%struct.buffer* %7)
  ret i8* %40
}

declare dso_local i32 @alloc_buf_gc(i32, %struct.gc_arena*) #1

declare dso_local i32 @buf_printf(%struct.buffer*, i8*, ...) #1

declare dso_local i8* @BSTR(%struct.buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
