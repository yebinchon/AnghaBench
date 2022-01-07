; ModuleID = '/home/carl/AnghaBench/netdata/web/server/extr_web_client.c_check_host_and_mgmt_acl_and_call.c'
source_filename = "/home/carl/AnghaBench/netdata/web/server/extr_web_client.c_check_host_and_mgmt_acl_and_call.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.web_client = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.web_client*, i8*, i32 (i32*, %struct.web_client*, i8*)*)* @check_host_and_mgmt_acl_and_call to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_host_and_mgmt_acl_and_call(i32* %0, %struct.web_client* %1, i8* %2, i32 (i32*, %struct.web_client*, i8*)* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.web_client*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32 (i32*, %struct.web_client*, i8*)*, align 8
  store i32* %0, i32** %6, align 8
  store %struct.web_client* %1, %struct.web_client** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 (i32*, %struct.web_client*, i8*)* %3, i32 (i32*, %struct.web_client*, i8*)** %9, align 8
  %10 = load %struct.web_client*, %struct.web_client** %7, align 8
  %11 = call i32 @web_client_can_access_mgmt(%struct.web_client* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %4
  %14 = load %struct.web_client*, %struct.web_client** %7, align 8
  %15 = call i32 @web_client_permission_denied(%struct.web_client* %14)
  store i32 %15, i32* %5, align 4
  br label %22

16:                                               ; preds = %4
  %17 = load i32*, i32** %6, align 8
  %18 = load %struct.web_client*, %struct.web_client** %7, align 8
  %19 = load i8*, i8** %8, align 8
  %20 = load i32 (i32*, %struct.web_client*, i8*)*, i32 (i32*, %struct.web_client*, i8*)** %9, align 8
  %21 = call i32 @check_host_and_call(i32* %17, %struct.web_client* %18, i8* %19, i32 (i32*, %struct.web_client*, i8*)* %20)
  store i32 %21, i32* %5, align 4
  br label %22

22:                                               ; preds = %16, %13
  %23 = load i32, i32* %5, align 4
  ret i32 %23
}

declare dso_local i32 @web_client_can_access_mgmt(%struct.web_client*) #1

declare dso_local i32 @web_client_permission_denied(%struct.web_client*) #1

declare dso_local i32 @check_host_and_call(i32*, %struct.web_client*, i8*, i32 (i32*, %struct.web_client*, i8*)*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
