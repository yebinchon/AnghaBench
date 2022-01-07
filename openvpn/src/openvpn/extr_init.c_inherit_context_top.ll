; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_init.c_inherit_context_top.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_init.c_inherit_context_top.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.context = type { i32, i32, %struct.TYPE_7__, %struct.TYPE_8__, %struct.TYPE_5__, i32, i32*, i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32*, i32*, i32*, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32, i32 }

@CM_TOP_CLONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @inherit_context_top(%struct.context* %0, %struct.context* %1) #0 {
  %3 = alloca %struct.context*, align 8
  %4 = alloca %struct.context*, align 8
  store %struct.context* %0, %struct.context** %3, align 8
  store %struct.context* %1, %struct.context** %4, align 8
  %5 = load %struct.context*, %struct.context** %3, align 8
  %6 = load %struct.context*, %struct.context** %4, align 8
  %7 = bitcast %struct.context* %5 to i8*
  %8 = bitcast %struct.context* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %7, i8* align 8 %8, i64 96, i1 false)
  %9 = load i32, i32* @CM_TOP_CLONE, align 4
  %10 = load %struct.context*, %struct.context** %3, align 8
  %11 = getelementptr inbounds %struct.context, %struct.context* %10, i32 0, i32 7
  store i32 %9, i32* %11, align 8
  %12 = load %struct.context*, %struct.context** %3, align 8
  %13 = getelementptr inbounds %struct.context, %struct.context* %12, i32 0, i32 0
  store i32 0, i32* %13, align 8
  %14 = load %struct.context*, %struct.context** %3, align 8
  %15 = getelementptr inbounds %struct.context, %struct.context* %14, i32 0, i32 6
  store i32* null, i32** %15, align 8
  %16 = load %struct.context*, %struct.context** %3, align 8
  %17 = getelementptr inbounds %struct.context, %struct.context* %16, i32 0, i32 3
  %18 = call i32 @options_detach(%struct.TYPE_8__* %17)
  %19 = load %struct.context*, %struct.context** %3, align 8
  %20 = getelementptr inbounds %struct.context, %struct.context* %19, i32 0, i32 5
  %21 = call i32 @gc_detach(i32* %20)
  %22 = load %struct.context*, %struct.context** %3, align 8
  %23 = getelementptr inbounds %struct.context, %struct.context* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 7
  %25 = call i32 @gc_detach(i32* %24)
  %26 = load %struct.context*, %struct.context** %3, align 8
  %27 = getelementptr inbounds %struct.context, %struct.context* %26, i32 0, i32 1
  store i32 0, i32* %27, align 4
  %28 = load %struct.context*, %struct.context** %3, align 8
  %29 = getelementptr inbounds %struct.context, %struct.context* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 6
  store i32* null, i32** %30, align 8
  %31 = load %struct.context*, %struct.context** %3, align 8
  %32 = getelementptr inbounds %struct.context, %struct.context* %31, i32 0, i32 4
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  store i32 0, i32* %33, align 4
  %34 = load %struct.context*, %struct.context** %3, align 8
  %35 = getelementptr inbounds %struct.context, %struct.context* %34, i32 0, i32 4
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 1
  store i32 0, i32* %36, align 4
  %37 = load %struct.context*, %struct.context** %3, align 8
  %38 = getelementptr inbounds %struct.context, %struct.context* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  store i32 0, i32* %39, align 8
  %40 = load %struct.context*, %struct.context** %3, align 8
  %41 = getelementptr inbounds %struct.context, %struct.context* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 1
  store i32 0, i32* %42, align 4
  %43 = load %struct.context*, %struct.context** %3, align 8
  %44 = getelementptr inbounds %struct.context, %struct.context* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 2
  store i32 0, i32* %45, align 8
  %46 = load %struct.context*, %struct.context** %3, align 8
  %47 = getelementptr inbounds %struct.context, %struct.context* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 3
  store i32 0, i32* %48, align 4
  %49 = load %struct.context*, %struct.context** %3, align 8
  %50 = getelementptr inbounds %struct.context, %struct.context* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 5
  store i32* null, i32** %51, align 8
  %52 = load %struct.context*, %struct.context** %4, align 8
  %53 = getelementptr inbounds %struct.context, %struct.context* %52, i32 0, i32 3
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i64 @proto_is_dgram(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %2
  %60 = load %struct.context*, %struct.context** %3, align 8
  %61 = call i32 @do_event_set_init(%struct.context* %60, i32 0)
  br label %62

62:                                               ; preds = %59, %2
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @options_detach(%struct.TYPE_8__*) #2

declare dso_local i32 @gc_detach(i32*) #2

declare dso_local i64 @proto_is_dgram(i32) #2

declare dso_local i32 @do_event_set_init(%struct.context*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
