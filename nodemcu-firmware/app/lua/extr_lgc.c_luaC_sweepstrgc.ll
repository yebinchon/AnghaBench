; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/lua/extr_lgc.c_luaC_sweepstrgc.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/lua/extr_lgc.c_luaC_sweepstrgc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }

@GCSsweepstring = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @luaC_sweepstrgc(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  store i32* %0, i32** %3, align 8
  %5 = load i32*, i32** %3, align 8
  %6 = call %struct.TYPE_4__* @G(i32* %5)
  store %struct.TYPE_4__* %6, %struct.TYPE_4__** %4, align 8
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @GCSsweepstring, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %23

12:                                               ; preds = %1
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %14 = load i32*, i32** %3, align 8
  %15 = call i32 @sweepstrstep(%struct.TYPE_4__* %13, i32* %14)
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @GCSsweepstring, align 8
  %20 = icmp eq i64 %18, %19
  %21 = zext i1 %20 to i64
  %22 = select i1 %20, i32 1, i32 0
  store i32 %22, i32* %2, align 4
  br label %24

23:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %24

24:                                               ; preds = %23, %12
  %25 = load i32, i32* %2, align 4
  ret i32 %25
}

declare dso_local %struct.TYPE_4__* @G(i32*) #1

declare dso_local i32 @sweepstrstep(%struct.TYPE_4__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
