; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/arch/xap/extr_dis.c_next_inst.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/arch/xap/extr_dis.c_next_inst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.directive = type { i32 }
%struct.state = type { i64 }

@.str = private unnamed_addr constant [9 x i8] c"malloc()\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.directive* (%struct.state*)* @next_inst to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.directive* @next_inst(%struct.state* %0) #0 {
  %2 = alloca %struct.directive*, align 8
  %3 = alloca %struct.state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.directive*, align 8
  store %struct.state* %0, %struct.state** %3, align 8
  %6 = call %struct.directive* @malloc(i32 4)
  store %struct.directive* %6, %struct.directive** %5, align 8
  %7 = load %struct.directive*, %struct.directive** %5, align 8
  %8 = icmp ne %struct.directive* %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %1
  %10 = call i32 @perror(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store %struct.directive* null, %struct.directive** %2, align 8
  br label %24

11:                                               ; preds = %1
  %12 = load %struct.directive*, %struct.directive** %5, align 8
  %13 = call i32 @memset(%struct.directive* %12, i32 0, i32 4)
  %14 = load %struct.state*, %struct.state** %3, align 8
  %15 = load %struct.directive*, %struct.directive** %5, align 8
  %16 = call i32 @read_bin(%struct.state* %14, %struct.directive* %15)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %11
  %20 = load %struct.directive*, %struct.directive** %5, align 8
  %21 = call i32 @free(%struct.directive* %20)
  store %struct.directive* null, %struct.directive** %2, align 8
  br label %24

22:                                               ; preds = %11
  %23 = load %struct.directive*, %struct.directive** %5, align 8
  store %struct.directive* %23, %struct.directive** %2, align 8
  br label %24

24:                                               ; preds = %22, %19, %9
  %25 = load %struct.directive*, %struct.directive** %2, align 8
  ret %struct.directive* %25
}

declare dso_local %struct.directive* @malloc(i32) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @memset(%struct.directive*, i32, i32) #1

declare dso_local i32 @read_bin(%struct.state*, %struct.directive*) #1

declare dso_local i32 @free(%struct.directive*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
