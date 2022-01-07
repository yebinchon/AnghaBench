; ModuleID = '/home/carl/AnghaBench/radare2/libr/bin/mangling/cxx/extr_cp-demangle.c_d_append_char.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/bin/mangling/cxx/extr_cp-demangle.c_d_append_char.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.d_print_info = type { i32, i8*, i8 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.d_print_info*, i8)* @d_append_char to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @d_append_char(%struct.d_print_info* %0, i8 signext %1) #0 {
  %3 = alloca %struct.d_print_info*, align 8
  %4 = alloca i8, align 1
  store %struct.d_print_info* %0, %struct.d_print_info** %3, align 8
  store i8 %1, i8* %4, align 1
  %5 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %6 = getelementptr inbounds %struct.d_print_info, %struct.d_print_info* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = sext i32 %7 to i64
  %9 = icmp eq i64 %8, 7
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %12 = call i32 @d_print_flush(%struct.d_print_info* %11)
  br label %13

13:                                               ; preds = %10, %2
  %14 = load i8, i8* %4, align 1
  %15 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %16 = getelementptr inbounds %struct.d_print_info, %struct.d_print_info* %15, i32 0, i32 1
  %17 = load i8*, i8** %16, align 8
  %18 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %19 = getelementptr inbounds %struct.d_print_info, %struct.d_print_info* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %19, align 8
  %22 = sext i32 %20 to i64
  %23 = getelementptr inbounds i8, i8* %17, i64 %22
  store i8 %14, i8* %23, align 1
  %24 = load i8, i8* %4, align 1
  %25 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %26 = getelementptr inbounds %struct.d_print_info, %struct.d_print_info* %25, i32 0, i32 2
  store i8 %24, i8* %26, align 8
  ret void
}

declare dso_local i32 @d_print_flush(%struct.d_print_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
