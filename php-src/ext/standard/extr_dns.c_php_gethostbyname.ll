; ModuleID = '/home/carl/AnghaBench/php-src/ext/standard/extr_dns.c_php_gethostbyname.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/standard/extr_dns.c_php_gethostbyname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostent = type { %struct.in_addr* }
%struct.in_addr = type { %struct.in_addr* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*)* @php_gethostbyname to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @php_gethostbyname(i8* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.hostent*, align 8
  %5 = alloca %struct.in_addr*, align 8
  %6 = alloca %struct.in_addr, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = call %struct.hostent* @php_network_gethostbyname(i8* %8)
  store %struct.hostent* %9, %struct.hostent** %4, align 8
  %10 = load %struct.hostent*, %struct.hostent** %4, align 8
  %11 = icmp ne %struct.hostent* %10, null
  br i1 %11, label %17, label %12

12:                                               ; preds = %1
  %13 = load i8*, i8** %3, align 8
  %14 = load i8*, i8** %3, align 8
  %15 = call i32 @strlen(i8* %14)
  %16 = call i32* @zend_string_init(i8* %13, i32 %15, i32 0)
  store i32* %16, i32** %2, align 8
  br label %41

17:                                               ; preds = %1
  %18 = load %struct.hostent*, %struct.hostent** %4, align 8
  %19 = getelementptr inbounds %struct.hostent, %struct.hostent* %18, i32 0, i32 0
  %20 = load %struct.in_addr*, %struct.in_addr** %19, align 8
  %21 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %20, i64 0
  %22 = call i32 @memcpy(%struct.in_addr** %5, %struct.in_addr* %21, i32 8)
  %23 = load %struct.in_addr*, %struct.in_addr** %5, align 8
  %24 = icmp ne %struct.in_addr* %23, null
  br i1 %24, label %30, label %25

25:                                               ; preds = %17
  %26 = load i8*, i8** %3, align 8
  %27 = load i8*, i8** %3, align 8
  %28 = call i32 @strlen(i8* %27)
  %29 = call i32* @zend_string_init(i8* %26, i32 %28, i32 0)
  store i32* %29, i32** %2, align 8
  br label %41

30:                                               ; preds = %17
  %31 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %6, i32 0, i32 0
  %32 = load %struct.in_addr*, %struct.in_addr** %5, align 8
  %33 = call i32 @memcpy(%struct.in_addr** %31, %struct.in_addr* %32, i32 8)
  %34 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %6, i32 0, i32 0
  %35 = load %struct.in_addr*, %struct.in_addr** %34, align 8
  %36 = call i8* @inet_ntoa(%struct.in_addr* %35)
  store i8* %36, i8** %7, align 8
  %37 = load i8*, i8** %7, align 8
  %38 = load i8*, i8** %7, align 8
  %39 = call i32 @strlen(i8* %38)
  %40 = call i32* @zend_string_init(i8* %37, i32 %39, i32 0)
  store i32* %40, i32** %2, align 8
  br label %41

41:                                               ; preds = %30, %25, %12
  %42 = load i32*, i32** %2, align 8
  ret i32* %42
}

declare dso_local %struct.hostent* @php_network_gethostbyname(i8*) #1

declare dso_local i32* @zend_string_init(i8*, i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @memcpy(%struct.in_addr**, %struct.in_addr*, i32) #1

declare dso_local i8* @inet_ntoa(%struct.in_addr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
