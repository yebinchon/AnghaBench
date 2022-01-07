; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_options.c_get_ipv6_addr_no_netbits.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_options.c_get_ipv6_addr_no_netbits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gc_arena = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, %struct.gc_arena*)* @get_ipv6_addr_no_netbits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @get_ipv6_addr_no_netbits(i8* %0, %struct.gc_arena* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.gc_arena*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store %struct.gc_arena* %1, %struct.gc_arena** %4, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = call i8* @strchr(i8* %8, i8 signext 47)
  store i8* %9, i8** %5, align 8
  store i8* null, i8** %6, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = icmp eq i8* null, %10
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = load i8*, i8** %3, align 8
  %14 = load %struct.gc_arena*, %struct.gc_arena** %4, align 8
  %15 = call i8* @string_alloc(i8* %13, %struct.gc_arena* %14)
  store i8* %15, i8** %6, align 8
  br label %30

16:                                               ; preds = %2
  %17 = load i8*, i8** %5, align 8
  %18 = load i8*, i8** %3, align 8
  %19 = ptrtoint i8* %17 to i64
  %20 = ptrtoint i8* %18 to i64
  %21 = sub i64 %19, %20
  store i64 %21, i64* %7, align 8
  %22 = load i64, i64* %7, align 8
  %23 = add i64 %22, 1
  %24 = load %struct.gc_arena*, %struct.gc_arena** %4, align 8
  %25 = call i8* @gc_malloc(i64 %23, i32 1, %struct.gc_arena* %24)
  store i8* %25, i8** %6, align 8
  %26 = load i8*, i8** %6, align 8
  %27 = load i8*, i8** %3, align 8
  %28 = load i64, i64* %7, align 8
  %29 = call i32 @memcpy(i8* %26, i8* %27, i64 %28)
  br label %30

30:                                               ; preds = %16, %12
  %31 = load i8*, i8** %6, align 8
  ret i8* %31
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i8* @string_alloc(i8*, %struct.gc_arena*) #1

declare dso_local i8* @gc_malloc(i64, i32, %struct.gc_arena*) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
