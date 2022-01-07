; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_ssl.c_push_peer_info.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_ssl.c_push_peer_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer = type { i32 }
%struct.tls_session = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i64, i32, i32, i64, i64, %struct.env_set* }
%struct.env_set = type { %struct.env_item* }
%struct.env_item = type { i64, %struct.env_item* }
%struct.gc_arena = type { i32 }
%struct.route_gateway_info = type { i32, i32 }

@.str = private unnamed_addr constant [11 x i8] c"IV_VER=%s\0A\00", align 1
@PACKAGE_VERSION = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [12 x i8] c"IV_PROTO=2\0A\00", align 1
@MODE_SERVER = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [10 x i8] c"IV_NCP=2\0A\00", align 1
@RGI_HWADDR_DEFINED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"IV_HWADDR=%s\0A\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"IV_SSL=%s\0A\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"UV_\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"IV_PLAT_VER=\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"IV_GUI_VER=\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.buffer*, %struct.tls_session*)* @push_peer_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @push_peer_info(%struct.buffer* %0, %struct.tls_session* %1) #0 {
  %3 = alloca %struct.buffer*, align 8
  %4 = alloca %struct.tls_session*, align 8
  %5 = alloca %struct.gc_arena, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.env_set*, align 8
  %8 = alloca %struct.env_item*, align 8
  %9 = alloca %struct.buffer, align 4
  %10 = alloca %struct.route_gateway_info, align 4
  store %struct.buffer* %0, %struct.buffer** %3, align 8
  store %struct.tls_session* %1, %struct.tls_session** %4, align 8
  %11 = call i32 (...) @gc_new()
  %12 = getelementptr inbounds %struct.gc_arena, %struct.gc_arena* %5, i32 0, i32 0
  store i32 %11, i32* %12, align 4
  store i32 0, i32* %6, align 4
  %13 = load %struct.tls_session*, %struct.tls_session** %4, align 8
  %14 = getelementptr inbounds %struct.tls_session, %struct.tls_session* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %143

19:                                               ; preds = %2
  %20 = load %struct.tls_session*, %struct.tls_session** %4, align 8
  %21 = getelementptr inbounds %struct.tls_session, %struct.tls_session* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 6
  %24 = load %struct.env_set*, %struct.env_set** %23, align 8
  store %struct.env_set* %24, %struct.env_set** %7, align 8
  %25 = call i32 @alloc_buf_gc(i32 1536, %struct.gc_arena* %5)
  %26 = getelementptr inbounds %struct.buffer, %struct.buffer* %9, i32 0, i32 0
  store i32 %25, i32* %26, align 4
  %27 = load i64, i64* @PACKAGE_VERSION, align 8
  %28 = call i32 (%struct.buffer*, i8*, ...) @buf_printf(%struct.buffer* %9, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i64 %27)
  %29 = call i32 (%struct.buffer*, i8*, ...) @buf_printf(%struct.buffer* %9, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %30 = load %struct.tls_session*, %struct.tls_session** %4, align 8
  %31 = getelementptr inbounds %struct.tls_session, %struct.tls_session* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 5
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %53

36:                                               ; preds = %19
  %37 = load %struct.tls_session*, %struct.tls_session** %4, align 8
  %38 = getelementptr inbounds %struct.tls_session, %struct.tls_session* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @MODE_SERVER, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %51, label %44

44:                                               ; preds = %36
  %45 = load %struct.tls_session*, %struct.tls_session** %4, align 8
  %46 = getelementptr inbounds %struct.tls_session, %struct.tls_session* %45, i32 0, i32 0
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 4
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %44, %36
  %52 = call i32 (%struct.buffer*, i8*, ...) @buf_printf(%struct.buffer* %9, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  br label %53

53:                                               ; preds = %51, %44, %19
  %54 = load %struct.tls_session*, %struct.tls_session** %4, align 8
  %55 = getelementptr inbounds %struct.tls_session, %struct.tls_session* %54, i32 0, i32 0
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = icmp sge i32 %58, 2
  br i1 %59, label %60, label %80

60:                                               ; preds = %53
  %61 = load %struct.tls_session*, %struct.tls_session** %4, align 8
  %62 = getelementptr inbounds %struct.tls_session, %struct.tls_session* %61, i32 0, i32 0
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @get_default_gateway(%struct.route_gateway_info* %10, i32 %65)
  %67 = getelementptr inbounds %struct.route_gateway_info, %struct.route_gateway_info* %10, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @RGI_HWADDR_DEFINED, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %60
  %73 = getelementptr inbounds %struct.route_gateway_info, %struct.route_gateway_info* %10, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = call i64 @format_hex_ex(i32 %74, i32 6, i32 0, i32 1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), %struct.gc_arena* %5)
  %76 = call i32 (%struct.buffer*, i8*, ...) @buf_printf(%struct.buffer* %9, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i64 %75)
  br label %77

77:                                               ; preds = %72, %60
  %78 = call i64 (...) @get_ssl_library_version()
  %79 = call i32 (%struct.buffer*, i8*, ...) @buf_printf(%struct.buffer* %9, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i64 %78)
  br label %80

80:                                               ; preds = %77, %53
  %81 = load %struct.env_set*, %struct.env_set** %7, align 8
  %82 = getelementptr inbounds %struct.env_set, %struct.env_set* %81, i32 0, i32 0
  %83 = load %struct.env_item*, %struct.env_item** %82, align 8
  store %struct.env_item* %83, %struct.env_item** %8, align 8
  br label %84

84:                                               ; preds = %132, %80
  %85 = load %struct.env_item*, %struct.env_item** %8, align 8
  %86 = icmp ne %struct.env_item* %85, null
  br i1 %86, label %87, label %136

87:                                               ; preds = %84
  %88 = load %struct.env_item*, %struct.env_item** %8, align 8
  %89 = getelementptr inbounds %struct.env_item, %struct.env_item* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %131

92:                                               ; preds = %87
  %93 = load %struct.env_item*, %struct.env_item** %8, align 8
  %94 = getelementptr inbounds %struct.env_item, %struct.env_item* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = call i64 @strncmp(i64 %95, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i32 3)
  %97 = icmp eq i64 %96, 0
  br i1 %97, label %104, label %98

98:                                               ; preds = %92
  %99 = load %struct.env_item*, %struct.env_item** %8, align 8
  %100 = getelementptr inbounds %struct.env_item, %struct.env_item* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = call i64 @strncmp(i64 %101, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0), i32 12)
  %103 = icmp eq i64 %102, 0
  br i1 %103, label %104, label %111

104:                                              ; preds = %98, %92
  %105 = load %struct.tls_session*, %struct.tls_session** %4, align 8
  %106 = getelementptr inbounds %struct.tls_session, %struct.tls_session* %105, i32 0, i32 0
  %107 = load %struct.TYPE_2__*, %struct.TYPE_2__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = icmp sge i32 %109, 2
  br i1 %110, label %117, label %111

111:                                              ; preds = %104, %98
  %112 = load %struct.env_item*, %struct.env_item** %8, align 8
  %113 = getelementptr inbounds %struct.env_item, %struct.env_item* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = call i64 @strncmp(i64 %114, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), i32 11)
  %116 = icmp eq i64 %115, 0
  br i1 %116, label %117, label %130

117:                                              ; preds = %111, %104
  %118 = load %struct.env_item*, %struct.env_item** %8, align 8
  %119 = getelementptr inbounds %struct.env_item, %struct.env_item* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = call i64 @strlen(i64 %120)
  %122 = add nsw i64 %121, 1
  %123 = call i64 @buf_safe(%struct.buffer* %9, i64 %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %130

125:                                              ; preds = %117
  %126 = load %struct.env_item*, %struct.env_item** %8, align 8
  %127 = getelementptr inbounds %struct.env_item, %struct.env_item* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = call i32 (%struct.buffer*, i8*, ...) @buf_printf(%struct.buffer* %9, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i64 %128)
  br label %130

130:                                              ; preds = %125, %117, %111
  br label %131

131:                                              ; preds = %130, %87
  br label %132

132:                                              ; preds = %131
  %133 = load %struct.env_item*, %struct.env_item** %8, align 8
  %134 = getelementptr inbounds %struct.env_item, %struct.env_item* %133, i32 0, i32 1
  %135 = load %struct.env_item*, %struct.env_item** %134, align 8
  store %struct.env_item* %135, %struct.env_item** %8, align 8
  br label %84

136:                                              ; preds = %84
  %137 = load %struct.buffer*, %struct.buffer** %3, align 8
  %138 = call i32 @BSTR(%struct.buffer* %9)
  %139 = call i32 @write_string(%struct.buffer* %137, i32 %138, i32 -1)
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %142, label %141

141:                                              ; preds = %136
  br label %150

142:                                              ; preds = %136
  br label %149

143:                                              ; preds = %2
  %144 = load %struct.buffer*, %struct.buffer** %3, align 8
  %145 = call i32 @write_empty_string(%struct.buffer* %144)
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %148, label %147

147:                                              ; preds = %143
  br label %150

148:                                              ; preds = %143
  br label %149

149:                                              ; preds = %148, %142
  store i32 1, i32* %6, align 4
  br label %150

150:                                              ; preds = %149, %147, %141
  %151 = call i32 @gc_free(%struct.gc_arena* %5)
  %152 = load i32, i32* %6, align 4
  ret i32 %152
}

declare dso_local i32 @gc_new(...) #1

declare dso_local i32 @alloc_buf_gc(i32, %struct.gc_arena*) #1

declare dso_local i32 @buf_printf(%struct.buffer*, i8*, ...) #1

declare dso_local i32 @get_default_gateway(%struct.route_gateway_info*, i32) #1

declare dso_local i64 @format_hex_ex(i32, i32, i32, i32, i8*, %struct.gc_arena*) #1

declare dso_local i64 @get_ssl_library_version(...) #1

declare dso_local i64 @strncmp(i64, i8*, i32) #1

declare dso_local i64 @buf_safe(%struct.buffer*, i64) #1

declare dso_local i64 @strlen(i64) #1

declare dso_local i32 @write_string(%struct.buffer*, i32, i32) #1

declare dso_local i32 @BSTR(%struct.buffer*) #1

declare dso_local i32 @write_empty_string(%struct.buffer*) #1

declare dso_local i32 @gc_free(%struct.gc_arena*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
