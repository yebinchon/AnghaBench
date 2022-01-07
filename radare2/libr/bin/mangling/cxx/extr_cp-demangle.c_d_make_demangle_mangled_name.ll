; ModuleID = '/home/carl/AnghaBench/radare2/libr/bin/mangling/cxx/extr_cp-demangle.c_d_make_demangle_mangled_name.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/bin/mangling/cxx/extr_cp-demangle.c_d_make_demangle_mangled_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.demangle_component = type { i32 }
%struct.d_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.demangle_component* (%struct.d_info*, i8*)* @d_make_demangle_mangled_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.demangle_component* @d_make_demangle_mangled_name(%struct.d_info* %0, i8* %1) #0 {
  %3 = alloca %struct.demangle_component*, align 8
  %4 = alloca %struct.d_info*, align 8
  %5 = alloca i8*, align 8
  store %struct.d_info* %0, %struct.d_info** %4, align 8
  store i8* %1, i8** %5, align 8
  %6 = load %struct.d_info*, %struct.d_info** %4, align 8
  %7 = call signext i8 @d_peek_char(%struct.d_info* %6)
  %8 = sext i8 %7 to i32
  %9 = icmp ne i32 %8, 95
  br i1 %9, label %15, label %10

10:                                               ; preds = %2
  %11 = load %struct.d_info*, %struct.d_info** %4, align 8
  %12 = call signext i8 @d_peek_next_char(%struct.d_info* %11)
  %13 = sext i8 %12 to i32
  %14 = icmp ne i32 %13, 90
  br i1 %14, label %15, label %21

15:                                               ; preds = %10, %2
  %16 = load %struct.d_info*, %struct.d_info** %4, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = call i32 @strlen(i8* %18)
  %20 = call %struct.demangle_component* @d_make_name(%struct.d_info* %16, i8* %17, i32 %19)
  store %struct.demangle_component* %20, %struct.demangle_component** %3, align 8
  br label %26

21:                                               ; preds = %10
  %22 = load %struct.d_info*, %struct.d_info** %4, align 8
  %23 = call i32 @d_advance(%struct.d_info* %22, i32 2)
  %24 = load %struct.d_info*, %struct.d_info** %4, align 8
  %25 = call %struct.demangle_component* @d_encoding(%struct.d_info* %24, i32 0)
  store %struct.demangle_component* %25, %struct.demangle_component** %3, align 8
  br label %26

26:                                               ; preds = %21, %15
  %27 = load %struct.demangle_component*, %struct.demangle_component** %3, align 8
  ret %struct.demangle_component* %27
}

declare dso_local signext i8 @d_peek_char(%struct.d_info*) #1

declare dso_local signext i8 @d_peek_next_char(%struct.d_info*) #1

declare dso_local %struct.demangle_component* @d_make_name(%struct.d_info*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @d_advance(%struct.d_info*, i32) #1

declare dso_local %struct.demangle_component* @d_encoding(%struct.d_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
