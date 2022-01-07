; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_proxy.c_username_password_as_base64.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_proxy.c_username_password_as_base64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.http_proxy_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.gc_arena = type { i32 }
%struct.buffer = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"%s:%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.http_proxy_info*, %struct.gc_arena*)* @username_password_as_base64 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @username_password_as_base64(%struct.http_proxy_info* %0, %struct.gc_arena* %1) #0 {
  %3 = alloca %struct.http_proxy_info*, align 8
  %4 = alloca %struct.gc_arena*, align 8
  %5 = alloca %struct.buffer, align 4
  store %struct.http_proxy_info* %0, %struct.http_proxy_info** %3, align 8
  store %struct.gc_arena* %1, %struct.gc_arena** %4, align 8
  %6 = load %struct.http_proxy_info*, %struct.http_proxy_info** %3, align 8
  %7 = getelementptr inbounds %struct.http_proxy_info, %struct.http_proxy_info* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = call i64 @strlen(i32 %9)
  %11 = load %struct.http_proxy_info*, %struct.http_proxy_info** %3, align 8
  %12 = getelementptr inbounds %struct.http_proxy_info, %struct.http_proxy_info* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i64 @strlen(i32 %14)
  %16 = add nsw i64 %10, %15
  %17 = add nsw i64 %16, 2
  %18 = load %struct.gc_arena*, %struct.gc_arena** %4, align 8
  %19 = call i32 @alloc_buf_gc(i64 %17, %struct.gc_arena* %18)
  %20 = getelementptr inbounds %struct.buffer, %struct.buffer* %5, i32 0, i32 0
  store i32 %19, i32* %20, align 4
  %21 = load %struct.http_proxy_info*, %struct.http_proxy_info** %3, align 8
  %22 = getelementptr inbounds %struct.http_proxy_info, %struct.http_proxy_info* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @strlen(i32 %24)
  %26 = icmp sgt i64 %25, 0
  %27 = zext i1 %26 to i32
  %28 = call i32 @ASSERT(i32 %27)
  %29 = load %struct.http_proxy_info*, %struct.http_proxy_info** %3, align 8
  %30 = getelementptr inbounds %struct.http_proxy_info, %struct.http_proxy_info* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.http_proxy_info*, %struct.http_proxy_info** %3, align 8
  %34 = getelementptr inbounds %struct.http_proxy_info, %struct.http_proxy_info* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @buf_printf(%struct.buffer* %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %32, i32 %36)
  %38 = call i64 @BSTR(%struct.buffer* %5)
  %39 = inttoptr i64 %38 to i32*
  %40 = load %struct.gc_arena*, %struct.gc_arena** %4, align 8
  %41 = call i64 @make_base64_string(i32* %39, %struct.gc_arena* %40)
  %42 = inttoptr i64 %41 to i8*
  ret i8* %42
}

declare dso_local i32 @alloc_buf_gc(i64, %struct.gc_arena*) #1

declare dso_local i64 @strlen(i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @buf_printf(%struct.buffer*, i8*, i32, i32) #1

declare dso_local i64 @make_base64_string(i32*, %struct.gc_arena*) #1

declare dso_local i64 @BSTR(%struct.buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
