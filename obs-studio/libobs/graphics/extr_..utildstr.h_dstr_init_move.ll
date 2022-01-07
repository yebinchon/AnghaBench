; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_..utildstr.h_dstr_init_move.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_..utildstr.h_dstr_init_move.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dstr = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dstr*, %struct.dstr*)* @dstr_init_move to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dstr_init_move(%struct.dstr* %0, %struct.dstr* %1) #0 {
  %3 = alloca %struct.dstr*, align 8
  %4 = alloca %struct.dstr*, align 8
  store %struct.dstr* %0, %struct.dstr** %3, align 8
  store %struct.dstr* %1, %struct.dstr** %4, align 8
  %5 = load %struct.dstr*, %struct.dstr** %3, align 8
  %6 = load %struct.dstr*, %struct.dstr** %4, align 8
  %7 = bitcast %struct.dstr* %5 to i8*
  %8 = bitcast %struct.dstr* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %7, i8* align 4 %8, i64 4, i1 false)
  %9 = load %struct.dstr*, %struct.dstr** %4, align 8
  %10 = call i32 @dstr_init(%struct.dstr* %9)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @dstr_init(%struct.dstr*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
