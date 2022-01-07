; ModuleID = '/home/carl/AnghaBench/radare2/shlr/zip/zip/extr_zip_open.c__zip_headercomp.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/zip/zip/extr_zip_open.c__zip_headercomp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zip_dirent = type { i64, i32, i64, i64, i64, i64, i64, i32 }

@ZIP_GPBF_DATA_DESCRIPTOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.zip_dirent*, %struct.zip_dirent*)* @_zip_headercomp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_zip_headercomp(%struct.zip_dirent* %0, %struct.zip_dirent* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.zip_dirent*, align 8
  %5 = alloca %struct.zip_dirent*, align 8
  store %struct.zip_dirent* %0, %struct.zip_dirent** %4, align 8
  store %struct.zip_dirent* %1, %struct.zip_dirent** %5, align 8
  %6 = load %struct.zip_dirent*, %struct.zip_dirent** %4, align 8
  %7 = getelementptr inbounds %struct.zip_dirent, %struct.zip_dirent* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load %struct.zip_dirent*, %struct.zip_dirent** %5, align 8
  %10 = getelementptr inbounds %struct.zip_dirent, %struct.zip_dirent* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %8, %11
  br i1 %12, label %38, label %13

13:                                               ; preds = %2
  %14 = load %struct.zip_dirent*, %struct.zip_dirent** %4, align 8
  %15 = getelementptr inbounds %struct.zip_dirent, %struct.zip_dirent* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.zip_dirent*, %struct.zip_dirent** %5, align 8
  %18 = getelementptr inbounds %struct.zip_dirent, %struct.zip_dirent* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %16, %19
  br i1 %20, label %38, label %21

21:                                               ; preds = %13
  %22 = load %struct.zip_dirent*, %struct.zip_dirent** %4, align 8
  %23 = getelementptr inbounds %struct.zip_dirent, %struct.zip_dirent* %22, i32 0, i32 3
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.zip_dirent*, %struct.zip_dirent** %5, align 8
  %26 = getelementptr inbounds %struct.zip_dirent, %struct.zip_dirent* %25, i32 0, i32 3
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %24, %27
  br i1 %28, label %38, label %29

29:                                               ; preds = %21
  %30 = load %struct.zip_dirent*, %struct.zip_dirent** %4, align 8
  %31 = getelementptr inbounds %struct.zip_dirent, %struct.zip_dirent* %30, i32 0, i32 7
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.zip_dirent*, %struct.zip_dirent** %5, align 8
  %34 = getelementptr inbounds %struct.zip_dirent, %struct.zip_dirent* %33, i32 0, i32 7
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @_zip_string_equal(i32 %32, i32 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %29, %21, %13, %2
  store i32 -1, i32* %3, align 4
  br label %88

39:                                               ; preds = %29
  %40 = load %struct.zip_dirent*, %struct.zip_dirent** %4, align 8
  %41 = getelementptr inbounds %struct.zip_dirent, %struct.zip_dirent* %40, i32 0, i32 4
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.zip_dirent*, %struct.zip_dirent** %5, align 8
  %44 = getelementptr inbounds %struct.zip_dirent, %struct.zip_dirent* %43, i32 0, i32 4
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %42, %45
  br i1 %46, label %63, label %47

47:                                               ; preds = %39
  %48 = load %struct.zip_dirent*, %struct.zip_dirent** %4, align 8
  %49 = getelementptr inbounds %struct.zip_dirent, %struct.zip_dirent* %48, i32 0, i32 5
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.zip_dirent*, %struct.zip_dirent** %5, align 8
  %52 = getelementptr inbounds %struct.zip_dirent, %struct.zip_dirent* %51, i32 0, i32 5
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %50, %53
  br i1 %54, label %63, label %55

55:                                               ; preds = %47
  %56 = load %struct.zip_dirent*, %struct.zip_dirent** %4, align 8
  %57 = getelementptr inbounds %struct.zip_dirent, %struct.zip_dirent* %56, i32 0, i32 6
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.zip_dirent*, %struct.zip_dirent** %5, align 8
  %60 = getelementptr inbounds %struct.zip_dirent, %struct.zip_dirent* %59, i32 0, i32 6
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %58, %61
  br i1 %62, label %63, label %87

63:                                               ; preds = %55, %47, %39
  %64 = load %struct.zip_dirent*, %struct.zip_dirent** %5, align 8
  %65 = getelementptr inbounds %struct.zip_dirent, %struct.zip_dirent* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @ZIP_GPBF_DATA_DESCRIPTOR, align 4
  %68 = and i32 %66, %67
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %85, label %70

70:                                               ; preds = %63
  %71 = load %struct.zip_dirent*, %struct.zip_dirent** %5, align 8
  %72 = getelementptr inbounds %struct.zip_dirent, %struct.zip_dirent* %71, i32 0, i32 4
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %85, label %75

75:                                               ; preds = %70
  %76 = load %struct.zip_dirent*, %struct.zip_dirent** %5, align 8
  %77 = getelementptr inbounds %struct.zip_dirent, %struct.zip_dirent* %76, i32 0, i32 5
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %85, label %80

80:                                               ; preds = %75
  %81 = load %struct.zip_dirent*, %struct.zip_dirent** %5, align 8
  %82 = getelementptr inbounds %struct.zip_dirent, %struct.zip_dirent* %81, i32 0, i32 6
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %80, %75, %70, %63
  store i32 -1, i32* %3, align 4
  br label %88

86:                                               ; preds = %80
  br label %87

87:                                               ; preds = %86, %55
  store i32 0, i32* %3, align 4
  br label %88

88:                                               ; preds = %87, %85, %38
  %89 = load i32, i32* %3, align 4
  ret i32 %89
}

declare dso_local i32 @_zip_string_equal(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
