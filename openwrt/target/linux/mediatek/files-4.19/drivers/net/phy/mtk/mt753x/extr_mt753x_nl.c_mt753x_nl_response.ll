; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/mediatek/files-4.19/drivers/net/phy/mtk/mt753x/extr_mt753x_nl.c_mt753x_nl_response.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/mediatek/files-4.19/drivers/net/phy/mtk/mt753x/extr_mt753x_nl.c_mt753x_nl_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt753x_nl_cmd_item = type { i64, i32, i64*, i32 (%struct.genl_info.0*, %struct.gsw_mt753x*)*, i64 }
%struct.genl_info.0 = type opaque
%struct.gsw_mt753x = type opaque
%struct.sk_buff = type { i32 }
%struct.genl_info = type { i64*, i32 }
%struct.genlmsghdr = type { i64 }
%struct.gsw_mt753x.1 = type { i32 }

@mt753x_nl_cmds = common dso_local global %struct.mt753x_nl_cmd_item* null, align 8
@.str = private unnamed_addr constant [27 x i8] c"mt753x-nl: unknown cmd %u\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"mt753x-nl: missing required attr(s) for cmd %u\0A\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"mt753x-nl: failed to find switch dev\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.genl_info*)* @mt753x_nl_response to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt753x_nl_response(%struct.sk_buff* %0, %struct.genl_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.genl_info*, align 8
  %6 = alloca %struct.genlmsghdr*, align 8
  %7 = alloca %struct.mt753x_nl_cmd_item*, align 8
  %8 = alloca %struct.gsw_mt753x.1*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.genl_info* %1, %struct.genl_info** %5, align 8
  %12 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %13 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = call %struct.genlmsghdr* @nlmsg_data(i32 %14)
  store %struct.genlmsghdr* %15, %struct.genlmsghdr** %6, align 8
  store %struct.mt753x_nl_cmd_item* null, %struct.mt753x_nl_cmd_item** %7, align 8
  store %struct.gsw_mt753x.1* null, %struct.gsw_mt753x.1** %8, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %16

16:                                               ; preds = %38, %2
  %17 = load i32, i32* %10, align 4
  %18 = load %struct.mt753x_nl_cmd_item*, %struct.mt753x_nl_cmd_item** @mt753x_nl_cmds, align 8
  %19 = call i32 @ARRAY_SIZE(%struct.mt753x_nl_cmd_item* %18)
  %20 = icmp slt i32 %17, %19
  br i1 %20, label %21, label %41

21:                                               ; preds = %16
  %22 = load %struct.genlmsghdr*, %struct.genlmsghdr** %6, align 8
  %23 = getelementptr inbounds %struct.genlmsghdr, %struct.genlmsghdr* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.mt753x_nl_cmd_item*, %struct.mt753x_nl_cmd_item** @mt753x_nl_cmds, align 8
  %26 = load i32, i32* %10, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.mt753x_nl_cmd_item, %struct.mt753x_nl_cmd_item* %25, i64 %27
  %29 = getelementptr inbounds %struct.mt753x_nl_cmd_item, %struct.mt753x_nl_cmd_item* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp eq i64 %24, %30
  br i1 %31, label %32, label %37

32:                                               ; preds = %21
  %33 = load %struct.mt753x_nl_cmd_item*, %struct.mt753x_nl_cmd_item** @mt753x_nl_cmds, align 8
  %34 = load i32, i32* %10, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.mt753x_nl_cmd_item, %struct.mt753x_nl_cmd_item* %33, i64 %35
  store %struct.mt753x_nl_cmd_item* %36, %struct.mt753x_nl_cmd_item** %7, align 8
  br label %41

37:                                               ; preds = %21
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %10, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %10, align 4
  br label %16

41:                                               ; preds = %32, %16
  %42 = load %struct.mt753x_nl_cmd_item*, %struct.mt753x_nl_cmd_item** %7, align 8
  %43 = icmp ne %struct.mt753x_nl_cmd_item* %42, null
  br i1 %43, label %51, label %44

44:                                               ; preds = %41
  %45 = load %struct.genlmsghdr*, %struct.genlmsghdr** %6, align 8
  %46 = getelementptr inbounds %struct.genlmsghdr, %struct.genlmsghdr* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i64 %47)
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %3, align 4
  br label %118

51:                                               ; preds = %41
  store i32 0, i32* %10, align 4
  br label %52

52:                                               ; preds = %76, %51
  %53 = load i32, i32* %10, align 4
  %54 = load %struct.mt753x_nl_cmd_item*, %struct.mt753x_nl_cmd_item** %7, align 8
  %55 = getelementptr inbounds %struct.mt753x_nl_cmd_item, %struct.mt753x_nl_cmd_item* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = icmp slt i32 %53, %56
  br i1 %57, label %58, label %79

58:                                               ; preds = %52
  %59 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %60 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %59, i32 0, i32 0
  %61 = load i64*, i64** %60, align 8
  %62 = load %struct.mt753x_nl_cmd_item*, %struct.mt753x_nl_cmd_item** %7, align 8
  %63 = getelementptr inbounds %struct.mt753x_nl_cmd_item, %struct.mt753x_nl_cmd_item* %62, i32 0, i32 2
  %64 = load i64*, i64** %63, align 8
  %65 = load i32, i32* %10, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i64, i64* %64, i64 %66
  %68 = load i64, i64* %67, align 8
  %69 = getelementptr inbounds i64, i64* %61, i64 %68
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %58
  %73 = load i32, i32* %9, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %9, align 4
  br label %75

75:                                               ; preds = %72, %58
  br label %76

76:                                               ; preds = %75
  %77 = load i32, i32* %10, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %10, align 4
  br label %52

79:                                               ; preds = %52
  %80 = load i32, i32* %9, align 4
  %81 = load %struct.mt753x_nl_cmd_item*, %struct.mt753x_nl_cmd_item** %7, align 8
  %82 = getelementptr inbounds %struct.mt753x_nl_cmd_item, %struct.mt753x_nl_cmd_item* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = icmp ne i32 %80, %83
  br i1 %84, label %85, label %92

85:                                               ; preds = %79
  %86 = load %struct.genlmsghdr*, %struct.genlmsghdr** %6, align 8
  %87 = getelementptr inbounds %struct.genlmsghdr, %struct.genlmsghdr* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i64 %88)
  %90 = load i32, i32* @EINVAL, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %3, align 4
  br label %118

92:                                               ; preds = %79
  %93 = load %struct.mt753x_nl_cmd_item*, %struct.mt753x_nl_cmd_item** %7, align 8
  %94 = getelementptr inbounds %struct.mt753x_nl_cmd_item, %struct.mt753x_nl_cmd_item* %93, i32 0, i32 4
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %107

97:                                               ; preds = %92
  %98 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %99 = call %struct.gsw_mt753x.1* @mt753x_nl_parse_find_gsw(%struct.genl_info* %98)
  store %struct.gsw_mt753x.1* %99, %struct.gsw_mt753x.1** %8, align 8
  %100 = load %struct.gsw_mt753x.1*, %struct.gsw_mt753x.1** %8, align 8
  %101 = icmp ne %struct.gsw_mt753x.1* %100, null
  br i1 %101, label %106, label %102

102:                                              ; preds = %97
  %103 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  %104 = load i32, i32* @EINVAL, align 4
  %105 = sub nsw i32 0, %104
  store i32 %105, i32* %3, align 4
  br label %118

106:                                              ; preds = %97
  br label %107

107:                                              ; preds = %106, %92
  %108 = load %struct.mt753x_nl_cmd_item*, %struct.mt753x_nl_cmd_item** %7, align 8
  %109 = getelementptr inbounds %struct.mt753x_nl_cmd_item, %struct.mt753x_nl_cmd_item* %108, i32 0, i32 3
  %110 = load i32 (%struct.genl_info.0*, %struct.gsw_mt753x*)*, i32 (%struct.genl_info.0*, %struct.gsw_mt753x*)** %109, align 8
  %111 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %112 = bitcast %struct.genl_info* %111 to %struct.genl_info.0*
  %113 = load %struct.gsw_mt753x.1*, %struct.gsw_mt753x.1** %8, align 8
  %114 = bitcast %struct.gsw_mt753x.1* %113 to %struct.gsw_mt753x*
  %115 = call i32 %110(%struct.genl_info.0* %112, %struct.gsw_mt753x* %114)
  store i32 %115, i32* %11, align 4
  %116 = call i32 (...) @mt753x_put_gsw()
  %117 = load i32, i32* %11, align 4
  store i32 %117, i32* %3, align 4
  br label %118

118:                                              ; preds = %107, %102, %85, %44
  %119 = load i32, i32* %3, align 4
  ret i32 %119
}

declare dso_local %struct.genlmsghdr* @nlmsg_data(i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.mt753x_nl_cmd_item*) #1

declare dso_local i32 @pr_info(i8*, ...) #1

declare dso_local %struct.gsw_mt753x.1* @mt753x_nl_parse_find_gsw(%struct.genl_info*) #1

declare dso_local i32 @mt753x_put_gsw(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
