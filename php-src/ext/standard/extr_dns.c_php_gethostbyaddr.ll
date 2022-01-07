; ModuleID = '/home/carl/AnghaBench/php-src/ext/standard/extr_dns.c_php_gethostbyaddr.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/standard/extr_dns.c_php_gethostbyaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in_addr = type { i32 }
%struct.hostent = type { i8* }

@AF_INET = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*)* @php_gethostbyaddr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @php_gethostbyaddr(i8* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.in_addr, align 4
  %5 = alloca %struct.hostent*, align 8
  store i8* %0, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = call i32 @inet_addr(i8* %6)
  %8 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %4, i32 0, i32 0
  store i32 %7, i32* %8, align 4
  %9 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %4, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp eq i32 %10, -1
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32* null, i32** %2, align 8
  br label %46

13:                                               ; preds = %1
  %14 = bitcast %struct.in_addr* %4 to i8*
  %15 = load i32, i32* @AF_INET, align 4
  %16 = call %struct.hostent* @gethostbyaddr(i8* %14, i32 4, i32 %15)
  store %struct.hostent* %16, %struct.hostent** %5, align 8
  %17 = load %struct.hostent*, %struct.hostent** %5, align 8
  %18 = icmp ne %struct.hostent* %17, null
  br i1 %18, label %19, label %32

19:                                               ; preds = %13
  %20 = load %struct.hostent*, %struct.hostent** %5, align 8
  %21 = getelementptr inbounds %struct.hostent, %struct.hostent* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  %23 = icmp eq i8* %22, null
  br i1 %23, label %32, label %24

24:                                               ; preds = %19
  %25 = load %struct.hostent*, %struct.hostent** %5, align 8
  %26 = getelementptr inbounds %struct.hostent, %struct.hostent* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 0
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %24, %19, %13
  %33 = load i8*, i8** %3, align 8
  %34 = load i8*, i8** %3, align 8
  %35 = call i32 @strlen(i8* %34)
  %36 = call i32* @zend_string_init(i8* %33, i32 %35, i32 0)
  store i32* %36, i32** %2, align 8
  br label %46

37:                                               ; preds = %24
  %38 = load %struct.hostent*, %struct.hostent** %5, align 8
  %39 = getelementptr inbounds %struct.hostent, %struct.hostent* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  %41 = load %struct.hostent*, %struct.hostent** %5, align 8
  %42 = getelementptr inbounds %struct.hostent, %struct.hostent* %41, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  %44 = call i32 @strlen(i8* %43)
  %45 = call i32* @zend_string_init(i8* %40, i32 %44, i32 0)
  store i32* %45, i32** %2, align 8
  br label %46

46:                                               ; preds = %37, %32, %12
  %47 = load i32*, i32** %2, align 8
  ret i32* %47
}

declare dso_local i32 @inet_addr(i8*) #1

declare dso_local %struct.hostent* @gethostbyaddr(i8*, i32, i32) #1

declare dso_local i32* @zend_string_init(i8*, i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
