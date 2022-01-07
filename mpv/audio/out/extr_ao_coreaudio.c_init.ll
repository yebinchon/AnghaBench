; ModuleID = '/home/carl/AnghaBench/mpv/audio/out/extr_ao_coreaudio.c_init.c'
source_filename = "/home/carl/AnghaBench/mpv/audio/out/extr_ao_coreaudio.c_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ao = type { i32, i8*, i32, %struct.priv* }
%struct.priv = type { i32, i64 }

@AO_INIT_EXCLUSIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"redirecting to coreaudio_exclusive\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"coreaudio_exclusive\00", align 1
@CONTROL_ERROR = common dso_local global i32 0, align 4
@CONTROL_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ao*)* @init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init(%struct.ao* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ao*, align 8
  %4 = alloca %struct.priv*, align 8
  %5 = alloca i32, align 4
  store %struct.ao* %0, %struct.ao** %3, align 8
  %6 = load %struct.ao*, %struct.ao** %3, align 8
  %7 = getelementptr inbounds %struct.ao, %struct.ao* %6, i32 0, i32 3
  %8 = load %struct.priv*, %struct.priv** %7, align 8
  store %struct.priv* %8, %struct.priv** %4, align 8
  %9 = load %struct.ao*, %struct.ao** %3, align 8
  %10 = getelementptr inbounds %struct.ao, %struct.ao* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @af_fmt_is_pcm(i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %1
  %15 = load %struct.ao*, %struct.ao** %3, align 8
  %16 = getelementptr inbounds %struct.ao, %struct.ao* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @AO_INIT_EXCLUSIVE, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %14, %1
  %22 = load %struct.ao*, %struct.ao** %3, align 8
  %23 = call i32 @MP_VERBOSE(%struct.ao* %22, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %24 = load %struct.ao*, %struct.ao** %3, align 8
  %25 = getelementptr inbounds %struct.ao, %struct.ao* %24, i32 0, i32 1
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i8** %25, align 8
  %26 = load i32, i32* @CONTROL_ERROR, align 4
  store i32 %26, i32* %2, align 4
  br label %60

27:                                               ; preds = %14
  %28 = load %struct.ao*, %struct.ao** %3, align 8
  %29 = call i32 @reinit_device(%struct.ao* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %27
  br label %58

32:                                               ; preds = %27
  %33 = load %struct.priv*, %struct.priv** %4, align 8
  %34 = getelementptr inbounds %struct.priv, %struct.priv* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %32
  %38 = load %struct.ao*, %struct.ao** %3, align 8
  %39 = call i32 @init_physical_format(%struct.ao* %38)
  br label %40

40:                                               ; preds = %37, %32
  %41 = load %struct.ao*, %struct.ao** %3, align 8
  %42 = load %struct.priv*, %struct.priv** %4, align 8
  %43 = getelementptr inbounds %struct.priv, %struct.priv* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @ca_init_chmap(%struct.ao* %41, i32 %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %40
  br label %58

48:                                               ; preds = %40
  %49 = load %struct.ao*, %struct.ao** %3, align 8
  %50 = call i32 @ca_fill_asbd(%struct.ao* %49, i32* %5)
  %51 = load %struct.ao*, %struct.ao** %3, align 8
  %52 = load i32, i32* %5, align 4
  %53 = call i32 @init_audiounit(%struct.ao* %51, i32 %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %48
  br label %58

56:                                               ; preds = %48
  %57 = load i32, i32* @CONTROL_OK, align 4
  store i32 %57, i32* %2, align 4
  br label %60

58:                                               ; preds = %55, %47, %31
  %59 = load i32, i32* @CONTROL_ERROR, align 4
  store i32 %59, i32* %2, align 4
  br label %60

60:                                               ; preds = %58, %56, %21
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local i32 @af_fmt_is_pcm(i32) #1

declare dso_local i32 @MP_VERBOSE(%struct.ao*, i8*) #1

declare dso_local i32 @reinit_device(%struct.ao*) #1

declare dso_local i32 @init_physical_format(%struct.ao*) #1

declare dso_local i32 @ca_init_chmap(%struct.ao*, i32) #1

declare dso_local i32 @ca_fill_asbd(%struct.ao*, i32*) #1

declare dso_local i32 @init_audiounit(%struct.ao*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
