; ModuleID = '/home/carl/AnghaBench/mpv/filters/extr_f_lavfi.c_mp_lavfi_create_filter.c'
source_filename = "/home/carl/AnghaBench/mpv/filters/extr_f_lavfi.c_mp_lavfi_create_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_lavfi = type { i32 }
%struct.mp_filter = type { i32 }
%struct.lavfi = type { i32, i32, i32, i8*, i32, i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mp_lavfi* @mp_lavfi_create_filter(%struct.mp_filter* %0, i32 %1, i32 %2, i8** %3, i8* %4, i8** %5) #0 {
  %7 = alloca %struct.mp_lavfi*, align 8
  %8 = alloca %struct.mp_filter*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8**, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8**, align 8
  %14 = alloca %struct.lavfi*, align 8
  store %struct.mp_filter* %0, %struct.mp_filter** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i8** %3, i8*** %11, align 8
  store i8* %4, i8** %12, align 8
  store i8** %5, i8*** %13, align 8
  %15 = load %struct.mp_filter*, %struct.mp_filter** %8, align 8
  %16 = call %struct.lavfi* @lavfi_alloc(%struct.mp_filter* %15)
  store %struct.lavfi* %16, %struct.lavfi** %14, align 8
  %17 = load %struct.lavfi*, %struct.lavfi** %14, align 8
  %18 = icmp ne %struct.lavfi* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %6
  store %struct.mp_lavfi* null, %struct.mp_lavfi** %7, align 8
  br label %46

20:                                               ; preds = %6
  %21 = load i32, i32* %9, align 4
  %22 = load %struct.lavfi*, %struct.lavfi** %14, align 8
  %23 = getelementptr inbounds %struct.lavfi, %struct.lavfi* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 8
  %24 = load i32, i32* %10, align 4
  %25 = load %struct.lavfi*, %struct.lavfi** %14, align 8
  %26 = getelementptr inbounds %struct.lavfi, %struct.lavfi* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  %27 = load %struct.lavfi*, %struct.lavfi** %14, align 8
  %28 = load i8**, i8*** %11, align 8
  %29 = call i8* @mp_dup_str_array(%struct.lavfi* %27, i8** %28)
  %30 = load %struct.lavfi*, %struct.lavfi** %14, align 8
  %31 = getelementptr inbounds %struct.lavfi, %struct.lavfi* %30, i32 0, i32 5
  store i8* %29, i8** %31, align 8
  %32 = load %struct.lavfi*, %struct.lavfi** %14, align 8
  %33 = load i8*, i8** %12, align 8
  %34 = call i32 @talloc_strdup(%struct.lavfi* %32, i8* %33)
  %35 = load %struct.lavfi*, %struct.lavfi** %14, align 8
  %36 = getelementptr inbounds %struct.lavfi, %struct.lavfi* %35, i32 0, i32 4
  store i32 %34, i32* %36, align 8
  %37 = load %struct.lavfi*, %struct.lavfi** %14, align 8
  %38 = load i8**, i8*** %13, align 8
  %39 = call i8* @mp_dup_str_array(%struct.lavfi* %37, i8** %38)
  %40 = load %struct.lavfi*, %struct.lavfi** %14, align 8
  %41 = getelementptr inbounds %struct.lavfi, %struct.lavfi* %40, i32 0, i32 3
  store i8* %39, i8** %41, align 8
  %42 = load %struct.lavfi*, %struct.lavfi** %14, align 8
  %43 = getelementptr inbounds %struct.lavfi, %struct.lavfi* %42, i32 0, i32 2
  store i32 1, i32* %43, align 8
  %44 = load %struct.lavfi*, %struct.lavfi** %14, align 8
  %45 = call %struct.mp_lavfi* @do_init(%struct.lavfi* %44)
  store %struct.mp_lavfi* %45, %struct.mp_lavfi** %7, align 8
  br label %46

46:                                               ; preds = %20, %19
  %47 = load %struct.mp_lavfi*, %struct.mp_lavfi** %7, align 8
  ret %struct.mp_lavfi* %47
}

declare dso_local %struct.lavfi* @lavfi_alloc(%struct.mp_filter*) #1

declare dso_local i8* @mp_dup_str_array(%struct.lavfi*, i8**) #1

declare dso_local i32 @talloc_strdup(%struct.lavfi*, i8*) #1

declare dso_local %struct.mp_lavfi* @do_init(%struct.lavfi*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
