; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/networking/timestamping/extr_txtimestamp.c_parse_opt.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/networking/timestamping/extr_txtimestamp.c_parse_opt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [25 x i8] c"46c:CDFhIl:Lnp:PrRuv:V:x\00", align 1
@do_ipv6 = common dso_local global i64 0, align 8
@do_ipv4 = common dso_local global i64 0, align 8
@optarg = common dso_local global i32 0, align 4
@cfg_num_pkts = common dso_local global i8* null, align 8
@cfg_use_cmsg = common dso_local global i32 0, align 4
@cfg_no_delay = common dso_local global i32 0, align 4
@cfg_poll_timeout = common dso_local global i32 0, align 4
@cfg_do_pktinfo = common dso_local global i32 0, align 4
@cfg_payload_len = common dso_local global i32 0, align 4
@cfg_do_listen = common dso_local global i32 0, align 4
@cfg_loop_nodata = common dso_local global i32 0, align 4
@dest_port = common dso_local global i8* null, align 8
@cfg_use_pf_packet = common dso_local global i32 0, align 4
@SOCK_DGRAM = common dso_local global i64 0, align 8
@cfg_proto = common dso_local global i64 0, align 8
@cfg_ipproto = common dso_local global i32 0, align 4
@SOCK_RAW = common dso_local global i64 0, align 8
@IPPROTO_UDP = common dso_local global i32 0, align 4
@IPPROTO_RAW = common dso_local global i32 0, align 4
@cfg_delay_snd = common dso_local global i8* null, align 8
@cfg_delay_ack = common dso_local global i8* null, align 8
@cfg_show_payload = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"payload may not be nonzero\00", align 1
@SOCK_STREAM = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [37 x i8] c"udp packet might exceed expected MTU\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"pass -4 or -6, not both\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"pass -P, -r, -R or -u, not multiple\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"cannot ask for pktinfo over pf_packet\00", align 1
@optind = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [35 x i8] c"missing required hostname argument\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8**)* @parse_opt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_opt(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %64, %2
  %8 = load i32, i32* %3, align 4
  %9 = load i8**, i8*** %4, align 8
  %10 = call i32 @getopt(i32 %8, i8** %9, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  store i32 %10, i32* %6, align 4
  %11 = icmp ne i32 %10, -1
  br i1 %11, label %12, label %65

12:                                               ; preds = %7
  %13 = load i32, i32* %6, align 4
  switch i32 %13, label %59 [
    i32 52, label %14
    i32 54, label %15
    i32 99, label %16
    i32 67, label %19
    i32 68, label %20
    i32 70, label %21
    i32 73, label %22
    i32 108, label %23
    i32 76, label %27
    i32 110, label %28
    i32 112, label %29
    i32 80, label %32
    i32 114, label %36
    i32 82, label %41
    i32 117, label %46
    i32 118, label %51
    i32 86, label %54
    i32 120, label %57
    i32 104, label %58
  ]

14:                                               ; preds = %12
  store i64 0, i64* @do_ipv6, align 8
  br label %64

15:                                               ; preds = %12
  store i64 0, i64* @do_ipv4, align 8
  br label %64

16:                                               ; preds = %12
  %17 = load i32, i32* @optarg, align 4
  %18 = call i8* @strtoul(i32 %17, i32* null, i32 10)
  store i8* %18, i8** @cfg_num_pkts, align 8
  br label %64

19:                                               ; preds = %12
  store i32 1, i32* @cfg_use_cmsg, align 4
  br label %64

20:                                               ; preds = %12
  store i32 1, i32* @cfg_no_delay, align 4
  br label %64

21:                                               ; preds = %12
  store i32 -1, i32* @cfg_poll_timeout, align 4
  br label %64

22:                                               ; preds = %12
  store i32 1, i32* @cfg_do_pktinfo, align 4
  br label %64

23:                                               ; preds = %12
  %24 = load i32, i32* @optarg, align 4
  %25 = call i8* @strtoul(i32 %24, i32* null, i32 10)
  %26 = ptrtoint i8* %25 to i32
  store i32 %26, i32* @cfg_payload_len, align 4
  br label %64

27:                                               ; preds = %12
  store i32 1, i32* @cfg_do_listen, align 4
  br label %64

28:                                               ; preds = %12
  store i32 1, i32* @cfg_loop_nodata, align 4
  br label %64

29:                                               ; preds = %12
  %30 = load i32, i32* @optarg, align 4
  %31 = call i8* @strtoul(i32 %30, i32* null, i32 10)
  store i8* %31, i8** @dest_port, align 8
  br label %64

32:                                               ; preds = %12
  %33 = load i32, i32* %5, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %5, align 4
  store i32 1, i32* @cfg_use_pf_packet, align 4
  %35 = load i64, i64* @SOCK_DGRAM, align 8
  store i64 %35, i64* @cfg_proto, align 8
  store i32 0, i32* @cfg_ipproto, align 4
  br label %64

36:                                               ; preds = %12
  %37 = load i32, i32* %5, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %5, align 4
  %39 = load i64, i64* @SOCK_RAW, align 8
  store i64 %39, i64* @cfg_proto, align 8
  %40 = load i32, i32* @IPPROTO_UDP, align 4
  store i32 %40, i32* @cfg_ipproto, align 4
  br label %64

41:                                               ; preds = %12
  %42 = load i32, i32* %5, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %5, align 4
  %44 = load i64, i64* @SOCK_RAW, align 8
  store i64 %44, i64* @cfg_proto, align 8
  %45 = load i32, i32* @IPPROTO_RAW, align 4
  store i32 %45, i32* @cfg_ipproto, align 4
  br label %64

46:                                               ; preds = %12
  %47 = load i32, i32* %5, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %5, align 4
  %49 = load i64, i64* @SOCK_DGRAM, align 8
  store i64 %49, i64* @cfg_proto, align 8
  %50 = load i32, i32* @IPPROTO_UDP, align 4
  store i32 %50, i32* @cfg_ipproto, align 4
  br label %64

51:                                               ; preds = %12
  %52 = load i32, i32* @optarg, align 4
  %53 = call i8* @strtoul(i32 %52, i32* null, i32 10)
  store i8* %53, i8** @cfg_delay_snd, align 8
  br label %64

54:                                               ; preds = %12
  %55 = load i32, i32* @optarg, align 4
  %56 = call i8* @strtoul(i32 %55, i32* null, i32 10)
  store i8* %56, i8** @cfg_delay_ack, align 8
  br label %64

57:                                               ; preds = %12
  store i32 1, i32* @cfg_show_payload, align 4
  br label %64

58:                                               ; preds = %12
  br label %59

59:                                               ; preds = %12, %58
  %60 = load i8**, i8*** %4, align 8
  %61 = getelementptr inbounds i8*, i8** %60, i64 0
  %62 = load i8*, i8** %61, align 8
  %63 = call i32 @usage(i8* %62)
  br label %64

64:                                               ; preds = %59, %57, %54, %51, %46, %41, %36, %32, %29, %28, %27, %23, %22, %21, %20, %19, %16, %15, %14
  br label %7

65:                                               ; preds = %7
  %66 = load i32, i32* @cfg_payload_len, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %70, label %68

68:                                               ; preds = %65
  %69 = call i32 @error(i32 1, i32 0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %70

70:                                               ; preds = %68, %65
  %71 = load i64, i64* @cfg_proto, align 8
  %72 = load i64, i64* @SOCK_STREAM, align 8
  %73 = icmp ne i64 %71, %72
  br i1 %73, label %74, label %79

74:                                               ; preds = %70
  %75 = load i32, i32* @cfg_payload_len, align 4
  %76 = icmp sgt i32 %75, 1472
  br i1 %76, label %77, label %79

77:                                               ; preds = %74
  %78 = call i32 @error(i32 1, i32 0, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  br label %79

79:                                               ; preds = %77, %74, %70
  %80 = load i64, i64* @do_ipv4, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %87, label %82

82:                                               ; preds = %79
  %83 = load i64, i64* @do_ipv6, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %87, label %85

85:                                               ; preds = %82
  %86 = call i32 @error(i32 1, i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  br label %87

87:                                               ; preds = %85, %82, %79
  %88 = load i32, i32* %5, align 4
  %89 = icmp sgt i32 %88, 1
  br i1 %89, label %90, label %92

90:                                               ; preds = %87
  %91 = call i32 @error(i32 1, i32 0, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0))
  br label %92

92:                                               ; preds = %90, %87
  %93 = load i32, i32* @cfg_do_pktinfo, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %100

95:                                               ; preds = %92
  %96 = load i32, i32* @cfg_use_pf_packet, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %95
  %99 = call i32 @error(i32 1, i32 0, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0))
  br label %100

100:                                              ; preds = %98, %95, %92
  %101 = load i32, i32* @optind, align 4
  %102 = load i32, i32* %3, align 4
  %103 = sub nsw i32 %102, 1
  %104 = icmp ne i32 %101, %103
  br i1 %104, label %105, label %107

105:                                              ; preds = %100
  %106 = call i32 @error(i32 1, i32 0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0))
  br label %107

107:                                              ; preds = %105, %100
  ret void
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i8* @strtoul(i32, i32*, i32) #1

declare dso_local i32 @usage(i8*) #1

declare dso_local i32 @error(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
