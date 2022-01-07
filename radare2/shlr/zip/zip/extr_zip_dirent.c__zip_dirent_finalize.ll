; ModuleID = '/home/carl/AnghaBench/radare2/shlr/zip/zip/extr_zip_dirent.c__zip_dirent_finalize.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/zip/zip/extr_zip_dirent.c__zip_dirent_finalize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zip_dirent = type { i32, i32, i32, i32, i32 }

@ZIP_DIRENT_FILENAME = common dso_local global i32 0, align 4
@ZIP_DIRENT_EXTRA_FIELD = common dso_local global i32 0, align 4
@ZIP_DIRENT_COMMENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_zip_dirent_finalize(%struct.zip_dirent* %0) #0 {
  %2 = alloca %struct.zip_dirent*, align 8
  store %struct.zip_dirent* %0, %struct.zip_dirent** %2, align 8
  %3 = load %struct.zip_dirent*, %struct.zip_dirent** %2, align 8
  %4 = getelementptr inbounds %struct.zip_dirent, %struct.zip_dirent* %3, i32 0, i32 2
  %5 = load i32, i32* %4, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %14

7:                                                ; preds = %1
  %8 = load %struct.zip_dirent*, %struct.zip_dirent** %2, align 8
  %9 = getelementptr inbounds %struct.zip_dirent, %struct.zip_dirent* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @ZIP_DIRENT_FILENAME, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %7, %1
  %15 = load %struct.zip_dirent*, %struct.zip_dirent** %2, align 8
  %16 = getelementptr inbounds %struct.zip_dirent, %struct.zip_dirent* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @_zip_string_free(i32 %17)
  br label %19

19:                                               ; preds = %14, %7
  %20 = load %struct.zip_dirent*, %struct.zip_dirent** %2, align 8
  %21 = getelementptr inbounds %struct.zip_dirent, %struct.zip_dirent* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %19
  %25 = load %struct.zip_dirent*, %struct.zip_dirent** %2, align 8
  %26 = getelementptr inbounds %struct.zip_dirent, %struct.zip_dirent* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @ZIP_DIRENT_EXTRA_FIELD, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %24, %19
  %32 = load %struct.zip_dirent*, %struct.zip_dirent** %2, align 8
  %33 = getelementptr inbounds %struct.zip_dirent, %struct.zip_dirent* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @_zip_ef_free(i32 %34)
  br label %36

36:                                               ; preds = %31, %24
  %37 = load %struct.zip_dirent*, %struct.zip_dirent** %2, align 8
  %38 = getelementptr inbounds %struct.zip_dirent, %struct.zip_dirent* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %36
  %42 = load %struct.zip_dirent*, %struct.zip_dirent** %2, align 8
  %43 = getelementptr inbounds %struct.zip_dirent, %struct.zip_dirent* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @ZIP_DIRENT_COMMENT, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %41, %36
  %49 = load %struct.zip_dirent*, %struct.zip_dirent** %2, align 8
  %50 = getelementptr inbounds %struct.zip_dirent, %struct.zip_dirent* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @_zip_string_free(i32 %51)
  br label %53

53:                                               ; preds = %48, %41
  ret void
}

declare dso_local i32 @_zip_string_free(i32) #1

declare dso_local i32 @_zip_ef_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
