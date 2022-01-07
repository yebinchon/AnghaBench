; ModuleID = '/home/carl/AnghaBench/nuklear/example/extr_file_browser.c_device_shutdown.c'
source_filename = "/home/carl/AnghaBench/nuklear/example/extr_file_browser.c_device_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*)* @device_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @device_shutdown(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  store %struct.device* %0, %struct.device** %2, align 8
  %3 = load %struct.device*, %struct.device** %2, align 8
  %4 = getelementptr inbounds %struct.device, %struct.device* %3, i32 0, i32 4
  %5 = load i32, i32* %4, align 4
  %6 = load %struct.device*, %struct.device** %2, align 8
  %7 = getelementptr inbounds %struct.device, %struct.device* %6, i32 0, i32 6
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @glDetachShader(i32 %5, i32 %8)
  %10 = load %struct.device*, %struct.device** %2, align 8
  %11 = getelementptr inbounds %struct.device, %struct.device* %10, i32 0, i32 4
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.device*, %struct.device** %2, align 8
  %14 = getelementptr inbounds %struct.device, %struct.device* %13, i32 0, i32 5
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @glDetachShader(i32 %12, i32 %15)
  %17 = load %struct.device*, %struct.device** %2, align 8
  %18 = getelementptr inbounds %struct.device, %struct.device* %17, i32 0, i32 6
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @glDeleteShader(i32 %19)
  %21 = load %struct.device*, %struct.device** %2, align 8
  %22 = getelementptr inbounds %struct.device, %struct.device* %21, i32 0, i32 5
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @glDeleteShader(i32 %23)
  %25 = load %struct.device*, %struct.device** %2, align 8
  %26 = getelementptr inbounds %struct.device, %struct.device* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @glDeleteProgram(i32 %27)
  %29 = load %struct.device*, %struct.device** %2, align 8
  %30 = getelementptr inbounds %struct.device, %struct.device* %29, i32 0, i32 3
  %31 = call i32 @glDeleteTextures(i32 1, i32* %30)
  %32 = load %struct.device*, %struct.device** %2, align 8
  %33 = getelementptr inbounds %struct.device, %struct.device* %32, i32 0, i32 2
  %34 = call i32 @glDeleteBuffers(i32 1, i32* %33)
  %35 = load %struct.device*, %struct.device** %2, align 8
  %36 = getelementptr inbounds %struct.device, %struct.device* %35, i32 0, i32 1
  %37 = call i32 @glDeleteBuffers(i32 1, i32* %36)
  %38 = load %struct.device*, %struct.device** %2, align 8
  %39 = getelementptr inbounds %struct.device, %struct.device* %38, i32 0, i32 0
  %40 = call i32 @nk_buffer_free(i32* %39)
  ret void
}

declare dso_local i32 @glDetachShader(i32, i32) #1

declare dso_local i32 @glDeleteShader(i32) #1

declare dso_local i32 @glDeleteProgram(i32) #1

declare dso_local i32 @glDeleteTextures(i32, i32*) #1

declare dso_local i32 @glDeleteBuffers(i32, i32*) #1

declare dso_local i32 @nk_buffer_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
