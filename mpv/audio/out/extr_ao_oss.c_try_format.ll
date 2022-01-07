; ModuleID = '/home/carl/AnghaBench/mpv/audio/out/extr_ao_oss.c_try_format.c'
source_filename = "/home/carl/AnghaBench/mpv/audio/out/extr_ao_oss.c_try_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ao = type { %struct.priv* }
%struct.priv = type { i32 }

@AFMT_AC3 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Unknown/not supported internal format: %s\0A\00", align 1
@SNDCTL_DSP_SETFMT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"Can't set audio device to %s output.\0A\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"Unknown/Unsupported OSS format: 0x%x.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ao*, i32*)* @try_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @try_format(%struct.ao* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ao*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.priv*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ao* %0, %struct.ao** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load %struct.ao*, %struct.ao** %4, align 8
  %10 = getelementptr inbounds %struct.ao, %struct.ao* %9, i32 0, i32 0
  %11 = load %struct.priv*, %struct.priv** %10, align 8
  store %struct.priv* %11, %struct.priv** %6, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @format2oss(i32 %13)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp eq i32 %15, -1
  br i1 %16, label %17, label %24

17:                                               ; preds = %2
  %18 = load i32*, i32** %5, align 8
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @af_fmt_is_spdif(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = load i32, i32* @AFMT_AC3, align 4
  store i32 %23, i32* %7, align 4
  br label %24

24:                                               ; preds = %22, %17, %2
  %25 = load i32, i32* %7, align 4
  %26 = icmp eq i32 %25, -1
  br i1 %26, label %27, label %34

27:                                               ; preds = %24
  %28 = load %struct.ao*, %struct.ao** %4, align 8
  %29 = load i32*, i32** %5, align 8
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @af_fmt_to_str(i32 %30)
  %32 = call i32 @MP_VERBOSE(%struct.ao* %28, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %31)
  %33 = load i32*, i32** %5, align 8
  store i32 0, i32* %33, align 4
  store i32 0, i32* %3, align 4
  br label %68

34:                                               ; preds = %24
  %35 = load i32, i32* %7, align 4
  store i32 %35, i32* %8, align 4
  %36 = load %struct.priv*, %struct.priv** %6, align 8
  %37 = getelementptr inbounds %struct.priv, %struct.priv* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @SNDCTL_DSP_SETFMT, align 4
  %40 = call i64 @ioctl(i32 %38, i32 %39, i32* %8)
  %41 = icmp slt i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %34
  store i32 -1, i32* %8, align 4
  br label %43

43:                                               ; preds = %42, %34
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* %7, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %43
  store i32 1, i32* %3, align 4
  br label %68

48:                                               ; preds = %43
  %49 = load %struct.ao*, %struct.ao** %4, align 8
  %50 = load i32*, i32** %5, align 8
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @af_fmt_to_str(i32 %51)
  %53 = call i32 @MP_WARN(%struct.ao* %49, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %52)
  %54 = load i32, i32* %8, align 4
  %55 = call i32 @oss2format(i32 %54)
  %56 = load i32*, i32** %5, align 8
  store i32 %55, i32* %56, align 4
  %57 = load i32, i32* %8, align 4
  %58 = icmp ne i32 %57, -1
  br i1 %58, label %59, label %67

59:                                               ; preds = %48
  %60 = load i32*, i32** %5, align 8
  %61 = load i32, i32* %60, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %67, label %63

63:                                               ; preds = %59
  %64 = load %struct.ao*, %struct.ao** %4, align 8
  %65 = load i32, i32* %8, align 4
  %66 = call i32 @MP_ERR(%struct.ao* %64, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %65)
  br label %67

67:                                               ; preds = %63, %59, %48
  store i32 0, i32* %3, align 4
  br label %68

68:                                               ; preds = %67, %47, %27
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local i32 @format2oss(i32) #1

declare dso_local i64 @af_fmt_is_spdif(i32) #1

declare dso_local i32 @MP_VERBOSE(%struct.ao*, i8*, i32) #1

declare dso_local i32 @af_fmt_to_str(i32) #1

declare dso_local i64 @ioctl(i32, i32, i32*) #1

declare dso_local i32 @MP_WARN(%struct.ao*, i8*, i32) #1

declare dso_local i32 @oss2format(i32) #1

declare dso_local i32 @MP_ERR(%struct.ao*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
