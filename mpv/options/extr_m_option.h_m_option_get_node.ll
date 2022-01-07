; ModuleID = '/home/carl/AnghaBench/mpv/options/extr_m_option.h_m_option_get_node.c'
source_filename = "/home/carl/AnghaBench/mpv/options/extr_m_option.h_m_option_get_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { {}* }
%struct.mpv_node = type { i32 }

@M_OPT_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i8*, %struct.mpv_node*, i8*)* @m_option_get_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @m_option_get_node(%struct.TYPE_6__* %0, i8* %1, %struct.mpv_node* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.mpv_node*, align 8
  %9 = alloca i8*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.mpv_node* %2, %struct.mpv_node** %8, align 8
  store i8* %3, i8** %9, align 8
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = bitcast {}** %13 to i32 (%struct.TYPE_6__*, i8*, %struct.mpv_node*, i8*)**
  %15 = load i32 (%struct.TYPE_6__*, i8*, %struct.mpv_node*, i8*)*, i32 (%struct.TYPE_6__*, i8*, %struct.mpv_node*, i8*)** %14, align 8
  %16 = icmp ne i32 (%struct.TYPE_6__*, i8*, %struct.mpv_node*, i8*)* %15, null
  br i1 %16, label %17, label %29

17:                                               ; preds = %4
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = bitcast {}** %21 to i32 (%struct.TYPE_6__*, i8*, %struct.mpv_node*, i8*)**
  %23 = load i32 (%struct.TYPE_6__*, i8*, %struct.mpv_node*, i8*)*, i32 (%struct.TYPE_6__*, i8*, %struct.mpv_node*, i8*)** %22, align 8
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %25 = load i8*, i8** %7, align 8
  %26 = load %struct.mpv_node*, %struct.mpv_node** %8, align 8
  %27 = load i8*, i8** %9, align 8
  %28 = call i32 %23(%struct.TYPE_6__* %24, i8* %25, %struct.mpv_node* %26, i8* %27)
  store i32 %28, i32* %5, align 4
  br label %31

29:                                               ; preds = %4
  %30 = load i32, i32* @M_OPT_UNKNOWN, align 4
  store i32 %30, i32* %5, align 4
  br label %31

31:                                               ; preds = %29, %17
  %32 = load i32, i32* %5, align 4
  ret i32 %32
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
