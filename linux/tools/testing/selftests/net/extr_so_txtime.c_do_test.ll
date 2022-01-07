; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/net/extr_so_txtime.c_do_test.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/net/extr_so_txtime.c_do_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i64 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"\0ASO_TXTIME ipv%c clock %s\0A\00", align 1
@PF_INET = common dso_local global i64 0, align 8
@cfg_clockid = common dso_local global i64 0, align 8
@CLOCK_TAI = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"tai\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"monotonic\00", align 1
@glob_tstart = common dso_local global i32 0, align 4
@cfg_num_pkt = common dso_local global i32 0, align 4
@cfg_in = common dso_local global i32* null, align 8
@cfg_out = common dso_local global i32* null, align 8
@errno = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"close r\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"close t\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sockaddr*, i32)* @do_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_test(%struct.sockaddr* %0, i32 %1) #0 {
  %3 = alloca %struct.sockaddr*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.sockaddr* %0, %struct.sockaddr** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* @stderr, align 4
  %9 = load %struct.sockaddr*, %struct.sockaddr** %3, align 8
  %10 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @PF_INET, align 8
  %13 = icmp eq i64 %11, %12
  %14 = zext i1 %13 to i64
  %15 = select i1 %13, i32 52, i32 54
  %16 = trunc i32 %15 to i8
  %17 = load i64, i64* @cfg_clockid, align 8
  %18 = load i64, i64* @CLOCK_TAI, align 8
  %19 = icmp eq i64 %17, %18
  %20 = zext i1 %19 to i64
  %21 = select i1 %19, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0)
  %22 = call i32 @fprintf(i32 %8, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i8 signext %16, i8* %21)
  %23 = load %struct.sockaddr*, %struct.sockaddr** %3, align 8
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @setup_tx(%struct.sockaddr* %23, i32 %24)
  store i32 %25, i32* %5, align 4
  %26 = load %struct.sockaddr*, %struct.sockaddr** %3, align 8
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @setup_rx(%struct.sockaddr* %26, i32 %27)
  store i32 %28, i32* %6, align 4
  %29 = call i32 (...) @gettime_ns()
  store i32 %29, i32* @glob_tstart, align 4
  store i32 0, i32* %7, align 4
  br label %30

30:                                               ; preds = %41, %2
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* @cfg_num_pkt, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %44

34:                                               ; preds = %30
  %35 = load i32, i32* %5, align 4
  %36 = load i32*, i32** @cfg_in, align 8
  %37 = load i32, i32* %7, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = call i32 @do_send_one(i32 %35, i32* %39)
  br label %41

41:                                               ; preds = %34
  %42 = load i32, i32* %7, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %7, align 4
  br label %30

44:                                               ; preds = %30
  store i32 0, i32* %7, align 4
  br label %45

45:                                               ; preds = %56, %44
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* @cfg_num_pkt, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %59

49:                                               ; preds = %45
  %50 = load i32, i32* %6, align 4
  %51 = load i32*, i32** @cfg_out, align 8
  %52 = load i32, i32* %7, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = call i32 @do_recv_one(i32 %50, i32* %54)
  br label %56

56:                                               ; preds = %49
  %57 = load i32, i32* %7, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %7, align 4
  br label %45

59:                                               ; preds = %45
  %60 = load i32, i32* %6, align 4
  %61 = call i32 @do_recv_verify_empty(i32 %60)
  %62 = load i32, i32* %6, align 4
  %63 = call i64 @close(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %59
  %66 = load i32, i32* @errno, align 4
  %67 = call i32 @error(i32 1, i32 %66, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  br label %68

68:                                               ; preds = %65, %59
  %69 = load i32, i32* %5, align 4
  %70 = call i64 @close(i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %68
  %73 = load i32, i32* @errno, align 4
  %74 = call i32 @error(i32 1, i32 %73, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  br label %75

75:                                               ; preds = %72, %68
  ret void
}

declare dso_local i32 @fprintf(i32, i8*, i8 signext, i8*) #1

declare dso_local i32 @setup_tx(%struct.sockaddr*, i32) #1

declare dso_local i32 @setup_rx(%struct.sockaddr*, i32) #1

declare dso_local i32 @gettime_ns(...) #1

declare dso_local i32 @do_send_one(i32, i32*) #1

declare dso_local i32 @do_recv_one(i32, i32*) #1

declare dso_local i32 @do_recv_verify_empty(i32) #1

declare dso_local i64 @close(i32) #1

declare dso_local i32 @error(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
