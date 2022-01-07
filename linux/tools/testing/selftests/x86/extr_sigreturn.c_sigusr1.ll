; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/x86/extr_sigreturn.c_sigusr1.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/x86/extr_sigreturn.c_sigusr1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64* }

@initial_regs = common dso_local global i32* null, align 8
@sig_cs = common dso_local global i64 0, align 8
@sig_ss = common dso_local global i32 0, align 4
@code16_sel = common dso_local global i64 0, align 8
@int3 = common dso_local global i32 0, align 4
@REG_IP = common dso_local global i64 0, align 8
@REG_SP = common dso_local global i64 0, align 8
@REG_CX = common dso_local global i64 0, align 8
@requested_regs = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*, i8*)* @sigusr1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sigusr1(i32 %0, i32* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load i8*, i8** %6, align 8
  %9 = bitcast i8* %8 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %9, %struct.TYPE_7__** %7, align 8
  %10 = load i32, i32* %4, align 4
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %12 = call i32 @validate_signal_ss(i32 %10, %struct.TYPE_7__* %11)
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = call i32 @memcpy(i32** @initial_regs, i64** %15, i32 4)
  %17 = load i64, i64* @sig_cs, align 8
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %19 = call i64* @csptr(%struct.TYPE_7__* %18)
  store i64 %17, i64* %19, align 8
  %20 = load i32, i32* @sig_ss, align 4
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %22 = call i32* @ssptr(%struct.TYPE_7__* %21)
  store i32 %20, i32* %22, align 4
  %23 = load i64, i64* @sig_cs, align 8
  %24 = load i64, i64* @code16_sel, align 8
  %25 = icmp eq i64 %23, %24
  %26 = zext i1 %25 to i64
  %27 = select i1 %25, i64 0, i64 ptrtoint (i32* @int3 to i64)
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i64*, i64** %30, align 8
  %32 = load i64, i64* @REG_IP, align 8
  %33 = getelementptr inbounds i64, i64* %31, i64 %32
  store i64 %27, i64* %33, align 8
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i64*, i64** %36, align 8
  %38 = load i64, i64* @REG_SP, align 8
  %39 = getelementptr inbounds i64, i64* %37, i64 %38
  store i64 -8381779391320047394, i64* %39, align 8
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load i64*, i64** %42, align 8
  %44 = load i64, i64* @REG_CX, align 8
  %45 = getelementptr inbounds i64, i64* %43, i64 %44
  store i64 0, i64* %45, align 8
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = call i32 @memcpy(i32** @requested_regs, i64** %48, i32 4)
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %51 = call i32* @ssptr(%struct.TYPE_7__* %50)
  %52 = load i32, i32* %51, align 4
  %53 = load i32*, i32** @requested_regs, align 8
  %54 = load i64, i64* @REG_CX, align 8
  %55 = getelementptr inbounds i32, i32* %53, i64 %54
  store i32 %52, i32* %55, align 4
  ret void
}

declare dso_local i32 @validate_signal_ss(i32, %struct.TYPE_7__*) #1

declare dso_local i32 @memcpy(i32**, i64**, i32) #1

declare dso_local i64* @csptr(%struct.TYPE_7__*) #1

declare dso_local i32* @ssptr(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
