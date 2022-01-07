; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_init.c_test_crypto_thread.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_init.c_test_crypto_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.context = type { %struct.TYPE_5__, %struct.TYPE_4__, %struct.options }
%struct.TYPE_5__ = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.options = type { i32 }

@IVM_LEVEL_1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @test_crypto_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @test_crypto_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.context*, align 8
  %4 = alloca %struct.options*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.context*
  store %struct.context* %6, %struct.context** %3, align 8
  %7 = load %struct.context*, %struct.context** %3, align 8
  %8 = getelementptr inbounds %struct.context, %struct.context* %7, i32 0, i32 2
  store %struct.options* %8, %struct.options** %4, align 8
  %9 = load %struct.options*, %struct.options** %4, align 8
  %10 = getelementptr inbounds %struct.options, %struct.options* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @ASSERT(i32 %11)
  %13 = load %struct.context*, %struct.context** %3, align 8
  %14 = load i32, i32* @IVM_LEVEL_1, align 4
  %15 = call i32 @init_verb_mute(%struct.context* %13, i32 %14)
  %16 = load %struct.context*, %struct.context** %3, align 8
  %17 = call i32 @context_init_1(%struct.context* %16)
  %18 = load %struct.context*, %struct.context** %3, align 8
  %19 = call i32 @next_connection_entry(%struct.context* %18)
  %20 = load %struct.context*, %struct.context** %3, align 8
  %21 = call i32 @do_init_crypto_static(%struct.context* %20, i32 0)
  %22 = load %struct.context*, %struct.context** %3, align 8
  %23 = load %struct.options*, %struct.options** %4, align 8
  %24 = call i32 @frame_finalize_options(%struct.context* %22, %struct.options* %23)
  %25 = load %struct.context*, %struct.context** %3, align 8
  %26 = getelementptr inbounds %struct.context, %struct.context* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load %struct.context*, %struct.context** %3, align 8
  %29 = getelementptr inbounds %struct.context, %struct.context* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 1
  %31 = call i32 @test_crypto(%struct.TYPE_6__* %27, i32* %30)
  %32 = load %struct.context*, %struct.context** %3, align 8
  %33 = getelementptr inbounds %struct.context, %struct.context* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = call i32 @key_schedule_free(i32* %34, i32 1)
  %36 = load %struct.context*, %struct.context** %3, align 8
  %37 = getelementptr inbounds %struct.context, %struct.context* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = call i32 @packet_id_free(i32* %39)
  %41 = load %struct.context*, %struct.context** %3, align 8
  %42 = call i32 @context_gc_free(%struct.context* %41)
  ret i8* null
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @init_verb_mute(%struct.context*, i32) #1

declare dso_local i32 @context_init_1(%struct.context*) #1

declare dso_local i32 @next_connection_entry(%struct.context*) #1

declare dso_local i32 @do_init_crypto_static(%struct.context*, i32) #1

declare dso_local i32 @frame_finalize_options(%struct.context*, %struct.options*) #1

declare dso_local i32 @test_crypto(%struct.TYPE_6__*, i32*) #1

declare dso_local i32 @key_schedule_free(i32*, i32) #1

declare dso_local i32 @packet_id_free(i32*) #1

declare dso_local i32 @context_gc_free(%struct.context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
