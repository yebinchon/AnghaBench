; ModuleID = '/home/carl/AnghaBench/mpv/sub/extr_sd_ass.c_enable_output.c'
source_filename = "/home/carl/AnghaBench/mpv/sub/extr_sd_ass.c_enable_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sd = type { i32, i32, %struct.TYPE_2__*, %struct.sd_ass_priv* }
%struct.TYPE_2__ = type { i32 }
%struct.sd_ass_priv = type { i32*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sd*, i32)* @enable_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @enable_output(%struct.sd* %0, i32 %1) #0 {
  %3 = alloca %struct.sd*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sd_ass_priv*, align 8
  store %struct.sd* %0, %struct.sd** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.sd*, %struct.sd** %3, align 8
  %7 = getelementptr inbounds %struct.sd, %struct.sd* %6, i32 0, i32 3
  %8 = load %struct.sd_ass_priv*, %struct.sd_ass_priv** %7, align 8
  store %struct.sd_ass_priv* %8, %struct.sd_ass_priv** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = load %struct.sd_ass_priv*, %struct.sd_ass_priv** %5, align 8
  %11 = getelementptr inbounds %struct.sd_ass_priv, %struct.sd_ass_priv* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = icmp ne i32* %12, null
  %14 = xor i1 %13, true
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  %17 = icmp eq i32 %9, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  br label %53

19:                                               ; preds = %2
  %20 = load %struct.sd_ass_priv*, %struct.sd_ass_priv** %5, align 8
  %21 = getelementptr inbounds %struct.sd_ass_priv, %struct.sd_ass_priv* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %31

24:                                               ; preds = %19
  %25 = load %struct.sd_ass_priv*, %struct.sd_ass_priv** %5, align 8
  %26 = getelementptr inbounds %struct.sd_ass_priv, %struct.sd_ass_priv* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = call i32 @ass_renderer_done(i32* %27)
  %29 = load %struct.sd_ass_priv*, %struct.sd_ass_priv** %5, align 8
  %30 = getelementptr inbounds %struct.sd_ass_priv, %struct.sd_ass_priv* %29, i32 0, i32 0
  store i32* null, i32** %30, align 8
  br label %53

31:                                               ; preds = %19
  %32 = load %struct.sd_ass_priv*, %struct.sd_ass_priv** %5, align 8
  %33 = getelementptr inbounds %struct.sd_ass_priv, %struct.sd_ass_priv* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = call i32* @ass_renderer_init(i32 %34)
  %36 = load %struct.sd_ass_priv*, %struct.sd_ass_priv** %5, align 8
  %37 = getelementptr inbounds %struct.sd_ass_priv, %struct.sd_ass_priv* %36, i32 0, i32 0
  store i32* %35, i32** %37, align 8
  %38 = load %struct.sd_ass_priv*, %struct.sd_ass_priv** %5, align 8
  %39 = getelementptr inbounds %struct.sd_ass_priv, %struct.sd_ass_priv* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = load %struct.sd*, %struct.sd** %3, align 8
  %42 = getelementptr inbounds %struct.sd, %struct.sd* %41, i32 0, i32 2
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.sd*, %struct.sd** %3, align 8
  %47 = getelementptr inbounds %struct.sd, %struct.sd* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.sd*, %struct.sd** %3, align 8
  %50 = getelementptr inbounds %struct.sd, %struct.sd* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @mp_ass_configure_fonts(i32* %40, i32 %45, i32 %48, i32 %51)
  br label %53

53:                                               ; preds = %18, %31, %24
  ret void
}

declare dso_local i32 @ass_renderer_done(i32*) #1

declare dso_local i32* @ass_renderer_init(i32) #1

declare dso_local i32 @mp_ass_configure_fonts(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
