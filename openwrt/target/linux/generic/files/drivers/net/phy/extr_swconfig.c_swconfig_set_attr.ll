; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/net/phy/extr_swconfig.c_swconfig_set_attr.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/net/phy/extr_swconfig.c_swconfig_set_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.genl_info = type { i32* }
%struct.switch_attr = type { i32 (%struct.switch_dev*, %struct.switch_attr*, %struct.switch_val*)*, i32 }
%struct.switch_dev = type { i32, %struct.switch_val, %struct.switch_val* }
%struct.switch_val = type { i32, %struct.TYPE_2__, %struct.switch_attr* }
%struct.TYPE_2__ = type { %struct.switch_val*, %struct.switch_val*, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@CAP_NET_ADMIN = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@SWITCH_ATTR_OP_VALUE_INT = common dso_local global i64 0, align 8
@SWITCH_ATTR_OP_VALUE_STR = common dso_local global i64 0, align 8
@SWITCH_ATTR_OP_VALUE_PORTS = common dso_local global i64 0, align 8
@SWITCH_ATTR_OP_VALUE_LINK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.genl_info*)* @swconfig_set_attr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @swconfig_set_attr(%struct.sk_buff* %0, %struct.genl_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.genl_info*, align 8
  %6 = alloca %struct.switch_attr*, align 8
  %7 = alloca %struct.switch_dev*, align 8
  %8 = alloca %struct.switch_val, align 8
  %9 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.genl_info* %1, %struct.genl_info** %5, align 8
  %10 = load i32, i32* @EINVAL, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %9, align 4
  %12 = load i32, i32* @CAP_NET_ADMIN, align 4
  %13 = call i32 @capable(i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @EPERM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %172

18:                                               ; preds = %2
  %19 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %20 = call %struct.switch_dev* @swconfig_get_dev(%struct.genl_info* %19)
  store %struct.switch_dev* %20, %struct.switch_dev** %7, align 8
  %21 = load %struct.switch_dev*, %struct.switch_dev** %7, align 8
  %22 = icmp ne %struct.switch_dev* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %18
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %172

26:                                               ; preds = %18
  %27 = call i32 @memset(%struct.switch_val* %8, i32 0, i32 40)
  %28 = load %struct.switch_dev*, %struct.switch_dev** %7, align 8
  %29 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %30 = call %struct.switch_attr* @swconfig_lookup_attr(%struct.switch_dev* %28, %struct.genl_info* %29, %struct.switch_val* %8)
  store %struct.switch_attr* %30, %struct.switch_attr** %6, align 8
  %31 = load %struct.switch_attr*, %struct.switch_attr** %6, align 8
  %32 = icmp ne %struct.switch_attr* %31, null
  br i1 %32, label %33, label %38

33:                                               ; preds = %26
  %34 = load %struct.switch_attr*, %struct.switch_attr** %6, align 8
  %35 = getelementptr inbounds %struct.switch_attr, %struct.switch_attr* %34, i32 0, i32 0
  %36 = load i32 (%struct.switch_dev*, %struct.switch_attr*, %struct.switch_val*)*, i32 (%struct.switch_dev*, %struct.switch_attr*, %struct.switch_val*)** %35, align 8
  %37 = icmp ne i32 (%struct.switch_dev*, %struct.switch_attr*, %struct.switch_val*)* %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %33, %26
  br label %168

39:                                               ; preds = %33
  %40 = load %struct.switch_attr*, %struct.switch_attr** %6, align 8
  %41 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %8, i32 0, i32 2
  store %struct.switch_attr* %40, %struct.switch_attr** %41, align 8
  %42 = load %struct.switch_attr*, %struct.switch_attr** %6, align 8
  %43 = getelementptr inbounds %struct.switch_attr, %struct.switch_attr* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  switch i32 %44, label %160 [
    i32 130, label %45
    i32 132, label %46
    i32 128, label %65
    i32 129, label %84
    i32 131, label %126
  ]

45:                                               ; preds = %39
  br label %161

46:                                               ; preds = %39
  %47 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %48 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = load i64, i64* @SWITCH_ATTR_OP_VALUE_INT, align 8
  %51 = getelementptr inbounds i32, i32* %49, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %46
  br label %168

55:                                               ; preds = %46
  %56 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %57 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = load i64, i64* @SWITCH_ATTR_OP_VALUE_INT, align 8
  %60 = getelementptr inbounds i32, i32* %58, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @nla_get_u32(i32 %61)
  %63 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %8, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 3
  store i32 %62, i32* %64, align 4
  br label %161

65:                                               ; preds = %39
  %66 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %67 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = load i64, i64* @SWITCH_ATTR_OP_VALUE_STR, align 8
  %70 = getelementptr inbounds i32, i32* %68, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %74, label %73

73:                                               ; preds = %65
  br label %168

74:                                               ; preds = %65
  %75 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %76 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = load i64, i64* @SWITCH_ATTR_OP_VALUE_STR, align 8
  %79 = getelementptr inbounds i32, i32* %77, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @nla_data(i32 %80)
  %82 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %8, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 2
  store i32 %81, i32* %83, align 8
  br label %161

84:                                               ; preds = %39
  %85 = load %struct.switch_dev*, %struct.switch_dev** %7, align 8
  %86 = getelementptr inbounds %struct.switch_dev, %struct.switch_dev* %85, i32 0, i32 2
  %87 = load %struct.switch_val*, %struct.switch_val** %86, align 8
  %88 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %8, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 1
  store %struct.switch_val* %87, %struct.switch_val** %89, align 8
  %90 = load %struct.switch_dev*, %struct.switch_dev** %7, align 8
  %91 = getelementptr inbounds %struct.switch_dev, %struct.switch_dev* %90, i32 0, i32 2
  %92 = load %struct.switch_val*, %struct.switch_val** %91, align 8
  %93 = load %struct.switch_dev*, %struct.switch_dev** %7, align 8
  %94 = getelementptr inbounds %struct.switch_dev, %struct.switch_dev* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = sext i32 %95 to i64
  %97 = mul i64 4, %96
  %98 = trunc i64 %97 to i32
  %99 = call i32 @memset(%struct.switch_val* %92, i32 0, i32 %98)
  %100 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %101 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %100, i32 0, i32 0
  %102 = load i32*, i32** %101, align 8
  %103 = load i64, i64* @SWITCH_ATTR_OP_VALUE_PORTS, align 8
  %104 = getelementptr inbounds i32, i32* %102, i64 %103
  %105 = load i32, i32* %104, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %123

107:                                              ; preds = %84
  %108 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %109 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %110 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %109, i32 0, i32 0
  %111 = load i32*, i32** %110, align 8
  %112 = load i64, i64* @SWITCH_ATTR_OP_VALUE_PORTS, align 8
  %113 = getelementptr inbounds i32, i32* %111, i64 %112
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.switch_dev*, %struct.switch_dev** %7, align 8
  %116 = getelementptr inbounds %struct.switch_dev, %struct.switch_dev* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = call i32 @swconfig_parse_ports(%struct.sk_buff* %108, i32 %114, %struct.switch_val* %8, i32 %117)
  store i32 %118, i32* %9, align 4
  %119 = load i32, i32* %9, align 4
  %120 = icmp slt i32 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %107
  br label %168

122:                                              ; preds = %107
  br label %125

123:                                              ; preds = %84
  %124 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %8, i32 0, i32 0
  store i32 0, i32* %124, align 8
  store i32 0, i32* %9, align 4
  br label %125

125:                                              ; preds = %123, %122
  br label %161

126:                                              ; preds = %39
  %127 = load %struct.switch_dev*, %struct.switch_dev** %7, align 8
  %128 = getelementptr inbounds %struct.switch_dev, %struct.switch_dev* %127, i32 0, i32 1
  %129 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %8, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i32 0, i32 0
  store %struct.switch_val* %128, %struct.switch_val** %130, align 8
  %131 = load %struct.switch_dev*, %struct.switch_dev** %7, align 8
  %132 = getelementptr inbounds %struct.switch_dev, %struct.switch_dev* %131, i32 0, i32 1
  %133 = call i32 @memset(%struct.switch_val* %132, i32 0, i32 4)
  %134 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %135 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %134, i32 0, i32 0
  %136 = load i32*, i32** %135, align 8
  %137 = load i64, i64* @SWITCH_ATTR_OP_VALUE_LINK, align 8
  %138 = getelementptr inbounds i32, i32* %136, i64 %137
  %139 = load i32, i32* %138, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %157

141:                                              ; preds = %126
  %142 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %143 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %144 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %143, i32 0, i32 0
  %145 = load i32*, i32** %144, align 8
  %146 = load i64, i64* @SWITCH_ATTR_OP_VALUE_LINK, align 8
  %147 = getelementptr inbounds i32, i32* %145, i64 %146
  %148 = load i32, i32* %147, align 4
  %149 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %8, i32 0, i32 1
  %150 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %149, i32 0, i32 0
  %151 = load %struct.switch_val*, %struct.switch_val** %150, align 8
  %152 = call i32 @swconfig_parse_link(%struct.sk_buff* %142, i32 %148, %struct.switch_val* %151)
  store i32 %152, i32* %9, align 4
  %153 = load i32, i32* %9, align 4
  %154 = icmp slt i32 %153, 0
  br i1 %154, label %155, label %156

155:                                              ; preds = %141
  br label %168

156:                                              ; preds = %141
  br label %159

157:                                              ; preds = %126
  %158 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %8, i32 0, i32 0
  store i32 0, i32* %158, align 8
  store i32 0, i32* %9, align 4
  br label %159

159:                                              ; preds = %157, %156
  br label %161

160:                                              ; preds = %39
  br label %168

161:                                              ; preds = %159, %125, %74, %55, %45
  %162 = load %struct.switch_attr*, %struct.switch_attr** %6, align 8
  %163 = getelementptr inbounds %struct.switch_attr, %struct.switch_attr* %162, i32 0, i32 0
  %164 = load i32 (%struct.switch_dev*, %struct.switch_attr*, %struct.switch_val*)*, i32 (%struct.switch_dev*, %struct.switch_attr*, %struct.switch_val*)** %163, align 8
  %165 = load %struct.switch_dev*, %struct.switch_dev** %7, align 8
  %166 = load %struct.switch_attr*, %struct.switch_attr** %6, align 8
  %167 = call i32 %164(%struct.switch_dev* %165, %struct.switch_attr* %166, %struct.switch_val* %8)
  store i32 %167, i32* %9, align 4
  br label %168

168:                                              ; preds = %161, %160, %155, %121, %73, %54, %38
  %169 = load %struct.switch_dev*, %struct.switch_dev** %7, align 8
  %170 = call i32 @swconfig_put_dev(%struct.switch_dev* %169)
  %171 = load i32, i32* %9, align 4
  store i32 %171, i32* %3, align 4
  br label %172

172:                                              ; preds = %168, %23, %15
  %173 = load i32, i32* %3, align 4
  ret i32 %173
}

declare dso_local i32 @capable(i32) #1

declare dso_local %struct.switch_dev* @swconfig_get_dev(%struct.genl_info*) #1

declare dso_local i32 @memset(%struct.switch_val*, i32, i32) #1

declare dso_local %struct.switch_attr* @swconfig_lookup_attr(%struct.switch_dev*, %struct.genl_info*, %struct.switch_val*) #1

declare dso_local i32 @nla_get_u32(i32) #1

declare dso_local i32 @nla_data(i32) #1

declare dso_local i32 @swconfig_parse_ports(%struct.sk_buff*, i32, %struct.switch_val*, i32) #1

declare dso_local i32 @swconfig_parse_link(%struct.sk_buff*, i32, %struct.switch_val*) #1

declare dso_local i32 @swconfig_put_dev(%struct.switch_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
