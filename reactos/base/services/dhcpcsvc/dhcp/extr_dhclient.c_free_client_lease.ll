; ModuleID = '/home/carl/AnghaBench/reactos/base/services/dhcpcsvc/dhcp/extr_dhclient.c_free_client_lease.c'
source_filename = "/home/carl/AnghaBench/reactos/base/services/dhcpcsvc/dhcp/extr_dhclient.c_free_client_lease.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.client_lease = type { %struct.TYPE_2__*, %struct.client_lease*, %struct.client_lease* }
%struct.TYPE_2__ = type { %struct.client_lease*, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @free_client_lease(%struct.client_lease* %0) #0 {
  %2 = alloca %struct.client_lease*, align 8
  %3 = alloca i32, align 4
  store %struct.client_lease* %0, %struct.client_lease** %2, align 8
  %4 = load %struct.client_lease*, %struct.client_lease** %2, align 8
  %5 = getelementptr inbounds %struct.client_lease, %struct.client_lease* %4, i32 0, i32 2
  %6 = load %struct.client_lease*, %struct.client_lease** %5, align 8
  %7 = icmp ne %struct.client_lease* %6, null
  br i1 %7, label %8, label %13

8:                                                ; preds = %1
  %9 = load %struct.client_lease*, %struct.client_lease** %2, align 8
  %10 = getelementptr inbounds %struct.client_lease, %struct.client_lease* %9, i32 0, i32 2
  %11 = load %struct.client_lease*, %struct.client_lease** %10, align 8
  %12 = call i32 @free(%struct.client_lease* %11)
  br label %13

13:                                               ; preds = %8, %1
  %14 = load %struct.client_lease*, %struct.client_lease** %2, align 8
  %15 = getelementptr inbounds %struct.client_lease, %struct.client_lease* %14, i32 0, i32 1
  %16 = load %struct.client_lease*, %struct.client_lease** %15, align 8
  %17 = icmp ne %struct.client_lease* %16, null
  br i1 %17, label %18, label %23

18:                                               ; preds = %13
  %19 = load %struct.client_lease*, %struct.client_lease** %2, align 8
  %20 = getelementptr inbounds %struct.client_lease, %struct.client_lease* %19, i32 0, i32 1
  %21 = load %struct.client_lease*, %struct.client_lease** %20, align 8
  %22 = call i32 @free(%struct.client_lease* %21)
  br label %23

23:                                               ; preds = %18, %13
  store i32 0, i32* %3, align 4
  br label %24

24:                                               ; preds = %48, %23
  %25 = load i32, i32* %3, align 4
  %26 = icmp slt i32 %25, 256
  br i1 %26, label %27, label %51

27:                                               ; preds = %24
  %28 = load %struct.client_lease*, %struct.client_lease** %2, align 8
  %29 = getelementptr inbounds %struct.client_lease, %struct.client_lease* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = load i32, i32* %3, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %47

37:                                               ; preds = %27
  %38 = load %struct.client_lease*, %struct.client_lease** %2, align 8
  %39 = getelementptr inbounds %struct.client_lease, %struct.client_lease* %38, i32 0, i32 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = load i32, i32* %3, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load %struct.client_lease*, %struct.client_lease** %44, align 8
  %46 = call i32 @free(%struct.client_lease* %45)
  br label %47

47:                                               ; preds = %37, %27
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %3, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %3, align 4
  br label %24

51:                                               ; preds = %24
  %52 = load %struct.client_lease*, %struct.client_lease** %2, align 8
  %53 = call i32 @free(%struct.client_lease* %52)
  ret void
}

declare dso_local i32 @free(%struct.client_lease*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
