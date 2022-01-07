; ModuleID = '/home/carl/AnghaBench/radare2/libr/bin/p/extr_......shlrlz4lz4.c_LZ4_createStream.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/bin/p/extr_......shlrlz4lz4.c_LZ4_createStream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LZ4_STREAMSIZE_U64 = common dso_local global i32 0, align 4
@LZ4_STREAMSIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @LZ4_createStream() #0 {
  %1 = alloca i32*, align 8
  %2 = load i32, i32* @LZ4_STREAMSIZE_U64, align 4
  %3 = call i64 @calloc(i32 8, i32 %2)
  %4 = inttoptr i64 %3 to i32*
  store i32* %4, i32** %1, align 8
  %5 = load i32, i32* @LZ4_STREAMSIZE, align 4
  %6 = sext i32 %5 to i64
  %7 = icmp uge i64 %6, 4
  %8 = zext i1 %7 to i32
  %9 = call i32 @LZ4_STATIC_ASSERT(i32 %8)
  %10 = load i32*, i32** %1, align 8
  %11 = call i32 @LZ4_resetStream(i32* %10)
  %12 = load i32*, i32** %1, align 8
  ret i32* %12
}

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @LZ4_STATIC_ASSERT(i32) #1

declare dso_local i32 @LZ4_resetStream(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
