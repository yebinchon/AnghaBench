; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_effect-parser.c_ep_getstruct_strref.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_effect-parser.c_ep_getstruct_strref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ep_struct = type { i32 }
%struct.effect_parser = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, %struct.ep_struct* }
%struct.strref = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ep_struct* (%struct.effect_parser*, %struct.strref*)* @ep_getstruct_strref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ep_struct* @ep_getstruct_strref(%struct.effect_parser* %0, %struct.strref* %1) #0 {
  %3 = alloca %struct.ep_struct*, align 8
  %4 = alloca %struct.effect_parser*, align 8
  %5 = alloca %struct.strref*, align 8
  %6 = alloca i64, align 8
  store %struct.effect_parser* %0, %struct.effect_parser** %4, align 8
  store %struct.strref* %1, %struct.strref** %5, align 8
  store i64 0, i64* %6, align 8
  br label %7

7:                                                ; preds = %34, %2
  %8 = load i64, i64* %6, align 8
  %9 = load %struct.effect_parser*, %struct.effect_parser** %4, align 8
  %10 = getelementptr inbounds %struct.effect_parser, %struct.effect_parser* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ult i64 %8, %12
  br i1 %13, label %14, label %37

14:                                               ; preds = %7
  %15 = load %struct.strref*, %struct.strref** %5, align 8
  %16 = load %struct.effect_parser*, %struct.effect_parser** %4, align 8
  %17 = getelementptr inbounds %struct.effect_parser, %struct.effect_parser* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load %struct.ep_struct*, %struct.ep_struct** %18, align 8
  %20 = load i64, i64* %6, align 8
  %21 = getelementptr inbounds %struct.ep_struct, %struct.ep_struct* %19, i64 %20
  %22 = getelementptr inbounds %struct.ep_struct, %struct.ep_struct* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @strref_cmp(%struct.strref* %15, i32 %23)
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %14
  %27 = load %struct.effect_parser*, %struct.effect_parser** %4, align 8
  %28 = getelementptr inbounds %struct.effect_parser, %struct.effect_parser* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = load %struct.ep_struct*, %struct.ep_struct** %29, align 8
  %31 = load i64, i64* %6, align 8
  %32 = getelementptr inbounds %struct.ep_struct, %struct.ep_struct* %30, i64 %31
  store %struct.ep_struct* %32, %struct.ep_struct** %3, align 8
  br label %38

33:                                               ; preds = %14
  br label %34

34:                                               ; preds = %33
  %35 = load i64, i64* %6, align 8
  %36 = add i64 %35, 1
  store i64 %36, i64* %6, align 8
  br label %7

37:                                               ; preds = %7
  store %struct.ep_struct* null, %struct.ep_struct** %3, align 8
  br label %38

38:                                               ; preds = %37, %26
  %39 = load %struct.ep_struct*, %struct.ep_struct** %3, align 8
  ret %struct.ep_struct* %39
}

declare dso_local i64 @strref_cmp(%struct.strref*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
