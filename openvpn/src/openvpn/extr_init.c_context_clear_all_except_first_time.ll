; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_init.c_context_clear_all_except_first_time.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_init.c_context_clear_all_except_first_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.context = type { i32, %struct.context_persist }
%struct.context_persist = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @context_clear_all_except_first_time(%struct.context* %0) #0 {
  %2 = alloca %struct.context*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.context_persist, align 4
  store %struct.context* %0, %struct.context** %2, align 8
  %5 = load %struct.context*, %struct.context** %2, align 8
  %6 = getelementptr inbounds %struct.context, %struct.context* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  store i32 %7, i32* %3, align 4
  %8 = load %struct.context*, %struct.context** %2, align 8
  %9 = getelementptr inbounds %struct.context, %struct.context* %8, i32 0, i32 1
  %10 = bitcast %struct.context_persist* %4 to i8*
  %11 = bitcast %struct.context_persist* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %10, i8* align 4 %11, i64 4, i1 false)
  %12 = load %struct.context*, %struct.context** %2, align 8
  %13 = call i32 @context_clear(%struct.context* %12)
  %14 = load i32, i32* %3, align 4
  %15 = load %struct.context*, %struct.context** %2, align 8
  %16 = getelementptr inbounds %struct.context, %struct.context* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 4
  %17 = load %struct.context*, %struct.context** %2, align 8
  %18 = getelementptr inbounds %struct.context, %struct.context* %17, i32 0, i32 1
  %19 = bitcast %struct.context_persist* %18 to i8*
  %20 = bitcast %struct.context_persist* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %19, i8* align 4 %20, i64 4, i1 false)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @context_clear(%struct.context*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
