; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_command.c_mp_property_sub_pos.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_command.c_mp_property_sub_pos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.m_property = type { i32 }
%struct.TYPE_5__ = type { %struct.MPOpts* }
%struct.MPOpts = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@M_PROPERTY_PRINT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"%d/100\00", align 1
@M_PROPERTY_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.m_property*, i32, i8*)* @mp_property_sub_pos to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mp_property_sub_pos(i8* %0, %struct.m_property* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.m_property*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_5__*, align 8
  %11 = alloca %struct.MPOpts*, align 8
  store i8* %0, i8** %6, align 8
  store %struct.m_property* %1, %struct.m_property** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = bitcast i8* %12 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %13, %struct.TYPE_5__** %10, align 8
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load %struct.MPOpts*, %struct.MPOpts** %15, align 8
  store %struct.MPOpts* %16, %struct.MPOpts** %11, align 8
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* @M_PROPERTY_PRINT, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %30

20:                                               ; preds = %4
  %21 = load %struct.MPOpts*, %struct.MPOpts** %11, align 8
  %22 = getelementptr inbounds %struct.MPOpts, %struct.MPOpts* %21, i32 0, i32 0
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i8* @talloc_asprintf(i32* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = load i8*, i8** %9, align 8
  %28 = bitcast i8* %27 to i8**
  store i8* %26, i8** %28, align 8
  %29 = load i32, i32* @M_PROPERTY_OK, align 4
  store i32 %29, i32* %5, align 4
  br label %36

30:                                               ; preds = %4
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %32 = load %struct.m_property*, %struct.m_property** %7, align 8
  %33 = load i32, i32* %8, align 4
  %34 = load i8*, i8** %9, align 8
  %35 = call i32 @mp_property_generic_option(%struct.TYPE_5__* %31, %struct.m_property* %32, i32 %33, i8* %34)
  store i32 %35, i32* %5, align 4
  br label %36

36:                                               ; preds = %30, %20
  %37 = load i32, i32* %5, align 4
  ret i32 %37
}

declare dso_local i8* @talloc_asprintf(i32*, i8*, i32) #1

declare dso_local i32 @mp_property_generic_option(%struct.TYPE_5__*, %struct.m_property*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
