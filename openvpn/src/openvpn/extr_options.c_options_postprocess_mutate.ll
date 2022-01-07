; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_options.c_options_postprocess_mutate.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_options.c_options_postprocess_mutate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.options = type { i32, i64, i64, i64, i32*, i64, %struct.connection_entry*, %struct.connection_entry, %struct.remote_list* }
%struct.connection_entry = type { i32, i32* }
%struct.remote_list = type { i32, %struct.remote_entry** }
%struct.remote_entry = type { %struct.connection_entry* }

@M_USAGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"DH file (--dh)\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@M_WARN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [104 x i8] c"WARNING: Ignoring option 'dh' in tls-client mode, please only include this in your server configuration\00", align 1
@MODE_SERVER = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [77 x i8] c"disabling NCP mode (--ncp-disable) because not in P2MP client or server mode\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.options*)* @options_postprocess_mutate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @options_postprocess_mutate(%struct.options* %0) #0 {
  %2 = alloca %struct.options*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.remote_list*, align 8
  %5 = alloca %struct.remote_entry*, align 8
  %6 = alloca %struct.connection_entry, align 8
  %7 = alloca %struct.connection_entry*, align 8
  %8 = alloca %struct.connection_entry*, align 8
  store %struct.options* %0, %struct.options** %2, align 8
  %9 = load %struct.options*, %struct.options** %2, align 8
  %10 = call i32 @helper_client_server(%struct.options* %9)
  %11 = load %struct.options*, %struct.options** %2, align 8
  %12 = call i32 @helper_keepalive(%struct.options* %11)
  %13 = load %struct.options*, %struct.options** %2, align 8
  %14 = call i32 @helper_tcp_nodelay(%struct.options* %13)
  %15 = load %struct.options*, %struct.options** %2, align 8
  %16 = call i32 @options_postprocess_mutate_invariant(%struct.options* %15)
  %17 = load %struct.options*, %struct.options** %2, align 8
  %18 = getelementptr inbounds %struct.options, %struct.options* %17, i32 0, i32 8
  %19 = load %struct.remote_list*, %struct.remote_list** %18, align 8
  %20 = icmp ne %struct.remote_list* %19, null
  br i1 %20, label %21, label %66

21:                                               ; preds = %1
  %22 = load %struct.options*, %struct.options** %2, align 8
  %23 = getelementptr inbounds %struct.options, %struct.options* %22, i32 0, i32 6
  %24 = load %struct.connection_entry*, %struct.connection_entry** %23, align 8
  %25 = icmp ne %struct.connection_entry* %24, null
  br i1 %25, label %66, label %26

26:                                               ; preds = %21
  %27 = load %struct.options*, %struct.options** %2, align 8
  %28 = getelementptr inbounds %struct.options, %struct.options* %27, i32 0, i32 8
  %29 = load %struct.remote_list*, %struct.remote_list** %28, align 8
  store %struct.remote_list* %29, %struct.remote_list** %4, align 8
  store i32 0, i32* %3, align 4
  br label %30

30:                                               ; preds = %62, %26
  %31 = load i32, i32* %3, align 4
  %32 = load %struct.remote_list*, %struct.remote_list** %4, align 8
  %33 = getelementptr inbounds %struct.remote_list, %struct.remote_list* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp slt i32 %31, %34
  br i1 %35, label %36, label %65

36:                                               ; preds = %30
  %37 = load %struct.remote_list*, %struct.remote_list** %4, align 8
  %38 = getelementptr inbounds %struct.remote_list, %struct.remote_list* %37, i32 0, i32 1
  %39 = load %struct.remote_entry**, %struct.remote_entry*** %38, align 8
  %40 = load i32, i32* %3, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.remote_entry*, %struct.remote_entry** %39, i64 %41
  %43 = load %struct.remote_entry*, %struct.remote_entry** %42, align 8
  store %struct.remote_entry* %43, %struct.remote_entry** %5, align 8
  %44 = load %struct.options*, %struct.options** %2, align 8
  %45 = getelementptr inbounds %struct.options, %struct.options* %44, i32 0, i32 7
  %46 = bitcast %struct.connection_entry* %6 to i8*
  %47 = bitcast %struct.connection_entry* %45 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %46, i8* align 8 %47, i64 16, i1 false)
  %48 = load %struct.remote_entry*, %struct.remote_entry** %5, align 8
  %49 = getelementptr inbounds %struct.remote_entry, %struct.remote_entry* %48, i32 0, i32 0
  %50 = load %struct.connection_entry*, %struct.connection_entry** %49, align 8
  %51 = call i32 @ASSERT(%struct.connection_entry* %50)
  %52 = load %struct.remote_entry*, %struct.remote_entry** %5, align 8
  %53 = call i32 @connection_entry_load_re(%struct.connection_entry* %6, %struct.remote_entry* %52)
  %54 = load %struct.options*, %struct.options** %2, align 8
  %55 = load i32, i32* @M_USAGE, align 4
  %56 = call %struct.connection_entry* @alloc_connection_entry(%struct.options* %54, i32 %55)
  store %struct.connection_entry* %56, %struct.connection_entry** %7, align 8
  %57 = load %struct.connection_entry*, %struct.connection_entry** %7, align 8
  %58 = call i32 @ASSERT(%struct.connection_entry* %57)
  %59 = load %struct.connection_entry*, %struct.connection_entry** %7, align 8
  %60 = bitcast %struct.connection_entry* %59 to i8*
  %61 = bitcast %struct.connection_entry* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %60, i8* align 8 %61, i64 16, i1 false)
  br label %62

62:                                               ; preds = %36
  %63 = load i32, i32* %3, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %3, align 4
  br label %30

65:                                               ; preds = %30
  br label %88

66:                                               ; preds = %21, %1
  %67 = load %struct.options*, %struct.options** %2, align 8
  %68 = getelementptr inbounds %struct.options, %struct.options* %67, i32 0, i32 8
  %69 = load %struct.remote_list*, %struct.remote_list** %68, align 8
  %70 = icmp ne %struct.remote_list* %69, null
  br i1 %70, label %87, label %71

71:                                               ; preds = %66
  %72 = load %struct.options*, %struct.options** %2, align 8
  %73 = getelementptr inbounds %struct.options, %struct.options* %72, i32 0, i32 6
  %74 = load %struct.connection_entry*, %struct.connection_entry** %73, align 8
  %75 = icmp ne %struct.connection_entry* %74, null
  br i1 %75, label %87, label %76

76:                                               ; preds = %71
  %77 = load %struct.options*, %struct.options** %2, align 8
  %78 = load i32, i32* @M_USAGE, align 4
  %79 = call %struct.connection_entry* @alloc_connection_entry(%struct.options* %77, i32 %78)
  store %struct.connection_entry* %79, %struct.connection_entry** %8, align 8
  %80 = load %struct.connection_entry*, %struct.connection_entry** %8, align 8
  %81 = call i32 @ASSERT(%struct.connection_entry* %80)
  %82 = load %struct.connection_entry*, %struct.connection_entry** %8, align 8
  %83 = load %struct.options*, %struct.options** %2, align 8
  %84 = getelementptr inbounds %struct.options, %struct.options* %83, i32 0, i32 7
  %85 = bitcast %struct.connection_entry* %82 to i8*
  %86 = bitcast %struct.connection_entry* %84 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %85, i8* align 8 %86, i64 16, i1 false)
  br label %87

87:                                               ; preds = %76, %71, %66
  br label %88

88:                                               ; preds = %87, %65
  %89 = load %struct.options*, %struct.options** %2, align 8
  %90 = getelementptr inbounds %struct.options, %struct.options* %89, i32 0, i32 6
  %91 = load %struct.connection_entry*, %struct.connection_entry** %90, align 8
  %92 = call i32 @ASSERT(%struct.connection_entry* %91)
  store i32 0, i32* %3, align 4
  br label %93

93:                                               ; preds = %113, %88
  %94 = load i32, i32* %3, align 4
  %95 = load %struct.options*, %struct.options** %2, align 8
  %96 = getelementptr inbounds %struct.options, %struct.options* %95, i32 0, i32 6
  %97 = load %struct.connection_entry*, %struct.connection_entry** %96, align 8
  %98 = getelementptr inbounds %struct.connection_entry, %struct.connection_entry* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = icmp slt i32 %94, %99
  br i1 %100, label %101, label %116

101:                                              ; preds = %93
  %102 = load %struct.options*, %struct.options** %2, align 8
  %103 = load %struct.options*, %struct.options** %2, align 8
  %104 = getelementptr inbounds %struct.options, %struct.options* %103, i32 0, i32 6
  %105 = load %struct.connection_entry*, %struct.connection_entry** %104, align 8
  %106 = getelementptr inbounds %struct.connection_entry, %struct.connection_entry* %105, i32 0, i32 1
  %107 = load i32*, i32** %106, align 8
  %108 = load i32, i32* %3, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %107, i64 %109
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @options_postprocess_mutate_ce(%struct.options* %102, i32 %111)
  br label %113

113:                                              ; preds = %101
  %114 = load i32, i32* %3, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %3, align 4
  br label %93

116:                                              ; preds = %93
  %117 = load %struct.options*, %struct.options** %2, align 8
  %118 = getelementptr inbounds %struct.options, %struct.options* %117, i32 0, i32 5
  %119 = load i64, i64* %118, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %135

121:                                              ; preds = %116
  %122 = load %struct.options*, %struct.options** %2, align 8
  %123 = getelementptr inbounds %struct.options, %struct.options* %122, i32 0, i32 4
  %124 = load i32*, i32** %123, align 8
  %125 = call i32 @notnull(i32* %124, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %126 = load %struct.options*, %struct.options** %2, align 8
  %127 = getelementptr inbounds %struct.options, %struct.options* %126, i32 0, i32 4
  %128 = load i32*, i32** %127, align 8
  %129 = call i64 @streq(i32* %128, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %134

131:                                              ; preds = %121
  %132 = load %struct.options*, %struct.options** %2, align 8
  %133 = getelementptr inbounds %struct.options, %struct.options* %132, i32 0, i32 4
  store i32* null, i32** %133, align 8
  br label %134

134:                                              ; preds = %131, %121
  br label %146

135:                                              ; preds = %116
  %136 = load %struct.options*, %struct.options** %2, align 8
  %137 = getelementptr inbounds %struct.options, %struct.options* %136, i32 0, i32 4
  %138 = load i32*, i32** %137, align 8
  %139 = icmp ne i32* %138, null
  br i1 %139, label %140, label %145

140:                                              ; preds = %135
  %141 = load i32, i32* @M_WARN, align 4
  %142 = call i32 @msg(i32 %141, i8* getelementptr inbounds ([104 x i8], [104 x i8]* @.str.2, i64 0, i64 0))
  %143 = load %struct.options*, %struct.options** %2, align 8
  %144 = getelementptr inbounds %struct.options, %struct.options* %143, i32 0, i32 4
  store i32* null, i32** %144, align 8
  br label %145

145:                                              ; preds = %140, %135
  br label %146

146:                                              ; preds = %145, %134
  %147 = load %struct.options*, %struct.options** %2, align 8
  %148 = getelementptr inbounds %struct.options, %struct.options* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %167

151:                                              ; preds = %146
  %152 = load %struct.options*, %struct.options** %2, align 8
  %153 = getelementptr inbounds %struct.options, %struct.options* %152, i32 0, i32 3
  %154 = load i64, i64* %153, align 8
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %167, label %156

156:                                              ; preds = %151
  %157 = load %struct.options*, %struct.options** %2, align 8
  %158 = getelementptr inbounds %struct.options, %struct.options* %157, i32 0, i32 1
  %159 = load i64, i64* %158, align 8
  %160 = load i64, i64* @MODE_SERVER, align 8
  %161 = icmp eq i64 %159, %160
  br i1 %161, label %167, label %162

162:                                              ; preds = %156
  %163 = load i32, i32* @M_WARN, align 4
  %164 = call i32 @msg(i32 %163, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.3, i64 0, i64 0))
  %165 = load %struct.options*, %struct.options** %2, align 8
  %166 = getelementptr inbounds %struct.options, %struct.options* %165, i32 0, i32 0
  store i32 0, i32* %166, align 8
  br label %167

167:                                              ; preds = %162, %156, %151, %146
  ret void
}

declare dso_local i32 @helper_client_server(%struct.options*) #1

declare dso_local i32 @helper_keepalive(%struct.options*) #1

declare dso_local i32 @helper_tcp_nodelay(%struct.options*) #1

declare dso_local i32 @options_postprocess_mutate_invariant(%struct.options*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ASSERT(%struct.connection_entry*) #1

declare dso_local i32 @connection_entry_load_re(%struct.connection_entry*, %struct.remote_entry*) #1

declare dso_local %struct.connection_entry* @alloc_connection_entry(%struct.options*, i32) #1

declare dso_local i32 @options_postprocess_mutate_ce(%struct.options*, i32) #1

declare dso_local i32 @notnull(i32*, i8*) #1

declare dso_local i64 @streq(i32*, i8*) #1

declare dso_local i32 @msg(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
