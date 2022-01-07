; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/arch/xap/extr_dis.c_xap_decode.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/arch/xap/extr_dis.c_xap_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.state = type { i32, i32 }
%struct.directive = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.state*, %struct.directive*)* @xap_decode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xap_decode(%struct.state* %0, %struct.directive* %1) #0 {
  %3 = alloca %struct.state*, align 8
  %4 = alloca %struct.directive*, align 8
  %5 = alloca i32, align 4
  store %struct.state* %0, %struct.state** %3, align 8
  store %struct.directive* %1, %struct.directive** %4, align 8
  %6 = load %struct.state*, %struct.state** %3, align 8
  %7 = getelementptr inbounds %struct.state, %struct.state* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  store i32 %8, i32* %5, align 4
  %9 = load %struct.state*, %struct.state** %3, align 8
  %10 = load %struct.directive*, %struct.directive** %4, align 8
  %11 = call i32 @decode_fixed(%struct.state* %9, %struct.directive* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %23, label %13

13:                                               ; preds = %2
  %14 = load %struct.state*, %struct.state** %3, align 8
  %15 = load %struct.directive*, %struct.directive** %4, align 8
  %16 = call i32 @decode_known(%struct.state* %14, %struct.directive* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %13
  %19 = load %struct.state*, %struct.state** %3, align 8
  %20 = load %struct.directive*, %struct.directive** %4, align 8
  %21 = call i32 @decode_unknown(%struct.state* %19, %struct.directive* %20)
  br label %22

22:                                               ; preds = %18, %13
  br label %23

23:                                               ; preds = %22, %2
  %24 = load %struct.state*, %struct.state** %3, align 8
  %25 = getelementptr inbounds %struct.state, %struct.state* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %5, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %34

29:                                               ; preds = %23
  %30 = load %struct.state*, %struct.state** %3, align 8
  %31 = getelementptr inbounds %struct.state, %struct.state* %30, i32 0, i32 0
  store i32 0, i32* %31, align 4
  %32 = load %struct.state*, %struct.state** %3, align 8
  %33 = getelementptr inbounds %struct.state, %struct.state* %32, i32 0, i32 1
  store i32 0, i32* %33, align 4
  br label %34

34:                                               ; preds = %29, %23
  ret void
}

declare dso_local i32 @decode_fixed(%struct.state*, %struct.directive*) #1

declare dso_local i32 @decode_known(%struct.state*, %struct.directive*) #1

declare dso_local i32 @decode_unknown(%struct.state*, %struct.directive*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
