; ModuleID = '/home/carl/AnghaBench/reactos/base/services/dhcpcsvc/dhcp/extr_dhclient.c_dhcp.c'
source_filename = "/home/carl/AnghaBench/reactos/base/services/dhcpcsvc/dhcp/extr_dhclient.c_dhcp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.packet = type { i32, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.iaddrlist* }
%struct.iaddrlist = type { i32, %struct.iaddrlist* }

@.str = private unnamed_addr constant [10 x i8] c"DHCPOFFER\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"DHCPNACK\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"DHCPACK\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"%s from %s rejected.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dhcp(%struct.packet* %0) #0 {
  %2 = alloca %struct.packet*, align 8
  %3 = alloca %struct.iaddrlist*, align 8
  %4 = alloca void (%struct.packet*)*, align 8
  %5 = alloca i8*, align 8
  store %struct.packet* %0, %struct.packet** %2, align 8
  %6 = load %struct.packet*, %struct.packet** %2, align 8
  %7 = getelementptr inbounds %struct.packet, %struct.packet* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  switch i32 %8, label %12 [
    i32 128, label %9
    i32 129, label %10
    i32 130, label %11
  ]

9:                                                ; preds = %1
  store void (%struct.packet*)* @dhcpoffer, void (%struct.packet*)** %4, align 8
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8** %5, align 8
  br label %13

10:                                               ; preds = %1
  store void (%struct.packet*)* @dhcpnak, void (%struct.packet*)** %4, align 8
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8** %5, align 8
  br label %13

11:                                               ; preds = %1
  store void (%struct.packet*)* @dhcpack, void (%struct.packet*)** %4, align 8
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8** %5, align 8
  br label %13

12:                                               ; preds = %1
  br label %50

13:                                               ; preds = %11, %10, %9
  %14 = load %struct.packet*, %struct.packet** %2, align 8
  %15 = getelementptr inbounds %struct.packet, %struct.packet* %14, i32 0, i32 2
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load %struct.iaddrlist*, %struct.iaddrlist** %21, align 8
  store %struct.iaddrlist* %22, %struct.iaddrlist** %3, align 8
  br label %23

23:                                               ; preds = %43, %13
  %24 = load %struct.iaddrlist*, %struct.iaddrlist** %3, align 8
  %25 = icmp ne %struct.iaddrlist* %24, null
  br i1 %25, label %26, label %47

26:                                               ; preds = %23
  %27 = load %struct.packet*, %struct.packet** %2, align 8
  %28 = getelementptr inbounds %struct.packet, %struct.packet* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.iaddrlist*, %struct.iaddrlist** %3, align 8
  %31 = getelementptr inbounds %struct.iaddrlist, %struct.iaddrlist* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i64 @addr_eq(i32 %29, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %26
  %36 = load i8*, i8** %5, align 8
  %37 = load %struct.iaddrlist*, %struct.iaddrlist** %3, align 8
  %38 = getelementptr inbounds %struct.iaddrlist, %struct.iaddrlist* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @piaddr(i32 %39)
  %41 = call i32 @note(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i8* %36, i32 %40)
  br label %50

42:                                               ; preds = %26
  br label %43

43:                                               ; preds = %42
  %44 = load %struct.iaddrlist*, %struct.iaddrlist** %3, align 8
  %45 = getelementptr inbounds %struct.iaddrlist, %struct.iaddrlist* %44, i32 0, i32 1
  %46 = load %struct.iaddrlist*, %struct.iaddrlist** %45, align 8
  store %struct.iaddrlist* %46, %struct.iaddrlist** %3, align 8
  br label %23

47:                                               ; preds = %23
  %48 = load void (%struct.packet*)*, void (%struct.packet*)** %4, align 8
  %49 = load %struct.packet*, %struct.packet** %2, align 8
  call void %48(%struct.packet* %49)
  br label %50

50:                                               ; preds = %47, %35, %12
  ret void
}

declare dso_local void @dhcpoffer(%struct.packet*) #1

declare dso_local void @dhcpnak(%struct.packet*) #1

declare dso_local void @dhcpack(%struct.packet*) #1

declare dso_local i64 @addr_eq(i32, i32) #1

declare dso_local i32 @note(i8*, i8*, i32) #1

declare dso_local i32 @piaddr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
