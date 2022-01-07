; ModuleID = '/home/carl/AnghaBench/lwan/src/lib/extr_lwan-request.c_parse_post_data.c'
source_filename = "/home/carl/AnghaBench/lwan/src/lib/extr_lwan-request.c_parse_post_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lwan_request = type { %struct.lwan_request_parser_helper* }
%struct.lwan_request_parser_helper = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@parse_post_data.content_type = internal constant [34 x i8] c"application/x-www-form-urlencoded\00", align 16
@url_decode = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lwan_request*)* @parse_post_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_post_data(%struct.lwan_request* %0) #0 {
  %2 = alloca %struct.lwan_request*, align 8
  %3 = alloca %struct.lwan_request_parser_helper*, align 8
  store %struct.lwan_request* %0, %struct.lwan_request** %2, align 8
  %4 = load %struct.lwan_request*, %struct.lwan_request** %2, align 8
  %5 = getelementptr inbounds %struct.lwan_request, %struct.lwan_request* %4, i32 0, i32 0
  %6 = load %struct.lwan_request_parser_helper*, %struct.lwan_request_parser_helper** %5, align 8
  store %struct.lwan_request_parser_helper* %6, %struct.lwan_request_parser_helper** %3, align 8
  %7 = load %struct.lwan_request_parser_helper*, %struct.lwan_request_parser_helper** %3, align 8
  %8 = getelementptr inbounds %struct.lwan_request_parser_helper, %struct.lwan_request_parser_helper* %7, i32 0, i32 2
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = sext i32 %10 to i64
  %12 = icmp ult i64 %11, 33
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %31

14:                                               ; preds = %1
  %15 = load %struct.lwan_request_parser_helper*, %struct.lwan_request_parser_helper** %3, align 8
  %16 = getelementptr inbounds %struct.lwan_request_parser_helper, %struct.lwan_request_parser_helper* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @strncmp(i32 %18, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @parse_post_data.content_type, i64 0, i64 0), i32 33)
  %20 = call i64 @UNLIKELY(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %14
  br label %31

23:                                               ; preds = %14
  %24 = load %struct.lwan_request*, %struct.lwan_request** %2, align 8
  %25 = load %struct.lwan_request_parser_helper*, %struct.lwan_request_parser_helper** %3, align 8
  %26 = getelementptr inbounds %struct.lwan_request_parser_helper, %struct.lwan_request_parser_helper* %25, i32 0, i32 1
  %27 = load %struct.lwan_request_parser_helper*, %struct.lwan_request_parser_helper** %3, align 8
  %28 = getelementptr inbounds %struct.lwan_request_parser_helper, %struct.lwan_request_parser_helper* %27, i32 0, i32 0
  %29 = load i32, i32* @url_decode, align 4
  %30 = call i32 @parse_key_values(%struct.lwan_request* %24, i32* %26, i32* %28, i32 %29, i8 signext 38)
  br label %31

31:                                               ; preds = %23, %22, %13
  ret void
}

declare dso_local i64 @UNLIKELY(i32) #1

declare dso_local i32 @strncmp(i32, i8*, i32) #1

declare dso_local i32 @parse_key_values(%struct.lwan_request*, i32*, i32*, i32, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
