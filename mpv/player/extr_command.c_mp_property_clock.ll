; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_command.c_mp_property_clock.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_command.c_mp_property_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.m_property = type { i32 }
%struct.tm = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"%H:%M\00", align 1
@M_PROPERTY_UNAVAILABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.m_property*, i32, i8*)* @mp_property_clock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mp_property_clock(i8* %0, %struct.m_property* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.m_property*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca [6 x i8], align 1
  %11 = alloca i32, align 4
  %12 = alloca %struct.tm*, align 8
  store i8* %0, i8** %6, align 8
  store %struct.m_property* %1, %struct.m_property** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %13 = call i32 @time(i32* null)
  store i32 %13, i32* %11, align 4
  %14 = call %struct.tm* @localtime(i32* %11)
  store %struct.tm* %14, %struct.tm** %12, align 8
  %15 = load %struct.tm*, %struct.tm** %12, align 8
  %16 = icmp ne %struct.tm* %15, null
  br i1 %16, label %17, label %27

17:                                               ; preds = %4
  %18 = getelementptr inbounds [6 x i8], [6 x i8]* %10, i64 0, i64 0
  %19 = load %struct.tm*, %struct.tm** %12, align 8
  %20 = call i32 @strftime(i8* %18, i32 6, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), %struct.tm* %19)
  %21 = icmp eq i32 %20, 5
  br i1 %21, label %22, label %27

22:                                               ; preds = %17
  %23 = load i32, i32* %8, align 4
  %24 = load i8*, i8** %9, align 8
  %25 = getelementptr inbounds [6 x i8], [6 x i8]* %10, i64 0, i64 0
  %26 = call i32 @m_property_strdup_ro(i32 %23, i8* %24, i8* %25)
  store i32 %26, i32* %5, align 4
  br label %29

27:                                               ; preds = %17, %4
  %28 = load i32, i32* @M_PROPERTY_UNAVAILABLE, align 4
  store i32 %28, i32* %5, align 4
  br label %29

29:                                               ; preds = %27, %22
  %30 = load i32, i32* %5, align 4
  ret i32 %30
}

declare dso_local i32 @time(i32*) #1

declare dso_local %struct.tm* @localtime(i32*) #1

declare dso_local i32 @strftime(i8*, i32, i8*, %struct.tm*) #1

declare dso_local i32 @m_property_strdup_ro(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
