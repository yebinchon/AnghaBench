; ModuleID = '/home/carl/AnghaBench/postgres/src/common/extr_ip.c_pg_getaddrinfo_all.c'
source_filename = "/home/carl/AnghaBench/postgres/src/common/extr_ip.c_pg_getaddrinfo_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.addrinfo = type { i64 }

@AF_UNIX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pg_getaddrinfo_all(i8* %0, i8* %1, %struct.addrinfo* %2, %struct.addrinfo** %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.addrinfo*, align 8
  %8 = alloca %struct.addrinfo**, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.addrinfo* %2, %struct.addrinfo** %7, align 8
  store %struct.addrinfo** %3, %struct.addrinfo*** %8, align 8
  %10 = load %struct.addrinfo**, %struct.addrinfo*** %8, align 8
  store %struct.addrinfo* null, %struct.addrinfo** %10, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %13, label %19

13:                                               ; preds = %4
  %14 = load i8*, i8** %5, align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 0
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %13, %4
  br label %22

20:                                               ; preds = %13
  %21 = load i8*, i8** %5, align 8
  br label %22

22:                                               ; preds = %20, %19
  %23 = phi i8* [ null, %19 ], [ %21, %20 ]
  %24 = load i8*, i8** %6, align 8
  %25 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  %26 = load %struct.addrinfo**, %struct.addrinfo*** %8, align 8
  %27 = call i32 @getaddrinfo(i8* %23, i8* %24, %struct.addrinfo* %25, %struct.addrinfo** %26)
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %9, align 4
  ret i32 %28
}

declare dso_local i32 @getaddrinfo(i8*, i8*, %struct.addrinfo*, %struct.addrinfo**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
