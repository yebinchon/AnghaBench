; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_route.c_print_default_gateway.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_route.c_print_default_gateway.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.route_gateway_info = type { i32, i32, i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.route_ipv6_gateway_info = type { i32, i32, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.gc_arena = type { i32 }
%struct.buffer = type { i32 }

@RGI_ADDR_DEFINED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"ROUTE_GATEWAY\00", align 1
@RGI_ON_LINK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c" ON_LINK\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@RGI_NETMASK_DEFINED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"/%s\00", align 1
@RGI_IFACE_DEFINED = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [10 x i8] c" IFACE=%s\00", align 1
@RGI_HWADDR_DEFINED = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [11 x i8] c" HWADDR=%s\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"ROUTE6_GATEWAY\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"/%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_default_gateway(i32 %0, %struct.route_gateway_info* %1, %struct.route_ipv6_gateway_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.route_gateway_info*, align 8
  %6 = alloca %struct.route_ipv6_gateway_info*, align 8
  %7 = alloca %struct.gc_arena, align 4
  %8 = alloca %struct.buffer, align 4
  %9 = alloca %struct.buffer, align 4
  store i32 %0, i32* %4, align 4
  store %struct.route_gateway_info* %1, %struct.route_gateway_info** %5, align 8
  store %struct.route_ipv6_gateway_info* %2, %struct.route_ipv6_gateway_info** %6, align 8
  %10 = call i32 (...) @gc_new()
  %11 = getelementptr inbounds %struct.gc_arena, %struct.gc_arena* %7, i32 0, i32 0
  store i32 %10, i32* %11, align 4
  %12 = load %struct.route_gateway_info*, %struct.route_gateway_info** %5, align 8
  %13 = icmp ne %struct.route_gateway_info* %12, null
  br i1 %13, label %14, label %83

14:                                               ; preds = %3
  %15 = load %struct.route_gateway_info*, %struct.route_gateway_info** %5, align 8
  %16 = getelementptr inbounds %struct.route_gateway_info, %struct.route_gateway_info* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @RGI_ADDR_DEFINED, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %83

21:                                               ; preds = %14
  %22 = call i32 @alloc_buf_gc(i32 256, %struct.gc_arena* %7)
  %23 = getelementptr inbounds %struct.buffer, %struct.buffer* %8, i32 0, i32 0
  store i32 %22, i32* %23, align 4
  %24 = call i32 (%struct.buffer*, i8*, ...) @buf_printf(%struct.buffer* %8, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %25 = load %struct.route_gateway_info*, %struct.route_gateway_info** %5, align 8
  %26 = getelementptr inbounds %struct.route_gateway_info, %struct.route_gateway_info* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @RGI_ON_LINK, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %21
  %32 = call i32 (%struct.buffer*, i8*, ...) @buf_printf(%struct.buffer* %8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  br label %40

33:                                               ; preds = %21
  %34 = load %struct.route_gateway_info*, %struct.route_gateway_info** %5, align 8
  %35 = getelementptr inbounds %struct.route_gateway_info, %struct.route_gateway_info* %34, i32 0, i32 4
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @print_in_addr_t(i32 %37, i32 0, %struct.gc_arena* %7)
  %39 = call i32 (%struct.buffer*, i8*, ...) @buf_printf(%struct.buffer* %8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %38)
  br label %40

40:                                               ; preds = %33, %31
  %41 = load %struct.route_gateway_info*, %struct.route_gateway_info** %5, align 8
  %42 = getelementptr inbounds %struct.route_gateway_info, %struct.route_gateway_info* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @RGI_NETMASK_DEFINED, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %40
  %48 = load %struct.route_gateway_info*, %struct.route_gateway_info** %5, align 8
  %49 = getelementptr inbounds %struct.route_gateway_info, %struct.route_gateway_info* %48, i32 0, i32 4
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @print_in_addr_t(i32 %51, i32 0, %struct.gc_arena* %7)
  %53 = call i32 (%struct.buffer*, i8*, ...) @buf_printf(%struct.buffer* %8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %52)
  br label %54

54:                                               ; preds = %47, %40
  %55 = load %struct.route_gateway_info*, %struct.route_gateway_info** %5, align 8
  %56 = getelementptr inbounds %struct.route_gateway_info, %struct.route_gateway_info* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @RGI_IFACE_DEFINED, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %54
  %62 = load %struct.route_gateway_info*, %struct.route_gateway_info** %5, align 8
  %63 = getelementptr inbounds %struct.route_gateway_info, %struct.route_gateway_info* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = call i32 (%struct.buffer*, i8*, ...) @buf_printf(%struct.buffer* %8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 %64)
  br label %66

66:                                               ; preds = %61, %54
  %67 = load %struct.route_gateway_info*, %struct.route_gateway_info** %5, align 8
  %68 = getelementptr inbounds %struct.route_gateway_info, %struct.route_gateway_info* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @RGI_HWADDR_DEFINED, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %66
  %74 = load %struct.route_gateway_info*, %struct.route_gateway_info** %5, align 8
  %75 = getelementptr inbounds %struct.route_gateway_info, %struct.route_gateway_info* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @format_hex_ex(i32 %76, i32 6, i32 0, i32 1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), %struct.gc_arena* %7)
  %78 = call i32 (%struct.buffer*, i8*, ...) @buf_printf(%struct.buffer* %8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i32 %77)
  br label %79

79:                                               ; preds = %73, %66
  %80 = load i32, i32* %4, align 4
  %81 = call i32 @BSTR(%struct.buffer* %8)
  %82 = call i32 @msg(i32 %80, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i32 %81)
  br label %83

83:                                               ; preds = %79, %14, %3
  %84 = load %struct.route_ipv6_gateway_info*, %struct.route_ipv6_gateway_info** %6, align 8
  %85 = icmp ne %struct.route_ipv6_gateway_info* %84, null
  br i1 %85, label %86, label %153

86:                                               ; preds = %83
  %87 = load %struct.route_ipv6_gateway_info*, %struct.route_ipv6_gateway_info** %6, align 8
  %88 = getelementptr inbounds %struct.route_ipv6_gateway_info, %struct.route_ipv6_gateway_info* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @RGI_ADDR_DEFINED, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %153

93:                                               ; preds = %86
  %94 = call i32 @alloc_buf_gc(i32 256, %struct.gc_arena* %7)
  %95 = getelementptr inbounds %struct.buffer, %struct.buffer* %9, i32 0, i32 0
  store i32 %94, i32* %95, align 4
  %96 = call i32 (%struct.buffer*, i8*, ...) @buf_printf(%struct.buffer* %9, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0))
  %97 = load %struct.route_ipv6_gateway_info*, %struct.route_ipv6_gateway_info** %6, align 8
  %98 = getelementptr inbounds %struct.route_ipv6_gateway_info, %struct.route_ipv6_gateway_info* %97, i32 0, i32 4
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @print_in6_addr(i32 %100, i32 0, %struct.gc_arena* %7)
  %102 = call i32 (%struct.buffer*, i8*, ...) @buf_printf(%struct.buffer* %9, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %101)
  %103 = load %struct.route_ipv6_gateway_info*, %struct.route_ipv6_gateway_info** %6, align 8
  %104 = getelementptr inbounds %struct.route_ipv6_gateway_info, %struct.route_ipv6_gateway_info* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* @RGI_ON_LINK, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %93
  %110 = call i32 (%struct.buffer*, i8*, ...) @buf_printf(%struct.buffer* %9, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  br label %111

111:                                              ; preds = %109, %93
  %112 = load %struct.route_ipv6_gateway_info*, %struct.route_ipv6_gateway_info** %6, align 8
  %113 = getelementptr inbounds %struct.route_ipv6_gateway_info, %struct.route_ipv6_gateway_info* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* @RGI_NETMASK_DEFINED, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %124

118:                                              ; preds = %111
  %119 = load %struct.route_ipv6_gateway_info*, %struct.route_ipv6_gateway_info** %6, align 8
  %120 = getelementptr inbounds %struct.route_ipv6_gateway_info, %struct.route_ipv6_gateway_info* %119, i32 0, i32 4
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = call i32 (%struct.buffer*, i8*, ...) @buf_printf(%struct.buffer* %9, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i32 %122)
  br label %124

124:                                              ; preds = %118, %111
  %125 = load %struct.route_ipv6_gateway_info*, %struct.route_ipv6_gateway_info** %6, align 8
  %126 = getelementptr inbounds %struct.route_ipv6_gateway_info, %struct.route_ipv6_gateway_info* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* @RGI_IFACE_DEFINED, align 4
  %129 = and i32 %127, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %136

131:                                              ; preds = %124
  %132 = load %struct.route_ipv6_gateway_info*, %struct.route_ipv6_gateway_info** %6, align 8
  %133 = getelementptr inbounds %struct.route_ipv6_gateway_info, %struct.route_ipv6_gateway_info* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 4
  %135 = call i32 (%struct.buffer*, i8*, ...) @buf_printf(%struct.buffer* %9, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 %134)
  br label %136

136:                                              ; preds = %131, %124
  %137 = load %struct.route_ipv6_gateway_info*, %struct.route_ipv6_gateway_info** %6, align 8
  %138 = getelementptr inbounds %struct.route_ipv6_gateway_info, %struct.route_ipv6_gateway_info* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* @RGI_HWADDR_DEFINED, align 4
  %141 = and i32 %139, %140
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %149

143:                                              ; preds = %136
  %144 = load %struct.route_ipv6_gateway_info*, %struct.route_ipv6_gateway_info** %6, align 8
  %145 = getelementptr inbounds %struct.route_ipv6_gateway_info, %struct.route_ipv6_gateway_info* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @format_hex_ex(i32 %146, i32 6, i32 0, i32 1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), %struct.gc_arena* %7)
  %148 = call i32 (%struct.buffer*, i8*, ...) @buf_printf(%struct.buffer* %9, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i32 %147)
  br label %149

149:                                              ; preds = %143, %136
  %150 = load i32, i32* %4, align 4
  %151 = call i32 @BSTR(%struct.buffer* %9)
  %152 = call i32 @msg(i32 %150, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i32 %151)
  br label %153

153:                                              ; preds = %149, %86, %83
  %154 = call i32 @gc_free(%struct.gc_arena* %7)
  ret void
}

declare dso_local i32 @gc_new(...) #1

declare dso_local i32 @alloc_buf_gc(i32, %struct.gc_arena*) #1

declare dso_local i32 @buf_printf(%struct.buffer*, i8*, ...) #1

declare dso_local i32 @print_in_addr_t(i32, i32, %struct.gc_arena*) #1

declare dso_local i32 @format_hex_ex(i32, i32, i32, i32, i8*, %struct.gc_arena*) #1

declare dso_local i32 @msg(i32, i8*, i32) #1

declare dso_local i32 @BSTR(%struct.buffer*) #1

declare dso_local i32 @print_in6_addr(i32, i32, %struct.gc_arena*) #1

declare dso_local i32 @gc_free(%struct.gc_arena*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
