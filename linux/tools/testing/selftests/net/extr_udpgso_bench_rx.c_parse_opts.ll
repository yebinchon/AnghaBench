; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/net/extr_udpgso_bench_rx.c_parse_opts.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/net/extr_udpgso_bench_rx.c_parse_opts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PF_INET6 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"::\00", align 1
@cfg_bind_addr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"4b:C:Gl:n:p:rR:S:tv\00", align 1
@PF_INET = common dso_local global i32 0, align 4
@cfg_family = common dso_local global i32 0, align 4
@cfg_alen = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"0.0.0.0\00", align 1
@optarg = common dso_local global i8* null, align 8
@cfg_connect_timeout_ms = common dso_local global i8* null, align 8
@cfg_gro_segment = common dso_local global i32 0, align 4
@cfg_expected_pkt_len = common dso_local global i8* null, align 8
@cfg_expected_pkt_nr = common dso_local global i8* null, align 8
@cfg_port = common dso_local global i8* null, align 8
@cfg_read_all = common dso_local global i32 0, align 4
@cfg_rcv_timeout_ms = common dso_local global i8* null, align 8
@cfg_expected_gso_size = common dso_local global i32 0, align 4
@cfg_tcp = common dso_local global i32 0, align 4
@cfg_verify = common dso_local global i32 0, align 4
@optind = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [36 x i8] c"TODO: implement verify mode for tcp\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8**)* @parse_opts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_opts(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  %6 = load i32, i32* @PF_INET6, align 4
  %7 = call i32 @setup_sockaddr(i32 %6, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* @cfg_bind_addr)
  br label %8

8:                                                ; preds = %45, %2
  %9 = load i32, i32* %3, align 4
  %10 = load i8**, i8*** %4, align 8
  %11 = call i32 @getopt(i32 %9, i8** %10, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  store i32 %11, i32* %5, align 4
  %12 = icmp ne i32 %11, -1
  br i1 %12, label %13, label %46

13:                                               ; preds = %8
  %14 = load i32, i32* %5, align 4
  switch i32 %14, label %45 [
    i32 52, label %15
    i32 98, label %19
    i32 67, label %23
    i32 71, label %26
    i32 108, label %27
    i32 110, label %30
    i32 112, label %33
    i32 114, label %36
    i32 82, label %37
    i32 83, label %40
    i32 116, label %43
    i32 118, label %44
  ]

15:                                               ; preds = %13
  %16 = load i32, i32* @PF_INET, align 4
  store i32 %16, i32* @cfg_family, align 4
  store i32 4, i32* @cfg_alen, align 4
  %17 = load i32, i32* @PF_INET, align 4
  %18 = call i32 @setup_sockaddr(i32 %17, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32* @cfg_bind_addr)
  br label %45

19:                                               ; preds = %13
  %20 = load i32, i32* @cfg_family, align 4
  %21 = load i8*, i8** @optarg, align 8
  %22 = call i32 @setup_sockaddr(i32 %20, i8* %21, i32* @cfg_bind_addr)
  br label %45

23:                                               ; preds = %13
  %24 = load i8*, i8** @optarg, align 8
  %25 = call i8* @strtoul(i8* %24, i32* null, i32 0)
  store i8* %25, i8** @cfg_connect_timeout_ms, align 8
  br label %45

26:                                               ; preds = %13
  store i32 1, i32* @cfg_gro_segment, align 4
  br label %45

27:                                               ; preds = %13
  %28 = load i8*, i8** @optarg, align 8
  %29 = call i8* @strtoul(i8* %28, i32* null, i32 0)
  store i8* %29, i8** @cfg_expected_pkt_len, align 8
  br label %45

30:                                               ; preds = %13
  %31 = load i8*, i8** @optarg, align 8
  %32 = call i8* @strtoul(i8* %31, i32* null, i32 0)
  store i8* %32, i8** @cfg_expected_pkt_nr, align 8
  br label %45

33:                                               ; preds = %13
  %34 = load i8*, i8** @optarg, align 8
  %35 = call i8* @strtoul(i8* %34, i32* null, i32 0)
  store i8* %35, i8** @cfg_port, align 8
  br label %45

36:                                               ; preds = %13
  store i32 1, i32* @cfg_read_all, align 4
  br label %45

37:                                               ; preds = %13
  %38 = load i8*, i8** @optarg, align 8
  %39 = call i8* @strtoul(i8* %38, i32* null, i32 0)
  store i8* %39, i8** @cfg_rcv_timeout_ms, align 8
  br label %45

40:                                               ; preds = %13
  %41 = load i8*, i8** @optarg, align 8
  %42 = call i32 @strtol(i8* %41, i32* null, i32 0)
  store i32 %42, i32* @cfg_expected_gso_size, align 4
  br label %45

43:                                               ; preds = %13
  store i32 1, i32* @cfg_tcp, align 4
  br label %45

44:                                               ; preds = %13
  store i32 1, i32* @cfg_verify, align 4
  store i32 1, i32* @cfg_read_all, align 4
  br label %45

45:                                               ; preds = %13, %44, %43, %40, %37, %36, %33, %30, %27, %26, %23, %19, %15
  br label %8

46:                                               ; preds = %8
  %47 = load i32, i32* @optind, align 4
  %48 = load i32, i32* %3, align 4
  %49 = icmp ne i32 %47, %48
  br i1 %49, label %50, label %55

50:                                               ; preds = %46
  %51 = load i8**, i8*** %4, align 8
  %52 = getelementptr inbounds i8*, i8** %51, i64 0
  %53 = load i8*, i8** %52, align 8
  %54 = call i32 @usage(i8* %53)
  br label %55

55:                                               ; preds = %50, %46
  %56 = load i32, i32* @cfg_tcp, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %55
  %59 = load i32, i32* @cfg_verify, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %58
  %62 = call i32 @error(i32 1, i32 0, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  br label %63

63:                                               ; preds = %61, %58, %55
  ret void
}

declare dso_local i32 @setup_sockaddr(i32, i8*, i32*) #1

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i8* @strtoul(i8*, i32*, i32) #1

declare dso_local i32 @strtol(i8*, i32*, i32) #1

declare dso_local i32 @usage(i8*) #1

declare dso_local i32 @error(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
