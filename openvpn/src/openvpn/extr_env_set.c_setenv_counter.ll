; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_env_set.c_setenv_counter.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_env_set.c_setenv_counter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.env_set = type { i32 }

@counter_format = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @setenv_counter(%struct.env_set* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.env_set*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [64 x i8], align 16
  store %struct.env_set* %0, %struct.env_set** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  %9 = load i32, i32* @counter_format, align 4
  %10 = load i32, i32* %6, align 4
  %11 = call i32 @openvpn_snprintf(i8* %8, i32 64, i32 %9, i32 %10)
  %12 = load %struct.env_set*, %struct.env_set** %4, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  %15 = call i32 @setenv_str(%struct.env_set* %12, i8* %13, i8* %14)
  ret void
}

declare dso_local i32 @openvpn_snprintf(i8*, i32, i32, i32) #1

declare dso_local i32 @setenv_str(%struct.env_set*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
