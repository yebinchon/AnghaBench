; ModuleID = '/home/carl/AnghaBench/mpv/audio/out/extr_ao_sndio.c_play.c'
source_filename = "/home/carl/AnghaBench/mpv/audio/out/extr_ao_sndio.c_play.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ao = type { i32, %struct.priv* }
%struct.priv = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ao*, i8**, i32, i32)* @play to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @play(%struct.ao* %0, i8** %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.ao*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.priv*, align 8
  %10 = alloca i32, align 4
  store %struct.ao* %0, %struct.ao** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.ao*, %struct.ao** %5, align 8
  %12 = getelementptr inbounds %struct.ao, %struct.ao* %11, i32 0, i32 1
  %13 = load %struct.priv*, %struct.priv** %12, align 8
  store %struct.priv* %13, %struct.priv** %9, align 8
  %14 = load %struct.priv*, %struct.priv** %9, align 8
  %15 = getelementptr inbounds %struct.priv, %struct.priv* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = load i8**, i8*** %6, align 8
  %18 = getelementptr inbounds i8*, i8** %17, i64 0
  %19 = load i8*, i8** %18, align 8
  %20 = load i32, i32* %7, align 4
  %21 = load %struct.ao*, %struct.ao** %5, align 8
  %22 = getelementptr inbounds %struct.ao, %struct.ao* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = mul nsw i32 %20, %23
  %25 = call i32 @sio_write(i32 %16, i8* %19, i32 %24)
  %26 = load %struct.ao*, %struct.ao** %5, align 8
  %27 = getelementptr inbounds %struct.ao, %struct.ao* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = sdiv i32 %25, %28
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %10, align 4
  %31 = load %struct.priv*, %struct.priv** %9, align 8
  %32 = getelementptr inbounds %struct.priv, %struct.priv* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = add nsw i32 %33, %30
  store i32 %34, i32* %32, align 4
  %35 = load %struct.priv*, %struct.priv** %9, align 8
  %36 = getelementptr inbounds %struct.priv, %struct.priv* %35, i32 0, i32 1
  store i32 1, i32* %36, align 4
  %37 = load i32, i32* %10, align 4
  ret i32 %37
}

declare dso_local i32 @sio_write(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
