; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_effect-parser.c_ep_write_func_sampler_deps.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_effect-parser.c_ep_write_func_sampler_deps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.effect_parser = type { i32 }
%struct.dstr = type { i32 }
%struct.ep_func = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i8** }
%struct.ep_sampler = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.effect_parser*, %struct.dstr*, %struct.ep_func*)* @ep_write_func_sampler_deps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ep_write_func_sampler_deps(%struct.effect_parser* %0, %struct.dstr* %1, %struct.ep_func* %2) #0 {
  %4 = alloca %struct.effect_parser*, align 8
  %5 = alloca %struct.dstr*, align 8
  %6 = alloca %struct.ep_func*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.ep_sampler*, align 8
  store %struct.effect_parser* %0, %struct.effect_parser** %4, align 8
  store %struct.dstr* %1, %struct.dstr** %5, align 8
  store %struct.ep_func* %2, %struct.ep_func** %6, align 8
  store i64 0, i64* %7, align 8
  br label %10

10:                                               ; preds = %33, %3
  %11 = load i64, i64* %7, align 8
  %12 = load %struct.ep_func*, %struct.ep_func** %6, align 8
  %13 = getelementptr inbounds %struct.ep_func, %struct.ep_func* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ult i64 %11, %15
  br i1 %16, label %17, label %36

17:                                               ; preds = %10
  %18 = load %struct.ep_func*, %struct.ep_func** %6, align 8
  %19 = getelementptr inbounds %struct.ep_func, %struct.ep_func* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load i8**, i8*** %20, align 8
  %22 = load i64, i64* %7, align 8
  %23 = getelementptr inbounds i8*, i8** %21, i64 %22
  %24 = load i8*, i8** %23, align 8
  store i8* %24, i8** %8, align 8
  %25 = load %struct.effect_parser*, %struct.effect_parser** %4, align 8
  %26 = load i8*, i8** %8, align 8
  %27 = call %struct.ep_sampler* @ep_getsampler(%struct.effect_parser* %25, i8* %26)
  store %struct.ep_sampler* %27, %struct.ep_sampler** %9, align 8
  %28 = load %struct.dstr*, %struct.dstr** %5, align 8
  %29 = load %struct.ep_sampler*, %struct.ep_sampler** %9, align 8
  %30 = call i32 @ep_write_sampler(%struct.dstr* %28, %struct.ep_sampler* %29)
  %31 = load %struct.dstr*, %struct.dstr** %5, align 8
  %32 = call i32 @dstr_cat(%struct.dstr* %31, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %33

33:                                               ; preds = %17
  %34 = load i64, i64* %7, align 8
  %35 = add i64 %34, 1
  store i64 %35, i64* %7, align 8
  br label %10

36:                                               ; preds = %10
  ret void
}

declare dso_local %struct.ep_sampler* @ep_getsampler(%struct.effect_parser*, i8*) #1

declare dso_local i32 @ep_write_sampler(%struct.dstr*, %struct.ep_sampler*) #1

declare dso_local i32 @dstr_cat(%struct.dstr*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
