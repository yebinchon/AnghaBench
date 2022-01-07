; ModuleID = '/home/carl/AnghaBench/mpv/audio/out/extr_ao_pcm.c_uninit.c'
source_filename = "/home/carl/AnghaBench/mpv/audio/out/extr_ao_pcm.c_uninit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ao = type { %struct.priv* }
%struct.priv = type { i32, i32, i64 }

@SEEK_SET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"Could not seek to start, WAV size headers not updated!\0A\00", align 1
@.str.1 = private unnamed_addr constant [61 x i8] c"File larger than allowed for WAV files, may play truncated!\0A\00", align 1
@FILE_TYPE_DISK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ao*)* @uninit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uninit(%struct.ao* %0) #0 {
  %2 = alloca %struct.ao*, align 8
  %3 = alloca %struct.priv*, align 8
  %4 = alloca i32, align 4
  store %struct.ao* %0, %struct.ao** %2, align 8
  %5 = load %struct.ao*, %struct.ao** %2, align 8
  %6 = getelementptr inbounds %struct.ao, %struct.ao* %5, i32 0, i32 0
  %7 = load %struct.priv*, %struct.priv** %6, align 8
  store %struct.priv* %7, %struct.priv** %3, align 8
  %8 = load %struct.priv*, %struct.priv** %3, align 8
  %9 = getelementptr inbounds %struct.priv, %struct.priv* %8, i32 0, i32 2
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %45

12:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %22, label %15

15:                                               ; preds = %12
  %16 = load %struct.priv*, %struct.priv** %3, align 8
  %17 = getelementptr inbounds %struct.priv, %struct.priv* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @SEEK_SET, align 4
  %20 = call i64 @fseek(i32 %18, i32 0, i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %15, %12
  %23 = load %struct.ao*, %struct.ao** %2, align 8
  %24 = call i32 @MP_ERR(%struct.ao* %23, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0))
  br label %44

25:                                               ; preds = %15
  %26 = load %struct.priv*, %struct.priv** %3, align 8
  %27 = getelementptr inbounds %struct.priv, %struct.priv* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp ugt i32 %28, -4096
  br i1 %29, label %30, label %35

30:                                               ; preds = %25
  %31 = load %struct.ao*, %struct.ao** %2, align 8
  %32 = call i32 @MP_ERR(%struct.ao* %31, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0))
  %33 = load %struct.priv*, %struct.priv** %3, align 8
  %34 = getelementptr inbounds %struct.priv, %struct.priv* %33, i32 0, i32 0
  store i32 -4096, i32* %34, align 8
  br label %35

35:                                               ; preds = %30, %25
  %36 = load %struct.ao*, %struct.ao** %2, align 8
  %37 = load %struct.priv*, %struct.priv** %3, align 8
  %38 = getelementptr inbounds %struct.priv, %struct.priv* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.priv*, %struct.priv** %3, align 8
  %41 = getelementptr inbounds %struct.priv, %struct.priv* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @write_wave_header(%struct.ao* %36, i32 %39, i32 %42)
  br label %44

44:                                               ; preds = %35, %22
  br label %45

45:                                               ; preds = %44, %1
  %46 = load %struct.priv*, %struct.priv** %3, align 8
  %47 = getelementptr inbounds %struct.priv, %struct.priv* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @fclose(i32 %48)
  ret void
}

declare dso_local i64 @fseek(i32, i32, i32) #1

declare dso_local i32 @MP_ERR(%struct.ao*, i8*) #1

declare dso_local i32 @write_wave_header(%struct.ao*, i32, i32) #1

declare dso_local i32 @fclose(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
