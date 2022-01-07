; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_ssl.c_tls_session_init.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_ssl.c_tls_session_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tls_multi = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32, %struct.TYPE_6__, i64, i64 }
%struct.TYPE_6__ = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.tls_session = type { i32, i32*, %struct.TYPE_6__, i32, %struct.TYPE_4__*, i32 }
%struct.gc_arena = type { i32 }

@D_TLS_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"TLS: tls_session_init: entry\00", align 1
@P_CONTROL_HARD_RESET_SERVER_V1 = common dso_local global i32 0, align 4
@P_CONTROL_HARD_RESET_CLIENT_V1 = common dso_local global i32 0, align 4
@P_CONTROL_HARD_RESET_SERVER_V2 = common dso_local global i32 0, align 4
@P_CONTROL_HARD_RESET_CLIENT_V3 = common dso_local global i32 0, align 4
@P_CONTROL_HARD_RESET_CLIENT_V2 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"TLS_WRAP\00", align 1
@KS_PRIMARY = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [50 x i8] c"TLS: tls_session_init: new session object, sid=%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tls_multi*, %struct.tls_session*)* @tls_session_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tls_session_init(%struct.tls_multi* %0, %struct.tls_session* %1) #0 {
  %3 = alloca %struct.tls_multi*, align 8
  %4 = alloca %struct.tls_session*, align 8
  %5 = alloca %struct.gc_arena, align 4
  store %struct.tls_multi* %0, %struct.tls_multi** %3, align 8
  store %struct.tls_session* %1, %struct.tls_session** %4, align 8
  %6 = call i32 (...) @gc_new()
  %7 = getelementptr inbounds %struct.gc_arena, %struct.gc_arena* %5, i32 0, i32 0
  store i32 %6, i32* %7, align 4
  %8 = load i32, i32* @D_TLS_DEBUG, align 4
  %9 = call i32 (i32, i8*, ...) @dmsg(i32 %8, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.tls_session*, %struct.tls_session** %4, align 8
  %11 = call i32 @CLEAR(%struct.tls_session* byval(%struct.tls_session) align 8 %10)
  %12 = load %struct.tls_multi*, %struct.tls_multi** %3, align 8
  %13 = getelementptr inbounds %struct.tls_multi, %struct.tls_multi* %12, i32 0, i32 0
  %14 = load %struct.tls_session*, %struct.tls_session** %4, align 8
  %15 = getelementptr inbounds %struct.tls_session, %struct.tls_session* %14, i32 0, i32 4
  store %struct.TYPE_4__* %13, %struct.TYPE_4__** %15, align 8
  br label %16

16:                                               ; preds = %22, %2
  %17 = load %struct.tls_session*, %struct.tls_session** %4, align 8
  %18 = getelementptr inbounds %struct.tls_session, %struct.tls_session* %17, i32 0, i32 0
  %19 = call i32 @session_id_defined(i32* %18)
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  br i1 %21, label %22, label %26

22:                                               ; preds = %16
  %23 = load %struct.tls_session*, %struct.tls_session** %4, align 8
  %24 = getelementptr inbounds %struct.tls_session, %struct.tls_session* %23, i32 0, i32 0
  %25 = call i32 @session_id_random(i32* %24)
  br label %16

26:                                               ; preds = %16
  %27 = load %struct.tls_session*, %struct.tls_session** %4, align 8
  %28 = getelementptr inbounds %struct.tls_session, %struct.tls_session* %27, i32 0, i32 4
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp sge i32 %31, 1
  %33 = zext i1 %32 to i32
  %34 = call i32 @ASSERT(i32 %33)
  %35 = load %struct.tls_session*, %struct.tls_session** %4, align 8
  %36 = getelementptr inbounds %struct.tls_session, %struct.tls_session* %35, i32 0, i32 4
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp eq i32 %39, 1
  br i1 %40, label %41, label %56

41:                                               ; preds = %26
  %42 = load %struct.tls_session*, %struct.tls_session** %4, align 8
  %43 = getelementptr inbounds %struct.tls_session, %struct.tls_session* %42, i32 0, i32 4
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 6
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %41
  %49 = load i32, i32* @P_CONTROL_HARD_RESET_SERVER_V1, align 4
  br label %52

50:                                               ; preds = %41
  %51 = load i32, i32* @P_CONTROL_HARD_RESET_CLIENT_V1, align 4
  br label %52

52:                                               ; preds = %50, %48
  %53 = phi i32 [ %49, %48 ], [ %51, %50 ]
  %54 = load %struct.tls_session*, %struct.tls_session** %4, align 8
  %55 = getelementptr inbounds %struct.tls_session, %struct.tls_session* %54, i32 0, i32 5
  store i32 %53, i32* %55, align 8
  br label %83

56:                                               ; preds = %26
  %57 = load %struct.tls_session*, %struct.tls_session** %4, align 8
  %58 = getelementptr inbounds %struct.tls_session, %struct.tls_session* %57, i32 0, i32 4
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 6
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %56
  %64 = load i32, i32* @P_CONTROL_HARD_RESET_SERVER_V2, align 4
  %65 = load %struct.tls_session*, %struct.tls_session** %4, align 8
  %66 = getelementptr inbounds %struct.tls_session, %struct.tls_session* %65, i32 0, i32 5
  store i32 %64, i32* %66, align 8
  br label %82

67:                                               ; preds = %56
  %68 = load %struct.tls_session*, %struct.tls_session** %4, align 8
  %69 = getelementptr inbounds %struct.tls_session, %struct.tls_session* %68, i32 0, i32 4
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 5
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %67
  %75 = load i32, i32* @P_CONTROL_HARD_RESET_CLIENT_V3, align 4
  br label %78

76:                                               ; preds = %67
  %77 = load i32, i32* @P_CONTROL_HARD_RESET_CLIENT_V2, align 4
  br label %78

78:                                               ; preds = %76, %74
  %79 = phi i32 [ %75, %74 ], [ %77, %76 ]
  %80 = load %struct.tls_session*, %struct.tls_session** %4, align 8
  %81 = getelementptr inbounds %struct.tls_session, %struct.tls_session* %80, i32 0, i32 5
  store i32 %79, i32* %81, align 8
  br label %82

82:                                               ; preds = %78, %63
  br label %83

83:                                               ; preds = %82, %52
  %84 = load %struct.tls_session*, %struct.tls_session** %4, align 8
  %85 = getelementptr inbounds %struct.tls_session, %struct.tls_session* %84, i32 0, i32 2
  %86 = load %struct.tls_session*, %struct.tls_session** %4, align 8
  %87 = getelementptr inbounds %struct.tls_session, %struct.tls_session* %86, i32 0, i32 4
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 4
  %90 = bitcast %struct.TYPE_6__* %85 to i8*
  %91 = bitcast %struct.TYPE_6__* %89 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %90, i8* align 8 %91, i64 12, i1 false)
  %92 = load %struct.tls_session*, %struct.tls_session** %4, align 8
  %93 = getelementptr inbounds %struct.tls_session, %struct.tls_session* %92, i32 0, i32 4
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 3
  %96 = call i32 @BUF_SIZE(i32* %95)
  %97 = call i32 @alloc_buf(i32 %96)
  %98 = load %struct.tls_session*, %struct.tls_session** %4, align 8
  %99 = getelementptr inbounds %struct.tls_session, %struct.tls_session* %98, i32 0, i32 2
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 1
  store i32 %97, i32* %100, align 8
  %101 = load %struct.tls_session*, %struct.tls_session** %4, align 8
  %102 = getelementptr inbounds %struct.tls_session, %struct.tls_session* %101, i32 0, i32 2
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 0
  %105 = load %struct.tls_session*, %struct.tls_session** %4, align 8
  %106 = getelementptr inbounds %struct.tls_session, %struct.tls_session* %105, i32 0, i32 4
  %107 = load %struct.TYPE_4__*, %struct.TYPE_4__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.tls_session*, %struct.tls_session** %4, align 8
  %111 = getelementptr inbounds %struct.tls_session, %struct.tls_session* %110, i32 0, i32 4
  %112 = load %struct.TYPE_4__*, %struct.TYPE_4__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.tls_session*, %struct.tls_session** %4, align 8
  %116 = getelementptr inbounds %struct.tls_session, %struct.tls_session* %115, i32 0, i32 3
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @packet_id_init(i32* %104, i32 %109, i32 %114, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %117)
  %119 = load %struct.tls_session*, %struct.tls_session** %4, align 8
  %120 = getelementptr inbounds %struct.tls_session, %struct.tls_session* %119, i32 0, i32 2
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.tls_session*, %struct.tls_session** %4, align 8
  %125 = getelementptr inbounds %struct.tls_session, %struct.tls_session* %124, i32 0, i32 2
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 0, i32 0
  %128 = call i32 @packet_id_persist_load_obj(i32 %123, i32* %127)
  %129 = load %struct.tls_session*, %struct.tls_session** %4, align 8
  %130 = load %struct.tls_session*, %struct.tls_session** %4, align 8
  %131 = getelementptr inbounds %struct.tls_session, %struct.tls_session* %130, i32 0, i32 1
  %132 = load i32*, i32** %131, align 8
  %133 = load i64, i64* @KS_PRIMARY, align 8
  %134 = getelementptr inbounds i32, i32* %132, i64 %133
  %135 = call i32 @key_state_init(%struct.tls_session* %129, i32* %134)
  %136 = load i32, i32* @D_TLS_DEBUG, align 4
  %137 = load %struct.tls_session*, %struct.tls_session** %4, align 8
  %138 = getelementptr inbounds %struct.tls_session, %struct.tls_session* %137, i32 0, i32 0
  %139 = call i32 @session_id_print(i32* %138, %struct.gc_arena* %5)
  %140 = call i32 (i32, i8*, ...) @dmsg(i32 %136, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0), i32 %139)
  %141 = call i32 @gc_free(%struct.gc_arena* %5)
  ret void
}

declare dso_local i32 @gc_new(...) #1

declare dso_local i32 @dmsg(i32, i8*, ...) #1

declare dso_local i32 @CLEAR(%struct.tls_session* byval(%struct.tls_session) align 8) #1

declare dso_local i32 @session_id_defined(i32*) #1

declare dso_local i32 @session_id_random(i32*) #1

declare dso_local i32 @ASSERT(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @alloc_buf(i32) #1

declare dso_local i32 @BUF_SIZE(i32*) #1

declare dso_local i32 @packet_id_init(i32*, i32, i32, i8*, i32) #1

declare dso_local i32 @packet_id_persist_load_obj(i32, i32*) #1

declare dso_local i32 @key_state_init(%struct.tls_session*, i32*) #1

declare dso_local i32 @session_id_print(i32*, %struct.gc_arena*) #1

declare dso_local i32 @gc_free(%struct.gc_arena*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
