; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_command.c_mp_property_vo_flag.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_command.c_mp_property_vo_flag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.m_property = type { i32 }
%struct.TYPE_4__ = type { i64 }

@M_PROPERTY_SET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.m_property*, i32, i8*, i32, i32*, %struct.TYPE_4__*)* @mp_property_vo_flag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mp_property_vo_flag(%struct.m_property* %0, i32 %1, i8* %2, i32 %3, i32* %4, %struct.TYPE_4__* %5) #0 {
  %7 = alloca %struct.m_property*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_4__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.m_property* %0, %struct.m_property** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store %struct.TYPE_4__* %5, %struct.TYPE_4__** %12, align 8
  %15 = load i32*, i32** %11, align 8
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %13, align 4
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %18 = load %struct.m_property*, %struct.m_property** %7, align 8
  %19 = load i32, i32* %8, align 4
  %20 = load i8*, i8** %9, align 8
  %21 = call i32 @mp_property_generic_option(%struct.TYPE_4__* %17, %struct.m_property* %18, i32 %19, i8* %20)
  store i32 %21, i32* %14, align 4
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* @M_PROPERTY_SET, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %42

25:                                               ; preds = %6
  %26 = load i32, i32* %13, align 4
  %27 = load i32*, i32** %11, align 8
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %26, %28
  br i1 %29, label %30, label %42

30:                                               ; preds = %25
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %30
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i32, i32* %10, align 4
  %40 = call i32 @vo_control(i64 %38, i32 %39, i32 0)
  br label %41

41:                                               ; preds = %35, %30
  br label %42

42:                                               ; preds = %41, %25, %6
  %43 = load i32, i32* %14, align 4
  ret i32 %43
}

declare dso_local i32 @mp_property_generic_option(%struct.TYPE_4__*, %struct.m_property*, i32, i8*) #1

declare dso_local i32 @vo_control(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
