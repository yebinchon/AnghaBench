; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/arch/xap/extr_dis.c_decode_unknown.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/arch/xap/extr_dis.c_decode_unknown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32 }
%struct.state = type { i32 }
%struct.directive = type { i32, i32 }

@.str = private unnamed_addr constant [9 x i8] c"DC 0x%4x\00", align 1
@in = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.state*, %struct.directive*)* @decode_unknown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @decode_unknown(%struct.state* %0, %struct.directive* %1) #0 {
  %3 = alloca %struct.state*, align 8
  %4 = alloca %struct.directive*, align 8
  store %struct.state* %0, %struct.state** %3, align 8
  store %struct.directive* %1, %struct.directive** %4, align 8
  %5 = load %struct.directive*, %struct.directive** %4, align 8
  %6 = getelementptr inbounds %struct.directive, %struct.directive* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.directive*, %struct.directive** %4, align 8
  %9 = getelementptr inbounds %struct.directive, %struct.directive* %8, i32 0, i32 0
  %10 = call i32 @i2u16(i32* %9)
  %11 = call i32 @sprintf(i32 %7, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %10)
  ret void
}

declare dso_local i32 @sprintf(i32, i8*, i32) #1

declare dso_local i32 @i2u16(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
