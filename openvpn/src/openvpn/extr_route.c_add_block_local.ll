; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_route.c_add_block_local.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_route.c_add_block_local.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.route_list = type { i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i64, i32, i32 }
%struct.TYPE_3__ = type { i32, i64, %struct.route_gateway_address, %struct.route_gateway_address* }
%struct.route_gateway_address = type { i32, i32 }

@RGI_ADDR_DEFINED = common dso_local global i32 0, align 4
@RGI_NETMASK_DEFINED = common dso_local global i32 0, align 4
@RG_BLOCK_LOCAL = common dso_local global i32 0, align 4
@RTSA_REMOTE_ENDPOINT = common dso_local global i32 0, align 4
@TLA_LOCAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.route_list*)* @add_block_local to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_block_local(%struct.route_list* %0) #0 {
  %2 = alloca %struct.route_list*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.route_gateway_address*, align 8
  store %struct.route_list* %0, %struct.route_list** %2, align 8
  %6 = load i32, i32* @RGI_ADDR_DEFINED, align 4
  %7 = load i32, i32* @RGI_NETMASK_DEFINED, align 4
  %8 = or i32 %6, %7
  store i32 %8, i32* %3, align 4
  %9 = load %struct.route_list*, %struct.route_list** %2, align 8
  %10 = getelementptr inbounds %struct.route_list, %struct.route_list* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @RG_BLOCK_LOCAL, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %114

15:                                               ; preds = %1
  %16 = load %struct.route_list*, %struct.route_list** %2, align 8
  %17 = getelementptr inbounds %struct.route_list, %struct.route_list* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* %3, align 4
  %21 = and i32 %19, %20
  %22 = load i32, i32* %3, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %114

24:                                               ; preds = %15
  %25 = load %struct.route_list*, %struct.route_list** %2, align 8
  %26 = getelementptr inbounds %struct.route_list, %struct.route_list* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @RTSA_REMOTE_ENDPOINT, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %114

32:                                               ; preds = %24
  %33 = load %struct.route_list*, %struct.route_list** %2, align 8
  %34 = getelementptr inbounds %struct.route_list, %struct.route_list* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @TLA_LOCAL, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %114

39:                                               ; preds = %32
  %40 = load %struct.route_list*, %struct.route_list** %2, align 8
  %41 = getelementptr inbounds %struct.route_list, %struct.route_list* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 3
  %43 = load %struct.route_list*, %struct.route_list** %2, align 8
  %44 = getelementptr inbounds %struct.route_list, %struct.route_list* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.route_gateway_address, %struct.route_gateway_address* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @add_bypass_address(i32* %42, i32 %47)
  %49 = load %struct.route_list*, %struct.route_list** %2, align 8
  %50 = load %struct.route_list*, %struct.route_list** %2, align 8
  %51 = getelementptr inbounds %struct.route_list, %struct.route_list* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 2
  %53 = load %struct.route_list*, %struct.route_list** %2, align 8
  %54 = getelementptr inbounds %struct.route_list, %struct.route_list* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @add_block_local_item(%struct.route_list* %49, %struct.route_gateway_address* %52, i32 %56)
  store i64 0, i64* %4, align 8
  br label %58

58:                                               ; preds = %110, %39
  %59 = load i64, i64* %4, align 8
  %60 = load %struct.route_list*, %struct.route_list** %2, align 8
  %61 = getelementptr inbounds %struct.route_list, %struct.route_list* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = icmp ult i64 %59, %63
  br i1 %64, label %65, label %113

65:                                               ; preds = %58
  %66 = load %struct.route_list*, %struct.route_list** %2, align 8
  %67 = getelementptr inbounds %struct.route_list, %struct.route_list* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 3
  %69 = load %struct.route_gateway_address*, %struct.route_gateway_address** %68, align 8
  %70 = load i64, i64* %4, align 8
  %71 = getelementptr inbounds %struct.route_gateway_address, %struct.route_gateway_address* %69, i64 %70
  store %struct.route_gateway_address* %71, %struct.route_gateway_address** %5, align 8
  %72 = load %struct.route_list*, %struct.route_list** %2, align 8
  %73 = getelementptr inbounds %struct.route_list, %struct.route_list* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.route_gateway_address, %struct.route_gateway_address* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.route_list*, %struct.route_list** %2, align 8
  %78 = getelementptr inbounds %struct.route_list, %struct.route_list* %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 2
  %80 = getelementptr inbounds %struct.route_gateway_address, %struct.route_gateway_address* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = and i32 %76, %81
  %83 = load %struct.route_gateway_address*, %struct.route_gateway_address** %5, align 8
  %84 = getelementptr inbounds %struct.route_gateway_address, %struct.route_gateway_address* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.route_gateway_address*, %struct.route_gateway_address** %5, align 8
  %87 = getelementptr inbounds %struct.route_gateway_address, %struct.route_gateway_address* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = and i32 %85, %88
  %90 = icmp eq i32 %82, %89
  br i1 %90, label %91, label %101

91:                                               ; preds = %65
  %92 = load %struct.route_list*, %struct.route_list** %2, align 8
  %93 = getelementptr inbounds %struct.route_list, %struct.route_list* %92, i32 0, i32 2
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 2
  %95 = getelementptr inbounds %struct.route_gateway_address, %struct.route_gateway_address* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.route_gateway_address*, %struct.route_gateway_address** %5, align 8
  %98 = getelementptr inbounds %struct.route_gateway_address, %struct.route_gateway_address* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = icmp eq i32 %96, %99
  br i1 %100, label %109, label %101

101:                                              ; preds = %91, %65
  %102 = load %struct.route_list*, %struct.route_list** %2, align 8
  %103 = load %struct.route_gateway_address*, %struct.route_gateway_address** %5, align 8
  %104 = load %struct.route_list*, %struct.route_list** %2, align 8
  %105 = getelementptr inbounds %struct.route_list, %struct.route_list* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 8
  %108 = call i32 @add_block_local_item(%struct.route_list* %102, %struct.route_gateway_address* %103, i32 %107)
  br label %109

109:                                              ; preds = %101, %91
  br label %110

110:                                              ; preds = %109
  %111 = load i64, i64* %4, align 8
  %112 = add i64 %111, 1
  store i64 %112, i64* %4, align 8
  br label %58

113:                                              ; preds = %58
  br label %114

114:                                              ; preds = %113, %32, %24, %15, %1
  ret void
}

declare dso_local i32 @add_bypass_address(i32*, i32) #1

declare dso_local i32 @add_block_local_item(%struct.route_list*, %struct.route_gateway_address*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
