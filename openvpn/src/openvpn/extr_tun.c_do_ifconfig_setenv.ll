; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_tun.c_do_ifconfig_setenv.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_tun.c_do_ifconfig_setenv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tuntap = type { i32, i32, i32, i64, i64, i32, i32 }
%struct.env_set = type { i32 }
%struct.gc_arena = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"ifconfig_local\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"ifconfig_remote\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"ifconfig_netmask\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"ifconfig_ipv6_local\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"ifconfig_ipv6_netbits\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"ifconfig_ipv6_remote\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @do_ifconfig_setenv(%struct.tuntap* %0, %struct.env_set* %1) #0 {
  %3 = alloca %struct.tuntap*, align 8
  %4 = alloca %struct.env_set*, align 8
  %5 = alloca %struct.gc_arena, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store %struct.tuntap* %0, %struct.tuntap** %3, align 8
  store %struct.env_set* %1, %struct.env_set** %4, align 8
  %11 = call i32 (...) @gc_new()
  %12 = getelementptr inbounds %struct.gc_arena, %struct.gc_arena* %5, i32 0, i32 0
  store i32 %11, i32* %12, align 4
  %13 = load %struct.tuntap*, %struct.tuntap** %3, align 8
  %14 = getelementptr inbounds %struct.tuntap, %struct.tuntap* %13, i32 0, i32 6
  %15 = load i32, i32* %14, align 4
  %16 = call i8* @print_in_addr_t(i32 %15, i32 0, %struct.gc_arena* %5)
  store i8* %16, i8** %6, align 8
  %17 = load %struct.tuntap*, %struct.tuntap** %3, align 8
  %18 = getelementptr inbounds %struct.tuntap, %struct.tuntap* %17, i32 0, i32 5
  %19 = load i32, i32* %18, align 8
  %20 = call i8* @print_in_addr_t(i32 %19, i32 0, %struct.gc_arena* %5)
  store i8* %20, i8** %7, align 8
  %21 = load %struct.tuntap*, %struct.tuntap** %3, align 8
  %22 = getelementptr inbounds %struct.tuntap, %struct.tuntap* %21, i32 0, i32 4
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %42

25:                                               ; preds = %2
  %26 = load %struct.tuntap*, %struct.tuntap** %3, align 8
  %27 = call i32 @is_tun_p2p(%struct.tuntap* %26)
  store i32 %27, i32* %8, align 4
  %28 = load %struct.env_set*, %struct.env_set** %4, align 8
  %29 = load i8*, i8** %6, align 8
  %30 = call i32 @setenv_str(%struct.env_set* %28, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* %29)
  %31 = load i32, i32* %8, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %25
  %34 = load %struct.env_set*, %struct.env_set** %4, align 8
  %35 = load i8*, i8** %7, align 8
  %36 = call i32 @setenv_str(%struct.env_set* %34, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8* %35)
  br label %41

37:                                               ; preds = %25
  %38 = load %struct.env_set*, %struct.env_set** %4, align 8
  %39 = load i8*, i8** %7, align 8
  %40 = call i32 @setenv_str(%struct.env_set* %38, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i8* %39)
  br label %41

41:                                               ; preds = %37, %33
  br label %42

42:                                               ; preds = %41, %2
  %43 = load %struct.tuntap*, %struct.tuntap** %3, align 8
  %44 = getelementptr inbounds %struct.tuntap, %struct.tuntap* %43, i32 0, i32 3
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %67

47:                                               ; preds = %42
  %48 = load %struct.tuntap*, %struct.tuntap** %3, align 8
  %49 = getelementptr inbounds %struct.tuntap, %struct.tuntap* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = call i8* @print_in6_addr(i32 %50, i32 0, %struct.gc_arena* %5)
  store i8* %51, i8** %9, align 8
  %52 = load %struct.tuntap*, %struct.tuntap** %3, align 8
  %53 = getelementptr inbounds %struct.tuntap, %struct.tuntap* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i8* @print_in6_addr(i32 %54, i32 0, %struct.gc_arena* %5)
  store i8* %55, i8** %10, align 8
  %56 = load %struct.env_set*, %struct.env_set** %4, align 8
  %57 = load i8*, i8** %9, align 8
  %58 = call i32 @setenv_str(%struct.env_set* %56, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i8* %57)
  %59 = load %struct.env_set*, %struct.env_set** %4, align 8
  %60 = load %struct.tuntap*, %struct.tuntap** %3, align 8
  %61 = getelementptr inbounds %struct.tuntap, %struct.tuntap* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @setenv_int(%struct.env_set* %59, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i32 %62)
  %64 = load %struct.env_set*, %struct.env_set** %4, align 8
  %65 = load i8*, i8** %10, align 8
  %66 = call i32 @setenv_str(%struct.env_set* %64, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i8* %65)
  br label %67

67:                                               ; preds = %47, %42
  %68 = call i32 @gc_free(%struct.gc_arena* %5)
  ret void
}

declare dso_local i32 @gc_new(...) #1

declare dso_local i8* @print_in_addr_t(i32, i32, %struct.gc_arena*) #1

declare dso_local i32 @is_tun_p2p(%struct.tuntap*) #1

declare dso_local i32 @setenv_str(%struct.env_set*, i8*, i8*) #1

declare dso_local i8* @print_in6_addr(i32, i32, %struct.gc_arena*) #1

declare dso_local i32 @setenv_int(%struct.env_set*, i8*, i32) #1

declare dso_local i32 @gc_free(%struct.gc_arena*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
