; ModuleID = '/home/carl/AnghaBench/mpv/filters/extr_f_lavfi.c_mp_lavfi_create_graph.c'
source_filename = "/home/carl/AnghaBench/mpv/filters/extr_f_lavfi.c_mp_lavfi_create_graph.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_lavfi = type { i32 }
%struct.mp_filter = type { i32 }
%struct.lavfi = type { i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mp_lavfi* @mp_lavfi_create_graph(%struct.mp_filter* %0, i32 %1, i32 %2, i8** %3, i8* %4) #0 {
  %6 = alloca %struct.mp_lavfi*, align 8
  %7 = alloca %struct.mp_filter*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8**, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.lavfi*, align 8
  store %struct.mp_filter* %0, %struct.mp_filter** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i8** %3, i8*** %10, align 8
  store i8* %4, i8** %11, align 8
  %13 = load %struct.mp_filter*, %struct.mp_filter** %7, align 8
  %14 = call %struct.lavfi* @lavfi_alloc(%struct.mp_filter* %13)
  store %struct.lavfi* %14, %struct.lavfi** %12, align 8
  %15 = load %struct.lavfi*, %struct.lavfi** %12, align 8
  %16 = icmp ne %struct.lavfi* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %5
  store %struct.mp_lavfi* null, %struct.mp_lavfi** %6, align 8
  br label %37

18:                                               ; preds = %5
  %19 = load i32, i32* %8, align 4
  %20 = load %struct.lavfi*, %struct.lavfi** %12, align 8
  %21 = getelementptr inbounds %struct.lavfi, %struct.lavfi* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  %22 = load i32, i32* %9, align 4
  %23 = load %struct.lavfi*, %struct.lavfi** %12, align 8
  %24 = getelementptr inbounds %struct.lavfi, %struct.lavfi* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 4
  %25 = load %struct.lavfi*, %struct.lavfi** %12, align 8
  %26 = load i8**, i8*** %10, align 8
  %27 = call i32 @mp_dup_str_array(%struct.lavfi* %25, i8** %26)
  %28 = load %struct.lavfi*, %struct.lavfi** %12, align 8
  %29 = getelementptr inbounds %struct.lavfi, %struct.lavfi* %28, i32 0, i32 3
  store i32 %27, i32* %29, align 4
  %30 = load %struct.lavfi*, %struct.lavfi** %12, align 8
  %31 = load i8*, i8** %11, align 8
  %32 = call i32 @talloc_strdup(%struct.lavfi* %30, i8* %31)
  %33 = load %struct.lavfi*, %struct.lavfi** %12, align 8
  %34 = getelementptr inbounds %struct.lavfi, %struct.lavfi* %33, i32 0, i32 2
  store i32 %32, i32* %34, align 4
  %35 = load %struct.lavfi*, %struct.lavfi** %12, align 8
  %36 = call %struct.mp_lavfi* @do_init(%struct.lavfi* %35)
  store %struct.mp_lavfi* %36, %struct.mp_lavfi** %6, align 8
  br label %37

37:                                               ; preds = %18, %17
  %38 = load %struct.mp_lavfi*, %struct.mp_lavfi** %6, align 8
  ret %struct.mp_lavfi* %38
}

declare dso_local %struct.lavfi* @lavfi_alloc(%struct.mp_filter*) #1

declare dso_local i32 @mp_dup_str_array(%struct.lavfi*, i8**) #1

declare dso_local i32 @talloc_strdup(%struct.lavfi*, i8*) #1

declare dso_local %struct.mp_lavfi* @do_init(%struct.lavfi*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
