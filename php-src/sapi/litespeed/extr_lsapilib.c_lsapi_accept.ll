; ModuleID = '/home/carl/AnghaBench/php-src/sapi/litespeed/extr_lsapilib.c_lsapi_accept.c'
source_filename = "/home/carl/AnghaBench/php-src/sapi/litespeed/extr_lsapilib.c_lsapi_accept.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i64 }

@AF_INET = common dso_local global i64 0, align 8
@IPPROTO_TCP = common dso_local global i32 0, align 4
@TCP_NODELAY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @lsapi_accept to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lsapi_accept(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [128 x i8], align 16
  store i32 %0, i32* %2, align 4
  store i32 1, i32* %4, align 4
  store i32 128, i32* %5, align 4
  %7 = load i32, i32* %2, align 4
  %8 = bitcast [128 x i8]* %6 to %struct.sockaddr*
  %9 = call i32 @accept(i32 %7, %struct.sockaddr* %8, i32* %5)
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = icmp ne i32 %10, -1
  br i1 %11, label %12, label %25

12:                                               ; preds = %1
  %13 = bitcast [128 x i8]* %6 to %struct.sockaddr*
  %14 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 16
  %16 = load i64, i64* @AF_INET, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %24

18:                                               ; preds = %12
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* @IPPROTO_TCP, align 4
  %21 = load i32, i32* @TCP_NODELAY, align 4
  %22 = bitcast i32* %4 to i8*
  %23 = call i32 @setsockopt(i32 %19, i32 %20, i32 %21, i8* %22, i32 4)
  br label %24

24:                                               ; preds = %18, %12
  br label %25

25:                                               ; preds = %24, %1
  %26 = load i32, i32* %3, align 4
  ret i32 %26
}

declare dso_local i32 @accept(i32, %struct.sockaddr*, i32*) #1

declare dso_local i32 @setsockopt(i32, i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
