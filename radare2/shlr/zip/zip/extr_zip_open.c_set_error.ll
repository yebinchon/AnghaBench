; ModuleID = '/home/carl/AnghaBench/radare2/shlr/zip/zip/extr_zip_open.c_set_error.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/zip/zip/extr_zip_open.c_set_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zip_error = type { i32 }

@ZIP_ET_SYS = common dso_local global i64 0, align 8
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.zip_error*, i32)* @set_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_error(i32* %0, %struct.zip_error* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.zip_error*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.zip_error* %1, %struct.zip_error** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.zip_error*, %struct.zip_error** %5, align 8
  %9 = icmp ne %struct.zip_error* %8, null
  br i1 %9, label %10, label %20

10:                                               ; preds = %3
  %11 = load %struct.zip_error*, %struct.zip_error** %5, align 8
  %12 = call i32 @_zip_error_get(%struct.zip_error* %11, i32* %6, i32* %7)
  %13 = load i32, i32* %6, align 4
  %14 = call i64 @zip_error_get_sys_type(i32 %13)
  %15 = load i64, i64* @ZIP_ET_SYS, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %10
  %18 = load i32, i32* %7, align 4
  store i32 %18, i32* @errno, align 4
  br label %19

19:                                               ; preds = %17, %10
  br label %20

20:                                               ; preds = %19, %3
  %21 = load i32*, i32** %4, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %20
  %24 = load i32, i32* %6, align 4
  %25 = load i32*, i32** %4, align 8
  store i32 %24, i32* %25, align 4
  br label %26

26:                                               ; preds = %23, %20
  ret void
}

declare dso_local i32 @_zip_error_get(%struct.zip_error*, i32*, i32*) #1

declare dso_local i64 @zip_error_get_sys_type(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
