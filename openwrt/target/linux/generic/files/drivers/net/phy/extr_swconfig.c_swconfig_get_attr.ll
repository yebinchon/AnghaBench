; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/net/phy/extr_swconfig.c_swconfig_get_attr.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/net/phy/extr_swconfig.c_swconfig_get_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.genl_info = type { i32, i32, i32 }
%struct.genlmsghdr = type { i32 }
%struct.switch_attr = type { i32 (%struct.switch_dev*, %struct.switch_attr*, %struct.switch_val*)*, i32 }
%struct.switch_dev = type { i32, %struct.switch_val, %struct.switch_val* }
%struct.switch_val = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.switch_val*, i32, i32, %struct.switch_val* }

@EINVAL = common dso_local global i32 0, align 4
@NLMSG_GOODSIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@switch_fam = common dso_local global i32 0, align 4
@SWITCH_ATTR_OP_VALUE_INT = common dso_local global i32 0, align 4
@SWITCH_ATTR_OP_VALUE_STR = common dso_local global i32 0, align 4
@SWITCH_ATTR_OP_VALUE_PORTS = common dso_local global i32 0, align 4
@SWITCH_ATTR_OP_VALUE_LINK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"invalid type in attribute\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.genl_info*)* @swconfig_get_attr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @swconfig_get_attr(%struct.sk_buff* %0, %struct.genl_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.genl_info*, align 8
  %6 = alloca %struct.genlmsghdr*, align 8
  %7 = alloca %struct.switch_attr*, align 8
  %8 = alloca %struct.switch_dev*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca %struct.switch_val, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.genl_info* %1, %struct.genl_info** %5, align 8
  %13 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %14 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.genlmsghdr* @nlmsg_data(i32 %15)
  store %struct.genlmsghdr* %16, %struct.genlmsghdr** %6, align 8
  store %struct.sk_buff* null, %struct.sk_buff** %9, align 8
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %11, align 4
  %19 = load %struct.genlmsghdr*, %struct.genlmsghdr** %6, align 8
  %20 = getelementptr inbounds %struct.genlmsghdr, %struct.genlmsghdr* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %12, align 4
  %22 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %23 = call %struct.switch_dev* @swconfig_get_dev(%struct.genl_info* %22)
  store %struct.switch_dev* %23, %struct.switch_dev** %8, align 8
  %24 = load %struct.switch_dev*, %struct.switch_dev** %8, align 8
  %25 = icmp ne %struct.switch_dev* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %2
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %189

29:                                               ; preds = %2
  %30 = call i32 @memset(%struct.switch_val* %10, i32 0, i32 24)
  %31 = load %struct.switch_dev*, %struct.switch_dev** %8, align 8
  %32 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %33 = call %struct.switch_attr* @swconfig_lookup_attr(%struct.switch_dev* %31, %struct.genl_info* %32, %struct.switch_val* %10)
  store %struct.switch_attr* %33, %struct.switch_attr** %7, align 8
  %34 = load %struct.switch_attr*, %struct.switch_attr** %7, align 8
  %35 = icmp ne %struct.switch_attr* %34, null
  br i1 %35, label %36, label %41

36:                                               ; preds = %29
  %37 = load %struct.switch_attr*, %struct.switch_attr** %7, align 8
  %38 = getelementptr inbounds %struct.switch_attr, %struct.switch_attr* %37, i32 0, i32 0
  %39 = load i32 (%struct.switch_dev*, %struct.switch_attr*, %struct.switch_val*)*, i32 (%struct.switch_dev*, %struct.switch_attr*, %struct.switch_val*)** %38, align 8
  %40 = icmp ne i32 (%struct.switch_dev*, %struct.switch_attr*, %struct.switch_val*)* %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %36, %29
  br label %179

42:                                               ; preds = %36
  %43 = load %struct.switch_attr*, %struct.switch_attr** %7, align 8
  %44 = getelementptr inbounds %struct.switch_attr, %struct.switch_attr* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = icmp eq i32 %45, 129
  br i1 %46, label %47, label %63

47:                                               ; preds = %42
  %48 = load %struct.switch_dev*, %struct.switch_dev** %8, align 8
  %49 = getelementptr inbounds %struct.switch_dev, %struct.switch_dev* %48, i32 0, i32 2
  %50 = load %struct.switch_val*, %struct.switch_val** %49, align 8
  %51 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %10, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 3
  store %struct.switch_val* %50, %struct.switch_val** %52, align 8
  %53 = load %struct.switch_dev*, %struct.switch_dev** %8, align 8
  %54 = getelementptr inbounds %struct.switch_dev, %struct.switch_dev* %53, i32 0, i32 2
  %55 = load %struct.switch_val*, %struct.switch_val** %54, align 8
  %56 = load %struct.switch_dev*, %struct.switch_dev** %8, align 8
  %57 = getelementptr inbounds %struct.switch_dev, %struct.switch_dev* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = sext i32 %58 to i64
  %60 = mul i64 4, %59
  %61 = trunc i64 %60 to i32
  %62 = call i32 @memset(%struct.switch_val* %55, i32 0, i32 %61)
  br label %77

63:                                               ; preds = %42
  %64 = load %struct.switch_attr*, %struct.switch_attr** %7, align 8
  %65 = getelementptr inbounds %struct.switch_attr, %struct.switch_attr* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = icmp eq i32 %66, 130
  br i1 %67, label %68, label %76

68:                                               ; preds = %63
  %69 = load %struct.switch_dev*, %struct.switch_dev** %8, align 8
  %70 = getelementptr inbounds %struct.switch_dev, %struct.switch_dev* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %10, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  store %struct.switch_val* %70, %struct.switch_val** %72, align 8
  %73 = load %struct.switch_dev*, %struct.switch_dev** %8, align 8
  %74 = getelementptr inbounds %struct.switch_dev, %struct.switch_dev* %73, i32 0, i32 1
  %75 = call i32 @memset(%struct.switch_val* %74, i32 0, i32 4)
  br label %76

76:                                               ; preds = %68, %63
  br label %77

77:                                               ; preds = %76, %47
  %78 = load %struct.switch_attr*, %struct.switch_attr** %7, align 8
  %79 = getelementptr inbounds %struct.switch_attr, %struct.switch_attr* %78, i32 0, i32 0
  %80 = load i32 (%struct.switch_dev*, %struct.switch_attr*, %struct.switch_val*)*, i32 (%struct.switch_dev*, %struct.switch_attr*, %struct.switch_val*)** %79, align 8
  %81 = load %struct.switch_dev*, %struct.switch_dev** %8, align 8
  %82 = load %struct.switch_attr*, %struct.switch_attr** %7, align 8
  %83 = call i32 %80(%struct.switch_dev* %81, %struct.switch_attr* %82, %struct.switch_val* %10)
  store i32 %83, i32* %11, align 4
  %84 = load i32, i32* %11, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %77
  br label %179

87:                                               ; preds = %77
  %88 = load i32, i32* @NLMSG_GOODSIZE, align 4
  %89 = load i32, i32* @GFP_KERNEL, align 4
  %90 = call %struct.sk_buff* @nlmsg_new(i32 %88, i32 %89)
  store %struct.sk_buff* %90, %struct.sk_buff** %9, align 8
  %91 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %92 = icmp ne %struct.sk_buff* %91, null
  br i1 %92, label %94, label %93

93:                                               ; preds = %87
  br label %179

94:                                               ; preds = %87
  %95 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %96 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %97 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %100 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* %12, align 4
  %103 = call %struct.genlmsghdr* @genlmsg_put(%struct.sk_buff* %95, i32 %98, i32 %101, i32* @switch_fam, i32 0, i32 %102)
  store %struct.genlmsghdr* %103, %struct.genlmsghdr** %6, align 8
  %104 = load %struct.genlmsghdr*, %struct.genlmsghdr** %6, align 8
  %105 = call i64 @IS_ERR(%struct.genlmsghdr* %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %94
  br label %172

108:                                              ; preds = %94
  %109 = load %struct.switch_attr*, %struct.switch_attr** %7, align 8
  %110 = getelementptr inbounds %struct.switch_attr, %struct.switch_attr* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  switch i32 %111, label %152 [
    i32 131, label %112
    i32 128, label %122
    i32 129, label %132
    i32 130, label %140
  ]

112:                                              ; preds = %108
  %113 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %114 = load i32, i32* @SWITCH_ATTR_OP_VALUE_INT, align 4
  %115 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %10, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @nla_put_u32(%struct.sk_buff* %113, i32 %114, i32 %117)
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %112
  br label %172

121:                                              ; preds = %112
  br label %156

122:                                              ; preds = %108
  %123 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %124 = load i32, i32* @SWITCH_ATTR_OP_VALUE_STR, align 4
  %125 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %10, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 8
  %128 = call i32 @nla_put_string(%struct.sk_buff* %123, i32 %124, i32 %127)
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %122
  br label %172

131:                                              ; preds = %122
  br label %156

132:                                              ; preds = %108
  %133 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %134 = load i32, i32* @SWITCH_ATTR_OP_VALUE_PORTS, align 4
  %135 = call i32 @swconfig_send_ports(%struct.sk_buff** %9, %struct.genl_info* %133, i32 %134, %struct.switch_val* %10)
  store i32 %135, i32* %11, align 4
  %136 = load i32, i32* %11, align 4
  %137 = icmp slt i32 %136, 0
  br i1 %137, label %138, label %139

138:                                              ; preds = %132
  br label %172

139:                                              ; preds = %132
  br label %156

140:                                              ; preds = %108
  %141 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %142 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %143 = load i32, i32* @SWITCH_ATTR_OP_VALUE_LINK, align 4
  %144 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %10, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %144, i32 0, i32 0
  %146 = load %struct.switch_val*, %struct.switch_val** %145, align 8
  %147 = call i32 @swconfig_send_link(%struct.sk_buff* %141, %struct.genl_info* %142, i32 %143, %struct.switch_val* %146)
  store i32 %147, i32* %11, align 4
  %148 = load i32, i32* %11, align 4
  %149 = icmp slt i32 %148, 0
  br i1 %149, label %150, label %151

150:                                              ; preds = %140
  br label %172

151:                                              ; preds = %140
  br label %156

152:                                              ; preds = %108
  %153 = call i32 @pr_debug(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %154 = load i32, i32* @EINVAL, align 4
  %155 = sub nsw i32 0, %154
  store i32 %155, i32* %11, align 4
  br label %172

156:                                              ; preds = %151, %139, %131, %121
  %157 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %158 = load %struct.genlmsghdr*, %struct.genlmsghdr** %6, align 8
  %159 = call i32 @genlmsg_end(%struct.sk_buff* %157, %struct.genlmsghdr* %158)
  %160 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %161 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  store i32 %162, i32* %11, align 4
  %163 = load i32, i32* %11, align 4
  %164 = icmp slt i32 %163, 0
  br i1 %164, label %165, label %166

165:                                              ; preds = %156
  br label %172

166:                                              ; preds = %156
  %167 = load %struct.switch_dev*, %struct.switch_dev** %8, align 8
  %168 = call i32 @swconfig_put_dev(%struct.switch_dev* %167)
  %169 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %170 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %171 = call i32 @genlmsg_reply(%struct.sk_buff* %169, %struct.genl_info* %170)
  store i32 %171, i32* %3, align 4
  br label %189

172:                                              ; preds = %165, %152, %150, %138, %130, %120, %107
  %173 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %174 = icmp ne %struct.sk_buff* %173, null
  br i1 %174, label %175, label %178

175:                                              ; preds = %172
  %176 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %177 = call i32 @nlmsg_free(%struct.sk_buff* %176)
  br label %178

178:                                              ; preds = %175, %172
  br label %179

179:                                              ; preds = %178, %93, %86, %41
  %180 = load %struct.switch_dev*, %struct.switch_dev** %8, align 8
  %181 = call i32 @swconfig_put_dev(%struct.switch_dev* %180)
  %182 = load i32, i32* %11, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %187, label %184

184:                                              ; preds = %179
  %185 = load i32, i32* @ENOMEM, align 4
  %186 = sub nsw i32 0, %185
  store i32 %186, i32* %11, align 4
  br label %187

187:                                              ; preds = %184, %179
  %188 = load i32, i32* %11, align 4
  store i32 %188, i32* %3, align 4
  br label %189

189:                                              ; preds = %187, %166, %26
  %190 = load i32, i32* %3, align 4
  ret i32 %190
}

declare dso_local %struct.genlmsghdr* @nlmsg_data(i32) #1

declare dso_local %struct.switch_dev* @swconfig_get_dev(%struct.genl_info*) #1

declare dso_local i32 @memset(%struct.switch_val*, i32, i32) #1

declare dso_local %struct.switch_attr* @swconfig_lookup_attr(%struct.switch_dev*, %struct.genl_info*, %struct.switch_val*) #1

declare dso_local %struct.sk_buff* @nlmsg_new(i32, i32) #1

declare dso_local %struct.genlmsghdr* @genlmsg_put(%struct.sk_buff*, i32, i32, i32*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.genlmsghdr*) #1

declare dso_local i32 @nla_put_u32(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @nla_put_string(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @swconfig_send_ports(%struct.sk_buff**, %struct.genl_info*, i32, %struct.switch_val*) #1

declare dso_local i32 @swconfig_send_link(%struct.sk_buff*, %struct.genl_info*, i32, %struct.switch_val*) #1

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i32 @genlmsg_end(%struct.sk_buff*, %struct.genlmsghdr*) #1

declare dso_local i32 @swconfig_put_dev(%struct.switch_dev*) #1

declare dso_local i32 @genlmsg_reply(%struct.sk_buff*, %struct.genl_info*) #1

declare dso_local i32 @nlmsg_free(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
