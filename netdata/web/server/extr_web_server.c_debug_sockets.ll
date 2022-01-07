; ModuleID = '/home/carl/AnghaBench/netdata/web/server/extr_web_server.c_debug_sockets.c'
source_filename = "/home/carl/AnghaBench/netdata/web/server/extr_web_server.c_debug_sockets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32*, i32*, i64 }

@api_sockets = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@WEB_CLIENT_ACL_NOCHECK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"NONE \00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@WEB_CLIENT_ACL_DASHBOARD = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"dashboard \00", align 1
@WEB_CLIENT_ACL_REGISTRY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"registry \00", align 1
@WEB_CLIENT_ACL_BADGE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [8 x i8] c"badges \00", align 1
@WEB_CLIENT_ACL_MGMT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [12 x i8] c"management \00", align 1
@WEB_CLIENT_ACL_STREAMING = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [11 x i8] c"streaming \00", align 1
@WEB_CLIENT_ACL_NETDATACONF = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [14 x i8] c"netdata.conf \00", align 1
@D_WEB_CLIENT = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [37 x i8] c"Socket fd %d name '%s' acl_flags: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @debug_sockets() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  %3 = call i32* @buffer_create(i32 256)
  store i32* %3, i32** %1, align 8
  store i32 0, i32* %2, align 4
  br label %4

4:                                                ; preds = %106, %0
  %5 = load i32, i32* %2, align 4
  %6 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @api_sockets, i32 0, i32 2), align 8
  %7 = trunc i64 %6 to i32
  %8 = icmp slt i32 %5, %7
  br i1 %8, label %9, label %109

9:                                                ; preds = %4
  %10 = load i32*, i32** %1, align 8
  %11 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @api_sockets, i32 0, i32 0), align 8
  %12 = load i32, i32* %2, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i32, i32* %11, i64 %13
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @WEB_CLIENT_ACL_NOCHECK, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  %19 = zext i1 %18 to i64
  %20 = select i1 %18, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0)
  %21 = call i32 @buffer_strcat(i32* %10, i8* %20)
  %22 = load i32*, i32** %1, align 8
  %23 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @api_sockets, i32 0, i32 0), align 8
  %24 = load i32, i32* %2, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @WEB_CLIENT_ACL_DASHBOARD, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  %31 = zext i1 %30 to i64
  %32 = select i1 %30, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0)
  %33 = call i32 @buffer_strcat(i32* %22, i8* %32)
  %34 = load i32*, i32** %1, align 8
  %35 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @api_sockets, i32 0, i32 0), align 8
  %36 = load i32, i32* %2, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @WEB_CLIENT_ACL_REGISTRY, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  %43 = zext i1 %42 to i64
  %44 = select i1 %42, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0)
  %45 = call i32 @buffer_strcat(i32* %34, i8* %44)
  %46 = load i32*, i32** %1, align 8
  %47 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @api_sockets, i32 0, i32 0), align 8
  %48 = load i32, i32* %2, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @WEB_CLIENT_ACL_BADGE, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  %55 = zext i1 %54 to i64
  %56 = select i1 %54, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0)
  %57 = call i32 @buffer_strcat(i32* %46, i8* %56)
  %58 = load i32*, i32** %1, align 8
  %59 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @api_sockets, i32 0, i32 0), align 8
  %60 = load i32, i32* %2, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @WEB_CLIENT_ACL_MGMT, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  %67 = zext i1 %66 to i64
  %68 = select i1 %66, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0)
  %69 = call i32 @buffer_strcat(i32* %58, i8* %68)
  %70 = load i32*, i32** %1, align 8
  %71 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @api_sockets, i32 0, i32 0), align 8
  %72 = load i32, i32* %2, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @WEB_CLIENT_ACL_STREAMING, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  %79 = zext i1 %78 to i64
  %80 = select i1 %78, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0)
  %81 = call i32 @buffer_strcat(i32* %70, i8* %80)
  %82 = load i32*, i32** %1, align 8
  %83 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @api_sockets, i32 0, i32 0), align 8
  %84 = load i32, i32* %2, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @WEB_CLIENT_ACL_NETDATACONF, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  %91 = zext i1 %90 to i64
  %92 = select i1 %90, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0)
  %93 = call i32 @buffer_strcat(i32* %82, i8* %92)
  %94 = load i32, i32* @D_WEB_CLIENT, align 4
  %95 = load i32, i32* %2, align 4
  %96 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @api_sockets, i32 0, i32 1), align 8
  %97 = load i32, i32* %2, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %96, i64 %98
  %100 = load i32, i32* %99, align 4
  %101 = load i32*, i32** %1, align 8
  %102 = call i32 @buffer_tostring(i32* %101)
  %103 = call i32 @debug(i32 %94, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.8, i64 0, i64 0), i32 %95, i32 %100, i32 %102)
  %104 = load i32*, i32** %1, align 8
  %105 = call i32 @buffer_reset(i32* %104)
  br label %106

106:                                              ; preds = %9
  %107 = load i32, i32* %2, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %2, align 4
  br label %4

109:                                              ; preds = %4
  %110 = load i32*, i32** %1, align 8
  %111 = call i32 @buffer_free(i32* %110)
  ret void
}

declare dso_local i32* @buffer_create(i32) #1

declare dso_local i32 @buffer_strcat(i32*, i8*) #1

declare dso_local i32 @debug(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @buffer_tostring(i32*) #1

declare dso_local i32 @buffer_reset(i32*) #1

declare dso_local i32 @buffer_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
