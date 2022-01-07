; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_env_set.c_setenv_int_i.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_env_set.c_setenv_int_i.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.env_set = type { i32 }
%struct.gc_arena = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @setenv_int_i(%struct.env_set* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.env_set*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.gc_arena, align 4
  %10 = alloca i8*, align 8
  store %struct.env_set* %0, %struct.env_set** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = call i32 (...) @gc_new()
  %12 = getelementptr inbounds %struct.gc_arena, %struct.gc_arena* %9, i32 0, i32 0
  store i32 %11, i32* %12, align 4
  %13 = load i8*, i8** %6, align 8
  %14 = load i32, i32* %8, align 4
  %15 = call i8* @setenv_format_indexed_name(i8* %13, i32 %14, %struct.gc_arena* %9)
  store i8* %15, i8** %10, align 8
  %16 = load %struct.env_set*, %struct.env_set** %5, align 8
  %17 = load i8*, i8** %10, align 8
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @setenv_int(%struct.env_set* %16, i8* %17, i32 %18)
  %20 = call i32 @gc_free(%struct.gc_arena* %9)
  ret void
}

declare dso_local i32 @gc_new(...) #1

declare dso_local i8* @setenv_format_indexed_name(i8*, i32, %struct.gc_arena*) #1

declare dso_local i32 @setenv_int(%struct.env_set*, i8*, i32) #1

declare dso_local i32 @gc_free(%struct.gc_arena*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
