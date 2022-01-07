; ModuleID = '/home/carl/AnghaBench/lwan/src/lib/extr_lwan-mod-response.c_response_create_from_hash.c'
source_filename = "/home/carl/AnghaBench/lwan/src/lib/extr_lwan-mod-response.c_response_create_from_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hash = type { i32 }
%struct.lwan_response_settings = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"code\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"`code` not supplied\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"Unknown error code: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, %struct.hash*)* @response_create_from_hash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @response_create_from_hash(i8* %0, %struct.hash* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.hash*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.lwan_response_settings, align 4
  store i8* %0, i8** %4, align 8
  store %struct.hash* %1, %struct.hash** %5, align 8
  %8 = load %struct.hash*, %struct.hash** %5, align 8
  %9 = call i8* @hash_find(%struct.hash* %8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i8* %9, i8** %6, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %2
  %13 = call i32 (i8*, ...) @lwan_status_error(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  store i8* null, i8** %3, align 8
  br label %27

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.lwan_response_settings, %struct.lwan_response_settings* %7, i32 0, i32 0
  %16 = load i8*, i8** %6, align 8
  %17 = call i32 @parse_int(i8* %16, i32 999)
  store i32 %17, i32* %15, align 4
  %18 = getelementptr inbounds %struct.lwan_response_settings, %struct.lwan_response_settings* %7, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp eq i32 %19, 999
  br i1 %20, label %21, label %24

21:                                               ; preds = %14
  %22 = load i8*, i8** %6, align 8
  %23 = call i32 (i8*, ...) @lwan_status_error(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i8* %22)
  store i8* null, i8** %3, align 8
  br label %27

24:                                               ; preds = %14
  %25 = load i8*, i8** %4, align 8
  %26 = call i8* @response_create(i8* %25, %struct.lwan_response_settings* %7)
  store i8* %26, i8** %3, align 8
  br label %27

27:                                               ; preds = %24, %21, %12
  %28 = load i8*, i8** %3, align 8
  ret i8* %28
}

declare dso_local i8* @hash_find(%struct.hash*, i8*) #1

declare dso_local i32 @lwan_status_error(i8*, ...) #1

declare dso_local i32 @parse_int(i8*, i32) #1

declare dso_local i8* @response_create(i8*, %struct.lwan_response_settings*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
