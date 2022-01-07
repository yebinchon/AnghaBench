; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_init.c_init_proxy_dowork.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_init.c_init_proxy_dowork.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.context = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, i32, i64, i64 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.context*)* @init_proxy_dowork to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_proxy_dowork(%struct.context* %0) #0 {
  %2 = alloca %struct.context*, align 8
  %3 = alloca i32, align 4
  store %struct.context* %0, %struct.context** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.context*, %struct.context** %2, align 8
  %5 = call i32 @uninit_proxy_dowork(%struct.context* %4)
  %6 = load %struct.context*, %struct.context** %2, align 8
  %7 = getelementptr inbounds %struct.context, %struct.context* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 3
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %32

12:                                               ; preds = %1
  %13 = load %struct.context*, %struct.context** %2, align 8
  %14 = getelementptr inbounds %struct.context, %struct.context* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 3
  %17 = load i64, i64* %16, align 8
  %18 = call i64 @http_proxy_new(i64 %17)
  %19 = load %struct.context*, %struct.context** %2, align 8
  %20 = getelementptr inbounds %struct.context, %struct.context* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 3
  store i64 %18, i64* %21, align 8
  %22 = load %struct.context*, %struct.context** %2, align 8
  %23 = getelementptr inbounds %struct.context, %struct.context* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 3
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %12
  store i32 1, i32* %3, align 4
  %28 = load %struct.context*, %struct.context** %2, align 8
  %29 = getelementptr inbounds %struct.context, %struct.context* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  store i32 1, i32* %30, align 8
  br label %31

31:                                               ; preds = %27, %12
  br label %32

32:                                               ; preds = %31, %1
  %33 = load i32, i32* %3, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %72, label %35

35:                                               ; preds = %32
  %36 = load %struct.context*, %struct.context** %2, align 8
  %37 = getelementptr inbounds %struct.context, %struct.context* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %72

42:                                               ; preds = %35
  %43 = load %struct.context*, %struct.context** %2, align 8
  %44 = getelementptr inbounds %struct.context, %struct.context* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.context*, %struct.context** %2, align 8
  %49 = getelementptr inbounds %struct.context, %struct.context* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.context*, %struct.context** %2, align 8
  %54 = getelementptr inbounds %struct.context, %struct.context* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i64 @socks_proxy_new(i64 %47, i32 %52, i32 %57)
  %59 = load %struct.context*, %struct.context** %2, align 8
  %60 = getelementptr inbounds %struct.context, %struct.context* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 2
  store i64 %58, i64* %61, align 8
  %62 = load %struct.context*, %struct.context** %2, align 8
  %63 = getelementptr inbounds %struct.context, %struct.context* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %42
  %68 = load %struct.context*, %struct.context** %2, align 8
  %69 = getelementptr inbounds %struct.context, %struct.context* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 1
  store i32 1, i32* %70, align 4
  br label %71

71:                                               ; preds = %67, %42
  br label %72

72:                                               ; preds = %71, %35, %32
  ret void
}

declare dso_local i32 @uninit_proxy_dowork(%struct.context*) #1

declare dso_local i64 @http_proxy_new(i64) #1

declare dso_local i64 @socks_proxy_new(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
