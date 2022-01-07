; ModuleID = '/home/carl/AnghaBench/lwan/src/lib/extr_lwan-request.c_parse_fragment_and_query.c'
source_filename = "/home/carl/AnghaBench/lwan/src/lib/extr_lwan-request.c_parse_fragment_and_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lwan_request = type { %struct.TYPE_3__, %struct.lwan_request_parser_helper* }
%struct.TYPE_3__ = type { i8*, i64 }
%struct.lwan_request_parser_helper = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8*, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lwan_request*, i8*)* @parse_fragment_and_query to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_fragment_and_query(%struct.lwan_request* %0, i8* %1) #0 {
  %3 = alloca %struct.lwan_request*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.lwan_request_parser_helper*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store %struct.lwan_request* %0, %struct.lwan_request** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load %struct.lwan_request*, %struct.lwan_request** %3, align 8
  %9 = getelementptr inbounds %struct.lwan_request, %struct.lwan_request* %8, i32 0, i32 1
  %10 = load %struct.lwan_request_parser_helper*, %struct.lwan_request_parser_helper** %9, align 8
  store %struct.lwan_request_parser_helper* %10, %struct.lwan_request_parser_helper** %5, align 8
  %11 = load %struct.lwan_request*, %struct.lwan_request** %3, align 8
  %12 = getelementptr inbounds %struct.lwan_request, %struct.lwan_request* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8
  %15 = load %struct.lwan_request*, %struct.lwan_request** %3, align 8
  %16 = getelementptr inbounds %struct.lwan_request, %struct.lwan_request* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = call i8* @memrchr(i8* %14, i8 signext 35, i64 %18)
  store i8* %19, i8** %6, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = icmp ne i8* %20, null
  %22 = zext i1 %21 to i32
  %23 = call i64 @UNLIKELY(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %39

25:                                               ; preds = %2
  %26 = load i8*, i8** %6, align 8
  store i8 0, i8* %26, align 1
  %27 = load i8*, i8** %6, align 8
  %28 = load %struct.lwan_request*, %struct.lwan_request** %3, align 8
  %29 = getelementptr inbounds %struct.lwan_request, %struct.lwan_request* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  %32 = ptrtoint i8* %27 to i64
  %33 = ptrtoint i8* %31 to i64
  %34 = sub i64 %32, %33
  %35 = load %struct.lwan_request*, %struct.lwan_request** %3, align 8
  %36 = getelementptr inbounds %struct.lwan_request, %struct.lwan_request* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 1
  store i64 %34, i64* %37, align 8
  %38 = load i8*, i8** %6, align 8
  store i8* %38, i8** %4, align 8
  br label %39

39:                                               ; preds = %25, %2
  %40 = load %struct.lwan_request*, %struct.lwan_request** %3, align 8
  %41 = getelementptr inbounds %struct.lwan_request, %struct.lwan_request* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  %44 = load %struct.lwan_request*, %struct.lwan_request** %3, align 8
  %45 = getelementptr inbounds %struct.lwan_request, %struct.lwan_request* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = call i8* @memchr(i8* %43, i8 signext 63, i64 %47)
  store i8* %48, i8** %7, align 8
  %49 = load i8*, i8** %7, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %51, label %77

51:                                               ; preds = %39
  %52 = load i8*, i8** %7, align 8
  store i8 0, i8* %52, align 1
  %53 = load i8*, i8** %7, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 1
  %55 = load %struct.lwan_request_parser_helper*, %struct.lwan_request_parser_helper** %5, align 8
  %56 = getelementptr inbounds %struct.lwan_request_parser_helper, %struct.lwan_request_parser_helper* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  store i8* %54, i8** %57, align 8
  %58 = load i8*, i8** %4, align 8
  %59 = load i8*, i8** %7, align 8
  %60 = ptrtoint i8* %58 to i64
  %61 = ptrtoint i8* %59 to i64
  %62 = sub i64 %60, %61
  %63 = sub nsw i64 %62, 1
  %64 = load %struct.lwan_request_parser_helper*, %struct.lwan_request_parser_helper** %5, align 8
  %65 = getelementptr inbounds %struct.lwan_request_parser_helper, %struct.lwan_request_parser_helper* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 1
  store i64 %63, i64* %66, align 8
  %67 = load %struct.lwan_request_parser_helper*, %struct.lwan_request_parser_helper** %5, align 8
  %68 = getelementptr inbounds %struct.lwan_request_parser_helper, %struct.lwan_request_parser_helper* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = add i64 %70, 1
  %72 = load %struct.lwan_request*, %struct.lwan_request** %3, align 8
  %73 = getelementptr inbounds %struct.lwan_request, %struct.lwan_request* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = sub i64 %75, %71
  store i64 %76, i64* %74, align 8
  br label %77

77:                                               ; preds = %51, %39
  ret void
}

declare dso_local i8* @memrchr(i8*, i8 signext, i64) #1

declare dso_local i64 @UNLIKELY(i32) #1

declare dso_local i8* @memchr(i8*, i8 signext, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
