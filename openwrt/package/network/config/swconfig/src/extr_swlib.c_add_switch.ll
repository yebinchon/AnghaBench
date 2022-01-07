; ModuleID = '/home/carl/AnghaBench/openwrt/package/network/config/swconfig/src/extr_swlib.c_add_switch.c'
source_filename = "/home/carl/AnghaBench/openwrt/package/network/config/swconfig/src/extr_swlib.c_add_switch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nl_msg = type { i32 }
%struct.swlib_scan_arg = type { %struct.switch_dev*, %struct.switch_dev*, i64 }
%struct.switch_dev = type { %struct.switch_dev*, i8*, i8*, i8*, i8*, i8*, i8*, i32 }
%struct.genlmsghdr = type { i32 }

@tb = common dso_local global i64* null, align 8
@SWITCH_ATTR_MAX = common dso_local global i32 0, align 4
@SWITCH_ATTR_DEV_NAME = common dso_local global i64 0, align 8
@SWITCH_ATTR_ALIAS = common dso_local global i64 0, align 8
@IFNAMSIZ = common dso_local global i64 0, align 8
@SWITCH_ATTR_ID = common dso_local global i64 0, align 8
@SWITCH_ATTR_NAME = common dso_local global i64 0, align 8
@SWITCH_ATTR_PORTS = common dso_local global i64 0, align 8
@SWITCH_ATTR_VLANS = common dso_local global i64 0, align 8
@SWITCH_ATTR_CPU_PORT = common dso_local global i64 0, align 8
@SWITCH_ATTR_PORTMAP = common dso_local global i64 0, align 8
@refcount = common dso_local global i32 0, align 4
@NL_SKIP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nl_msg*, i8*)* @add_switch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_switch(%struct.nl_msg* %0, i8* %1) #0 {
  %3 = alloca %struct.nl_msg*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.swlib_scan_arg*, align 8
  %6 = alloca %struct.genlmsghdr*, align 8
  %7 = alloca %struct.switch_dev*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store %struct.nl_msg* %0, %struct.nl_msg** %3, align 8
  store i8* %1, i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.swlib_scan_arg*
  store %struct.swlib_scan_arg* %11, %struct.swlib_scan_arg** %5, align 8
  %12 = load %struct.nl_msg*, %struct.nl_msg** %3, align 8
  %13 = call i32 @nlmsg_hdr(%struct.nl_msg* %12)
  %14 = call %struct.genlmsghdr* @nlmsg_data(i32 %13)
  store %struct.genlmsghdr* %14, %struct.genlmsghdr** %6, align 8
  %15 = load i64*, i64** @tb, align 8
  %16 = load i32, i32* @SWITCH_ATTR_MAX, align 4
  %17 = load %struct.genlmsghdr*, %struct.genlmsghdr** %6, align 8
  %18 = call i32 @genlmsg_attrdata(%struct.genlmsghdr* %17, i32 0)
  %19 = load %struct.genlmsghdr*, %struct.genlmsghdr** %6, align 8
  %20 = call i32 @genlmsg_attrlen(%struct.genlmsghdr* %19, i32 0)
  %21 = call i64 @nla_parse(i64* %15, i32 %16, i32 %18, i32 %20, i32* null)
  %22 = icmp slt i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %2
  br label %185

24:                                               ; preds = %2
  %25 = load i64*, i64** @tb, align 8
  %26 = load i64, i64* @SWITCH_ATTR_DEV_NAME, align 8
  %27 = getelementptr inbounds i64, i64* %25, i64 %26
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %24
  br label %185

31:                                               ; preds = %24
  %32 = load i64*, i64** @tb, align 8
  %33 = load i64, i64* @SWITCH_ATTR_DEV_NAME, align 8
  %34 = getelementptr inbounds i64, i64* %32, i64 %33
  %35 = load i64, i64* %34, align 8
  %36 = call i8* @nla_get_string(i64 %35)
  store i8* %36, i8** %8, align 8
  %37 = load i64*, i64** @tb, align 8
  %38 = load i64, i64* @SWITCH_ATTR_ALIAS, align 8
  %39 = getelementptr inbounds i64, i64* %37, i64 %38
  %40 = load i64, i64* %39, align 8
  %41 = call i8* @nla_get_string(i64 %40)
  store i8* %41, i8** %9, align 8
  %42 = load %struct.swlib_scan_arg*, %struct.swlib_scan_arg** %5, align 8
  %43 = getelementptr inbounds %struct.swlib_scan_arg, %struct.swlib_scan_arg* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %61

46:                                               ; preds = %31
  %47 = load i8*, i8** %8, align 8
  %48 = load %struct.swlib_scan_arg*, %struct.swlib_scan_arg** %5, align 8
  %49 = getelementptr inbounds %struct.swlib_scan_arg, %struct.swlib_scan_arg* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = call i64 @strcmp(i8* %47, i64 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %61

53:                                               ; preds = %46
  %54 = load i8*, i8** %9, align 8
  %55 = load %struct.swlib_scan_arg*, %struct.swlib_scan_arg** %5, align 8
  %56 = getelementptr inbounds %struct.swlib_scan_arg, %struct.swlib_scan_arg* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = call i64 @strcmp(i8* %54, i64 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %53
  br label %185

61:                                               ; preds = %53, %46, %31
  %62 = call %struct.switch_dev* @swlib_alloc(i32 64)
  store %struct.switch_dev* %62, %struct.switch_dev** %7, align 8
  %63 = load %struct.switch_dev*, %struct.switch_dev** %7, align 8
  %64 = icmp ne %struct.switch_dev* %63, null
  br i1 %64, label %66, label %65

65:                                               ; preds = %61
  br label %185

66:                                               ; preds = %61
  %67 = load %struct.switch_dev*, %struct.switch_dev** %7, align 8
  %68 = getelementptr inbounds %struct.switch_dev, %struct.switch_dev* %67, i32 0, i32 7
  %69 = load i32, i32* %68, align 8
  %70 = load i8*, i8** %8, align 8
  %71 = load i64, i64* @IFNAMSIZ, align 8
  %72 = sub nsw i64 %71, 1
  %73 = call i32 @strncpy(i32 %69, i8* %70, i64 %72)
  %74 = load i8*, i8** %9, align 8
  %75 = call i8* @strdup(i8* %74)
  %76 = load %struct.switch_dev*, %struct.switch_dev** %7, align 8
  %77 = getelementptr inbounds %struct.switch_dev, %struct.switch_dev* %76, i32 0, i32 6
  store i8* %75, i8** %77, align 8
  %78 = load i64*, i64** @tb, align 8
  %79 = load i64, i64* @SWITCH_ATTR_ID, align 8
  %80 = getelementptr inbounds i64, i64* %78, i64 %79
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %91

83:                                               ; preds = %66
  %84 = load i64*, i64** @tb, align 8
  %85 = load i64, i64* @SWITCH_ATTR_ID, align 8
  %86 = getelementptr inbounds i64, i64* %84, i64 %85
  %87 = load i64, i64* %86, align 8
  %88 = call i8* @nla_get_u32(i64 %87)
  %89 = load %struct.switch_dev*, %struct.switch_dev** %7, align 8
  %90 = getelementptr inbounds %struct.switch_dev, %struct.switch_dev* %89, i32 0, i32 5
  store i8* %88, i8** %90, align 8
  br label %91

91:                                               ; preds = %83, %66
  %92 = load i64*, i64** @tb, align 8
  %93 = load i64, i64* @SWITCH_ATTR_NAME, align 8
  %94 = getelementptr inbounds i64, i64* %92, i64 %93
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %106

97:                                               ; preds = %91
  %98 = load i64*, i64** @tb, align 8
  %99 = load i64, i64* @SWITCH_ATTR_NAME, align 8
  %100 = getelementptr inbounds i64, i64* %98, i64 %99
  %101 = load i64, i64* %100, align 8
  %102 = call i8* @nla_get_string(i64 %101)
  %103 = call i8* @strdup(i8* %102)
  %104 = load %struct.switch_dev*, %struct.switch_dev** %7, align 8
  %105 = getelementptr inbounds %struct.switch_dev, %struct.switch_dev* %104, i32 0, i32 4
  store i8* %103, i8** %105, align 8
  br label %106

106:                                              ; preds = %97, %91
  %107 = load i64*, i64** @tb, align 8
  %108 = load i64, i64* @SWITCH_ATTR_PORTS, align 8
  %109 = getelementptr inbounds i64, i64* %107, i64 %108
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %120

112:                                              ; preds = %106
  %113 = load i64*, i64** @tb, align 8
  %114 = load i64, i64* @SWITCH_ATTR_PORTS, align 8
  %115 = getelementptr inbounds i64, i64* %113, i64 %114
  %116 = load i64, i64* %115, align 8
  %117 = call i8* @nla_get_u32(i64 %116)
  %118 = load %struct.switch_dev*, %struct.switch_dev** %7, align 8
  %119 = getelementptr inbounds %struct.switch_dev, %struct.switch_dev* %118, i32 0, i32 3
  store i8* %117, i8** %119, align 8
  br label %120

120:                                              ; preds = %112, %106
  %121 = load i64*, i64** @tb, align 8
  %122 = load i64, i64* @SWITCH_ATTR_VLANS, align 8
  %123 = getelementptr inbounds i64, i64* %121, i64 %122
  %124 = load i64, i64* %123, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %134

126:                                              ; preds = %120
  %127 = load i64*, i64** @tb, align 8
  %128 = load i64, i64* @SWITCH_ATTR_VLANS, align 8
  %129 = getelementptr inbounds i64, i64* %127, i64 %128
  %130 = load i64, i64* %129, align 8
  %131 = call i8* @nla_get_u32(i64 %130)
  %132 = load %struct.switch_dev*, %struct.switch_dev** %7, align 8
  %133 = getelementptr inbounds %struct.switch_dev, %struct.switch_dev* %132, i32 0, i32 2
  store i8* %131, i8** %133, align 8
  br label %134

134:                                              ; preds = %126, %120
  %135 = load i64*, i64** @tb, align 8
  %136 = load i64, i64* @SWITCH_ATTR_CPU_PORT, align 8
  %137 = getelementptr inbounds i64, i64* %135, i64 %136
  %138 = load i64, i64* %137, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %148

140:                                              ; preds = %134
  %141 = load i64*, i64** @tb, align 8
  %142 = load i64, i64* @SWITCH_ATTR_CPU_PORT, align 8
  %143 = getelementptr inbounds i64, i64* %141, i64 %142
  %144 = load i64, i64* %143, align 8
  %145 = call i8* @nla_get_u32(i64 %144)
  %146 = load %struct.switch_dev*, %struct.switch_dev** %7, align 8
  %147 = getelementptr inbounds %struct.switch_dev, %struct.switch_dev* %146, i32 0, i32 1
  store i8* %145, i8** %147, align 8
  br label %148

148:                                              ; preds = %140, %134
  %149 = load i64*, i64** @tb, align 8
  %150 = load i64, i64* @SWITCH_ATTR_PORTMAP, align 8
  %151 = getelementptr inbounds i64, i64* %149, i64 %150
  %152 = load i64, i64* %151, align 8
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %161

154:                                              ; preds = %148
  %155 = load %struct.switch_dev*, %struct.switch_dev** %7, align 8
  %156 = load i64*, i64** @tb, align 8
  %157 = load i64, i64* @SWITCH_ATTR_PORTMAP, align 8
  %158 = getelementptr inbounds i64, i64* %156, i64 %157
  %159 = load i64, i64* %158, align 8
  %160 = call i32 @add_port_map(%struct.switch_dev* %155, i64 %159)
  br label %161

161:                                              ; preds = %154, %148
  %162 = load %struct.swlib_scan_arg*, %struct.swlib_scan_arg** %5, align 8
  %163 = getelementptr inbounds %struct.swlib_scan_arg, %struct.swlib_scan_arg* %162, i32 0, i32 1
  %164 = load %struct.switch_dev*, %struct.switch_dev** %163, align 8
  %165 = icmp ne %struct.switch_dev* %164, null
  br i1 %165, label %173, label %166

166:                                              ; preds = %161
  %167 = load %struct.switch_dev*, %struct.switch_dev** %7, align 8
  %168 = load %struct.swlib_scan_arg*, %struct.swlib_scan_arg** %5, align 8
  %169 = getelementptr inbounds %struct.swlib_scan_arg, %struct.swlib_scan_arg* %168, i32 0, i32 1
  store %struct.switch_dev* %167, %struct.switch_dev** %169, align 8
  %170 = load %struct.switch_dev*, %struct.switch_dev** %7, align 8
  %171 = load %struct.swlib_scan_arg*, %struct.swlib_scan_arg** %5, align 8
  %172 = getelementptr inbounds %struct.swlib_scan_arg, %struct.swlib_scan_arg* %171, i32 0, i32 0
  store %struct.switch_dev* %170, %struct.switch_dev** %172, align 8
  br label %182

173:                                              ; preds = %161
  %174 = load %struct.switch_dev*, %struct.switch_dev** %7, align 8
  %175 = load %struct.swlib_scan_arg*, %struct.swlib_scan_arg** %5, align 8
  %176 = getelementptr inbounds %struct.swlib_scan_arg, %struct.swlib_scan_arg* %175, i32 0, i32 0
  %177 = load %struct.switch_dev*, %struct.switch_dev** %176, align 8
  %178 = getelementptr inbounds %struct.switch_dev, %struct.switch_dev* %177, i32 0, i32 0
  store %struct.switch_dev* %174, %struct.switch_dev** %178, align 8
  %179 = load %struct.switch_dev*, %struct.switch_dev** %7, align 8
  %180 = load %struct.swlib_scan_arg*, %struct.swlib_scan_arg** %5, align 8
  %181 = getelementptr inbounds %struct.swlib_scan_arg, %struct.swlib_scan_arg* %180, i32 0, i32 0
  store %struct.switch_dev* %179, %struct.switch_dev** %181, align 8
  br label %182

182:                                              ; preds = %173, %166
  %183 = load i32, i32* @refcount, align 4
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* @refcount, align 4
  br label %185

185:                                              ; preds = %182, %65, %60, %30, %23
  %186 = load i32, i32* @NL_SKIP, align 4
  ret i32 %186
}

declare dso_local %struct.genlmsghdr* @nlmsg_data(i32) #1

declare dso_local i32 @nlmsg_hdr(%struct.nl_msg*) #1

declare dso_local i64 @nla_parse(i64*, i32, i32, i32, i32*) #1

declare dso_local i32 @genlmsg_attrdata(%struct.genlmsghdr*, i32) #1

declare dso_local i32 @genlmsg_attrlen(%struct.genlmsghdr*, i32) #1

declare dso_local i8* @nla_get_string(i64) #1

declare dso_local i64 @strcmp(i8*, i64) #1

declare dso_local %struct.switch_dev* @swlib_alloc(i32) #1

declare dso_local i32 @strncpy(i32, i8*, i64) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i8* @nla_get_u32(i64) #1

declare dso_local i32 @add_port_map(%struct.switch_dev*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
