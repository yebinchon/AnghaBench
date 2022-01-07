; ModuleID = '/home/carl/AnghaBench/nginx/src/core/extr_ngx_proxy_protocol.c_ngx_proxy_protocol_read_port.c'
source_filename = "/home/carl/AnghaBench/nginx/src/core/extr_ngx_proxy_protocol.c_ngx_proxy_protocol_read_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64* (i64*, i64*, i64*, i64)* @ngx_proxy_protocol_read_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64* @ngx_proxy_protocol_read_port(i64* %0, i64* %1, i64* %2, i64 %3) #0 {
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32, align 4
  store i64* %0, i64** %6, align 8
  store i64* %1, i64** %7, align 8
  store i64* %2, i64** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load i64*, i64** %6, align 8
  store i64* %13, i64** %11, align 8
  br label %14

14:                                               ; preds = %26, %4
  %15 = load i64*, i64** %6, align 8
  %16 = load i64*, i64** %7, align 8
  %17 = icmp eq i64* %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  store i64* null, i64** %5, align 8
  br label %49

19:                                               ; preds = %14
  %20 = load i64*, i64** %6, align 8
  %21 = getelementptr inbounds i64, i64* %20, i32 1
  store i64* %21, i64** %6, align 8
  %22 = load i64, i64* %20, align 8
  %23 = load i64, i64* %9, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  br label %27

26:                                               ; preds = %19
  br label %14

27:                                               ; preds = %25
  %28 = load i64*, i64** %6, align 8
  %29 = load i64*, i64** %11, align 8
  %30 = ptrtoint i64* %28 to i64
  %31 = ptrtoint i64* %29 to i64
  %32 = sub i64 %30, %31
  %33 = sdiv exact i64 %32, 8
  %34 = sub nsw i64 %33, 1
  store i64 %34, i64* %10, align 8
  %35 = load i64*, i64** %11, align 8
  %36 = load i64, i64* %10, align 8
  %37 = call i32 @ngx_atoi(i64* %35, i64 %36)
  store i32 %37, i32* %12, align 4
  %38 = load i32, i32* %12, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %27
  %41 = load i32, i32* %12, align 4
  %42 = icmp sgt i32 %41, 65535
  br i1 %42, label %43, label %44

43:                                               ; preds = %40, %27
  store i64* null, i64** %5, align 8
  br label %49

44:                                               ; preds = %40
  %45 = load i32, i32* %12, align 4
  %46 = sext i32 %45 to i64
  %47 = load i64*, i64** %8, align 8
  store i64 %46, i64* %47, align 8
  %48 = load i64*, i64** %6, align 8
  store i64* %48, i64** %5, align 8
  br label %49

49:                                               ; preds = %44, %43, %18
  %50 = load i64*, i64** %5, align 8
  ret i64* %50
}

declare dso_local i32 @ngx_atoi(i64*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
