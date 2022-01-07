; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_buffer.c_string_mod_const.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_buffer.c_string_mod_const.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gc_arena = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @string_mod_const(i8* %0, i32 %1, i32 %2, i8 signext %3, %struct.gc_arena* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8, align 1
  %11 = alloca %struct.gc_arena*, align 8
  %12 = alloca i8*, align 8
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i8 %3, i8* %10, align 1
  store %struct.gc_arena* %4, %struct.gc_arena** %11, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %25

15:                                               ; preds = %5
  %16 = load i8*, i8** %7, align 8
  %17 = load %struct.gc_arena*, %struct.gc_arena** %11, align 8
  %18 = call i8* @string_alloc(i8* %16, %struct.gc_arena* %17)
  store i8* %18, i8** %12, align 8
  %19 = load i8*, i8** %12, align 8
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* %9, align 4
  %22 = load i8, i8* %10, align 1
  %23 = call i32 @string_mod(i8* %19, i32 %20, i32 %21, i8 signext %22)
  %24 = load i8*, i8** %12, align 8
  store i8* %24, i8** %6, align 8
  br label %26

25:                                               ; preds = %5
  store i8* null, i8** %6, align 8
  br label %26

26:                                               ; preds = %25, %15
  %27 = load i8*, i8** %6, align 8
  ret i8* %27
}

declare dso_local i8* @string_alloc(i8*, %struct.gc_arena*) #1

declare dso_local i32 @string_mod(i8*, i32, i32, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
