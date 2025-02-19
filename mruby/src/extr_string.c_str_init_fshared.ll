; ModuleID = '/home/carl/AnghaBench/mruby/src/extr_string.c_str_init_fshared.c'
source_filename = "/home/carl/AnghaBench/mruby/src/extr_string.c_str_init_fshared.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.RString = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { %struct.RString* }

@FSHARED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.RString* (%struct.RString*, %struct.RString*, %struct.RString*)* @str_init_fshared to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.RString* @str_init_fshared(%struct.RString* %0, %struct.RString* %1, %struct.RString* %2) #0 {
  %4 = alloca %struct.RString*, align 8
  %5 = alloca %struct.RString*, align 8
  %6 = alloca %struct.RString*, align 8
  store %struct.RString* %0, %struct.RString** %4, align 8
  store %struct.RString* %1, %struct.RString** %5, align 8
  store %struct.RString* %2, %struct.RString** %6, align 8
  %7 = load %struct.RString*, %struct.RString** %4, align 8
  %8 = getelementptr inbounds %struct.RString, %struct.RString* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.RString*, %struct.RString** %5, align 8
  %13 = getelementptr inbounds %struct.RString, %struct.RString* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 2
  store i32 %11, i32* %15, align 4
  %16 = load %struct.RString*, %struct.RString** %4, align 8
  %17 = getelementptr inbounds %struct.RString, %struct.RString* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.RString*, %struct.RString** %5, align 8
  %22 = getelementptr inbounds %struct.RString, %struct.RString* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 1
  store i32 %20, i32* %24, align 8
  %25 = load %struct.RString*, %struct.RString** %6, align 8
  %26 = load %struct.RString*, %struct.RString** %5, align 8
  %27 = getelementptr inbounds %struct.RString, %struct.RString* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  store %struct.RString* %25, %struct.RString** %30, align 8
  %31 = load %struct.RString*, %struct.RString** %5, align 8
  %32 = load i32, i32* @FSHARED, align 4
  %33 = call i32 @RSTR_SET_TYPE_FLAG(%struct.RString* %31, i32 %32)
  %34 = load %struct.RString*, %struct.RString** %5, align 8
  ret %struct.RString* %34
}

declare dso_local i32 @RSTR_SET_TYPE_FLAG(%struct.RString*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
