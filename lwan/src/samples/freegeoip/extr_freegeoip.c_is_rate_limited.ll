; ModuleID = '/home/carl/AnghaBench/lwan/src/samples/freegeoip/extr_freegeoip.c_is_rate_limited.c'
source_filename = "/home/carl/AnghaBench/lwan/src/samples/freegeoip/extr_freegeoip.c_is_rate_limited.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.query_limit = type { i32, i32 }

@query_limit = common dso_local global i32 0, align 4
@QUERIES_PER_HOUR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @is_rate_limited to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_rate_limited(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.query_limit*, align 8
  store i8* %0, i8** %3, align 8
  %7 = load i32, i32* @query_limit, align 4
  %8 = load i8*, i8** %3, align 8
  %9 = call i64 @cache_get_and_ref_entry(i32 %7, i8* %8, i32* %5)
  %10 = inttoptr i64 %9 to %struct.query_limit*
  store %struct.query_limit* %10, %struct.query_limit** %6, align 8
  %11 = load %struct.query_limit*, %struct.query_limit** %6, align 8
  %12 = icmp ne %struct.query_limit* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %26

14:                                               ; preds = %1
  %15 = load %struct.query_limit*, %struct.query_limit** %6, align 8
  %16 = getelementptr inbounds %struct.query_limit, %struct.query_limit* %15, i32 0, i32 1
  %17 = call i64 @ATOMIC_AAF(i32* %16, i32 1)
  %18 = load i64, i64* @QUERIES_PER_HOUR, align 8
  %19 = icmp sgt i64 %17, %18
  %20 = zext i1 %19 to i32
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* @query_limit, align 4
  %22 = load %struct.query_limit*, %struct.query_limit** %6, align 8
  %23 = getelementptr inbounds %struct.query_limit, %struct.query_limit* %22, i32 0, i32 0
  %24 = call i32 @cache_entry_unref(i32 %21, i32* %23)
  %25 = load i32, i32* %4, align 4
  store i32 %25, i32* %2, align 4
  br label %26

26:                                               ; preds = %14, %13
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

declare dso_local i64 @cache_get_and_ref_entry(i32, i8*, i32*) #1

declare dso_local i64 @ATOMIC_AAF(i32*, i32) #1

declare dso_local i32 @cache_entry_unref(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
