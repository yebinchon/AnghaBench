; ModuleID = '/home/carl/AnghaBench/php-src/ext/opcache/jit/libudis86/extr_udis86.c_ud_init.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/opcache/jit/libudis86/extr_udis86.c_ud_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ud = type { i32, i32 }

@UD_Iinvalid = common dso_local global i32 0, align 4
@stdin = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ud_init(%struct.ud* %0) #0 {
  %2 = alloca %struct.ud*, align 8
  store %struct.ud* %0, %struct.ud** %2, align 8
  %3 = load %struct.ud*, %struct.ud** %2, align 8
  %4 = bitcast %struct.ud* %3 to i8*
  %5 = call i32 @memset(i8* %4, i32 0, i32 8)
  %6 = load %struct.ud*, %struct.ud** %2, align 8
  %7 = call i32 @ud_set_mode(%struct.ud* %6, i32 16)
  %8 = load i32, i32* @UD_Iinvalid, align 4
  %9 = load %struct.ud*, %struct.ud** %2, align 8
  %10 = getelementptr inbounds %struct.ud, %struct.ud* %9, i32 0, i32 1
  store i32 %8, i32* %10, align 4
  %11 = load %struct.ud*, %struct.ud** %2, align 8
  %12 = call i32 @ud_set_pc(%struct.ud* %11, i32 0)
  %13 = load %struct.ud*, %struct.ud** %2, align 8
  %14 = load i32, i32* @stdin, align 4
  %15 = call i32 @ud_set_input_file(%struct.ud* %13, i32 %14)
  %16 = load %struct.ud*, %struct.ud** %2, align 8
  %17 = load %struct.ud*, %struct.ud** %2, align 8
  %18 = getelementptr inbounds %struct.ud, %struct.ud* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @ud_set_asm_buffer(%struct.ud* %16, i32 %19, i32 4)
  ret void
}

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @ud_set_mode(%struct.ud*, i32) #1

declare dso_local i32 @ud_set_pc(%struct.ud*, i32) #1

declare dso_local i32 @ud_set_input_file(%struct.ud*, i32) #1

declare dso_local i32 @ud_set_asm_buffer(%struct.ud*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
