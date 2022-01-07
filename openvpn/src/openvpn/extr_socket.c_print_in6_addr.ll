; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_socket.c_print_in6_addr.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_socket.c_print_in6_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gc_arena = type { i32 }
%struct.in6_addr = type { i32 }
%struct.buffer = type { i32 }

@in6addr_any = common dso_local global i32 0, align 4
@IA_EMPTY_IF_UNDEF = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @print_in6_addr(i32 %0, i32 %1, %struct.gc_arena* %2) #0 {
  %4 = alloca %struct.in6_addr, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.gc_arena*, align 8
  %7 = alloca %struct.buffer, align 4
  %8 = alloca [64 x i8], align 16
  %9 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %4, i32 0, i32 0
  store i32 %0, i32* %9, align 4
  store i32 %1, i32* %5, align 4
  store %struct.gc_arena* %2, %struct.gc_arena** %6, align 8
  %10 = load %struct.gc_arena*, %struct.gc_arena** %6, align 8
  %11 = call i32 @alloc_buf_gc(i32 64, %struct.gc_arena* %10)
  %12 = getelementptr inbounds %struct.buffer, %struct.buffer* %7, i32 0, i32 0
  store i32 %11, i32* %12, align 4
  %13 = call i64 @memcmp(%struct.in6_addr* %4, i32* @in6addr_any, i32 4)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @IA_EMPTY_IF_UNDEF, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %26, label %20

20:                                               ; preds = %15, %3
  %21 = load i32, i32* @AF_INET6, align 4
  %22 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %23 = call i32 @inet_ntop(i32 %21, %struct.in6_addr* %4, i8* %22, i32 63)
  %24 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %25 = call i32 @buf_printf(%struct.buffer* %7, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %24)
  br label %26

26:                                               ; preds = %20, %15
  %27 = call i8* @BSTR(%struct.buffer* %7)
  ret i8* %27
}

declare dso_local i32 @alloc_buf_gc(i32, %struct.gc_arena*) #1

declare dso_local i64 @memcmp(%struct.in6_addr*, i32*, i32) #1

declare dso_local i32 @inet_ntop(i32, %struct.in6_addr*, i8*, i32) #1

declare dso_local i32 @buf_printf(%struct.buffer*, i8*, i8*) #1

declare dso_local i8* @BSTR(%struct.buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
