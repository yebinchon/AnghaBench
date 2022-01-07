; ModuleID = '/home/carl/AnghaBench/mpv/filters/extr_f_output_chain.c_mp_output_chain_set_ao.c'
source_filename = "/home/carl/AnghaBench/mpv/filters/extr_f_output_chain.c_mp_output_chain_set_ao.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_output_chain = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.chain* }
%struct.chain = type { %struct.TYPE_4__, i32, %struct.ao* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.ao = type { i32 }
%struct.mp_chmap = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mp_output_chain_set_ao(%struct.mp_output_chain* %0, %struct.ao* %1) #0 {
  %3 = alloca %struct.mp_output_chain*, align 8
  %4 = alloca %struct.ao*, align 8
  %5 = alloca %struct.chain*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.mp_chmap, align 4
  store %struct.mp_output_chain* %0, %struct.mp_output_chain** %3, align 8
  store %struct.ao* %1, %struct.ao** %4, align 8
  %9 = load %struct.mp_output_chain*, %struct.mp_output_chain** %3, align 8
  %10 = getelementptr inbounds %struct.mp_output_chain, %struct.mp_output_chain* %9, i32 0, i32 0
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load %struct.chain*, %struct.chain** %12, align 8
  store %struct.chain* %13, %struct.chain** %5, align 8
  %14 = load %struct.chain*, %struct.chain** %5, align 8
  %15 = getelementptr inbounds %struct.chain, %struct.chain* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @assert(i32 %17)
  %19 = load %struct.chain*, %struct.chain** %5, align 8
  %20 = getelementptr inbounds %struct.chain, %struct.chain* %19, i32 0, i32 2
  %21 = load %struct.ao*, %struct.ao** %20, align 8
  %22 = icmp ne %struct.ao* %21, null
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  %25 = call i32 @assert(i32 %24)
  %26 = load %struct.chain*, %struct.chain** %5, align 8
  %27 = getelementptr inbounds %struct.chain, %struct.chain* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  store i32 0, i32* %28, align 8
  %29 = load %struct.ao*, %struct.ao** %4, align 8
  %30 = load %struct.chain*, %struct.chain** %5, align 8
  %31 = getelementptr inbounds %struct.chain, %struct.chain* %30, i32 0, i32 2
  store %struct.ao* %29, %struct.ao** %31, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %32 = bitcast %struct.mp_chmap* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %32, i8 0, i64 4, i1 false)
  %33 = load %struct.chain*, %struct.chain** %5, align 8
  %34 = getelementptr inbounds %struct.chain, %struct.chain* %33, i32 0, i32 2
  %35 = load %struct.ao*, %struct.ao** %34, align 8
  %36 = call i32 @ao_get_format(%struct.ao* %35, i32* %7, i32* %6, %struct.mp_chmap* %8)
  %37 = load %struct.chain*, %struct.chain** %5, align 8
  %38 = getelementptr inbounds %struct.chain, %struct.chain* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @mp_autoconvert_clear(i32 %39)
  %41 = load %struct.chain*, %struct.chain** %5, align 8
  %42 = getelementptr inbounds %struct.chain, %struct.chain* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @mp_autoconvert_add_afmt(i32 %43, i32 %44)
  %46 = load %struct.chain*, %struct.chain** %5, align 8
  %47 = getelementptr inbounds %struct.chain, %struct.chain* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* %7, align 4
  %50 = call i32 @mp_autoconvert_add_srate(i32 %48, i32 %49)
  %51 = load %struct.chain*, %struct.chain** %5, align 8
  %52 = getelementptr inbounds %struct.chain, %struct.chain* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @mp_autoconvert_add_chmap(i32 %53, %struct.mp_chmap* %8)
  %55 = load %struct.chain*, %struct.chain** %5, align 8
  %56 = getelementptr inbounds %struct.chain, %struct.chain* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @mp_autoconvert_format_change_continue(i32 %57)
  %59 = load %struct.chain*, %struct.chain** %5, align 8
  %60 = getelementptr inbounds %struct.chain, %struct.chain* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @mp_aframe_reset(i32 %62)
  ret void
}

declare dso_local i32 @assert(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @ao_get_format(%struct.ao*, i32*, i32*, %struct.mp_chmap*) #1

declare dso_local i32 @mp_autoconvert_clear(i32) #1

declare dso_local i32 @mp_autoconvert_add_afmt(i32, i32) #1

declare dso_local i32 @mp_autoconvert_add_srate(i32, i32) #1

declare dso_local i32 @mp_autoconvert_add_chmap(i32, %struct.mp_chmap*) #1

declare dso_local i32 @mp_autoconvert_format_change_continue(i32) #1

declare dso_local i32 @mp_aframe_reset(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
