; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_options.c_show_http_proxy_options.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_options.c_show_http_proxy_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.http_proxy_options = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64 }

@D_SHOW_PARMS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"BEGIN http_proxy\00", align 1
@server = common dso_local global i32 0, align 4
@port = common dso_local global i32 0, align 4
@auth_method_string = common dso_local global i32 0, align 4
@auth_file = common dso_local global i32 0, align 4
@http_version = common dso_local global i32 0, align 4
@user_agent = common dso_local global i32 0, align 4
@MAX_CUSTOM_HTTP_HEADER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"  custom_header[%d] = %s: %s\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"  custom_header[%d] = %s\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"END http_proxy\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.http_proxy_options*)* @show_http_proxy_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @show_http_proxy_options(%struct.http_proxy_options* %0) #0 {
  %2 = alloca %struct.http_proxy_options*, align 8
  %3 = alloca i32, align 4
  store %struct.http_proxy_options* %0, %struct.http_proxy_options** %2, align 8
  %4 = load i32, i32* @D_SHOW_PARMS, align 4
  %5 = call i32 (i32, i8*, ...) @msg(i32 %4, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %6 = load i32, i32* @server, align 4
  %7 = call i32 @SHOW_STR(i32 %6)
  %8 = load i32, i32* @port, align 4
  %9 = call i32 @SHOW_STR(i32 %8)
  %10 = load i32, i32* @auth_method_string, align 4
  %11 = call i32 @SHOW_STR(i32 %10)
  %12 = load i32, i32* @auth_file, align 4
  %13 = call i32 @SHOW_STR(i32 %12)
  %14 = load i32, i32* @http_version, align 4
  %15 = call i32 @SHOW_STR(i32 %14)
  %16 = load i32, i32* @user_agent, align 4
  %17 = call i32 @SHOW_STR(i32 %16)
  store i32 0, i32* %3, align 4
  br label %18

18:                                               ; preds = %77, %1
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* @MAX_CUSTOM_HTTP_HEADER, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %32

22:                                               ; preds = %18
  %23 = load %struct.http_proxy_options*, %struct.http_proxy_options** %2, align 8
  %24 = getelementptr inbounds %struct.http_proxy_options, %struct.http_proxy_options* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = load i32, i32* %3, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br label %32

32:                                               ; preds = %22, %18
  %33 = phi i1 [ false, %18 ], [ %31, %22 ]
  br i1 %33, label %34, label %80

34:                                               ; preds = %32
  %35 = load %struct.http_proxy_options*, %struct.http_proxy_options** %2, align 8
  %36 = getelementptr inbounds %struct.http_proxy_options, %struct.http_proxy_options* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = load i32, i32* %3, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %64

44:                                               ; preds = %34
  %45 = load i32, i32* @D_SHOW_PARMS, align 4
  %46 = load i32, i32* %3, align 4
  %47 = load %struct.http_proxy_options*, %struct.http_proxy_options** %2, align 8
  %48 = getelementptr inbounds %struct.http_proxy_options, %struct.http_proxy_options* %47, i32 0, i32 0
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = load i32, i32* %3, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.http_proxy_options*, %struct.http_proxy_options** %2, align 8
  %56 = getelementptr inbounds %struct.http_proxy_options, %struct.http_proxy_options* %55, i32 0, i32 0
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = load i32, i32* %3, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = call i32 (i32, i8*, ...) @msg(i32 %45, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %46, i64 %54, i64 %62)
  br label %76

64:                                               ; preds = %34
  %65 = load i32, i32* @D_SHOW_PARMS, align 4
  %66 = load i32, i32* %3, align 4
  %67 = load %struct.http_proxy_options*, %struct.http_proxy_options** %2, align 8
  %68 = getelementptr inbounds %struct.http_proxy_options, %struct.http_proxy_options* %67, i32 0, i32 0
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = load i32, i32* %3, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = call i32 (i32, i8*, ...) @msg(i32 %65, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %66, i64 %74)
  br label %76

76:                                               ; preds = %64, %44
  br label %77

77:                                               ; preds = %76
  %78 = load i32, i32* %3, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %3, align 4
  br label %18

80:                                               ; preds = %32
  %81 = load i32, i32* @D_SHOW_PARMS, align 4
  %82 = call i32 (i32, i8*, ...) @msg(i32 %81, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  ret void
}

declare dso_local i32 @msg(i32, i8*, ...) #1

declare dso_local i32 @SHOW_STR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
