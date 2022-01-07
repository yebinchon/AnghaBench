; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_ssl.c_random_bytes_to_buf.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_ssl.c_random_bytes_to_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer = type { i32 }

@M_FATAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [78 x i8] c"ERROR: Random number generator cannot obtain entropy for key generation [SSL]\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.buffer*, i32*, i32)* @random_bytes_to_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @random_bytes_to_buf(%struct.buffer* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.buffer*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.buffer* %0, %struct.buffer** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load i32*, i32** %6, align 8
  %9 = load i32, i32* %7, align 4
  %10 = call i32 @rand_bytes(i32* %8, i32 %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %3
  %13 = load i32, i32* @M_FATAL, align 4
  %14 = call i32 @msg(i32 %13, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str, i64 0, i64 0))
  br label %15

15:                                               ; preds = %12, %3
  %16 = load %struct.buffer*, %struct.buffer** %5, align 8
  %17 = load i32*, i32** %6, align 8
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @buf_write(%struct.buffer* %16, i32* %17, i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %15
  store i32 0, i32* %4, align 4
  br label %23

22:                                               ; preds = %15
  store i32 1, i32* %4, align 4
  br label %23

23:                                               ; preds = %22, %21
  %24 = load i32, i32* %4, align 4
  ret i32 %24
}

declare dso_local i32 @rand_bytes(i32*, i32) #1

declare dso_local i32 @msg(i32, i8*) #1

declare dso_local i32 @buf_write(%struct.buffer*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
