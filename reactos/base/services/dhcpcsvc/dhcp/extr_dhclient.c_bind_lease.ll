; ModuleID = '/home/carl/AnghaBench/reactos/base/services/dhcpcsvc/dhcp/extr_dhclient.c_bind_lease.c'
source_filename = "/home/carl/AnghaBench/reactos/base/services/dhcpcsvc/dhcp/extr_dhclient.c_bind_lease.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.interface_info = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.client_lease*, %struct.client_lease*, i32 }
%struct.client_lease = type { i64, i32, i32 }

@state_bound = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"bound to %s -- renewal in %ld seconds.\00", align 1
@S_BOUND = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"Could not find adapter for info %p\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bind_lease(%struct.interface_info* %0) #0 {
  %2 = alloca %struct.interface_info*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.client_lease*, align 8
  %5 = alloca i64, align 8
  store %struct.interface_info* %0, %struct.interface_info** %2, align 8
  %6 = load %struct.interface_info*, %struct.interface_info** %2, align 8
  %7 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 2
  %10 = load %struct.client_lease*, %struct.client_lease** %9, align 8
  store %struct.client_lease* %10, %struct.client_lease** %4, align 8
  %11 = call i32 @time(i64* %5)
  %12 = load %struct.interface_info*, %struct.interface_info** %2, align 8
  %13 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.interface_info*, %struct.interface_info** %2, align 8
  %18 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 2
  %21 = load %struct.client_lease*, %struct.client_lease** %20, align 8
  %22 = getelementptr inbounds %struct.client_lease, %struct.client_lease* %21, i32 0, i32 2
  store i32 %16, i32* %22, align 4
  %23 = load %struct.interface_info*, %struct.interface_info** %2, align 8
  %24 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load %struct.client_lease*, %struct.client_lease** %26, align 8
  %28 = icmp ne %struct.client_lease* %27, null
  br i1 %28, label %29, label %36

29:                                               ; preds = %1
  %30 = load %struct.interface_info*, %struct.interface_info** %2, align 8
  %31 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  %34 = load %struct.client_lease*, %struct.client_lease** %33, align 8
  %35 = call i32 @free_client_lease(%struct.client_lease* %34)
  br label %36

36:                                               ; preds = %29, %1
  %37 = load %struct.interface_info*, %struct.interface_info** %2, align 8
  %38 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 2
  %41 = load %struct.client_lease*, %struct.client_lease** %40, align 8
  %42 = load %struct.interface_info*, %struct.interface_info** %2, align 8
  %43 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %42, i32 0, i32 0
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  store %struct.client_lease* %41, %struct.client_lease** %45, align 8
  %46 = load %struct.interface_info*, %struct.interface_info** %2, align 8
  %47 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %46, i32 0, i32 0
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 2
  store %struct.client_lease* null, %struct.client_lease** %49, align 8
  %50 = load %struct.interface_info*, %struct.interface_info** %2, align 8
  %51 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %50, i32 0, i32 0
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  %54 = load %struct.client_lease*, %struct.client_lease** %53, align 8
  %55 = getelementptr inbounds %struct.client_lease, %struct.client_lease* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* %5, align 8
  %58 = sub nsw i64 %56, %57
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %71

60:                                               ; preds = %36
  %61 = load %struct.interface_info*, %struct.interface_info** %2, align 8
  %62 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %61, i32 0, i32 0
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 1
  %65 = load %struct.client_lease*, %struct.client_lease** %64, align 8
  %66 = getelementptr inbounds %struct.client_lease, %struct.client_lease* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i32, i32* @state_bound, align 4
  %69 = load %struct.interface_info*, %struct.interface_info** %2, align 8
  %70 = call i32 @add_timeout(i64 %67, i32 %68, %struct.interface_info* %69)
  br label %71

71:                                               ; preds = %60, %36
  %72 = load %struct.interface_info*, %struct.interface_info** %2, align 8
  %73 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %72, i32 0, i32 0
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 1
  %76 = load %struct.client_lease*, %struct.client_lease** %75, align 8
  %77 = getelementptr inbounds %struct.client_lease, %struct.client_lease* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @piaddr(i32 %78)
  %80 = load %struct.interface_info*, %struct.interface_info** %2, align 8
  %81 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %80, i32 0, i32 0
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 1
  %84 = load %struct.client_lease*, %struct.client_lease** %83, align 8
  %85 = getelementptr inbounds %struct.client_lease, %struct.client_lease* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* %5, align 8
  %88 = sub nsw i64 %86, %87
  %89 = call i32 @note(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %79, i64 %88)
  %90 = load i32, i32* @S_BOUND, align 4
  %91 = load %struct.interface_info*, %struct.interface_info** %2, align 8
  %92 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %91, i32 0, i32 0
  %93 = load %struct.TYPE_2__*, %struct.TYPE_2__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 0
  store i32 %90, i32* %94, align 8
  %95 = load %struct.interface_info*, %struct.interface_info** %2, align 8
  %96 = call i64 @AdapterFindInfo(%struct.interface_info* %95)
  store i64 %96, i64* %3, align 8
  %97 = load i64, i64* %3, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %71
  %100 = load i64, i64* %3, align 8
  %101 = load %struct.client_lease*, %struct.client_lease** %4, align 8
  %102 = call i32 @setup_adapter(i64 %100, %struct.client_lease* %101)
  br label %106

103:                                              ; preds = %71
  %104 = load %struct.interface_info*, %struct.interface_info** %2, align 8
  %105 = call i32 @warning(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), %struct.interface_info* %104)
  br label %113

106:                                              ; preds = %99
  %107 = load i64, i64* %3, align 8
  %108 = load %struct.client_lease*, %struct.client_lease** %4, align 8
  %109 = call i32 @set_name_servers(i64 %107, %struct.client_lease* %108)
  %110 = load i64, i64* %3, align 8
  %111 = load %struct.client_lease*, %struct.client_lease** %4, align 8
  %112 = call i32 @set_domain(i64 %110, %struct.client_lease* %111)
  br label %113

113:                                              ; preds = %106, %103
  ret void
}

declare dso_local i32 @time(i64*) #1

declare dso_local i32 @free_client_lease(%struct.client_lease*) #1

declare dso_local i32 @add_timeout(i64, i32, %struct.interface_info*) #1

declare dso_local i32 @note(i8*, i32, i64) #1

declare dso_local i32 @piaddr(i32) #1

declare dso_local i64 @AdapterFindInfo(%struct.interface_info*) #1

declare dso_local i32 @setup_adapter(i64, %struct.client_lease*) #1

declare dso_local i32 @warning(i8*, %struct.interface_info*) #1

declare dso_local i32 @set_name_servers(i64, %struct.client_lease*) #1

declare dso_local i32 @set_domain(i64, %struct.client_lease*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
