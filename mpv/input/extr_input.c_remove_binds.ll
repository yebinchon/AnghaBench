; ModuleID = '/home/carl/AnghaBench/mpv/input/extr_input.c_remove_binds.c'
source_filename = "/home/carl/AnghaBench/mpv/input/extr_input.c_remove_binds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmd_bind_section = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cmd_bind_section*, i32)* @remove_binds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @remove_binds(%struct.cmd_bind_section* %0, i32 %1) #0 {
  %3 = alloca %struct.cmd_bind_section*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.cmd_bind_section* %0, %struct.cmd_bind_section** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.cmd_bind_section*, %struct.cmd_bind_section** %3, align 8
  %7 = getelementptr inbounds %struct.cmd_bind_section, %struct.cmd_bind_section* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = sub nsw i32 %8, 1
  store i32 %9, i32* %5, align 4
  br label %10

10:                                               ; preds = %60, %2
  %11 = load i32, i32* %5, align 4
  %12 = icmp sge i32 %11, 0
  br i1 %12, label %13, label %63

13:                                               ; preds = %10
  %14 = load %struct.cmd_bind_section*, %struct.cmd_bind_section** %3, align 8
  %15 = getelementptr inbounds %struct.cmd_bind_section, %struct.cmd_bind_section* %14, i32 0, i32 1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = load i32, i32* %5, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %59

24:                                               ; preds = %13
  %25 = load %struct.cmd_bind_section*, %struct.cmd_bind_section** %3, align 8
  %26 = getelementptr inbounds %struct.cmd_bind_section, %struct.cmd_bind_section* %25, i32 0, i32 1
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = load i32, i32* %5, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i64 %29
  %31 = call i32 @bind_dealloc(%struct.TYPE_2__* %30)
  %32 = load %struct.cmd_bind_section*, %struct.cmd_bind_section** %3, align 8
  %33 = getelementptr inbounds %struct.cmd_bind_section, %struct.cmd_bind_section* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp sge i32 %34, 1
  %36 = zext i1 %35 to i32
  %37 = call i32 @assert(i32 %36)
  %38 = load %struct.cmd_bind_section*, %struct.cmd_bind_section** %3, align 8
  %39 = getelementptr inbounds %struct.cmd_bind_section, %struct.cmd_bind_section* %38, i32 0, i32 1
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = load i32, i32* %5, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i64 %42
  %44 = load %struct.cmd_bind_section*, %struct.cmd_bind_section** %3, align 8
  %45 = getelementptr inbounds %struct.cmd_bind_section, %struct.cmd_bind_section* %44, i32 0, i32 1
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = load %struct.cmd_bind_section*, %struct.cmd_bind_section** %3, align 8
  %48 = getelementptr inbounds %struct.cmd_bind_section, %struct.cmd_bind_section* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = sub nsw i32 %49, 1
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i64 %51
  %53 = bitcast %struct.TYPE_2__* %43 to i8*
  %54 = bitcast %struct.TYPE_2__* %52 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %53, i8* align 4 %54, i64 4, i1 false)
  %55 = load %struct.cmd_bind_section*, %struct.cmd_bind_section** %3, align 8
  %56 = getelementptr inbounds %struct.cmd_bind_section, %struct.cmd_bind_section* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = add nsw i32 %57, -1
  store i32 %58, i32* %56, align 8
  br label %59

59:                                               ; preds = %24, %13
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %5, align 4
  %62 = add nsw i32 %61, -1
  store i32 %62, i32* %5, align 4
  br label %10

63:                                               ; preds = %10
  ret void
}

declare dso_local i32 @bind_dealloc(%struct.TYPE_2__*) #1

declare dso_local i32 @assert(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
