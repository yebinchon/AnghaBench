; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_init.c_do_init_crypto_static.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_init.c_do_init_crypto_static.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.context = type { %struct.TYPE_8__, %struct.TYPE_6__, %struct.options }
%struct.TYPE_8__ = type { %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32, i32* }
%struct.options = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64 }

@CO_MUTE_REPLAY_WARNINGS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"STATIC\00", align 1
@CO_PACKET_ID_LONG_FORM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"Static Key Encryption\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"secret\00", align 1
@M_INFO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"Re-using pre-shared static key\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.context*, i32)* @do_init_crypto_static to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_init_crypto_static(%struct.context* %0, i32 %1) #0 {
  %3 = alloca %struct.context*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.options*, align 8
  store %struct.context* %0, %struct.context** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.context*, %struct.context** %3, align 8
  %7 = getelementptr inbounds %struct.context, %struct.context* %6, i32 0, i32 2
  store %struct.options* %7, %struct.options** %5, align 8
  %8 = load %struct.options*, %struct.options** %5, align 8
  %9 = getelementptr inbounds %struct.options, %struct.options* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @ASSERT(i32 %10)
  %12 = load %struct.context*, %struct.context** %3, align 8
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @init_crypto_pre(%struct.context* %12, i32 %13)
  %15 = load %struct.context*, %struct.context** %3, align 8
  %16 = getelementptr inbounds %struct.context, %struct.context* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.options, %struct.options* %16, i32 0, i32 10
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %2
  %21 = load i32, i32* @CO_MUTE_REPLAY_WARNINGS, align 4
  %22 = load %struct.context*, %struct.context** %3, align 8
  %23 = getelementptr inbounds %struct.context, %struct.context* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = or i32 %26, %21
  store i32 %27, i32* %25, align 8
  br label %28

28:                                               ; preds = %20, %2
  %29 = load %struct.options*, %struct.options** %5, align 8
  %30 = getelementptr inbounds %struct.options, %struct.options* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %67

33:                                               ; preds = %28
  %34 = load %struct.context*, %struct.context** %3, align 8
  %35 = getelementptr inbounds %struct.context, %struct.context* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 1
  %38 = load %struct.options*, %struct.options** %5, align 8
  %39 = getelementptr inbounds %struct.options, %struct.options* %38, i32 0, i32 9
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.options*, %struct.options** %5, align 8
  %42 = getelementptr inbounds %struct.options, %struct.options* %41, i32 0, i32 8
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @packet_id_init(i32* %37, i32 %40, i32 %43, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 0)
  %45 = load %struct.context*, %struct.context** %3, align 8
  %46 = getelementptr inbounds %struct.context, %struct.context* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 1
  %48 = load %struct.context*, %struct.context** %3, align 8
  %49 = getelementptr inbounds %struct.context, %struct.context* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 3
  store i32* %47, i32** %51, align 8
  %52 = load i32, i32* @CO_PACKET_ID_LONG_FORM, align 4
  %53 = load %struct.context*, %struct.context** %3, align 8
  %54 = getelementptr inbounds %struct.context, %struct.context* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = or i32 %57, %52
  store i32 %58, i32* %56, align 8
  %59 = load %struct.context*, %struct.context** %3, align 8
  %60 = getelementptr inbounds %struct.context, %struct.context* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 1
  %62 = load %struct.context*, %struct.context** %3, align 8
  %63 = getelementptr inbounds %struct.context, %struct.context* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 1
  %66 = call i32 @packet_id_persist_load_obj(i32* %61, i32* %65)
  br label %67

67:                                               ; preds = %33, %28
  %68 = load %struct.context*, %struct.context** %3, align 8
  %69 = getelementptr inbounds %struct.context, %struct.context* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 1
  %72 = call i32 @key_ctx_bi_defined(i32* %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %110, label %74

74:                                               ; preds = %67
  %75 = load %struct.context*, %struct.context** %3, align 8
  %76 = getelementptr inbounds %struct.context, %struct.context* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 0
  %79 = load %struct.options*, %struct.options** %5, align 8
  %80 = getelementptr inbounds %struct.options, %struct.options* %79, i32 0, i32 7
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.options*, %struct.options** %5, align 8
  %83 = getelementptr inbounds %struct.options, %struct.options* %82, i32 0, i32 6
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.options*, %struct.options** %5, align 8
  %86 = getelementptr inbounds %struct.options, %struct.options* %85, i32 0, i32 5
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.options*, %struct.options** %5, align 8
  %89 = getelementptr inbounds %struct.options, %struct.options* %88, i32 0, i32 4
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @init_key_type(i32* %78, i32 %81, i32 %84, i32 %87, i32 %90, i32 1)
  %92 = load %struct.context*, %struct.context** %3, align 8
  %93 = getelementptr inbounds %struct.context, %struct.context* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 0
  %96 = load %struct.context*, %struct.context** %3, align 8
  %97 = getelementptr inbounds %struct.context, %struct.context* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 1
  %100 = load %struct.options*, %struct.options** %5, align 8
  %101 = getelementptr inbounds %struct.options, %struct.options* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.options*, %struct.options** %5, align 8
  %104 = getelementptr inbounds %struct.options, %struct.options* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.options*, %struct.options** %5, align 8
  %107 = getelementptr inbounds %struct.options, %struct.options* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 8
  %109 = call i32 @crypto_read_openvpn_key(i32* %95, i32* %99, i32 %102, i32 %105, i32 %108, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  br label %113

110:                                              ; preds = %67
  %111 = load i32, i32* @M_INFO, align 4
  %112 = call i32 @msg(i32 %111, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  br label %113

113:                                              ; preds = %110, %74
  %114 = load %struct.context*, %struct.context** %3, align 8
  %115 = getelementptr inbounds %struct.context, %struct.context* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.context*, %struct.context** %3, align 8
  %120 = getelementptr inbounds %struct.context, %struct.context* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 0
  store i32 %118, i32* %122, align 8
  %123 = load %struct.context*, %struct.context** %3, align 8
  %124 = getelementptr inbounds %struct.context, %struct.context* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 0
  %126 = load %struct.context*, %struct.context** %3, align 8
  %127 = getelementptr inbounds %struct.context, %struct.context* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i32 0, i32 0
  %130 = load %struct.options*, %struct.options** %5, align 8
  %131 = getelementptr inbounds %struct.options, %struct.options* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = call i32 @crypto_adjust_frame_parameters(i32* %125, i32* %129, i64 %132, i32 1)
  %134 = load %struct.context*, %struct.context** %3, align 8
  %135 = getelementptr inbounds %struct.context, %struct.context* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %136, i32 0, i32 0
  %138 = load %struct.options*, %struct.options** %5, align 8
  %139 = getelementptr inbounds %struct.options, %struct.options* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = call i32 @check_replay_consistency(i32* %137, i64 %140)
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @init_crypto_pre(%struct.context*, i32) #1

declare dso_local i32 @packet_id_init(i32*, i32, i32, i8*, i32) #1

declare dso_local i32 @packet_id_persist_load_obj(i32*, i32*) #1

declare dso_local i32 @key_ctx_bi_defined(i32*) #1

declare dso_local i32 @init_key_type(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @crypto_read_openvpn_key(i32*, i32*, i32, i32, i32, i8*, i8*) #1

declare dso_local i32 @msg(i32, i8*) #1

declare dso_local i32 @crypto_adjust_frame_parameters(i32*, i32*, i64, i32) #1

declare dso_local i32 @check_replay_consistency(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
