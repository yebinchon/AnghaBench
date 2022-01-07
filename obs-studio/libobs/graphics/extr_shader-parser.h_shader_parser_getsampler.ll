; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_shader-parser.h_shader_parser_getsampler.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_shader-parser.h_shader_parser_getsampler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shader_sampler = type { i32 }
%struct.shader_parser = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, %struct.shader_sampler* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.shader_sampler* (%struct.shader_parser*, i8*)* @shader_parser_getsampler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.shader_sampler* @shader_parser_getsampler(%struct.shader_parser* %0, i8* %1) #0 {
  %3 = alloca %struct.shader_sampler*, align 8
  %4 = alloca %struct.shader_parser*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.shader_sampler*, align 8
  store %struct.shader_parser* %0, %struct.shader_parser** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 0, i64* %6, align 8
  br label %8

8:                                                ; preds = %31, %2
  %9 = load i64, i64* %6, align 8
  %10 = load %struct.shader_parser*, %struct.shader_parser** %4, align 8
  %11 = getelementptr inbounds %struct.shader_parser, %struct.shader_parser* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ult i64 %9, %13
  br i1 %14, label %15, label %34

15:                                               ; preds = %8
  %16 = load %struct.shader_parser*, %struct.shader_parser** %4, align 8
  %17 = getelementptr inbounds %struct.shader_parser, %struct.shader_parser* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load %struct.shader_sampler*, %struct.shader_sampler** %18, align 8
  %20 = load i64, i64* %6, align 8
  %21 = getelementptr inbounds %struct.shader_sampler, %struct.shader_sampler* %19, i64 %20
  store %struct.shader_sampler* %21, %struct.shader_sampler** %7, align 8
  %22 = load %struct.shader_sampler*, %struct.shader_sampler** %7, align 8
  %23 = getelementptr inbounds %struct.shader_sampler, %struct.shader_sampler* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i8*, i8** %5, align 8
  %26 = call i64 @strcmp(i32 %24, i8* %25)
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %15
  %29 = load %struct.shader_sampler*, %struct.shader_sampler** %7, align 8
  store %struct.shader_sampler* %29, %struct.shader_sampler** %3, align 8
  br label %35

30:                                               ; preds = %15
  br label %31

31:                                               ; preds = %30
  %32 = load i64, i64* %6, align 8
  %33 = add i64 %32, 1
  store i64 %33, i64* %6, align 8
  br label %8

34:                                               ; preds = %8
  store %struct.shader_sampler* null, %struct.shader_sampler** %3, align 8
  br label %35

35:                                               ; preds = %34, %28
  %36 = load %struct.shader_sampler*, %struct.shader_sampler** %3, align 8
  ret %struct.shader_sampler* %36
}

declare dso_local i64 @strcmp(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
