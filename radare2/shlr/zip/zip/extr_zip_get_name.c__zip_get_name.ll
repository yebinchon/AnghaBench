; ModuleID = '/home/carl/AnghaBench/radare2/shlr/zip/zip/extr_zip_get_name.c__zip_get_name.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/zip/zip/extr_zip_get_name.c__zip_get_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zip = type { i32 }
%struct.zip_error = type { i32 }
%struct.zip_dirent = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @_zip_get_name(%struct.zip* %0, i32 %1, i32 %2, %struct.zip_error* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.zip*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.zip_error*, align 8
  %10 = alloca %struct.zip_dirent*, align 8
  %11 = alloca i32*, align 8
  store %struct.zip* %0, %struct.zip** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.zip_error* %3, %struct.zip_error** %9, align 8
  %12 = load %struct.zip*, %struct.zip** %6, align 8
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* %8, align 4
  %15 = load %struct.zip_error*, %struct.zip_error** %9, align 8
  %16 = call %struct.zip_dirent* @_zip_get_dirent(%struct.zip* %12, i32 %13, i32 %14, %struct.zip_error* %15)
  store %struct.zip_dirent* %16, %struct.zip_dirent** %10, align 8
  %17 = icmp eq %struct.zip_dirent* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %4
  store i8* null, i8** %5, align 8
  br label %31

19:                                               ; preds = %4
  %20 = load %struct.zip_dirent*, %struct.zip_dirent** %10, align 8
  %21 = getelementptr inbounds %struct.zip_dirent, %struct.zip_dirent* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %8, align 4
  %24 = load %struct.zip_error*, %struct.zip_error** %9, align 8
  %25 = call i32* @_zip_string_get(i32 %22, i32* null, i32 %23, %struct.zip_error* %24)
  store i32* %25, i32** %11, align 8
  %26 = icmp eq i32* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %19
  store i8* null, i8** %5, align 8
  br label %31

28:                                               ; preds = %19
  %29 = load i32*, i32** %11, align 8
  %30 = bitcast i32* %29 to i8*
  store i8* %30, i8** %5, align 8
  br label %31

31:                                               ; preds = %28, %27, %18
  %32 = load i8*, i8** %5, align 8
  ret i8* %32
}

declare dso_local %struct.zip_dirent* @_zip_get_dirent(%struct.zip*, i32, i32, %struct.zip_error*) #1

declare dso_local i32* @_zip_string_get(i32, i32*, i32, %struct.zip_error*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
