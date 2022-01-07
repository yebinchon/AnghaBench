; ModuleID = '/home/carl/AnghaBench/radare2/shlr/zip/zip/extr_zip_unchange.c__zip_unchange.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/zip/zip/extr_zip_unchange.c__zip_unchange.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zip = type { i64, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@ZIP_ER_INVAL = common dso_local global i32 0, align 4
@ZIP_DIRENT_FILENAME = common dso_local global i32 0, align 4
@ZIP_FL_UNCHANGED = common dso_local global i32 0, align 4
@ZIP_ER_EXISTS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_zip_unchange(%struct.zip* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.zip*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.zip* %0, %struct.zip** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i64, i64* %6, align 8
  %10 = load %struct.zip*, %struct.zip** %5, align 8
  %11 = getelementptr inbounds %struct.zip, %struct.zip* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp sge i64 %9, %12
  br i1 %13, label %14, label %19

14:                                               ; preds = %3
  %15 = load %struct.zip*, %struct.zip** %5, align 8
  %16 = getelementptr inbounds %struct.zip, %struct.zip* %15, i32 0, i32 2
  %17 = load i32, i32* @ZIP_ER_INVAL, align 4
  %18 = call i32 @_zip_error_set(i32* %16, i32 %17, i32 0)
  store i32 -1, i32* %4, align 4
  br label %84

19:                                               ; preds = %3
  %20 = load i32, i32* %7, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %63, label %22

22:                                               ; preds = %19
  %23 = load %struct.zip*, %struct.zip** %5, align 8
  %24 = getelementptr inbounds %struct.zip, %struct.zip* %23, i32 0, i32 1
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = load i64, i64* %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = icmp ne %struct.TYPE_4__* %29, null
  br i1 %30, label %31, label %63

31:                                               ; preds = %22
  %32 = load %struct.zip*, %struct.zip** %5, align 8
  %33 = getelementptr inbounds %struct.zip, %struct.zip* %32, i32 0, i32 1
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = load i64, i64* %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @ZIP_DIRENT_FILENAME, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %63

44:                                               ; preds = %31
  %45 = load %struct.zip*, %struct.zip** %5, align 8
  %46 = load %struct.zip*, %struct.zip** %5, align 8
  %47 = load i64, i64* %6, align 8
  %48 = load i32, i32* @ZIP_FL_UNCHANGED, align 4
  %49 = call i32 @_zip_get_name(%struct.zip* %46, i64 %47, i32 %48, i32* null)
  %50 = call i64 @_zip_name_locate(%struct.zip* %45, i32 %49, i32 0, i32* null)
  store i64 %50, i64* %8, align 8
  %51 = load i64, i64* %8, align 8
  %52 = icmp sge i64 %51, 0
  br i1 %52, label %53, label %62

53:                                               ; preds = %44
  %54 = load i64, i64* %8, align 8
  %55 = load i64, i64* %6, align 8
  %56 = icmp ne i64 %54, %55
  br i1 %56, label %57, label %62

57:                                               ; preds = %53
  %58 = load %struct.zip*, %struct.zip** %5, align 8
  %59 = getelementptr inbounds %struct.zip, %struct.zip* %58, i32 0, i32 2
  %60 = load i32, i32* @ZIP_ER_EXISTS, align 4
  %61 = call i32 @_zip_error_set(i32* %59, i32 %60, i32 0)
  store i32 -1, i32* %4, align 4
  br label %84

62:                                               ; preds = %53, %44
  br label %63

63:                                               ; preds = %62, %31, %22, %19
  %64 = load %struct.zip*, %struct.zip** %5, align 8
  %65 = getelementptr inbounds %struct.zip, %struct.zip* %64, i32 0, i32 1
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %65, align 8
  %67 = load i64, i64* %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %69, align 8
  %71 = call i32 @_zip_dirent_free(%struct.TYPE_4__* %70)
  %72 = load %struct.zip*, %struct.zip** %5, align 8
  %73 = getelementptr inbounds %struct.zip, %struct.zip* %72, i32 0, i32 1
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %73, align 8
  %75 = load i64, i64* %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %77, align 8
  %78 = load %struct.zip*, %struct.zip** %5, align 8
  %79 = getelementptr inbounds %struct.zip, %struct.zip* %78, i32 0, i32 1
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %79, align 8
  %81 = load i64, i64* %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i64 %81
  %83 = call i32 @_zip_unchange_data(%struct.TYPE_3__* %82)
  store i32 0, i32* %4, align 4
  br label %84

84:                                               ; preds = %63, %57, %14
  %85 = load i32, i32* %4, align 4
  ret i32 %85
}

declare dso_local i32 @_zip_error_set(i32*, i32, i32) #1

declare dso_local i64 @_zip_name_locate(%struct.zip*, i32, i32, i32*) #1

declare dso_local i32 @_zip_get_name(%struct.zip*, i64, i32, i32*) #1

declare dso_local i32 @_zip_dirent_free(%struct.TYPE_4__*) #1

declare dso_local i32 @_zip_unchange_data(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
