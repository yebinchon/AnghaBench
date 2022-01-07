; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_command.c_mp_property_do_silent.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_command.c_mp_property_do_silent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MPContext = type { i32, %struct.command_ctx* }
%struct.command_ctx = type { i32, i32 }

@M_PROPERTY_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i8*, %struct.MPContext*)* @mp_property_do_silent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mp_property_do_silent(i8* %0, i32 %1, i8* %2, %struct.MPContext* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.MPContext*, align 8
  %9 = alloca %struct.command_ctx*, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store %struct.MPContext* %3, %struct.MPContext** %8, align 8
  %11 = load %struct.MPContext*, %struct.MPContext** %8, align 8
  %12 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %11, i32 0, i32 1
  %13 = load %struct.command_ctx*, %struct.command_ctx** %12, align 8
  store %struct.command_ctx* %13, %struct.command_ctx** %9, align 8
  %14 = load %struct.command_ctx*, %struct.command_ctx** %9, align 8
  %15 = getelementptr inbounds %struct.command_ctx, %struct.command_ctx* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %15, align 4
  %18 = load %struct.MPContext*, %struct.MPContext** %8, align 8
  %19 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.command_ctx*, %struct.command_ctx** %9, align 8
  %22 = getelementptr inbounds %struct.command_ctx, %struct.command_ctx* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i8*, i8** %5, align 8
  %25 = load i32, i32* %6, align 4
  %26 = load i8*, i8** %7, align 8
  %27 = load %struct.MPContext*, %struct.MPContext** %8, align 8
  %28 = call i32 @m_property_do(i32 %20, i32 %23, i8* %24, i32 %25, i8* %26, %struct.MPContext* %27)
  store i32 %28, i32* %10, align 4
  %29 = load %struct.command_ctx*, %struct.command_ctx** %9, align 8
  %30 = getelementptr inbounds %struct.command_ctx, %struct.command_ctx* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = sub nsw i32 %31, 1
  store i32 %32, i32* %30, align 4
  %33 = load i32, i32* %10, align 4
  %34 = load i32, i32* @M_PROPERTY_OK, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %45

36:                                               ; preds = %4
  %37 = load i32, i32* %6, align 4
  %38 = load i8*, i8** %7, align 8
  %39 = call i64 @is_property_set(i32 %37, i8* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %36
  %42 = load %struct.MPContext*, %struct.MPContext** %8, align 8
  %43 = load i8*, i8** %5, align 8
  %44 = call i32 @mp_notify_property(%struct.MPContext* %42, i8* %43)
  br label %45

45:                                               ; preds = %41, %36, %4
  %46 = load i32, i32* %10, align 4
  ret i32 %46
}

declare dso_local i32 @m_property_do(i32, i32, i8*, i32, i8*, %struct.MPContext*) #1

declare dso_local i64 @is_property_set(i32, i8*) #1

declare dso_local i32 @mp_notify_property(%struct.MPContext*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
