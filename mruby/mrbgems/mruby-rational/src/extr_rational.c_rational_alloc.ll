; ModuleID = '/home/carl/AnghaBench/mruby/mrbgems/mruby-rational/src/extr_rational.c_rational_alloc.c'
source_filename = "/home/carl/AnghaBench/mruby/mrbgems/mruby-rational/src/extr_rational.c_rational_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.RBasic = type { i32 }
%struct.RClass = type { i32 }
%struct.mrb_rational = type { i32 }
%struct.RIStruct = type { i64 }

@MRB_TT_ISTRUCT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.RBasic* (i32*, %struct.RClass*, %struct.mrb_rational**)* @rational_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.RBasic* @rational_alloc(i32* %0, %struct.RClass* %1, %struct.mrb_rational** %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.RClass*, align 8
  %6 = alloca %struct.mrb_rational**, align 8
  %7 = alloca %struct.RIStruct*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.RClass* %1, %struct.RClass** %5, align 8
  store %struct.mrb_rational** %2, %struct.mrb_rational*** %6, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = load i32, i32* @MRB_TT_ISTRUCT, align 4
  %10 = load %struct.RClass*, %struct.RClass** %5, align 8
  %11 = call i64 @mrb_obj_alloc(i32* %8, i32 %9, %struct.RClass* %10)
  %12 = inttoptr i64 %11 to %struct.RIStruct*
  store %struct.RIStruct* %12, %struct.RIStruct** %7, align 8
  %13 = load %struct.RIStruct*, %struct.RIStruct** %7, align 8
  %14 = getelementptr inbounds %struct.RIStruct, %struct.RIStruct* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.mrb_rational*
  %17 = load %struct.mrb_rational**, %struct.mrb_rational*** %6, align 8
  store %struct.mrb_rational* %16, %struct.mrb_rational** %17, align 8
  %18 = load %struct.RIStruct*, %struct.RIStruct** %7, align 8
  %19 = bitcast %struct.RIStruct* %18 to %struct.RBasic*
  ret %struct.RBasic* %19
}

declare dso_local i64 @mrb_obj_alloc(i32*, i32, %struct.RClass*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
