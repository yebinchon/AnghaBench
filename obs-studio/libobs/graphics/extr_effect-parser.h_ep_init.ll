; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_effect-parser.h_ep_init.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_effect-parser.h_ep_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.effect_parser = type { i32, i32*, i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.effect_parser*)* @ep_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ep_init(%struct.effect_parser* %0) #0 {
  %2 = alloca %struct.effect_parser*, align 8
  store %struct.effect_parser* %0, %struct.effect_parser** %2, align 8
  %3 = load %struct.effect_parser*, %struct.effect_parser** %2, align 8
  %4 = getelementptr inbounds %struct.effect_parser, %struct.effect_parser* %3, i32 0, i32 8
  %5 = load i32, i32* %4, align 8
  %6 = call i32 @da_init(i32 %5)
  %7 = load %struct.effect_parser*, %struct.effect_parser** %2, align 8
  %8 = getelementptr inbounds %struct.effect_parser, %struct.effect_parser* %7, i32 0, i32 7
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @da_init(i32 %9)
  %11 = load %struct.effect_parser*, %struct.effect_parser** %2, align 8
  %12 = getelementptr inbounds %struct.effect_parser, %struct.effect_parser* %11, i32 0, i32 6
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @da_init(i32 %13)
  %15 = load %struct.effect_parser*, %struct.effect_parser** %2, align 8
  %16 = getelementptr inbounds %struct.effect_parser, %struct.effect_parser* %15, i32 0, i32 5
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @da_init(i32 %17)
  %19 = load %struct.effect_parser*, %struct.effect_parser** %2, align 8
  %20 = getelementptr inbounds %struct.effect_parser, %struct.effect_parser* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @da_init(i32 %21)
  %23 = load %struct.effect_parser*, %struct.effect_parser** %2, align 8
  %24 = getelementptr inbounds %struct.effect_parser, %struct.effect_parser* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @da_init(i32 %25)
  %27 = load %struct.effect_parser*, %struct.effect_parser** %2, align 8
  %28 = getelementptr inbounds %struct.effect_parser, %struct.effect_parser* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @da_init(i32 %29)
  %31 = load %struct.effect_parser*, %struct.effect_parser** %2, align 8
  %32 = getelementptr inbounds %struct.effect_parser, %struct.effect_parser* %31, i32 0, i32 1
  store i32* null, i32** %32, align 8
  %33 = load %struct.effect_parser*, %struct.effect_parser** %2, align 8
  %34 = getelementptr inbounds %struct.effect_parser, %struct.effect_parser* %33, i32 0, i32 0
  %35 = call i32 @cf_parser_init(i32* %34)
  ret void
}

declare dso_local i32 @da_init(i32) #1

declare dso_local i32 @cf_parser_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
