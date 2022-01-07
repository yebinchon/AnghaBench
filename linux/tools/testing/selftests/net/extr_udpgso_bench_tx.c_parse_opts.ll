; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/net/extr_udpgso_bench_tx.c_parse_opts.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/net/extr_udpgso_bench_tx.c_parse_opts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [27 x i8] c"46acC:D:Hl:mM:p:s:PS:tTuvz\00", align 1
@cfg_family = common dso_local global i64 0, align 8
@PF_UNSPEC = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [21 x i8] c"Pass one of -4 or -6\00", align 1
@PF_INET = common dso_local global i64 0, align 8
@cfg_alen = common dso_local global i32 0, align 4
@PF_INET6 = common dso_local global i64 0, align 8
@cfg_audit = common dso_local global i32 0, align 4
@cfg_cache_trash = common dso_local global i32 0, align 4
@optarg = common dso_local global i32 0, align 4
@cfg_cpu = common dso_local global i32 0, align 4
@cfg_dst_addr = common dso_local global i32 0, align 4
@cfg_runtime_ms = common dso_local global i32 0, align 4
@cfg_sendmmsg = common dso_local global i32 0, align 4
@cfg_msg_nr = common dso_local global i32 0, align 4
@cfg_port = common dso_local global i32 0, align 4
@cfg_poll = common dso_local global i32 0, align 4
@cfg_payload_len = common dso_local global i32 0, align 4
@cfg_gso_size = common dso_local global i32 0, align 4
@cfg_segment = common dso_local global i32 0, align 4
@SOF_TIMESTAMPING_TX_HARDWARE = common dso_local global i32 0, align 4
@cfg_tx_ts = common dso_local global i32 0, align 4
@cfg_tx_tstamp = common dso_local global i32 0, align 4
@cfg_tcp = common dso_local global i32 0, align 4
@cfg_connected = common dso_local global i32 0, align 4
@cfg_verbose = common dso_local global i32 0, align 4
@cfg_zerocopy = common dso_local global i32 0, align 4
@optind = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"must pass one of -4 or -6\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"connectionless tcp makes no sense\00", align 1
@.str.4 = private unnamed_addr constant [44 x i8] c"cannot combine segment offload and sendmmsg\00", align 1
@.str.5 = private unnamed_addr constant [49 x i8] c"Options -T and -H require either -S or -m option\00", align 1
@ETH_DATA_LEN = common dso_local global i32 0, align 4
@cfg_mss = common dso_local global i32 0, align 4
@ETH_MAX_MTU = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [33 x i8] c"payload length %u exceeds max %u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8**)* @parse_opts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_opts(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  br label %8

8:                                                ; preds = %65, %2
  %9 = load i32, i32* %3, align 4
  %10 = load i8**, i8*** %4, align 8
  %11 = call i32 @getopt(i32 %9, i8** %10, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  store i32 %11, i32* %7, align 4
  %12 = icmp ne i32 %11, -1
  br i1 %12, label %13, label %66

13:                                               ; preds = %8
  %14 = load i32, i32* %7, align 4
  switch i32 %14, label %65 [
    i32 52, label %15
    i32 54, label %23
    i32 97, label %31
    i32 99, label %32
    i32 67, label %33
    i32 68, label %36
    i32 108, label %40
    i32 109, label %44
    i32 77, label %45
    i32 112, label %48
    i32 80, label %51
    i32 115, label %52
    i32 83, label %55
    i32 72, label %58
    i32 116, label %60
    i32 84, label %61
    i32 117, label %62
    i32 118, label %63
    i32 122, label %64
  ]

15:                                               ; preds = %13
  %16 = load i64, i64* @cfg_family, align 8
  %17 = load i64, i64* @PF_UNSPEC, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = call i32 (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %21

21:                                               ; preds = %19, %15
  %22 = load i64, i64* @PF_INET, align 8
  store i64 %22, i64* @cfg_family, align 8
  store i32 4, i32* @cfg_alen, align 4
  br label %65

23:                                               ; preds = %13
  %24 = load i64, i64* @cfg_family, align 8
  %25 = load i64, i64* @PF_UNSPEC, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %23
  %28 = call i32 (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %29

29:                                               ; preds = %27, %23
  %30 = load i64, i64* @PF_INET6, align 8
  store i64 %30, i64* @cfg_family, align 8
  store i32 4, i32* @cfg_alen, align 4
  br label %65

31:                                               ; preds = %13
  store i32 1, i32* @cfg_audit, align 4
  br label %65

32:                                               ; preds = %13
  store i32 1, i32* @cfg_cache_trash, align 4
  br label %65

33:                                               ; preds = %13
  %34 = load i32, i32* @optarg, align 4
  %35 = call i32 @strtol(i32 %34, i32* null, i32 0)
  store i32 %35, i32* @cfg_cpu, align 4
  br label %65

36:                                               ; preds = %13
  %37 = load i64, i64* @cfg_family, align 8
  %38 = load i32, i32* @optarg, align 4
  %39 = call i32 @setup_sockaddr(i64 %37, i32 %38, i32* @cfg_dst_addr)
  br label %65

40:                                               ; preds = %13
  %41 = load i32, i32* @optarg, align 4
  %42 = call i32 @strtoul(i32 %41, i32* null, i32 10)
  %43 = mul nsw i32 %42, 1000
  store i32 %43, i32* @cfg_runtime_ms, align 4
  br label %65

44:                                               ; preds = %13
  store i32 1, i32* @cfg_sendmmsg, align 4
  br label %65

45:                                               ; preds = %13
  %46 = load i32, i32* @optarg, align 4
  %47 = call i32 @strtoul(i32 %46, i32* null, i32 10)
  store i32 %47, i32* @cfg_msg_nr, align 4
  br label %65

48:                                               ; preds = %13
  %49 = load i32, i32* @optarg, align 4
  %50 = call i32 @strtoul(i32 %49, i32* null, i32 0)
  store i32 %50, i32* @cfg_port, align 4
  br label %65

51:                                               ; preds = %13
  store i32 1, i32* @cfg_poll, align 4
  br label %65

52:                                               ; preds = %13
  %53 = load i32, i32* @optarg, align 4
  %54 = call i32 @strtoul(i32 %53, i32* null, i32 0)
  store i32 %54, i32* @cfg_payload_len, align 4
  br label %65

55:                                               ; preds = %13
  %56 = load i32, i32* @optarg, align 4
  %57 = call i32 @strtoul(i32 %56, i32* null, i32 0)
  store i32 %57, i32* @cfg_gso_size, align 4
  store i32 1, i32* @cfg_segment, align 4
  br label %65

58:                                               ; preds = %13
  %59 = load i32, i32* @SOF_TIMESTAMPING_TX_HARDWARE, align 4
  store i32 %59, i32* @cfg_tx_ts, align 4
  store i32 1, i32* @cfg_tx_tstamp, align 4
  br label %65

60:                                               ; preds = %13
  store i32 1, i32* @cfg_tcp, align 4
  br label %65

61:                                               ; preds = %13
  store i32 1, i32* @cfg_tx_tstamp, align 4
  br label %65

62:                                               ; preds = %13
  store i32 0, i32* @cfg_connected, align 4
  br label %65

63:                                               ; preds = %13
  store i32 1, i32* @cfg_verbose, align 4
  br label %65

64:                                               ; preds = %13
  store i32 1, i32* @cfg_zerocopy, align 4
  br label %65

65:                                               ; preds = %13, %64, %63, %62, %61, %60, %58, %55, %52, %51, %48, %45, %44, %40, %36, %33, %32, %31, %29, %21
  br label %8

66:                                               ; preds = %8
  %67 = load i32, i32* @optind, align 4
  %68 = load i32, i32* %3, align 4
  %69 = icmp ne i32 %67, %68
  br i1 %69, label %70, label %75

70:                                               ; preds = %66
  %71 = load i8**, i8*** %4, align 8
  %72 = getelementptr inbounds i8*, i8** %71, i64 0
  %73 = load i8*, i8** %72, align 8
  %74 = call i32 @usage(i8* %73)
  br label %75

75:                                               ; preds = %70, %66
  %76 = load i64, i64* @cfg_family, align 8
  %77 = load i64, i64* @PF_UNSPEC, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %81

79:                                               ; preds = %75
  %80 = call i32 (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  br label %81

81:                                               ; preds = %79, %75
  %82 = load i32, i32* @cfg_tcp, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %81
  %85 = load i32, i32* @cfg_connected, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %89, label %87

87:                                               ; preds = %84
  %88 = call i32 (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  br label %89

89:                                               ; preds = %87, %84, %81
  %90 = load i32, i32* @cfg_segment, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %97

92:                                               ; preds = %89
  %93 = load i32, i32* @cfg_sendmmsg, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %92
  %96 = call i32 (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0))
  br label %97

97:                                               ; preds = %95, %92, %89
  %98 = load i32, i32* @cfg_tx_tstamp, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %108

100:                                              ; preds = %97
  %101 = load i32, i32* @cfg_segment, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %108, label %103

103:                                              ; preds = %100
  %104 = load i32, i32* @cfg_sendmmsg, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %108, label %106

106:                                              ; preds = %103
  %107 = call i32 (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.5, i64 0, i64 0))
  br label %108

108:                                              ; preds = %106, %103, %100, %97
  %109 = load i64, i64* @cfg_family, align 8
  %110 = load i64, i64* @PF_INET, align 8
  %111 = icmp eq i64 %109, %110
  br i1 %111, label %112, label %113

112:                                              ; preds = %108
  store i32 8, i32* %6, align 4
  br label %114

113:                                              ; preds = %108
  store i32 8, i32* %6, align 4
  br label %114

114:                                              ; preds = %113, %112
  %115 = load i32, i32* @ETH_DATA_LEN, align 4
  %116 = load i32, i32* %6, align 4
  %117 = sub nsw i32 %115, %116
  store i32 %117, i32* @cfg_mss, align 4
  %118 = load i32, i32* @ETH_MAX_MTU, align 4
  %119 = load i32, i32* %6, align 4
  %120 = sub nsw i32 %118, %119
  store i32 %120, i32* %5, align 4
  %121 = load i32, i32* @cfg_gso_size, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %125, label %123

123:                                              ; preds = %114
  %124 = load i32, i32* @cfg_mss, align 4
  store i32 %124, i32* @cfg_gso_size, align 4
  br label %125

125:                                              ; preds = %123, %114
  %126 = load i32, i32* @cfg_payload_len, align 4
  %127 = load i32, i32* %5, align 4
  %128 = icmp sgt i32 %126, %127
  br i1 %128, label %129, label %133

129:                                              ; preds = %125
  %130 = load i32, i32* @cfg_payload_len, align 4
  %131 = load i32, i32* %5, align 4
  %132 = call i32 (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0), i32 %130, i32 %131)
  br label %133

133:                                              ; preds = %129, %125
  ret void
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @error(i32, i32, i8*, ...) #1

declare dso_local i32 @strtol(i32, i32*, i32) #1

declare dso_local i32 @setup_sockaddr(i64, i32, i32*) #1

declare dso_local i32 @strtoul(i32, i32*, i32) #1

declare dso_local i32 @usage(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
