; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_command.c_check_property_scalable.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_command.c_check_property_scalable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MPContext = type { i32 }
%struct.m_option = type { i32*, i32 }

@M_PROPERTY_GET_TYPE = common dso_local global i32 0, align 4
@m_option_type_float = common dso_local global i32 0, align 4
@m_option_type_double = common dso_local global i32 0, align 4
@m_option_type_time = common dso_local global i32 0, align 4
@m_option_type_aspect = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.MPContext*)* @check_property_scalable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_property_scalable(i8* %0, %struct.MPContext* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.MPContext*, align 8
  %6 = alloca %struct.m_option, align 8
  store i8* %0, i8** %4, align 8
  store %struct.MPContext* %1, %struct.MPContext** %5, align 8
  %7 = bitcast %struct.m_option* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %7, i8 0, i64 16, i1 false)
  %8 = load i8*, i8** %4, align 8
  %9 = load i32, i32* @M_PROPERTY_GET_TYPE, align 4
  %10 = load %struct.MPContext*, %struct.MPContext** %5, align 8
  %11 = call i64 @mp_property_do(i8* %8, i32 %9, %struct.m_option* %6, %struct.MPContext* %10)
  %12 = icmp sle i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %33

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.m_option, %struct.m_option* %6, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = icmp eq i32* %16, @m_option_type_float
  br i1 %17, label %30, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.m_option, %struct.m_option* %6, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = icmp eq i32* %20, @m_option_type_double
  br i1 %21, label %30, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.m_option, %struct.m_option* %6, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = icmp eq i32* %24, @m_option_type_time
  br i1 %25, label %30, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.m_option, %struct.m_option* %6, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = icmp eq i32* %28, @m_option_type_aspect
  br label %30

30:                                               ; preds = %26, %22, %18, %14
  %31 = phi i1 [ true, %22 ], [ true, %18 ], [ true, %14 ], [ %29, %26 ]
  %32 = zext i1 %31 to i32
  store i32 %32, i32* %3, align 4
  br label %33

33:                                               ; preds = %30, %13
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @mp_property_do(i8*, i32, %struct.m_option*, %struct.MPContext*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
