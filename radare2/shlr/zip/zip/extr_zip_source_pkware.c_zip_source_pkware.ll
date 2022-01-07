; ModuleID = '/home/carl/AnghaBench/radare2/shlr/zip/zip/extr_zip_source_pkware.c_zip_source_pkware.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/zip/zip/extr_zip_source_pkware.c_zip_source_pkware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zip = type { i32 }
%struct.zip_source = type { i32 }
%struct.trad_pkware = type { i32*, i64* }

@ZIP_EM_TRAD_PKWARE = common dso_local global i64 0, align 8
@ZIP_ER_INVAL = common dso_local global i32 0, align 4
@ZIP_CODEC_ENCODE = common dso_local global i32 0, align 4
@ZIP_ER_ENCRNOTSUPP = common dso_local global i32 0, align 4
@ZIP_ER_MEMORY = common dso_local global i32 0, align 4
@KEY0 = common dso_local global i32 0, align 4
@KEY1 = common dso_local global i32 0, align 4
@KEY2 = common dso_local global i32 0, align 4
@pkware_decrypt = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.zip_source* @zip_source_pkware(%struct.zip* %0, %struct.zip_source* %1, i64 %2, i32 %3, i8* %4) #0 {
  %6 = alloca %struct.zip_source*, align 8
  %7 = alloca %struct.zip*, align 8
  %8 = alloca %struct.zip_source*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.trad_pkware*, align 8
  %13 = alloca %struct.zip_source*, align 8
  store %struct.zip* %0, %struct.zip** %7, align 8
  store %struct.zip_source* %1, %struct.zip_source** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  %14 = load i8*, i8** %11, align 8
  %15 = icmp eq i8* %14, null
  br i1 %15, label %23, label %16

16:                                               ; preds = %5
  %17 = load %struct.zip_source*, %struct.zip_source** %8, align 8
  %18 = icmp eq %struct.zip_source* %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %16
  %20 = load i64, i64* %9, align 8
  %21 = load i64, i64* @ZIP_EM_TRAD_PKWARE, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %28

23:                                               ; preds = %19, %16, %5
  %24 = load %struct.zip*, %struct.zip** %7, align 8
  %25 = getelementptr inbounds %struct.zip, %struct.zip* %24, i32 0, i32 0
  %26 = load i32, i32* @ZIP_ER_INVAL, align 4
  %27 = call i32 @_zip_error_set(i32* %25, i32 %26, i32 0)
  store %struct.zip_source* null, %struct.zip_source** %6, align 8
  br label %88

28:                                               ; preds = %19
  %29 = load i32, i32* %10, align 4
  %30 = load i32, i32* @ZIP_CODEC_ENCODE, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %28
  %34 = load %struct.zip*, %struct.zip** %7, align 8
  %35 = getelementptr inbounds %struct.zip, %struct.zip* %34, i32 0, i32 0
  %36 = load i32, i32* @ZIP_ER_ENCRNOTSUPP, align 4
  %37 = call i32 @_zip_error_set(i32* %35, i32 %36, i32 0)
  store %struct.zip_source* null, %struct.zip_source** %6, align 8
  br label %88

38:                                               ; preds = %28
  %39 = call i64 @malloc(i32 16)
  %40 = inttoptr i64 %39 to %struct.trad_pkware*
  store %struct.trad_pkware* %40, %struct.trad_pkware** %12, align 8
  %41 = icmp eq %struct.trad_pkware* %40, null
  br i1 %41, label %42, label %47

42:                                               ; preds = %38
  %43 = load %struct.zip*, %struct.zip** %7, align 8
  %44 = getelementptr inbounds %struct.zip, %struct.zip* %43, i32 0, i32 0
  %45 = load i32, i32* @ZIP_ER_MEMORY, align 4
  %46 = call i32 @_zip_error_set(i32* %44, i32 %45, i32 0)
  store %struct.zip_source* null, %struct.zip_source** %6, align 8
  br label %88

47:                                               ; preds = %38
  %48 = load %struct.trad_pkware*, %struct.trad_pkware** %12, align 8
  %49 = getelementptr inbounds %struct.trad_pkware, %struct.trad_pkware* %48, i32 0, i32 1
  %50 = load i64*, i64** %49, align 8
  %51 = getelementptr inbounds i64, i64* %50, i64 1
  store i64 0, i64* %51, align 8
  %52 = load %struct.trad_pkware*, %struct.trad_pkware** %12, align 8
  %53 = getelementptr inbounds %struct.trad_pkware, %struct.trad_pkware* %52, i32 0, i32 1
  %54 = load i64*, i64** %53, align 8
  %55 = getelementptr inbounds i64, i64* %54, i64 0
  store i64 0, i64* %55, align 8
  %56 = load i32, i32* @KEY0, align 4
  %57 = load %struct.trad_pkware*, %struct.trad_pkware** %12, align 8
  %58 = getelementptr inbounds %struct.trad_pkware, %struct.trad_pkware* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 0
  store i32 %56, i32* %60, align 4
  %61 = load i32, i32* @KEY1, align 4
  %62 = load %struct.trad_pkware*, %struct.trad_pkware** %12, align 8
  %63 = getelementptr inbounds %struct.trad_pkware, %struct.trad_pkware* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 1
  store i32 %61, i32* %65, align 4
  %66 = load i32, i32* @KEY2, align 4
  %67 = load %struct.trad_pkware*, %struct.trad_pkware** %12, align 8
  %68 = getelementptr inbounds %struct.trad_pkware, %struct.trad_pkware* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 2
  store i32 %66, i32* %70, align 4
  %71 = load %struct.trad_pkware*, %struct.trad_pkware** %12, align 8
  %72 = load i8*, i8** %11, align 8
  %73 = bitcast i8* %72 to i32*
  %74 = load i8*, i8** %11, align 8
  %75 = call i32 @strlen(i8* %74)
  %76 = call i32 @decrypt(%struct.trad_pkware* %71, i32* null, i32* %73, i32 %75, i32 1)
  %77 = load %struct.zip*, %struct.zip** %7, align 8
  %78 = load %struct.zip_source*, %struct.zip_source** %8, align 8
  %79 = load i32, i32* @pkware_decrypt, align 4
  %80 = load %struct.trad_pkware*, %struct.trad_pkware** %12, align 8
  %81 = call %struct.zip_source* @zip_source_layered(%struct.zip* %77, %struct.zip_source* %78, i32 %79, %struct.trad_pkware* %80)
  store %struct.zip_source* %81, %struct.zip_source** %13, align 8
  %82 = icmp eq %struct.zip_source* %81, null
  br i1 %82, label %83, label %86

83:                                               ; preds = %47
  %84 = load %struct.trad_pkware*, %struct.trad_pkware** %12, align 8
  %85 = call i32 @pkware_free(%struct.trad_pkware* %84)
  store %struct.zip_source* null, %struct.zip_source** %6, align 8
  br label %88

86:                                               ; preds = %47
  %87 = load %struct.zip_source*, %struct.zip_source** %13, align 8
  store %struct.zip_source* %87, %struct.zip_source** %6, align 8
  br label %88

88:                                               ; preds = %86, %83, %42, %33, %23
  %89 = load %struct.zip_source*, %struct.zip_source** %6, align 8
  ret %struct.zip_source* %89
}

declare dso_local i32 @_zip_error_set(i32*, i32, i32) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @decrypt(%struct.trad_pkware*, i32*, i32*, i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local %struct.zip_source* @zip_source_layered(%struct.zip*, %struct.zip_source*, i32, %struct.trad_pkware*) #1

declare dso_local i32 @pkware_free(%struct.trad_pkware*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
