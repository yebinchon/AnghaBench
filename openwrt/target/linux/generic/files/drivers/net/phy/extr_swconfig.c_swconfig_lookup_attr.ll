; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/net/phy/extr_swconfig.c_swconfig_lookup_attr.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/net/phy/extr_swconfig.c_swconfig_lookup_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.switch_attr = type { i64 }
%struct.switch_dev = type { i64, i64, i64, i8*, %struct.TYPE_2__*, i8* }
%struct.TYPE_2__ = type { %struct.switch_attrlist, %struct.switch_attrlist, %struct.switch_attrlist }
%struct.switch_attrlist = type { i32, %struct.switch_attr* }
%struct.genl_info = type { i32*, i32 }
%struct.switch_val = type { %struct.switch_attr*, i8* }
%struct.genlmsghdr = type { i32 }

@SWITCH_ATTR_OP_ID = common dso_local global i64 0, align 8
@default_global = common dso_local global %struct.switch_attr* null, align 8
@default_vlan = common dso_local global %struct.switch_attr* null, align 8
@SWITCH_ATTR_OP_VLAN = common dso_local global i64 0, align 8
@default_port = common dso_local global %struct.switch_attr* null, align 8
@SWITCH_ATTR_OP_PORT = common dso_local global i64 0, align 8
@SWITCH_ATTR_DEFAULTS_OFFSET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"attribute lookup failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.switch_attr* (%struct.switch_dev*, %struct.genl_info*, %struct.switch_val*)* @swconfig_lookup_attr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.switch_attr* @swconfig_lookup_attr(%struct.switch_dev* %0, %struct.genl_info* %1, %struct.switch_val* %2) #0 {
  %4 = alloca %struct.switch_dev*, align 8
  %5 = alloca %struct.genl_info*, align 8
  %6 = alloca %struct.switch_val*, align 8
  %7 = alloca %struct.genlmsghdr*, align 8
  %8 = alloca %struct.switch_attrlist*, align 8
  %9 = alloca %struct.switch_attr*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.switch_attr*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i32, align 4
  store %struct.switch_dev* %0, %struct.switch_dev** %4, align 8
  store %struct.genl_info* %1, %struct.genl_info** %5, align 8
  store %struct.switch_val* %2, %struct.switch_val** %6, align 8
  %14 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %15 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = call %struct.genlmsghdr* @nlmsg_data(i32 %16)
  store %struct.genlmsghdr* %17, %struct.genlmsghdr** %7, align 8
  store %struct.switch_attr* null, %struct.switch_attr** %9, align 8
  %18 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %19 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = load i64, i64* @SWITCH_ATTR_OP_ID, align 8
  %22 = getelementptr inbounds i32, i32* %20, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %3
  br label %172

26:                                               ; preds = %3
  %27 = load %struct.genlmsghdr*, %struct.genlmsghdr** %7, align 8
  %28 = getelementptr inbounds %struct.genlmsghdr, %struct.genlmsghdr* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  switch i32 %29, label %114 [
    i32 130, label %30
    i32 133, label %30
    i32 128, label %40
    i32 131, label %40
    i32 129, label %77
    i32 132, label %77
  ]

30:                                               ; preds = %26, %26
  %31 = load %struct.switch_dev*, %struct.switch_dev** %4, align 8
  %32 = getelementptr inbounds %struct.switch_dev, %struct.switch_dev* %31, i32 0, i32 4
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 2
  store %struct.switch_attrlist* %34, %struct.switch_attrlist** %8, align 8
  %35 = load %struct.switch_attr*, %struct.switch_attr** @default_global, align 8
  store %struct.switch_attr* %35, %struct.switch_attr** %11, align 8
  %36 = load %struct.switch_dev*, %struct.switch_dev** %4, align 8
  %37 = getelementptr inbounds %struct.switch_dev, %struct.switch_dev* %36, i32 0, i32 0
  store i64* %37, i64** %12, align 8
  %38 = load %struct.switch_attr*, %struct.switch_attr** @default_global, align 8
  %39 = call i32 @ARRAY_SIZE(%struct.switch_attr* %38)
  store i32 %39, i32* %13, align 4
  br label %116

40:                                               ; preds = %26, %26
  %41 = load %struct.switch_dev*, %struct.switch_dev** %4, align 8
  %42 = getelementptr inbounds %struct.switch_dev, %struct.switch_dev* %41, i32 0, i32 4
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  store %struct.switch_attrlist* %44, %struct.switch_attrlist** %8, align 8
  %45 = load %struct.switch_attr*, %struct.switch_attr** @default_vlan, align 8
  store %struct.switch_attr* %45, %struct.switch_attr** %11, align 8
  %46 = load %struct.switch_dev*, %struct.switch_dev** %4, align 8
  %47 = getelementptr inbounds %struct.switch_dev, %struct.switch_dev* %46, i32 0, i32 1
  store i64* %47, i64** %12, align 8
  %48 = load %struct.switch_attr*, %struct.switch_attr** @default_vlan, align 8
  %49 = call i32 @ARRAY_SIZE(%struct.switch_attr* %48)
  store i32 %49, i32* %13, align 4
  %50 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %51 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = load i64, i64* @SWITCH_ATTR_OP_VLAN, align 8
  %54 = getelementptr inbounds i32, i32* %52, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %40
  br label %172

58:                                               ; preds = %40
  %59 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %60 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = load i64, i64* @SWITCH_ATTR_OP_VLAN, align 8
  %63 = getelementptr inbounds i32, i32* %61, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = call i8* @nla_get_u32(i32 %64)
  %66 = load %struct.switch_val*, %struct.switch_val** %6, align 8
  %67 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %66, i32 0, i32 1
  store i8* %65, i8** %67, align 8
  %68 = load %struct.switch_val*, %struct.switch_val** %6, align 8
  %69 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %68, i32 0, i32 1
  %70 = load i8*, i8** %69, align 8
  %71 = load %struct.switch_dev*, %struct.switch_dev** %4, align 8
  %72 = getelementptr inbounds %struct.switch_dev, %struct.switch_dev* %71, i32 0, i32 5
  %73 = load i8*, i8** %72, align 8
  %74 = icmp uge i8* %70, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %58
  br label %172

76:                                               ; preds = %58
  br label %116

77:                                               ; preds = %26, %26
  %78 = load %struct.switch_dev*, %struct.switch_dev** %4, align 8
  %79 = getelementptr inbounds %struct.switch_dev, %struct.switch_dev* %78, i32 0, i32 4
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  store %struct.switch_attrlist* %81, %struct.switch_attrlist** %8, align 8
  %82 = load %struct.switch_attr*, %struct.switch_attr** @default_port, align 8
  store %struct.switch_attr* %82, %struct.switch_attr** %11, align 8
  %83 = load %struct.switch_dev*, %struct.switch_dev** %4, align 8
  %84 = getelementptr inbounds %struct.switch_dev, %struct.switch_dev* %83, i32 0, i32 2
  store i64* %84, i64** %12, align 8
  %85 = load %struct.switch_attr*, %struct.switch_attr** @default_port, align 8
  %86 = call i32 @ARRAY_SIZE(%struct.switch_attr* %85)
  store i32 %86, i32* %13, align 4
  %87 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %88 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %87, i32 0, i32 0
  %89 = load i32*, i32** %88, align 8
  %90 = load i64, i64* @SWITCH_ATTR_OP_PORT, align 8
  %91 = getelementptr inbounds i32, i32* %89, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %95, label %94

94:                                               ; preds = %77
  br label %172

95:                                               ; preds = %77
  %96 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %97 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %96, i32 0, i32 0
  %98 = load i32*, i32** %97, align 8
  %99 = load i64, i64* @SWITCH_ATTR_OP_PORT, align 8
  %100 = getelementptr inbounds i32, i32* %98, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = call i8* @nla_get_u32(i32 %101)
  %103 = load %struct.switch_val*, %struct.switch_val** %6, align 8
  %104 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %103, i32 0, i32 1
  store i8* %102, i8** %104, align 8
  %105 = load %struct.switch_val*, %struct.switch_val** %6, align 8
  %106 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %105, i32 0, i32 1
  %107 = load i8*, i8** %106, align 8
  %108 = load %struct.switch_dev*, %struct.switch_dev** %4, align 8
  %109 = getelementptr inbounds %struct.switch_dev, %struct.switch_dev* %108, i32 0, i32 3
  %110 = load i8*, i8** %109, align 8
  %111 = icmp uge i8* %107, %110
  br i1 %111, label %112, label %113

112:                                              ; preds = %95
  br label %172

113:                                              ; preds = %95
  br label %116

114:                                              ; preds = %26
  %115 = call i32 @WARN_ON(i32 1)
  br label %172

116:                                              ; preds = %113, %76, %30
  %117 = load %struct.switch_attrlist*, %struct.switch_attrlist** %8, align 8
  %118 = icmp ne %struct.switch_attrlist* %117, null
  br i1 %118, label %120, label %119

119:                                              ; preds = %116
  br label %172

120:                                              ; preds = %116
  %121 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %122 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %121, i32 0, i32 0
  %123 = load i32*, i32** %122, align 8
  %124 = load i64, i64* @SWITCH_ATTR_OP_ID, align 8
  %125 = getelementptr inbounds i32, i32* %123, i64 %124
  %126 = load i32, i32* %125, align 4
  %127 = call i8* @nla_get_u32(i32 %126)
  %128 = ptrtoint i8* %127 to i32
  store i32 %128, i32* %10, align 4
  %129 = load i32, i32* %10, align 4
  %130 = load i32, i32* @SWITCH_ATTR_DEFAULTS_OFFSET, align 4
  %131 = icmp uge i32 %129, %130
  br i1 %131, label %132, label %151

132:                                              ; preds = %120
  %133 = load i32, i32* @SWITCH_ATTR_DEFAULTS_OFFSET, align 4
  %134 = load i32, i32* %10, align 4
  %135 = sub i32 %134, %133
  store i32 %135, i32* %10, align 4
  %136 = load i32, i32* %10, align 4
  %137 = load i32, i32* %13, align 4
  %138 = icmp uge i32 %136, %137
  br i1 %138, label %139, label %140

139:                                              ; preds = %132
  br label %172

140:                                              ; preds = %132
  %141 = load i32, i32* %10, align 4
  %142 = load i64*, i64** %12, align 8
  %143 = call i32 @test_bit(i32 %141, i64* %142)
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %146, label %145

145:                                              ; preds = %140
  br label %172

146:                                              ; preds = %140
  %147 = load %struct.switch_attr*, %struct.switch_attr** %11, align 8
  %148 = load i32, i32* %10, align 4
  %149 = zext i32 %148 to i64
  %150 = getelementptr inbounds %struct.switch_attr, %struct.switch_attr* %147, i64 %149
  store %struct.switch_attr* %150, %struct.switch_attr** %9, align 8
  br label %165

151:                                              ; preds = %120
  %152 = load i32, i32* %10, align 4
  %153 = load %struct.switch_attrlist*, %struct.switch_attrlist** %8, align 8
  %154 = getelementptr inbounds %struct.switch_attrlist, %struct.switch_attrlist* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = icmp uge i32 %152, %155
  br i1 %156, label %157, label %158

157:                                              ; preds = %151
  br label %172

158:                                              ; preds = %151
  %159 = load %struct.switch_attrlist*, %struct.switch_attrlist** %8, align 8
  %160 = getelementptr inbounds %struct.switch_attrlist, %struct.switch_attrlist* %159, i32 0, i32 1
  %161 = load %struct.switch_attr*, %struct.switch_attr** %160, align 8
  %162 = load i32, i32* %10, align 4
  %163 = zext i32 %162 to i64
  %164 = getelementptr inbounds %struct.switch_attr, %struct.switch_attr* %161, i64 %163
  store %struct.switch_attr* %164, %struct.switch_attr** %9, align 8
  br label %165

165:                                              ; preds = %158, %146
  %166 = load %struct.switch_attr*, %struct.switch_attr** %9, align 8
  %167 = getelementptr inbounds %struct.switch_attr, %struct.switch_attr* %166, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %171

170:                                              ; preds = %165
  store %struct.switch_attr* null, %struct.switch_attr** %9, align 8
  br label %171

171:                                              ; preds = %170, %165
  br label %172

172:                                              ; preds = %171, %157, %145, %139, %119, %114, %112, %94, %75, %57, %25
  %173 = load %struct.switch_attr*, %struct.switch_attr** %9, align 8
  %174 = icmp ne %struct.switch_attr* %173, null
  br i1 %174, label %177, label %175

175:                                              ; preds = %172
  %176 = call i32 @pr_debug(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %177

177:                                              ; preds = %175, %172
  %178 = load %struct.switch_attr*, %struct.switch_attr** %9, align 8
  %179 = load %struct.switch_val*, %struct.switch_val** %6, align 8
  %180 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %179, i32 0, i32 0
  store %struct.switch_attr* %178, %struct.switch_attr** %180, align 8
  %181 = load %struct.switch_attr*, %struct.switch_attr** %9, align 8
  ret %struct.switch_attr* %181
}

declare dso_local %struct.genlmsghdr* @nlmsg_data(i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.switch_attr*) #1

declare dso_local i8* @nla_get_u32(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @test_bit(i32, i64*) #1

declare dso_local i32 @pr_debug(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
