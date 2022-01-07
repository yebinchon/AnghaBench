; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_route.c_setenv_route_ipv6.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_route.c_setenv_route_ipv6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.env_set = type { i32 }
%struct.route_ipv6 = type { i32, i32, i32, i32 }
%struct.gc_arena = type { i32 }
%struct.buffer = type { i32 }

@RT_DEFINED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"route_ipv6_network_%d\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%s/%d\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"route_ipv6_gateway_%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.env_set*, %struct.route_ipv6*, i32)* @setenv_route_ipv6 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setenv_route_ipv6(%struct.env_set* %0, %struct.route_ipv6* %1, i32 %2) #0 {
  %4 = alloca %struct.env_set*, align 8
  %5 = alloca %struct.route_ipv6*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.gc_arena, align 4
  %8 = alloca %struct.buffer, align 4
  %9 = alloca %struct.buffer, align 4
  %10 = alloca %struct.buffer, align 4
  store %struct.env_set* %0, %struct.env_set** %4, align 8
  store %struct.route_ipv6* %1, %struct.route_ipv6** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = call i32 (...) @gc_new()
  %12 = getelementptr inbounds %struct.gc_arena, %struct.gc_arena* %7, i32 0, i32 0
  store i32 %11, i32* %12, align 4
  %13 = load %struct.route_ipv6*, %struct.route_ipv6** %5, align 8
  %14 = getelementptr inbounds %struct.route_ipv6, %struct.route_ipv6* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @RT_DEFINED, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %49

19:                                               ; preds = %3
  %20 = call i32 @alloc_buf_gc(i32 256, %struct.gc_arena* %7)
  %21 = getelementptr inbounds %struct.buffer, %struct.buffer* %8, i32 0, i32 0
  store i32 %20, i32* %21, align 4
  %22 = call i32 @alloc_buf_gc(i32 256, %struct.gc_arena* %7)
  %23 = getelementptr inbounds %struct.buffer, %struct.buffer* %9, i32 0, i32 0
  store i32 %22, i32* %23, align 4
  %24 = call i32 @alloc_buf_gc(i32 256, %struct.gc_arena* %7)
  %25 = getelementptr inbounds %struct.buffer, %struct.buffer* %10, i32 0, i32 0
  store i32 %24, i32* %25, align 4
  %26 = load i32, i32* %6, align 4
  %27 = call i32 (%struct.buffer*, i8*, i32, ...) @buf_printf(%struct.buffer* %8, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = load %struct.route_ipv6*, %struct.route_ipv6** %5, align 8
  %29 = getelementptr inbounds %struct.route_ipv6, %struct.route_ipv6* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @print_in6_addr(i32 %30, i32 0, %struct.gc_arena* %7)
  %32 = load %struct.route_ipv6*, %struct.route_ipv6** %5, align 8
  %33 = getelementptr inbounds %struct.route_ipv6, %struct.route_ipv6* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = call i32 (%struct.buffer*, i8*, i32, ...) @buf_printf(%struct.buffer* %9, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %31, i32 %34)
  %36 = load %struct.env_set*, %struct.env_set** %4, align 8
  %37 = call i32 @BSTR(%struct.buffer* %8)
  %38 = call i32 @BSTR(%struct.buffer* %9)
  %39 = call i32 @setenv_str(%struct.env_set* %36, i32 %37, i32 %38)
  %40 = load i32, i32* %6, align 4
  %41 = call i32 (%struct.buffer*, i8*, i32, ...) @buf_printf(%struct.buffer* %10, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %40)
  %42 = load %struct.env_set*, %struct.env_set** %4, align 8
  %43 = call i32 @BSTR(%struct.buffer* %10)
  %44 = load %struct.route_ipv6*, %struct.route_ipv6** %5, align 8
  %45 = getelementptr inbounds %struct.route_ipv6, %struct.route_ipv6* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @print_in6_addr(i32 %46, i32 0, %struct.gc_arena* %7)
  %48 = call i32 @setenv_str(%struct.env_set* %42, i32 %43, i32 %47)
  br label %49

49:                                               ; preds = %19, %3
  %50 = call i32 @gc_free(%struct.gc_arena* %7)
  ret void
}

declare dso_local i32 @gc_new(...) #1

declare dso_local i32 @alloc_buf_gc(i32, %struct.gc_arena*) #1

declare dso_local i32 @buf_printf(%struct.buffer*, i8*, i32, ...) #1

declare dso_local i32 @print_in6_addr(i32, i32, %struct.gc_arena*) #1

declare dso_local i32 @setenv_str(%struct.env_set*, i32, i32) #1

declare dso_local i32 @BSTR(%struct.buffer*) #1

declare dso_local i32 @gc_free(%struct.gc_arena*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
