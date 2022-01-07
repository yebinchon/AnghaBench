; ModuleID = '/home/carl/AnghaBench/nnn/src/extr_nnn.c_swap_ent.c'
source_filename = "/home/carl/AnghaBench/nnn/src/extr_nnn.c_swap_ent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.entry = type { i32 }

@dents = common dso_local global %struct.entry* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @swap_ent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @swap_ent(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.entry, align 4
  %6 = alloca %struct.entry*, align 8
  %7 = alloca %struct.entry*, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %8 = load %struct.entry*, %struct.entry** @dents, align 8
  %9 = load i32, i32* %3, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds %struct.entry, %struct.entry* %8, i64 %10
  store %struct.entry* %11, %struct.entry** %6, align 8
  %12 = load %struct.entry*, %struct.entry** @dents, align 8
  %13 = load i32, i32* %4, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.entry, %struct.entry* %12, i64 %14
  store %struct.entry* %15, %struct.entry** %7, align 8
  %16 = load %struct.entry*, %struct.entry** %6, align 8
  %17 = bitcast %struct.entry* %5 to i8*
  %18 = bitcast %struct.entry* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %17, i8* align 4 %18, i64 4, i1 false)
  %19 = load %struct.entry*, %struct.entry** %6, align 8
  %20 = load %struct.entry*, %struct.entry** %7, align 8
  %21 = bitcast %struct.entry* %19 to i8*
  %22 = bitcast %struct.entry* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %21, i8* align 4 %22, i64 4, i1 false)
  %23 = load %struct.entry*, %struct.entry** %7, align 8
  %24 = bitcast %struct.entry* %23 to i8*
  %25 = bitcast %struct.entry* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %24, i8* align 4 %25, i64 4, i1 false)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
