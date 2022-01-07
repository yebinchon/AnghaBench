; ModuleID = '/home/carl/AnghaBench/php-src/ext/pcre/pcre2lib/sljit/extr_sljitNativeARM_32.c_push_inst.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/pcre/pcre2lib/sljit/extr_sljitNativeARM_32.c_push_inst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sljit_compiler = type { i32 }

@SLJIT_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sljit_compiler*, i32)* @push_inst to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @push_inst(%struct.sljit_compiler* %0, i32 %1) #0 {
  %3 = alloca %struct.sljit_compiler*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  store %struct.sljit_compiler* %0, %struct.sljit_compiler** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.sljit_compiler*, %struct.sljit_compiler** %3, align 8
  %7 = call i64 @ensure_buf(%struct.sljit_compiler* %6, i32 4)
  %8 = inttoptr i64 %7 to i32*
  store i32* %8, i32** %5, align 8
  %9 = load i32*, i32** %5, align 8
  %10 = icmp ne i32* %9, null
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  %13 = call i32 @FAIL_IF(i32 %12)
  %14 = load %struct.sljit_compiler*, %struct.sljit_compiler** %3, align 8
  %15 = getelementptr inbounds %struct.sljit_compiler, %struct.sljit_compiler* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %15, align 4
  %18 = load i32, i32* %4, align 4
  %19 = load i32*, i32** %5, align 8
  store i32 %18, i32* %19, align 4
  %20 = load i32, i32* @SLJIT_SUCCESS, align 4
  ret i32 %20
}

declare dso_local i64 @ensure_buf(%struct.sljit_compiler*, i32) #1

declare dso_local i32 @FAIL_IF(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
