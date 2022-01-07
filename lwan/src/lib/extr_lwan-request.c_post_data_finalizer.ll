; ModuleID = '/home/carl/AnghaBench/lwan/src/lib/extr_lwan-request.c_post_data_finalizer.c'
source_filename = "/home/carl/AnghaBench/lwan/src/lib/extr_lwan-request.c_post_data_finalizer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lwan_request = type { %struct.lwan_request_parser_helper* }
%struct.lwan_request_parser_helper = type { i64, i32 }

@FINALIZER_DONE = common dso_local global i32 0, align 4
@FINALIZER_ERROR_TIMEOUT = common dso_local global i32 0, align 4
@FINALIZER_TRY_AGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64, %struct.lwan_request*, i32)* @post_data_finalizer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @post_data_finalizer(i64 %0, i64 %1, %struct.lwan_request* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.lwan_request*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.lwan_request_parser_helper*, align 8
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.lwan_request* %2, %struct.lwan_request** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load %struct.lwan_request*, %struct.lwan_request** %8, align 8
  %12 = getelementptr inbounds %struct.lwan_request, %struct.lwan_request* %11, i32 0, i32 0
  %13 = load %struct.lwan_request_parser_helper*, %struct.lwan_request_parser_helper** %12, align 8
  store %struct.lwan_request_parser_helper* %13, %struct.lwan_request_parser_helper** %10, align 8
  %14 = load i64, i64* %7, align 8
  %15 = load i64, i64* %6, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %4
  %18 = load i32, i32* @FINALIZER_DONE, align 4
  store i32 %18, i32* %5, align 4
  br label %43

19:                                               ; preds = %4
  %20 = call i64 @time(i32* null)
  %21 = load %struct.lwan_request_parser_helper*, %struct.lwan_request_parser_helper** %10, align 8
  %22 = getelementptr inbounds %struct.lwan_request_parser_helper, %struct.lwan_request_parser_helper* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp sgt i64 %20, %23
  %25 = zext i1 %24 to i32
  %26 = call i64 @UNLIKELY(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %19
  %29 = load i32, i32* @FINALIZER_ERROR_TIMEOUT, align 4
  store i32 %29, i32* %5, align 4
  br label %43

30:                                               ; preds = %19
  %31 = load i32, i32* %9, align 4
  %32 = load %struct.lwan_request_parser_helper*, %struct.lwan_request_parser_helper** %10, align 8
  %33 = getelementptr inbounds %struct.lwan_request_parser_helper, %struct.lwan_request_parser_helper* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = icmp sgt i32 %31, %34
  %36 = zext i1 %35 to i32
  %37 = call i64 @UNLIKELY(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %30
  %40 = load i32, i32* @FINALIZER_ERROR_TIMEOUT, align 4
  store i32 %40, i32* %5, align 4
  br label %43

41:                                               ; preds = %30
  %42 = load i32, i32* @FINALIZER_TRY_AGAIN, align 4
  store i32 %42, i32* %5, align 4
  br label %43

43:                                               ; preds = %41, %39, %28, %17
  %44 = load i32, i32* %5, align 4
  ret i32 %44
}

declare dso_local i64 @UNLIKELY(i32) #1

declare dso_local i64 @time(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
