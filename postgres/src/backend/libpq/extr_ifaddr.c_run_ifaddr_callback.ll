; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/libpq/extr_ifaddr.c_run_ifaddr_callback.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/libpq/extr_ifaddr.c_run_ifaddr_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i64 }
%struct.sockaddr_storage = type { i32 }
%struct.sockaddr_in = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@AF_INET = common dso_local global i64 0, align 8
@INADDR_ANY = common dso_local global i64 0, align 8
@AF_INET6 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32 (%struct.sockaddr*, %struct.sockaddr*, i8*)*, i8*, %struct.sockaddr*, %struct.sockaddr*)* @run_ifaddr_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @run_ifaddr_callback(i32 (%struct.sockaddr*, %struct.sockaddr*, i8*)* %0, i8* %1, %struct.sockaddr* %2, %struct.sockaddr* %3) #0 {
  %5 = alloca i32 (%struct.sockaddr*, %struct.sockaddr*, i8*)*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.sockaddr*, align 8
  %8 = alloca %struct.sockaddr*, align 8
  %9 = alloca %struct.sockaddr_storage, align 4
  store i32 (%struct.sockaddr*, %struct.sockaddr*, i8*)* %0, i32 (%struct.sockaddr*, %struct.sockaddr*, i8*)** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.sockaddr* %2, %struct.sockaddr** %7, align 8
  store %struct.sockaddr* %3, %struct.sockaddr** %8, align 8
  %10 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %11 = icmp ne %struct.sockaddr* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %4
  br label %58

13:                                               ; preds = %4
  %14 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %15 = icmp ne %struct.sockaddr* %14, null
  br i1 %15, label %16, label %43

16:                                               ; preds = %13
  %17 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %18 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %21 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %19, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %16
  store %struct.sockaddr* null, %struct.sockaddr** %8, align 8
  br label %42

25:                                               ; preds = %16
  %26 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %27 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @AF_INET, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %41

31:                                               ; preds = %25
  %32 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %33 = bitcast %struct.sockaddr* %32 to %struct.sockaddr_in*
  %34 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @INADDR_ANY, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %31
  store %struct.sockaddr* null, %struct.sockaddr** %8, align 8
  br label %40

40:                                               ; preds = %39, %31
  br label %41

41:                                               ; preds = %40, %25
  br label %42

42:                                               ; preds = %41, %24
  br label %43

43:                                               ; preds = %42, %13
  %44 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %45 = icmp ne %struct.sockaddr* %44, null
  br i1 %45, label %52, label %46

46:                                               ; preds = %43
  %47 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %48 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = call i32 @pg_sockaddr_cidr_mask(%struct.sockaddr_storage* %9, i32* null, i64 %49)
  %51 = bitcast %struct.sockaddr_storage* %9 to %struct.sockaddr*
  store %struct.sockaddr* %51, %struct.sockaddr** %8, align 8
  br label %52

52:                                               ; preds = %46, %43
  %53 = load i32 (%struct.sockaddr*, %struct.sockaddr*, i8*)*, i32 (%struct.sockaddr*, %struct.sockaddr*, i8*)** %5, align 8
  %54 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %55 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %56 = load i8*, i8** %6, align 8
  %57 = call i32 %53(%struct.sockaddr* %54, %struct.sockaddr* %55, i8* %56)
  br label %58

58:                                               ; preds = %52, %12
  ret void
}

declare dso_local i32 @pg_sockaddr_cidr_mask(%struct.sockaddr_storage*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
