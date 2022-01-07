; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_socket.c_get_cached_dns_entry.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_socket.c_get_cached_dns_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cached_dns_entry = type { i32, i32, %struct.addrinfo*, i32, i32, %struct.cached_dns_entry* }
%struct.addrinfo = type { i32 }

@GETADDR_CACHE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cached_dns_entry*, i8*, i8*, i32, i32, %struct.addrinfo**)* @get_cached_dns_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_cached_dns_entry(%struct.cached_dns_entry* %0, i8* %1, i8* %2, i32 %3, i32 %4, %struct.addrinfo** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.cached_dns_entry*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.addrinfo**, align 8
  %14 = alloca %struct.cached_dns_entry*, align 8
  %15 = alloca i32, align 4
  store %struct.cached_dns_entry* %0, %struct.cached_dns_entry** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store %struct.addrinfo** %5, %struct.addrinfo*** %13, align 8
  %16 = load i32, i32* %12, align 4
  %17 = load i32, i32* @GETADDR_CACHE_MASK, align 4
  %18 = and i32 %16, %17
  store i32 %18, i32* %15, align 4
  %19 = load %struct.cached_dns_entry*, %struct.cached_dns_entry** %8, align 8
  store %struct.cached_dns_entry* %19, %struct.cached_dns_entry** %14, align 8
  br label %20

20:                                               ; preds = %55, %6
  %21 = load %struct.cached_dns_entry*, %struct.cached_dns_entry** %14, align 8
  %22 = icmp ne %struct.cached_dns_entry* %21, null
  br i1 %22, label %23, label %59

23:                                               ; preds = %20
  %24 = load %struct.cached_dns_entry*, %struct.cached_dns_entry** %14, align 8
  %25 = getelementptr inbounds %struct.cached_dns_entry, %struct.cached_dns_entry* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 4
  %27 = load i8*, i8** %9, align 8
  %28 = call i64 @streqnull(i32 %26, i8* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %54

30:                                               ; preds = %23
  %31 = load %struct.cached_dns_entry*, %struct.cached_dns_entry** %14, align 8
  %32 = getelementptr inbounds %struct.cached_dns_entry, %struct.cached_dns_entry* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 8
  %34 = load i8*, i8** %10, align 8
  %35 = call i64 @streqnull(i32 %33, i8* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %54

37:                                               ; preds = %30
  %38 = load %struct.cached_dns_entry*, %struct.cached_dns_entry** %14, align 8
  %39 = getelementptr inbounds %struct.cached_dns_entry, %struct.cached_dns_entry* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* %11, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %54

43:                                               ; preds = %37
  %44 = load %struct.cached_dns_entry*, %struct.cached_dns_entry** %14, align 8
  %45 = getelementptr inbounds %struct.cached_dns_entry, %struct.cached_dns_entry* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %15, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %54

49:                                               ; preds = %43
  %50 = load %struct.cached_dns_entry*, %struct.cached_dns_entry** %14, align 8
  %51 = getelementptr inbounds %struct.cached_dns_entry, %struct.cached_dns_entry* %50, i32 0, i32 2
  %52 = load %struct.addrinfo*, %struct.addrinfo** %51, align 8
  %53 = load %struct.addrinfo**, %struct.addrinfo*** %13, align 8
  store %struct.addrinfo* %52, %struct.addrinfo** %53, align 8
  store i32 0, i32* %7, align 4
  br label %60

54:                                               ; preds = %43, %37, %30, %23
  br label %55

55:                                               ; preds = %54
  %56 = load %struct.cached_dns_entry*, %struct.cached_dns_entry** %14, align 8
  %57 = getelementptr inbounds %struct.cached_dns_entry, %struct.cached_dns_entry* %56, i32 0, i32 5
  %58 = load %struct.cached_dns_entry*, %struct.cached_dns_entry** %57, align 8
  store %struct.cached_dns_entry* %58, %struct.cached_dns_entry** %14, align 8
  br label %20

59:                                               ; preds = %20
  store i32 -1, i32* %7, align 4
  br label %60

60:                                               ; preds = %59, %49
  %61 = load i32, i32* %7, align 4
  ret i32 %61
}

declare dso_local i64 @streqnull(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
