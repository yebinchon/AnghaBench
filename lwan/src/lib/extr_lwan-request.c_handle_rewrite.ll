; ModuleID = '/home/carl/AnghaBench/lwan/src/lib/extr_lwan-request.c_handle_rewrite.c'
source_filename = "/home/carl/AnghaBench/lwan/src/lib/extr_lwan-request.c_handle_rewrite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lwan_request = type { %struct.TYPE_2__, i32, %struct.lwan_request_parser_helper* }
%struct.TYPE_2__ = type { i64, i64 }
%struct.lwan_request_parser_helper = type { i32 }

@RESPONSE_URL_REWRITTEN = common dso_local global i32 0, align 4
@HTTP_INTERNAL_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lwan_request*)* @handle_rewrite to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_rewrite(%struct.lwan_request* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lwan_request*, align 8
  %4 = alloca %struct.lwan_request_parser_helper*, align 8
  store %struct.lwan_request* %0, %struct.lwan_request** %3, align 8
  %5 = load %struct.lwan_request*, %struct.lwan_request** %3, align 8
  %6 = getelementptr inbounds %struct.lwan_request, %struct.lwan_request* %5, i32 0, i32 2
  %7 = load %struct.lwan_request_parser_helper*, %struct.lwan_request_parser_helper** %6, align 8
  store %struct.lwan_request_parser_helper* %7, %struct.lwan_request_parser_helper** %4, align 8
  %8 = load i32, i32* @RESPONSE_URL_REWRITTEN, align 4
  %9 = xor i32 %8, -1
  %10 = load %struct.lwan_request*, %struct.lwan_request** %3, align 8
  %11 = getelementptr inbounds %struct.lwan_request, %struct.lwan_request* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = and i32 %12, %9
  store i32 %13, i32* %11, align 8
  %14 = load %struct.lwan_request*, %struct.lwan_request** %3, align 8
  %15 = load %struct.lwan_request*, %struct.lwan_request** %3, align 8
  %16 = getelementptr inbounds %struct.lwan_request, %struct.lwan_request* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.lwan_request*, %struct.lwan_request** %3, align 8
  %20 = getelementptr inbounds %struct.lwan_request, %struct.lwan_request* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = add nsw i64 %18, %22
  %24 = call i32 @parse_fragment_and_query(%struct.lwan_request* %14, i64 %23)
  %25 = load %struct.lwan_request_parser_helper*, %struct.lwan_request_parser_helper** %4, align 8
  %26 = getelementptr inbounds %struct.lwan_request_parser_helper, %struct.lwan_request_parser_helper* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %26, align 4
  %29 = load %struct.lwan_request_parser_helper*, %struct.lwan_request_parser_helper** %4, align 8
  %30 = getelementptr inbounds %struct.lwan_request_parser_helper, %struct.lwan_request_parser_helper* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp sgt i32 %31, 4
  %33 = zext i1 %32 to i32
  %34 = call i64 @UNLIKELY(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %1
  %37 = load %struct.lwan_request*, %struct.lwan_request** %3, align 8
  %38 = load i32, i32* @HTTP_INTERNAL_ERROR, align 4
  %39 = call i32 @lwan_default_response(%struct.lwan_request* %37, i32 %38)
  store i32 0, i32* %2, align 4
  br label %41

40:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %41

41:                                               ; preds = %40, %36
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local i32 @parse_fragment_and_query(%struct.lwan_request*, i64) #1

declare dso_local i64 @UNLIKELY(i32) #1

declare dso_local i32 @lwan_default_response(%struct.lwan_request*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
