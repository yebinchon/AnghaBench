; ModuleID = '/home/carl/AnghaBench/radare2/shlr/zip/zip/extr_zip_dirent.c__zip_dirent_clone.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/zip/zip/extr_zip_dirent.c__zip_dirent_clone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zip_dirent = type { i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.zip_dirent* @_zip_dirent_clone(%struct.zip_dirent* %0) #0 {
  %2 = alloca %struct.zip_dirent*, align 8
  %3 = alloca %struct.zip_dirent*, align 8
  %4 = alloca %struct.zip_dirent*, align 8
  store %struct.zip_dirent* %0, %struct.zip_dirent** %3, align 8
  %5 = call i64 @malloc(i32 16)
  %6 = inttoptr i64 %5 to %struct.zip_dirent*
  store %struct.zip_dirent* %6, %struct.zip_dirent** %4, align 8
  %7 = icmp eq %struct.zip_dirent* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store %struct.zip_dirent* null, %struct.zip_dirent** %2, align 8
  br label %25

9:                                                ; preds = %1
  %10 = load %struct.zip_dirent*, %struct.zip_dirent** %3, align 8
  %11 = icmp ne %struct.zip_dirent* %10, null
  br i1 %11, label %12, label %16

12:                                               ; preds = %9
  %13 = load %struct.zip_dirent*, %struct.zip_dirent** %4, align 8
  %14 = load %struct.zip_dirent*, %struct.zip_dirent** %3, align 8
  %15 = call i32 @memcpy(%struct.zip_dirent* %13, %struct.zip_dirent* %14, i32 16)
  br label %19

16:                                               ; preds = %9
  %17 = load %struct.zip_dirent*, %struct.zip_dirent** %4, align 8
  %18 = call i32 @_zip_dirent_init(%struct.zip_dirent* %17)
  br label %19

19:                                               ; preds = %16, %12
  %20 = load %struct.zip_dirent*, %struct.zip_dirent** %4, align 8
  %21 = getelementptr inbounds %struct.zip_dirent, %struct.zip_dirent* %20, i32 0, i32 1
  store i64 0, i64* %21, align 8
  %22 = load %struct.zip_dirent*, %struct.zip_dirent** %4, align 8
  %23 = getelementptr inbounds %struct.zip_dirent, %struct.zip_dirent* %22, i32 0, i32 0
  store i32 1, i32* %23, align 8
  %24 = load %struct.zip_dirent*, %struct.zip_dirent** %4, align 8
  store %struct.zip_dirent* %24, %struct.zip_dirent** %2, align 8
  br label %25

25:                                               ; preds = %19, %8
  %26 = load %struct.zip_dirent*, %struct.zip_dirent** %2, align 8
  ret %struct.zip_dirent* %26
}

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @memcpy(%struct.zip_dirent*, %struct.zip_dirent*, i32) #1

declare dso_local i32 @_zip_dirent_init(%struct.zip_dirent*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
