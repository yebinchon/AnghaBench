; ModuleID = '/home/carl/AnghaBench/radare2/shlr/zip/zip/extr_zip_open.c__zip_open.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/zip/zip/extr_zip_open.c__zip_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zip = type { i32, i32, i32*, i32, i32, i32, i32 }
%struct.zip_cdir = type { i32, i32, i32, i32 }

@SEEK_END = common dso_local global i32 0, align 4
@ZIP_ER_SEEK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.zip* @_zip_open(i8* %0, i32* %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.zip*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.zip*, align 8
  %11 = alloca %struct.zip_cdir*, align 8
  %12 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %13 = load i32*, i32** %7, align 8
  %14 = load i32, i32* @SEEK_END, align 4
  %15 = call i64 @fseeko(i32* %13, i32 0, i32 %14)
  %16 = icmp slt i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %4
  %18 = load i32, i32* @ZIP_ER_SEEK, align 4
  %19 = load i32*, i32** %9, align 8
  store i32 %18, i32* %19, align 4
  store %struct.zip* null, %struct.zip** %5, align 8
  br label %97

20:                                               ; preds = %4
  %21 = load i32*, i32** %7, align 8
  %22 = call i64 @ftello(i32* %21)
  store i64 %22, i64* %12, align 8
  %23 = load i64, i64* %12, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %40

25:                                               ; preds = %20
  %26 = load i8*, i8** %6, align 8
  %27 = load i32, i32* %8, align 4
  %28 = load i32*, i32** %9, align 8
  %29 = call %struct.zip* @_zip_allocate_new(i8* %26, i32 %27, i32* %28)
  store %struct.zip* %29, %struct.zip** %10, align 8
  %30 = icmp eq %struct.zip* %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %25
  %32 = load i32*, i32** %7, align 8
  %33 = call i32 @fclose(i32* %32)
  br label %38

34:                                               ; preds = %25
  %35 = load i32*, i32** %7, align 8
  %36 = load %struct.zip*, %struct.zip** %10, align 8
  %37 = getelementptr inbounds %struct.zip, %struct.zip* %36, i32 0, i32 2
  store i32* %35, i32** %37, align 8
  br label %38

38:                                               ; preds = %34, %31
  %39 = load %struct.zip*, %struct.zip** %10, align 8
  store %struct.zip* %39, %struct.zip** %5, align 8
  br label %97

40:                                               ; preds = %20
  %41 = load i32*, i32** %7, align 8
  %42 = load i32, i32* %8, align 4
  %43 = load i32*, i32** %9, align 8
  %44 = load i64, i64* %12, align 8
  %45 = call %struct.zip_cdir* @_zip_find_central_dir(i32* %41, i32 %42, i32* %43, i64 %44)
  store %struct.zip_cdir* %45, %struct.zip_cdir** %11, align 8
  %46 = load %struct.zip_cdir*, %struct.zip_cdir** %11, align 8
  %47 = icmp eq %struct.zip_cdir* %46, null
  br i1 %47, label %48, label %51

48:                                               ; preds = %40
  %49 = load i32*, i32** %7, align 8
  %50 = call i32 @fclose(i32* %49)
  store %struct.zip* null, %struct.zip** %5, align 8
  br label %97

51:                                               ; preds = %40
  %52 = load i8*, i8** %6, align 8
  %53 = load i32, i32* %8, align 4
  %54 = load i32*, i32** %9, align 8
  %55 = call %struct.zip* @_zip_allocate_new(i8* %52, i32 %53, i32* %54)
  store %struct.zip* %55, %struct.zip** %10, align 8
  %56 = icmp eq %struct.zip* %55, null
  br i1 %56, label %57, label %62

57:                                               ; preds = %51
  %58 = load %struct.zip_cdir*, %struct.zip_cdir** %11, align 8
  %59 = call i32 @_zip_cdir_free(%struct.zip_cdir* %58)
  %60 = load i32*, i32** %7, align 8
  %61 = call i32 @fclose(i32* %60)
  store %struct.zip* null, %struct.zip** %5, align 8
  br label %97

62:                                               ; preds = %51
  %63 = load %struct.zip_cdir*, %struct.zip_cdir** %11, align 8
  %64 = getelementptr inbounds %struct.zip_cdir, %struct.zip_cdir* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.zip*, %struct.zip** %10, align 8
  %67 = getelementptr inbounds %struct.zip, %struct.zip* %66, i32 0, i32 6
  store i32 %65, i32* %67, align 4
  %68 = load %struct.zip_cdir*, %struct.zip_cdir** %11, align 8
  %69 = getelementptr inbounds %struct.zip_cdir, %struct.zip_cdir* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.zip*, %struct.zip** %10, align 8
  %72 = getelementptr inbounds %struct.zip, %struct.zip* %71, i32 0, i32 5
  store i32 %70, i32* %72, align 8
  %73 = load %struct.zip_cdir*, %struct.zip_cdir** %11, align 8
  %74 = getelementptr inbounds %struct.zip_cdir, %struct.zip_cdir* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.zip*, %struct.zip** %10, align 8
  %77 = getelementptr inbounds %struct.zip, %struct.zip* %76, i32 0, i32 4
  store i32 %75, i32* %77, align 4
  %78 = load %struct.zip_cdir*, %struct.zip_cdir** %11, align 8
  %79 = getelementptr inbounds %struct.zip_cdir, %struct.zip_cdir* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.zip*, %struct.zip** %10, align 8
  %82 = getelementptr inbounds %struct.zip, %struct.zip* %81, i32 0, i32 3
  store i32 %80, i32* %82, align 8
  %83 = load i32*, i32** %7, align 8
  %84 = load %struct.zip*, %struct.zip** %10, align 8
  %85 = getelementptr inbounds %struct.zip, %struct.zip* %84, i32 0, i32 2
  store i32* %83, i32** %85, align 8
  %86 = load %struct.zip*, %struct.zip** %10, align 8
  %87 = load %struct.zip_cdir*, %struct.zip_cdir** %11, align 8
  %88 = call i32 @_zip_check_torrentzip(%struct.zip* %86, %struct.zip_cdir* %87)
  %89 = load %struct.zip*, %struct.zip** %10, align 8
  %90 = getelementptr inbounds %struct.zip, %struct.zip* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.zip*, %struct.zip** %10, align 8
  %93 = getelementptr inbounds %struct.zip, %struct.zip* %92, i32 0, i32 1
  store i32 %91, i32* %93, align 4
  %94 = load %struct.zip_cdir*, %struct.zip_cdir** %11, align 8
  %95 = call i32 @free(%struct.zip_cdir* %94)
  %96 = load %struct.zip*, %struct.zip** %10, align 8
  store %struct.zip* %96, %struct.zip** %5, align 8
  br label %97

97:                                               ; preds = %62, %57, %48, %38, %17
  %98 = load %struct.zip*, %struct.zip** %5, align 8
  ret %struct.zip* %98
}

declare dso_local i64 @fseeko(i32*, i32, i32) #1

declare dso_local i64 @ftello(i32*) #1

declare dso_local %struct.zip* @_zip_allocate_new(i8*, i32, i32*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local %struct.zip_cdir* @_zip_find_central_dir(i32*, i32, i32*, i64) #1

declare dso_local i32 @_zip_cdir_free(%struct.zip_cdir*) #1

declare dso_local i32 @_zip_check_torrentzip(%struct.zip*, %struct.zip_cdir*) #1

declare dso_local i32 @free(%struct.zip_cdir*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
