; ModuleID = '/home/carl/AnghaBench/openwrt/package/network/config/swconfig/src/extr_swlib.c_add_attr.c'
source_filename = "/home/carl/AnghaBench/openwrt/package/network/config/swconfig/src/extr_swlib.c_add_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nl_msg = type { i32 }
%struct.genlmsghdr = type { i32 }
%struct.attrlist_arg = type { %struct.switch_attr**, %struct.switch_attr*, i32, i32 }
%struct.switch_attr = type { i8*, i8*, i8*, i8*, %struct.switch_attr*, i32, i32 }

@tb = common dso_local global i64* null, align 8
@SWITCH_ATTR_MAX = common dso_local global i64 0, align 8
@SWITCH_ATTR_OP_ID = common dso_local global i64 0, align 8
@SWITCH_ATTR_OP_TYPE = common dso_local global i64 0, align 8
@SWITCH_ATTR_OP_NAME = common dso_local global i64 0, align 8
@SWITCH_ATTR_OP_DESCRIPTION = common dso_local global i64 0, align 8
@NL_SKIP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nl_msg*, i8*)* @add_attr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_attr(%struct.nl_msg* %0, i8* %1) #0 {
  %3 = alloca %struct.nl_msg*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.genlmsghdr*, align 8
  %6 = alloca %struct.attrlist_arg*, align 8
  %7 = alloca %struct.switch_attr*, align 8
  store %struct.nl_msg* %0, %struct.nl_msg** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load %struct.nl_msg*, %struct.nl_msg** %3, align 8
  %9 = call i32 @nlmsg_hdr(%struct.nl_msg* %8)
  %10 = call %struct.genlmsghdr* @nlmsg_data(i32 %9)
  store %struct.genlmsghdr* %10, %struct.genlmsghdr** %5, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to %struct.attrlist_arg*
  store %struct.attrlist_arg* %12, %struct.attrlist_arg** %6, align 8
  %13 = load i64*, i64** @tb, align 8
  %14 = load i64, i64* @SWITCH_ATTR_MAX, align 8
  %15 = sub nsw i64 %14, 1
  %16 = load %struct.genlmsghdr*, %struct.genlmsghdr** %5, align 8
  %17 = call i32 @genlmsg_attrdata(%struct.genlmsghdr* %16, i32 0)
  %18 = load %struct.genlmsghdr*, %struct.genlmsghdr** %5, align 8
  %19 = call i32 @genlmsg_attrlen(%struct.genlmsghdr* %18, i32 0)
  %20 = call i64 @nla_parse(i64* %13, i64 %15, i32 %17, i32 %19, i32* null)
  %21 = icmp slt i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  br label %123

23:                                               ; preds = %2
  %24 = call %struct.switch_attr* @swlib_alloc(i32 48)
  store %struct.switch_attr* %24, %struct.switch_attr** %7, align 8
  %25 = load %struct.switch_attr*, %struct.switch_attr** %7, align 8
  %26 = icmp ne %struct.switch_attr* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %23
  br label %123

28:                                               ; preds = %23
  %29 = load %struct.attrlist_arg*, %struct.attrlist_arg** %6, align 8
  %30 = getelementptr inbounds %struct.attrlist_arg, %struct.attrlist_arg* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.switch_attr*, %struct.switch_attr** %7, align 8
  %33 = getelementptr inbounds %struct.switch_attr, %struct.switch_attr* %32, i32 0, i32 6
  store i32 %31, i32* %33, align 4
  %34 = load %struct.attrlist_arg*, %struct.attrlist_arg** %6, align 8
  %35 = getelementptr inbounds %struct.attrlist_arg, %struct.attrlist_arg* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.switch_attr*, %struct.switch_attr** %7, align 8
  %38 = getelementptr inbounds %struct.switch_attr, %struct.switch_attr* %37, i32 0, i32 5
  store i32 %36, i32* %38, align 8
  %39 = load %struct.attrlist_arg*, %struct.attrlist_arg** %6, align 8
  %40 = getelementptr inbounds %struct.attrlist_arg, %struct.attrlist_arg* %39, i32 0, i32 1
  %41 = load %struct.switch_attr*, %struct.switch_attr** %40, align 8
  %42 = icmp ne %struct.switch_attr* %41, null
  br i1 %42, label %43, label %49

43:                                               ; preds = %28
  %44 = load %struct.switch_attr*, %struct.switch_attr** %7, align 8
  %45 = load %struct.attrlist_arg*, %struct.attrlist_arg** %6, align 8
  %46 = getelementptr inbounds %struct.attrlist_arg, %struct.attrlist_arg* %45, i32 0, i32 1
  %47 = load %struct.switch_attr*, %struct.switch_attr** %46, align 8
  %48 = getelementptr inbounds %struct.switch_attr, %struct.switch_attr* %47, i32 0, i32 4
  store %struct.switch_attr* %44, %struct.switch_attr** %48, align 8
  br label %56

49:                                               ; preds = %28
  %50 = load %struct.attrlist_arg*, %struct.attrlist_arg** %6, align 8
  %51 = getelementptr inbounds %struct.attrlist_arg, %struct.attrlist_arg* %50, i32 0, i32 0
  %52 = load %struct.switch_attr**, %struct.switch_attr*** %51, align 8
  %53 = load %struct.switch_attr*, %struct.switch_attr** %52, align 8
  %54 = load %struct.attrlist_arg*, %struct.attrlist_arg** %6, align 8
  %55 = getelementptr inbounds %struct.attrlist_arg, %struct.attrlist_arg* %54, i32 0, i32 1
  store %struct.switch_attr* %53, %struct.switch_attr** %55, align 8
  br label %56

56:                                               ; preds = %49, %43
  %57 = load %struct.switch_attr*, %struct.switch_attr** %7, align 8
  %58 = load %struct.attrlist_arg*, %struct.attrlist_arg** %6, align 8
  %59 = getelementptr inbounds %struct.attrlist_arg, %struct.attrlist_arg* %58, i32 0, i32 0
  %60 = load %struct.switch_attr**, %struct.switch_attr*** %59, align 8
  store %struct.switch_attr* %57, %struct.switch_attr** %60, align 8
  %61 = load %struct.switch_attr*, %struct.switch_attr** %7, align 8
  %62 = getelementptr inbounds %struct.switch_attr, %struct.switch_attr* %61, i32 0, i32 4
  %63 = load %struct.attrlist_arg*, %struct.attrlist_arg** %6, align 8
  %64 = getelementptr inbounds %struct.attrlist_arg, %struct.attrlist_arg* %63, i32 0, i32 0
  store %struct.switch_attr** %62, %struct.switch_attr*** %64, align 8
  %65 = load i64*, i64** @tb, align 8
  %66 = load i64, i64* @SWITCH_ATTR_OP_ID, align 8
  %67 = getelementptr inbounds i64, i64* %65, i64 %66
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %78

70:                                               ; preds = %56
  %71 = load i64*, i64** @tb, align 8
  %72 = load i64, i64* @SWITCH_ATTR_OP_ID, align 8
  %73 = getelementptr inbounds i64, i64* %71, i64 %72
  %74 = load i64, i64* %73, align 8
  %75 = call i8* @nla_get_u32(i64 %74)
  %76 = load %struct.switch_attr*, %struct.switch_attr** %7, align 8
  %77 = getelementptr inbounds %struct.switch_attr, %struct.switch_attr* %76, i32 0, i32 3
  store i8* %75, i8** %77, align 8
  br label %78

78:                                               ; preds = %70, %56
  %79 = load i64*, i64** @tb, align 8
  %80 = load i64, i64* @SWITCH_ATTR_OP_TYPE, align 8
  %81 = getelementptr inbounds i64, i64* %79, i64 %80
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %92

84:                                               ; preds = %78
  %85 = load i64*, i64** @tb, align 8
  %86 = load i64, i64* @SWITCH_ATTR_OP_TYPE, align 8
  %87 = getelementptr inbounds i64, i64* %85, i64 %86
  %88 = load i64, i64* %87, align 8
  %89 = call i8* @nla_get_u32(i64 %88)
  %90 = load %struct.switch_attr*, %struct.switch_attr** %7, align 8
  %91 = getelementptr inbounds %struct.switch_attr, %struct.switch_attr* %90, i32 0, i32 2
  store i8* %89, i8** %91, align 8
  br label %92

92:                                               ; preds = %84, %78
  %93 = load i64*, i64** @tb, align 8
  %94 = load i64, i64* @SWITCH_ATTR_OP_NAME, align 8
  %95 = getelementptr inbounds i64, i64* %93, i64 %94
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %107

98:                                               ; preds = %92
  %99 = load i64*, i64** @tb, align 8
  %100 = load i64, i64* @SWITCH_ATTR_OP_NAME, align 8
  %101 = getelementptr inbounds i64, i64* %99, i64 %100
  %102 = load i64, i64* %101, align 8
  %103 = call i32 @nla_get_string(i64 %102)
  %104 = call i8* @strdup(i32 %103)
  %105 = load %struct.switch_attr*, %struct.switch_attr** %7, align 8
  %106 = getelementptr inbounds %struct.switch_attr, %struct.switch_attr* %105, i32 0, i32 1
  store i8* %104, i8** %106, align 8
  br label %107

107:                                              ; preds = %98, %92
  %108 = load i64*, i64** @tb, align 8
  %109 = load i64, i64* @SWITCH_ATTR_OP_DESCRIPTION, align 8
  %110 = getelementptr inbounds i64, i64* %108, i64 %109
  %111 = load i64, i64* %110, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %122

113:                                              ; preds = %107
  %114 = load i64*, i64** @tb, align 8
  %115 = load i64, i64* @SWITCH_ATTR_OP_DESCRIPTION, align 8
  %116 = getelementptr inbounds i64, i64* %114, i64 %115
  %117 = load i64, i64* %116, align 8
  %118 = call i32 @nla_get_string(i64 %117)
  %119 = call i8* @strdup(i32 %118)
  %120 = load %struct.switch_attr*, %struct.switch_attr** %7, align 8
  %121 = getelementptr inbounds %struct.switch_attr, %struct.switch_attr* %120, i32 0, i32 0
  store i8* %119, i8** %121, align 8
  br label %122

122:                                              ; preds = %113, %107
  br label %123

123:                                              ; preds = %122, %27, %22
  %124 = load i32, i32* @NL_SKIP, align 4
  ret i32 %124
}

declare dso_local %struct.genlmsghdr* @nlmsg_data(i32) #1

declare dso_local i32 @nlmsg_hdr(%struct.nl_msg*) #1

declare dso_local i64 @nla_parse(i64*, i64, i32, i32, i32*) #1

declare dso_local i32 @genlmsg_attrdata(%struct.genlmsghdr*, i32) #1

declare dso_local i32 @genlmsg_attrlen(%struct.genlmsghdr*, i32) #1

declare dso_local %struct.switch_attr* @swlib_alloc(i32) #1

declare dso_local i8* @nla_get_u32(i64) #1

declare dso_local i8* @strdup(i32) #1

declare dso_local i32 @nla_get_string(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
