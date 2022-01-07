; ModuleID = '/home/carl/AnghaBench/mpv/filters/extr_f_lavfi.c_lavfi_create.c'
source_filename = "/home/carl/AnghaBench/mpv/filters/extr_f_lavfi.c_lavfi_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_filter = type { %struct.lavfi* }
%struct.lavfi = type { i32 }
%struct.lavfi_user_opts = type { i32, i32, i32, i32, i32, i32, i64 }
%struct.mp_lavfi = type { %struct.mp_filter* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mp_filter* (%struct.mp_filter*, i8*)* @lavfi_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mp_filter* @lavfi_create(%struct.mp_filter* %0, i8* %1) #0 {
  %3 = alloca %struct.mp_filter*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.lavfi_user_opts*, align 8
  %6 = alloca %struct.mp_lavfi*, align 8
  %7 = alloca %struct.lavfi*, align 8
  store %struct.mp_filter* %0, %struct.mp_filter** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.lavfi_user_opts*
  store %struct.lavfi_user_opts* %9, %struct.lavfi_user_opts** %5, align 8
  %10 = load %struct.lavfi_user_opts*, %struct.lavfi_user_opts** %5, align 8
  %11 = getelementptr inbounds %struct.lavfi_user_opts, %struct.lavfi_user_opts* %10, i32 0, i32 6
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %29

14:                                               ; preds = %2
  %15 = load %struct.mp_filter*, %struct.mp_filter** %3, align 8
  %16 = load %struct.lavfi_user_opts*, %struct.lavfi_user_opts** %5, align 8
  %17 = getelementptr inbounds %struct.lavfi_user_opts, %struct.lavfi_user_opts* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.lavfi_user_opts*, %struct.lavfi_user_opts** %5, align 8
  %20 = getelementptr inbounds %struct.lavfi_user_opts, %struct.lavfi_user_opts* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.lavfi_user_opts*, %struct.lavfi_user_opts** %5, align 8
  %23 = getelementptr inbounds %struct.lavfi_user_opts, %struct.lavfi_user_opts* %22, i32 0, i32 5
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.lavfi_user_opts*, %struct.lavfi_user_opts** %5, align 8
  %26 = getelementptr inbounds %struct.lavfi_user_opts, %struct.lavfi_user_opts* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 8
  %28 = call %struct.mp_lavfi* @mp_lavfi_create_filter(%struct.mp_filter* %15, i32 %18, i32 1, i32 %21, i32 %24, i32 %27)
  store %struct.mp_lavfi* %28, %struct.mp_lavfi** %6, align 8
  br label %41

29:                                               ; preds = %2
  %30 = load %struct.mp_filter*, %struct.mp_filter** %3, align 8
  %31 = load %struct.lavfi_user_opts*, %struct.lavfi_user_opts** %5, align 8
  %32 = getelementptr inbounds %struct.lavfi_user_opts, %struct.lavfi_user_opts* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.lavfi_user_opts*, %struct.lavfi_user_opts** %5, align 8
  %35 = getelementptr inbounds %struct.lavfi_user_opts, %struct.lavfi_user_opts* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.lavfi_user_opts*, %struct.lavfi_user_opts** %5, align 8
  %38 = getelementptr inbounds %struct.lavfi_user_opts, %struct.lavfi_user_opts* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call %struct.mp_lavfi* @mp_lavfi_create_graph(%struct.mp_filter* %30, i32 %33, i32 1, i32 %36, i32 %39)
  store %struct.mp_lavfi* %40, %struct.mp_lavfi** %6, align 8
  br label %41

41:                                               ; preds = %29, %14
  %42 = load %struct.mp_lavfi*, %struct.mp_lavfi** %6, align 8
  %43 = icmp ne %struct.mp_lavfi* %42, null
  br i1 %43, label %44, label %55

44:                                               ; preds = %41
  %45 = load %struct.mp_lavfi*, %struct.mp_lavfi** %6, align 8
  %46 = getelementptr inbounds %struct.mp_lavfi, %struct.mp_lavfi* %45, i32 0, i32 0
  %47 = load %struct.mp_filter*, %struct.mp_filter** %46, align 8
  %48 = getelementptr inbounds %struct.mp_filter, %struct.mp_filter* %47, i32 0, i32 0
  %49 = load %struct.lavfi*, %struct.lavfi** %48, align 8
  store %struct.lavfi* %49, %struct.lavfi** %7, align 8
  %50 = load %struct.lavfi_user_opts*, %struct.lavfi_user_opts** %5, align 8
  %51 = getelementptr inbounds %struct.lavfi_user_opts, %struct.lavfi_user_opts* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.lavfi*, %struct.lavfi** %7, align 8
  %54 = getelementptr inbounds %struct.lavfi, %struct.lavfi* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 4
  br label %55

55:                                               ; preds = %44, %41
  %56 = load %struct.lavfi_user_opts*, %struct.lavfi_user_opts** %5, align 8
  %57 = call i32 @talloc_free(%struct.lavfi_user_opts* %56)
  %58 = load %struct.mp_lavfi*, %struct.mp_lavfi** %6, align 8
  %59 = icmp ne %struct.mp_lavfi* %58, null
  br i1 %59, label %60, label %64

60:                                               ; preds = %55
  %61 = load %struct.mp_lavfi*, %struct.mp_lavfi** %6, align 8
  %62 = getelementptr inbounds %struct.mp_lavfi, %struct.mp_lavfi* %61, i32 0, i32 0
  %63 = load %struct.mp_filter*, %struct.mp_filter** %62, align 8
  br label %65

64:                                               ; preds = %55
  br label %65

65:                                               ; preds = %64, %60
  %66 = phi %struct.mp_filter* [ %63, %60 ], [ null, %64 ]
  ret %struct.mp_filter* %66
}

declare dso_local %struct.mp_lavfi* @mp_lavfi_create_filter(%struct.mp_filter*, i32, i32, i32, i32, i32) #1

declare dso_local %struct.mp_lavfi* @mp_lavfi_create_graph(%struct.mp_filter*, i32, i32, i32, i32) #1

declare dso_local i32 @talloc_free(%struct.lavfi_user_opts*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
