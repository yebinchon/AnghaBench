; ModuleID = '/home/carl/AnghaBench/netdata/web/server/extr_web_server.c_web_client_update_acl_matches.c'
source_filename = "/home/carl/AnghaBench/netdata/web/server/extr_web_server.c_web_client_update_acl_matches.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.web_client = type { i32, i32, i32, i32, i32 }

@WEB_CLIENT_ACL_NONE = common dso_local global i32 0, align 4
@web_allow_dashboard_from = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"dashboard\00", align 1
@web_allow_dashboard_dns = common dso_local global i32 0, align 4
@WEB_CLIENT_ACL_DASHBOARD = common dso_local global i32 0, align 4
@web_allow_registry_from = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"registry\00", align 1
@web_allow_registry_dns = common dso_local global i32 0, align 4
@WEB_CLIENT_ACL_REGISTRY = common dso_local global i32 0, align 4
@web_allow_badges_from = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"badges\00", align 1
@web_allow_badges_dns = common dso_local global i32 0, align 4
@WEB_CLIENT_ACL_BADGE = common dso_local global i32 0, align 4
@web_allow_mgmt_from = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [11 x i8] c"management\00", align 1
@web_allow_mgmt_dns = common dso_local global i32 0, align 4
@WEB_CLIENT_ACL_MGMT = common dso_local global i32 0, align 4
@web_allow_streaming_from = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [10 x i8] c"streaming\00", align 1
@web_allow_streaming_dns = common dso_local global i32 0, align 4
@WEB_CLIENT_ACL_STREAMING = common dso_local global i32 0, align 4
@web_allow_netdataconf_from = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [13 x i8] c"netdata.conf\00", align 1
@web_allow_netdataconf_dns = common dso_local global i32 0, align 4
@WEB_CLIENT_ACL_NETDATACONF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @web_client_update_acl_matches(%struct.web_client* %0) #0 {
  %2 = alloca %struct.web_client*, align 8
  store %struct.web_client* %0, %struct.web_client** %2, align 8
  %3 = load i32, i32* @WEB_CLIENT_ACL_NONE, align 4
  %4 = load %struct.web_client*, %struct.web_client** %2, align 8
  %5 = getelementptr inbounds %struct.web_client, %struct.web_client* %4, i32 0, i32 1
  store i32 %3, i32* %5, align 4
  %6 = load i32, i32* @web_allow_dashboard_from, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %22

8:                                                ; preds = %1
  %9 = load %struct.web_client*, %struct.web_client** %2, align 8
  %10 = getelementptr inbounds %struct.web_client, %struct.web_client* %9, i32 0, i32 4
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.web_client*, %struct.web_client** %2, align 8
  %13 = getelementptr inbounds %struct.web_client, %struct.web_client* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.web_client*, %struct.web_client** %2, align 8
  %16 = getelementptr inbounds %struct.web_client, %struct.web_client* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @web_allow_dashboard_from, align 4
  %19 = load i32, i32* @web_allow_dashboard_dns, align 4
  %20 = call i64 @connection_allowed(i32 %11, i32 %14, i32 %17, i32 4, i32 %18, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %8, %1
  %23 = load i32, i32* @WEB_CLIENT_ACL_DASHBOARD, align 4
  %24 = load %struct.web_client*, %struct.web_client** %2, align 8
  %25 = getelementptr inbounds %struct.web_client, %struct.web_client* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = or i32 %26, %23
  store i32 %27, i32* %25, align 4
  br label %28

28:                                               ; preds = %22, %8
  %29 = load i32, i32* @web_allow_registry_from, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %45

31:                                               ; preds = %28
  %32 = load %struct.web_client*, %struct.web_client** %2, align 8
  %33 = getelementptr inbounds %struct.web_client, %struct.web_client* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.web_client*, %struct.web_client** %2, align 8
  %36 = getelementptr inbounds %struct.web_client, %struct.web_client* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.web_client*, %struct.web_client** %2, align 8
  %39 = getelementptr inbounds %struct.web_client, %struct.web_client* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @web_allow_registry_from, align 4
  %42 = load i32, i32* @web_allow_registry_dns, align 4
  %43 = call i64 @connection_allowed(i32 %34, i32 %37, i32 %40, i32 4, i32 %41, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %31, %28
  %46 = load i32, i32* @WEB_CLIENT_ACL_REGISTRY, align 4
  %47 = load %struct.web_client*, %struct.web_client** %2, align 8
  %48 = getelementptr inbounds %struct.web_client, %struct.web_client* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = or i32 %49, %46
  store i32 %50, i32* %48, align 4
  br label %51

51:                                               ; preds = %45, %31
  %52 = load i32, i32* @web_allow_badges_from, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %68

54:                                               ; preds = %51
  %55 = load %struct.web_client*, %struct.web_client** %2, align 8
  %56 = getelementptr inbounds %struct.web_client, %struct.web_client* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.web_client*, %struct.web_client** %2, align 8
  %59 = getelementptr inbounds %struct.web_client, %struct.web_client* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.web_client*, %struct.web_client** %2, align 8
  %62 = getelementptr inbounds %struct.web_client, %struct.web_client* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @web_allow_badges_from, align 4
  %65 = load i32, i32* @web_allow_badges_dns, align 4
  %66 = call i64 @connection_allowed(i32 %57, i32 %60, i32 %63, i32 4, i32 %64, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %54, %51
  %69 = load i32, i32* @WEB_CLIENT_ACL_BADGE, align 4
  %70 = load %struct.web_client*, %struct.web_client** %2, align 8
  %71 = getelementptr inbounds %struct.web_client, %struct.web_client* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = or i32 %72, %69
  store i32 %73, i32* %71, align 4
  br label %74

74:                                               ; preds = %68, %54
  %75 = load i32, i32* @web_allow_mgmt_from, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %91

77:                                               ; preds = %74
  %78 = load %struct.web_client*, %struct.web_client** %2, align 8
  %79 = getelementptr inbounds %struct.web_client, %struct.web_client* %78, i32 0, i32 4
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.web_client*, %struct.web_client** %2, align 8
  %82 = getelementptr inbounds %struct.web_client, %struct.web_client* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.web_client*, %struct.web_client** %2, align 8
  %85 = getelementptr inbounds %struct.web_client, %struct.web_client* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @web_allow_mgmt_from, align 4
  %88 = load i32, i32* @web_allow_mgmt_dns, align 4
  %89 = call i64 @connection_allowed(i32 %80, i32 %83, i32 %86, i32 4, i32 %87, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %97

91:                                               ; preds = %77, %74
  %92 = load i32, i32* @WEB_CLIENT_ACL_MGMT, align 4
  %93 = load %struct.web_client*, %struct.web_client** %2, align 8
  %94 = getelementptr inbounds %struct.web_client, %struct.web_client* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = or i32 %95, %92
  store i32 %96, i32* %94, align 4
  br label %97

97:                                               ; preds = %91, %77
  %98 = load i32, i32* @web_allow_streaming_from, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %114

100:                                              ; preds = %97
  %101 = load %struct.web_client*, %struct.web_client** %2, align 8
  %102 = getelementptr inbounds %struct.web_client, %struct.web_client* %101, i32 0, i32 4
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.web_client*, %struct.web_client** %2, align 8
  %105 = getelementptr inbounds %struct.web_client, %struct.web_client* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.web_client*, %struct.web_client** %2, align 8
  %108 = getelementptr inbounds %struct.web_client, %struct.web_client* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* @web_allow_streaming_from, align 4
  %111 = load i32, i32* @web_allow_streaming_dns, align 4
  %112 = call i64 @connection_allowed(i32 %103, i32 %106, i32 %109, i32 4, i32 %110, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %120

114:                                              ; preds = %100, %97
  %115 = load i32, i32* @WEB_CLIENT_ACL_STREAMING, align 4
  %116 = load %struct.web_client*, %struct.web_client** %2, align 8
  %117 = getelementptr inbounds %struct.web_client, %struct.web_client* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = or i32 %118, %115
  store i32 %119, i32* %117, align 4
  br label %120

120:                                              ; preds = %114, %100
  %121 = load i32, i32* @web_allow_netdataconf_from, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %137

123:                                              ; preds = %120
  %124 = load %struct.web_client*, %struct.web_client** %2, align 8
  %125 = getelementptr inbounds %struct.web_client, %struct.web_client* %124, i32 0, i32 4
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.web_client*, %struct.web_client** %2, align 8
  %128 = getelementptr inbounds %struct.web_client, %struct.web_client* %127, i32 0, i32 3
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.web_client*, %struct.web_client** %2, align 8
  %131 = getelementptr inbounds %struct.web_client, %struct.web_client* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* @web_allow_netdataconf_from, align 4
  %134 = load i32, i32* @web_allow_netdataconf_dns, align 4
  %135 = call i64 @connection_allowed(i32 %126, i32 %129, i32 %132, i32 4, i32 %133, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i32 %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %143

137:                                              ; preds = %123, %120
  %138 = load i32, i32* @WEB_CLIENT_ACL_NETDATACONF, align 4
  %139 = load %struct.web_client*, %struct.web_client** %2, align 8
  %140 = getelementptr inbounds %struct.web_client, %struct.web_client* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = or i32 %141, %138
  store i32 %142, i32* %140, align 4
  br label %143

143:                                              ; preds = %137, %123
  %144 = load %struct.web_client*, %struct.web_client** %2, align 8
  %145 = getelementptr inbounds %struct.web_client, %struct.web_client* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.web_client*, %struct.web_client** %2, align 8
  %148 = getelementptr inbounds %struct.web_client, %struct.web_client* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = and i32 %149, %146
  store i32 %150, i32* %148, align 4
  ret void
}

declare dso_local i64 @connection_allowed(i32, i32, i32, i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
