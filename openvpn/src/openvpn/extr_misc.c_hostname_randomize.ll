; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_misc.c_hostname_randomize.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_misc.c_hostname_randomize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gc_arena = type { i32 }
%struct.buffer = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"%s.%s\00", align 1
@n_rnd_bytes = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @hostname_randomize(i8* %0, %struct.gc_arena* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.gc_arena*, align 8
  %5 = alloca [6 x i32], align 16
  %6 = alloca i8*, align 8
  %7 = alloca %struct.buffer, align 4
  store i8* %0, i8** %3, align 8
  store %struct.gc_arena* %1, %struct.gc_arena** %4, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = call i64 @strlen(i8* %8)
  %10 = add i64 %9, 48
  %11 = add i64 %10, 4
  %12 = load %struct.gc_arena*, %struct.gc_arena** %4, align 8
  %13 = call i32 @alloc_buf_gc(i64 %11, %struct.gc_arena* %12)
  %14 = getelementptr inbounds %struct.buffer, %struct.buffer* %7, i32 0, i32 0
  store i32 %13, i32* %14, align 4
  %15 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 0
  %16 = call i32 @prng_bytes(i32* %15, i32 24)
  %17 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 0
  %18 = load %struct.gc_arena*, %struct.gc_arena** %4, align 8
  %19 = call i8* @format_hex_ex(i32* %17, i32 24, i32 40, i32 0, i32* null, %struct.gc_arena* %18)
  store i8* %19, i8** %6, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = load i8*, i8** %3, align 8
  %22 = call i32 @buf_printf(%struct.buffer* %7, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %20, i8* %21)
  %23 = call i8* @BSTR(%struct.buffer* %7)
  ret i8* %23
}

declare dso_local i32 @alloc_buf_gc(i64, %struct.gc_arena*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @prng_bytes(i32*, i32) #1

declare dso_local i8* @format_hex_ex(i32*, i32, i32, i32, i32*, %struct.gc_arena*) #1

declare dso_local i32 @buf_printf(%struct.buffer*, i8*, i8*, i8*) #1

declare dso_local i8* @BSTR(%struct.buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
