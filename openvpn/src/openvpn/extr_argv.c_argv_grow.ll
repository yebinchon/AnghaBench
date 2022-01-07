; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_argv.c_argv_grow.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_argv.c_argv_grow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.argv = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.argv*, i64)* @argv_grow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @argv_grow(%struct.argv* %0, i64 %1) #0 {
  %3 = alloca %struct.argv*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.argv* %0, %struct.argv** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.argv*, %struct.argv** %3, align 8
  %7 = getelementptr inbounds %struct.argv, %struct.argv* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* %4, align 8
  %10 = add i64 %8, %9
  %11 = add i64 %10, 1
  store i64 %11, i64* %5, align 8
  %12 = load i64, i64* %5, align 8
  %13 = load %struct.argv*, %struct.argv** %3, align 8
  %14 = getelementptr inbounds %struct.argv, %struct.argv* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ugt i64 %12, %15
  %17 = zext i1 %16 to i32
  %18 = call i32 @ASSERT(i32 %17)
  %19 = load %struct.argv*, %struct.argv** %3, align 8
  %20 = load i64, i64* %5, align 8
  %21 = call i32 @adjust_power_of_2(i64 %20)
  %22 = call i32 @argv_extend(%struct.argv* %19, i32 %21)
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @argv_extend(%struct.argv*, i32) #1

declare dso_local i32 @adjust_power_of_2(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
