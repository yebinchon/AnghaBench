; ModuleID = '/home/carl/AnghaBench/mpv/sub/extr_sd_ass.c_add_subtitle_fonts.c'
source_filename = "/home/carl/AnghaBench/mpv/sub/extr_sd_ass.c_add_subtitle_fonts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sd = type { i32, %struct.TYPE_2__*, %struct.mp_subtitle_opts*, %struct.sd_ass_priv* }
%struct.TYPE_2__ = type { i32, %struct.demux_attachment* }
%struct.demux_attachment = type { i32, i32, i32 }
%struct.mp_subtitle_opts = type { i32, i32 }
%struct.sd_ass_priv = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sd*)* @add_subtitle_fonts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_subtitle_fonts(%struct.sd* %0) #0 {
  %2 = alloca %struct.sd*, align 8
  %3 = alloca %struct.sd_ass_priv*, align 8
  %4 = alloca %struct.mp_subtitle_opts*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.demux_attachment*, align 8
  store %struct.sd* %0, %struct.sd** %2, align 8
  %7 = load %struct.sd*, %struct.sd** %2, align 8
  %8 = getelementptr inbounds %struct.sd, %struct.sd* %7, i32 0, i32 3
  %9 = load %struct.sd_ass_priv*, %struct.sd_ass_priv** %8, align 8
  store %struct.sd_ass_priv* %9, %struct.sd_ass_priv** %3, align 8
  %10 = load %struct.sd*, %struct.sd** %2, align 8
  %11 = getelementptr inbounds %struct.sd, %struct.sd* %10, i32 0, i32 2
  %12 = load %struct.mp_subtitle_opts*, %struct.mp_subtitle_opts** %11, align 8
  store %struct.mp_subtitle_opts* %12, %struct.mp_subtitle_opts** %4, align 8
  %13 = load %struct.mp_subtitle_opts*, %struct.mp_subtitle_opts** %4, align 8
  %14 = getelementptr inbounds %struct.mp_subtitle_opts, %struct.mp_subtitle_opts* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %27

17:                                               ; preds = %1
  %18 = load %struct.mp_subtitle_opts*, %struct.mp_subtitle_opts** %4, align 8
  %19 = getelementptr inbounds %struct.mp_subtitle_opts, %struct.mp_subtitle_opts* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %17
  %23 = load %struct.sd*, %struct.sd** %2, align 8
  %24 = getelementptr inbounds %struct.sd, %struct.sd* %23, i32 0, i32 1
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = icmp ne %struct.TYPE_2__* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %22, %17, %1
  br label %70

28:                                               ; preds = %22
  store i32 0, i32* %5, align 4
  br label %29

29:                                               ; preds = %67, %28
  %30 = load i32, i32* %5, align 4
  %31 = load %struct.sd*, %struct.sd** %2, align 8
  %32 = getelementptr inbounds %struct.sd, %struct.sd* %31, i32 0, i32 1
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp slt i32 %30, %35
  br i1 %36, label %37, label %70

37:                                               ; preds = %29
  %38 = load %struct.sd*, %struct.sd** %2, align 8
  %39 = getelementptr inbounds %struct.sd, %struct.sd* %38, i32 0, i32 1
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  %42 = load %struct.demux_attachment*, %struct.demux_attachment** %41, align 8
  %43 = load i32, i32* %5, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.demux_attachment, %struct.demux_attachment* %42, i64 %44
  store %struct.demux_attachment* %45, %struct.demux_attachment** %6, align 8
  %46 = load %struct.sd*, %struct.sd** %2, align 8
  %47 = getelementptr inbounds %struct.sd, %struct.sd* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.demux_attachment*, %struct.demux_attachment** %6, align 8
  %50 = call i64 @attachment_is_font(i32 %48, %struct.demux_attachment* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %66

52:                                               ; preds = %37
  %53 = load %struct.sd_ass_priv*, %struct.sd_ass_priv** %3, align 8
  %54 = getelementptr inbounds %struct.sd_ass_priv, %struct.sd_ass_priv* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.demux_attachment*, %struct.demux_attachment** %6, align 8
  %57 = getelementptr inbounds %struct.demux_attachment, %struct.demux_attachment* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.demux_attachment*, %struct.demux_attachment** %6, align 8
  %60 = getelementptr inbounds %struct.demux_attachment, %struct.demux_attachment* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.demux_attachment*, %struct.demux_attachment** %6, align 8
  %63 = getelementptr inbounds %struct.demux_attachment, %struct.demux_attachment* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @ass_add_font(i32 %55, i32 %58, i32 %61, i32 %64)
  br label %66

66:                                               ; preds = %52, %37
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %5, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %5, align 4
  br label %29

70:                                               ; preds = %27, %29
  ret void
}

declare dso_local i64 @attachment_is_font(i32, %struct.demux_attachment*) #1

declare dso_local i32 @ass_add_font(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
