; ModuleID = '/home/carl/AnghaBench/lwan/src/samples/freegeoip/extr_freegeoip.c_internal_query.c'
source_filename = "/home/carl/AnghaBench/lwan/src/samples/freegeoip/extr_freegeoip.c_internal_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_info = type { i32 }
%struct.lwan_request = type { %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i8* }

@cache = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ip_info* (%struct.lwan_request*, i8*)* @internal_query to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ip_info* @internal_query(%struct.lwan_request* %0, i8* %1) #0 {
  %3 = alloca %struct.ip_info*, align 8
  %4 = alloca %struct.lwan_request*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.lwan_request* %0, %struct.lwan_request** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load %struct.lwan_request*, %struct.lwan_request** %4, align 8
  %8 = getelementptr inbounds %struct.lwan_request, %struct.lwan_request* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i8*, i8** %5, align 8
  store i8* %13, i8** %6, align 8
  br label %27

14:                                               ; preds = %2
  %15 = load %struct.lwan_request*, %struct.lwan_request** %4, align 8
  %16 = getelementptr inbounds %struct.lwan_request, %struct.lwan_request* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp slt i32 %18, 7
  br i1 %19, label %20, label %21

20:                                               ; preds = %14
  store i8* null, i8** %6, align 8
  br label %26

21:                                               ; preds = %14
  %22 = load %struct.lwan_request*, %struct.lwan_request** %4, align 8
  %23 = getelementptr inbounds %struct.lwan_request, %struct.lwan_request* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  %25 = load i8*, i8** %24, align 8
  store i8* %25, i8** %6, align 8
  br label %26

26:                                               ; preds = %21, %20
  br label %27

27:                                               ; preds = %26, %12
  %28 = load i8*, i8** %6, align 8
  %29 = icmp ne i8* %28, null
  %30 = xor i1 %29, true
  %31 = zext i1 %30 to i32
  %32 = call i64 @UNLIKELY(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %27
  store %struct.ip_info* null, %struct.ip_info** %3, align 8
  br label %45

35:                                               ; preds = %27
  %36 = load i32, i32* @cache, align 4
  %37 = load %struct.lwan_request*, %struct.lwan_request** %4, align 8
  %38 = getelementptr inbounds %struct.lwan_request, %struct.lwan_request* %37, i32 0, i32 0
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i8*, i8** %6, align 8
  %43 = call i64 @cache_coro_get_and_ref_entry(i32 %36, i32 %41, i8* %42)
  %44 = inttoptr i64 %43 to %struct.ip_info*
  store %struct.ip_info* %44, %struct.ip_info** %3, align 8
  br label %45

45:                                               ; preds = %35, %34
  %46 = load %struct.ip_info*, %struct.ip_info** %3, align 8
  ret %struct.ip_info* %46
}

declare dso_local i64 @UNLIKELY(i32) #1

declare dso_local i64 @cache_coro_get_and_ref_entry(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
