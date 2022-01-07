; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/net/extr_udpgso.c_run_all.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/net/extr_udpgso.c_run_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.testcase = type { i64 }
%struct.sockaddr = type { i64 }

@AF_INET = common dso_local global i64 0, align 8
@testcases_v4 = common dso_local global %struct.testcase* null, align 8
@testcases_v6 = common dso_local global %struct.testcase* null, align 8
@cfg_specific_test_id = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, %struct.sockaddr*, i32)* @run_all to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @run_all(i32 %0, i32 %1, %struct.sockaddr* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.sockaddr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.testcase*, align 8
  %10 = alloca %struct.testcase*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store %struct.sockaddr* %2, %struct.sockaddr** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %12 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @AF_INET, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %4
  %17 = load %struct.testcase*, %struct.testcase** @testcases_v4, align 8
  br label %20

18:                                               ; preds = %4
  %19 = load %struct.testcase*, %struct.testcase** @testcases_v6, align 8
  br label %20

20:                                               ; preds = %18, %16
  %21 = phi %struct.testcase* [ %17, %16 ], [ %19, %18 ]
  store %struct.testcase* %21, %struct.testcase** %9, align 8
  %22 = load %struct.testcase*, %struct.testcase** %9, align 8
  store %struct.testcase* %22, %struct.testcase** %10, align 8
  br label %23

23:                                               ; preds = %49, %20
  %24 = load %struct.testcase*, %struct.testcase** %10, align 8
  %25 = getelementptr inbounds %struct.testcase, %struct.testcase* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %52

28:                                               ; preds = %23
  %29 = load i32, i32* @cfg_specific_test_id, align 4
  %30 = icmp eq i32 %29, -1
  br i1 %30, label %41, label %31

31:                                               ; preds = %28
  %32 = load i32, i32* @cfg_specific_test_id, align 4
  %33 = sext i32 %32 to i64
  %34 = load %struct.testcase*, %struct.testcase** %10, align 8
  %35 = load %struct.testcase*, %struct.testcase** %9, align 8
  %36 = ptrtoint %struct.testcase* %34 to i64
  %37 = ptrtoint %struct.testcase* %35 to i64
  %38 = sub i64 %36, %37
  %39 = sdiv exact i64 %38, 8
  %40 = icmp eq i64 %33, %39
  br i1 %40, label %41, label %48

41:                                               ; preds = %31, %28
  %42 = load %struct.testcase*, %struct.testcase** %10, align 8
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* %6, align 4
  %45 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %46 = load i32, i32* %8, align 4
  %47 = call i32 @run_one(%struct.testcase* %42, i32 %43, i32 %44, %struct.sockaddr* %45, i32 %46)
  br label %48

48:                                               ; preds = %41, %31
  br label %49

49:                                               ; preds = %48
  %50 = load %struct.testcase*, %struct.testcase** %10, align 8
  %51 = getelementptr inbounds %struct.testcase, %struct.testcase* %50, i32 1
  store %struct.testcase* %51, %struct.testcase** %10, align 8
  br label %23

52:                                               ; preds = %23
  ret void
}

declare dso_local i32 @run_one(%struct.testcase*, i32, i32, %struct.sockaddr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
