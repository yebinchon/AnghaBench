; ModuleID = '/home/carl/AnghaBench/macvim/src/extr_os_vms.c_vul_item.c'
source_filename = "/home/carl/AnghaBench/macvim/src/extr_os_vms.c_vul_item.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i16, i16, i8*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i16, i16, i8*, i32*)* @vul_item to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vul_item(%struct.TYPE_3__* %0, i16 signext %1, i16 signext %2, i8* %3, i32* %4) #0 {
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i16, align 2
  %8 = alloca i16, align 2
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %6, align 8
  store i16 %1, i16* %7, align 2
  store i16 %2, i16* %8, align 2
  store i8* %3, i8** %9, align 8
  store i32* %4, i32** %10, align 8
  %11 = load i16, i16* %7, align 2
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  store i16 %11, i16* %13, align 8
  %14 = load i16, i16* %8, align 2
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 1
  store i16 %14, i16* %16, align 2
  %17 = load i8*, i8** %9, align 8
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 2
  store i8* %17, i8** %19, align 8
  %20 = load i32*, i32** %10, align 8
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 3
  store i32* %20, i32** %22, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
