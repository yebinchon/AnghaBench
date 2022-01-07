; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/p/extr_asm_xap.c_arch_xap_disasm.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/p/extr_asm_xap.c_arch_xap_disasm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.state = type { i8*, i64, i32*, i32 }
%struct.directive = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32)* @arch_xap_disasm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arch_xap_disasm(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.state*, align 8
  %8 = alloca %struct.directive*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = call %struct.state* (...) @get_state()
  store %struct.state* %9, %struct.state** %7, align 8
  %10 = load %struct.state*, %struct.state** %7, align 8
  %11 = call i32 @memset(%struct.state* %10, i32 0, i32 32)
  %12 = load i8*, i8** %5, align 8
  %13 = load %struct.state*, %struct.state** %7, align 8
  %14 = getelementptr inbounds %struct.state, %struct.state* %13, i32 0, i32 0
  store i8* %12, i8** %14, align 8
  %15 = load i32, i32* %6, align 4
  %16 = load %struct.state*, %struct.state** %7, align 8
  %17 = getelementptr inbounds %struct.state, %struct.state* %16, i32 0, i32 3
  store i32 %15, i32* %17, align 8
  %18 = load %struct.state*, %struct.state** %7, align 8
  %19 = getelementptr inbounds %struct.state, %struct.state* %18, i32 0, i32 2
  store i32* null, i32** %19, align 8
  %20 = load %struct.state*, %struct.state** %7, align 8
  %21 = call %struct.directive* @next_inst(%struct.state* %20)
  store %struct.directive* %21, %struct.directive** %8, align 8
  %22 = load %struct.directive*, %struct.directive** %8, align 8
  %23 = icmp ne %struct.directive* %22, null
  br i1 %23, label %24, label %35

24:                                               ; preds = %3
  %25 = load %struct.state*, %struct.state** %7, align 8
  %26 = load %struct.directive*, %struct.directive** %8, align 8
  %27 = call i32 @xap_decode(%struct.state* %25, %struct.directive* %26)
  %28 = load i8*, i8** %4, align 8
  %29 = load %struct.directive*, %struct.directive** %8, align 8
  %30 = getelementptr inbounds %struct.directive, %struct.directive* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @strcpy(i8* %28, i32 %31)
  %33 = load %struct.directive*, %struct.directive** %8, align 8
  %34 = call i32 @free(%struct.directive* %33)
  br label %37

35:                                               ; preds = %3
  %36 = load i8*, i8** %4, align 8
  store i8 0, i8* %36, align 1
  br label %37

37:                                               ; preds = %35, %24
  ret i32 0
}

declare dso_local %struct.state* @get_state(...) #1

declare dso_local i32 @memset(%struct.state*, i32, i32) #1

declare dso_local %struct.directive* @next_inst(%struct.state*) #1

declare dso_local i32 @xap_decode(%struct.state*, %struct.directive*) #1

declare dso_local i32 @strcpy(i8*, i32) #1

declare dso_local i32 @free(%struct.directive*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
