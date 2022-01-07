; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_otime.c_time_string.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_otime.c_time_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gc_arena = type { i32 }
%struct.buffer = type { i32 }
%struct.timeval = type { i32, i64 }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c" us=%ld\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @time_string(i64 %0, i32 %1, i32 %2, %struct.gc_arena* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.gc_arena*, align 8
  %9 = alloca %struct.buffer, align 4
  %10 = alloca %struct.timeval, align 8
  store i64 %0, i64* %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.gc_arena* %3, %struct.gc_arena** %8, align 8
  %11 = load %struct.gc_arena*, %struct.gc_arena** %8, align 8
  %12 = call i32 @alloc_buf_gc(i32 64, %struct.gc_arena* %11)
  %13 = getelementptr inbounds %struct.buffer, %struct.buffer* %9, i32 0, i32 0
  store i32 %12, i32* %13, align 4
  %14 = load i64, i64* %5, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %4
  %17 = load i64, i64* %5, align 8
  %18 = getelementptr inbounds %struct.timeval, %struct.timeval* %10, i32 0, i32 1
  store i64 %17, i64* %18, align 8
  %19 = load i32, i32* %6, align 4
  %20 = getelementptr inbounds %struct.timeval, %struct.timeval* %10, i32 0, i32 0
  store i32 %19, i32* %20, align 8
  br label %23

21:                                               ; preds = %4
  %22 = call i32 @gettimeofday(%struct.timeval* %10, i32* null)
  br label %23

23:                                               ; preds = %21, %16
  %24 = getelementptr inbounds %struct.timeval, %struct.timeval* %10, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %5, align 8
  %26 = call i64 @ctime(i64* %5)
  %27 = call i32 @buf_printf(%struct.buffer* %9, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i64 %26)
  %28 = call i32 @buf_rmtail(%struct.buffer* %9, i8 signext 10)
  %29 = load i32, i32* %7, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %23
  %32 = getelementptr inbounds %struct.timeval, %struct.timeval* %10, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.timeval, %struct.timeval* %10, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = sext i32 %37 to i64
  %39 = call i32 @buf_printf(%struct.buffer* %9, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i64 %38)
  br label %40

40:                                               ; preds = %35, %31, %23
  %41 = call i8* @BSTR(%struct.buffer* %9)
  ret i8* %41
}

declare dso_local i32 @alloc_buf_gc(i32, %struct.gc_arena*) #1

declare dso_local i32 @gettimeofday(%struct.timeval*, i32*) #1

declare dso_local i32 @buf_printf(%struct.buffer*, i8*, i64) #1

declare dso_local i64 @ctime(i64*) #1

declare dso_local i32 @buf_rmtail(%struct.buffer*, i8 signext) #1

declare dso_local i8* @BSTR(%struct.buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
