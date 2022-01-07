; ModuleID = '/home/carl/AnghaBench/proxychains-ng/src/extr_core.c_read_n_bytes.c'
source_filename = "/home/carl/AnghaBench/proxychains-ng/src/extr_core.c_read_n_bytes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pollfd = type { i32, i32, i32 }

@POLLIN = common dso_local global i32 0, align 4
@tcp_read_time_out = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i64)* @read_n_bytes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_n_bytes(i32 %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca [1 x %struct.pollfd], align 4
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load i32, i32* %5, align 4
  %12 = getelementptr inbounds [1 x %struct.pollfd], [1 x %struct.pollfd]* %10, i64 0, i64 0
  %13 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 4
  %14 = load i32, i32* @POLLIN, align 4
  %15 = getelementptr inbounds [1 x %struct.pollfd], [1 x %struct.pollfd]* %10, i64 0, i64 0
  %16 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %15, i32 0, i32 1
  store i32 %14, i32* %16, align 4
  store i64 0, i64* %9, align 8
  br label %17

17:                                               ; preds = %45, %3
  %18 = load i64, i64* %9, align 8
  %19 = load i64, i64* %7, align 8
  %20 = icmp ult i64 %18, %19
  br i1 %20, label %21, label %48

21:                                               ; preds = %17
  %22 = getelementptr inbounds [1 x %struct.pollfd], [1 x %struct.pollfd]* %10, i64 0, i64 0
  %23 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %22, i32 0, i32 2
  store i32 0, i32* %23, align 4
  %24 = getelementptr inbounds [1 x %struct.pollfd], [1 x %struct.pollfd]* %10, i64 0, i64 0
  %25 = load i32, i32* @tcp_read_time_out, align 4
  %26 = call i32 @poll_retry(%struct.pollfd* %24, i32 1, i32 %25)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp ne i32 %27, 1
  br i1 %28, label %43, label %29

29:                                               ; preds = %21
  %30 = getelementptr inbounds [1 x %struct.pollfd], [1 x %struct.pollfd]* %10, i64 0, i64 0
  %31 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @POLLIN, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %29
  %37 = load i32, i32* %5, align 4
  %38 = load i8*, i8** %6, align 8
  %39 = load i64, i64* %9, align 8
  %40 = getelementptr inbounds i8, i8* %38, i64 %39
  %41 = call i32 @read(i32 %37, i8* %40, i32 1)
  %42 = icmp ne i32 1, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %36, %29, %21
  store i32 -1, i32* %4, align 4
  br label %51

44:                                               ; preds = %36
  br label %45

45:                                               ; preds = %44
  %46 = load i64, i64* %9, align 8
  %47 = add i64 %46, 1
  store i64 %47, i64* %9, align 8
  br label %17

48:                                               ; preds = %17
  %49 = load i64, i64* %7, align 8
  %50 = trunc i64 %49 to i32
  store i32 %50, i32* %4, align 4
  br label %51

51:                                               ; preds = %48, %43
  %52 = load i32, i32* %4, align 4
  ret i32 %52
}

declare dso_local i32 @poll_retry(%struct.pollfd*, i32, i32) #1

declare dso_local i32 @read(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
