; ModuleID = '/home/carl/AnghaBench/proxychains-ng/src/extr_libproxychains.c_getaddrinfo.c'
source_filename = "/home/carl/AnghaBench/proxychains-ng/src/extr_libproxychains.c_getaddrinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.addrinfo = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"getaddrinfo: %s %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"null\00", align 1
@proxychains_resolver = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @getaddrinfo(i8* %0, i8* %1, %struct.addrinfo* %2, %struct.addrinfo** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.addrinfo*, align 8
  %9 = alloca %struct.addrinfo**, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.addrinfo* %2, %struct.addrinfo** %8, align 8
  store %struct.addrinfo** %3, %struct.addrinfo*** %9, align 8
  %10 = call i32 (...) @INIT()
  %11 = load i8*, i8** %6, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %4
  %14 = load i8*, i8** %6, align 8
  br label %16

15:                                               ; preds = %4
  br label %16

16:                                               ; preds = %15, %13
  %17 = phi i8* [ %14, %13 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), %15 ]
  %18 = load i8*, i8** %7, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = load i8*, i8** %7, align 8
  br label %23

22:                                               ; preds = %16
  br label %23

23:                                               ; preds = %22, %20
  %24 = phi i8* [ %21, %20 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), %22 ]
  %25 = call i32 @PDEBUG(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8* %17, i8* %24)
  %26 = load i64, i64* @proxychains_resolver, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %23
  %29 = load i8*, i8** %6, align 8
  %30 = load i8*, i8** %7, align 8
  %31 = load %struct.addrinfo*, %struct.addrinfo** %8, align 8
  %32 = load %struct.addrinfo**, %struct.addrinfo*** %9, align 8
  %33 = call i32 @proxy_getaddrinfo(i8* %29, i8* %30, %struct.addrinfo* %31, %struct.addrinfo** %32)
  store i32 %33, i32* %5, align 4
  br label %40

34:                                               ; preds = %23
  %35 = load i8*, i8** %6, align 8
  %36 = load i8*, i8** %7, align 8
  %37 = load %struct.addrinfo*, %struct.addrinfo** %8, align 8
  %38 = load %struct.addrinfo**, %struct.addrinfo*** %9, align 8
  %39 = call i32 @true_getaddrinfo(i8* %35, i8* %36, %struct.addrinfo* %37, %struct.addrinfo** %38)
  store i32 %39, i32* %5, align 4
  br label %40

40:                                               ; preds = %34, %28
  %41 = load i32, i32* %5, align 4
  ret i32 %41
}

declare dso_local i32 @INIT(...) #1

declare dso_local i32 @PDEBUG(i8*, i8*, i8*) #1

declare dso_local i32 @proxy_getaddrinfo(i8*, i8*, %struct.addrinfo*, %struct.addrinfo**) #1

declare dso_local i32 @true_getaddrinfo(i8*, i8*, %struct.addrinfo*, %struct.addrinfo**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
