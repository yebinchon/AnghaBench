; ModuleID = '/home/carl/AnghaBench/lwan/src/samples/techempower/extr_techempower.c_json_response.c'
source_filename = "/home/carl/AnghaBench/lwan/src/samples/techempower/extr_techempower.c_json_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lwan_response = type { i8*, i32 }

@HTTP_INTERNAL_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"application/json\00", align 1
@HTTP_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lwan_response*, i32*)* @json_response to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @json_response(%struct.lwan_response* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.lwan_response*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store %struct.lwan_response* %0, %struct.lwan_response** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load i32*, i32** %5, align 8
  %9 = call i8* @json_stringify_length(i32* %8, i32* null, i64* %6)
  store i8* %9, i8** %7, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = call i32 @json_delete(i32* %10)
  %12 = load i8*, i8** %7, align 8
  %13 = icmp ne i8* %12, null
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = call i64 @UNLIKELY(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* @HTTP_INTERNAL_ERROR, align 4
  store i32 %19, i32* %3, align 4
  br label %32

20:                                               ; preds = %2
  %21 = load %struct.lwan_response*, %struct.lwan_response** %4, align 8
  %22 = getelementptr inbounds %struct.lwan_response, %struct.lwan_response* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load i8*, i8** %7, align 8
  %25 = load i64, i64* %6, align 8
  %26 = call i32 @lwan_strbuf_set(i32 %23, i8* %24, i64 %25)
  %27 = load i8*, i8** %7, align 8
  %28 = call i32 @free(i8* %27)
  %29 = load %struct.lwan_response*, %struct.lwan_response** %4, align 8
  %30 = getelementptr inbounds %struct.lwan_response, %struct.lwan_response* %29, i32 0, i32 0
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8** %30, align 8
  %31 = load i32, i32* @HTTP_OK, align 4
  store i32 %31, i32* %3, align 4
  br label %32

32:                                               ; preds = %20, %18
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local i8* @json_stringify_length(i32*, i32*, i64*) #1

declare dso_local i32 @json_delete(i32*) #1

declare dso_local i64 @UNLIKELY(i32) #1

declare dso_local i32 @lwan_strbuf_set(i32, i8*, i64) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
