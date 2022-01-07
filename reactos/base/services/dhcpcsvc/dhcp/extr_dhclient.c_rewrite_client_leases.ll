; ModuleID = '/home/carl/AnghaBench/reactos/base/services/dhcpcsvc/dhcp/extr_dhclient.c_rewrite_client_leases.c'
source_filename = "/home/carl/AnghaBench/reactos/base/services/dhcpcsvc/dhcp/extr_dhclient.c_rewrite_client_leases.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.interface_info = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.client_lease*, %struct.client_lease* }
%struct.client_lease = type { %struct.client_lease* }

@leaseFile = common dso_local global i64 0, align 8
@path_dhclient_db = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"can't create %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rewrite_client_leases(%struct.interface_info* %0) #0 {
  %2 = alloca %struct.interface_info*, align 8
  %3 = alloca %struct.client_lease*, align 8
  store %struct.interface_info* %0, %struct.interface_info** %2, align 8
  %4 = load i64, i64* @leaseFile, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %15, label %6

6:                                                ; preds = %1
  %7 = load i32, i32* @path_dhclient_db, align 4
  %8 = call i64 @fopen(i32 %7, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i64 %8, i64* @leaseFile, align 8
  %9 = load i64, i64* @leaseFile, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %6
  %12 = load i32, i32* @path_dhclient_db, align 4
  %13 = call i32 @error(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %12)
  br label %14

14:                                               ; preds = %11, %6
  br label %20

15:                                               ; preds = %1
  %16 = load i64, i64* @leaseFile, align 8
  %17 = call i32 @fflush(i64 %16)
  %18 = load i64, i64* @leaseFile, align 8
  %19 = call i32 @rewind(i64 %18)
  br label %20

20:                                               ; preds = %15, %14
  %21 = load %struct.interface_info*, %struct.interface_info** %2, align 8
  %22 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load %struct.client_lease*, %struct.client_lease** %24, align 8
  store %struct.client_lease* %25, %struct.client_lease** %3, align 8
  br label %26

26:                                               ; preds = %33, %20
  %27 = load %struct.client_lease*, %struct.client_lease** %3, align 8
  %28 = icmp ne %struct.client_lease* %27, null
  br i1 %28, label %29, label %37

29:                                               ; preds = %26
  %30 = load %struct.interface_info*, %struct.interface_info** %2, align 8
  %31 = load %struct.client_lease*, %struct.client_lease** %3, align 8
  %32 = call i32 @write_client_lease(%struct.interface_info* %30, %struct.client_lease* %31, i32 1)
  br label %33

33:                                               ; preds = %29
  %34 = load %struct.client_lease*, %struct.client_lease** %3, align 8
  %35 = getelementptr inbounds %struct.client_lease, %struct.client_lease* %34, i32 0, i32 0
  %36 = load %struct.client_lease*, %struct.client_lease** %35, align 8
  store %struct.client_lease* %36, %struct.client_lease** %3, align 8
  br label %26

37:                                               ; preds = %26
  %38 = load %struct.interface_info*, %struct.interface_info** %2, align 8
  %39 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %38, i32 0, i32 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load %struct.client_lease*, %struct.client_lease** %41, align 8
  %43 = icmp ne %struct.client_lease* %42, null
  br i1 %43, label %44, label %52

44:                                               ; preds = %37
  %45 = load %struct.interface_info*, %struct.interface_info** %2, align 8
  %46 = load %struct.interface_info*, %struct.interface_info** %2, align 8
  %47 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %46, i32 0, i32 0
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load %struct.client_lease*, %struct.client_lease** %49, align 8
  %51 = call i32 @write_client_lease(%struct.interface_info* %45, %struct.client_lease* %50, i32 1)
  br label %52

52:                                               ; preds = %44, %37
  %53 = load i64, i64* @leaseFile, align 8
  %54 = call i32 @fflush(i64 %53)
  ret void
}

declare dso_local i64 @fopen(i32, i8*) #1

declare dso_local i32 @error(i8*, i32) #1

declare dso_local i32 @fflush(i64) #1

declare dso_local i32 @rewind(i64) #1

declare dso_local i32 @write_client_lease(%struct.interface_info*, %struct.client_lease*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
