; ModuleID = '/home/carl/AnghaBench/php-src/ext/opcache/jit/libudis86/extr_decode.c_decode_opcode.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/opcache/jit/libudis86/extr_decode.c_decode_opcode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ud = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32* }

@UD_TAB__OPC_TABLE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ud*)* @decode_opcode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_opcode(%struct.ud* %0) #0 {
  %2 = alloca %struct.ud*, align 8
  %3 = alloca i32, align 4
  store %struct.ud* %0, %struct.ud** %2, align 8
  %4 = load %struct.ud*, %struct.ud** %2, align 8
  %5 = getelementptr inbounds %struct.ud, %struct.ud* %4, i32 0, i32 0
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @UD_TAB__OPC_TABLE, align 8
  %10 = icmp eq i64 %8, %9
  %11 = zext i1 %10 to i32
  %12 = call i32 @UD_ASSERT(i32 %11)
  %13 = load %struct.ud*, %struct.ud** %2, align 8
  %14 = call i32 @UD_RETURN_ON_ERROR(%struct.ud* %13)
  %15 = load %struct.ud*, %struct.ud** %2, align 8
  %16 = getelementptr inbounds %struct.ud, %struct.ud* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  %20 = load %struct.ud*, %struct.ud** %2, align 8
  %21 = call i64 @inp_curr(%struct.ud* %20)
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %3, align 4
  %24 = load %struct.ud*, %struct.ud** %2, align 8
  %25 = load i32, i32* %3, align 4
  %26 = call i32 @decode_ext(%struct.ud* %24, i32 %25)
  ret i32 %26
}

declare dso_local i32 @UD_ASSERT(i32) #1

declare dso_local i32 @UD_RETURN_ON_ERROR(%struct.ud*) #1

declare dso_local i64 @inp_curr(%struct.ud*) #1

declare dso_local i32 @decode_ext(%struct.ud*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
