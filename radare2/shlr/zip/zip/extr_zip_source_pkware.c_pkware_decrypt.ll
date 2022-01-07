; ModuleID = '/home/carl/AnghaBench/radare2/shlr/zip/zip/extr_zip_source_pkware.c_pkware_decrypt.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/zip/zip/extr_zip_source_pkware.c_pkware_decrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zip_source = type { i32 }
%struct.trad_pkware = type { i32* }
%struct.zip_stat = type { i32, i32, i32 }

@ZIP_SOURCE_ERR_LOWER = common dso_local global i32 0, align 4
@ZIP_EM_NONE = common dso_local global i32 0, align 4
@ZIP_STAT_ENCRYPTION_METHOD = common dso_local global i32 0, align 4
@ZIP_STAT_COMP_SIZE = common dso_local global i32 0, align 4
@HEADERLEN = common dso_local global i32 0, align 4
@ZIP_ER_INVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.zip_source*, i8*, i8*, i32, i32)* @pkware_decrypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pkware_decrypt(%struct.zip_source* %0, i8* %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.zip_source*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.trad_pkware*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.zip_stat*, align 8
  store %struct.zip_source* %0, %struct.zip_source** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %15 = load i8*, i8** %8, align 8
  %16 = bitcast i8* %15 to %struct.trad_pkware*
  store %struct.trad_pkware* %16, %struct.trad_pkware** %12, align 8
  %17 = load i32, i32* %11, align 4
  switch i32 %17, label %77 [
    i32 130, label %18
    i32 129, label %25
    i32 133, label %43
    i32 128, label %44
    i32 132, label %68
    i32 131, label %74
  ]

18:                                               ; preds = %5
  %19 = load %struct.zip_source*, %struct.zip_source** %7, align 8
  %20 = load %struct.trad_pkware*, %struct.trad_pkware** %12, align 8
  %21 = call i32 @decrypt_header(%struct.zip_source* %19, %struct.trad_pkware* %20)
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  store i32 -1, i32* %6, align 4
  br label %87

24:                                               ; preds = %18
  store i32 0, i32* %6, align 4
  br label %87

25:                                               ; preds = %5
  %26 = load %struct.zip_source*, %struct.zip_source** %7, align 8
  %27 = load i8*, i8** %9, align 8
  %28 = load i32, i32* %10, align 4
  %29 = call i32 @zip_source_read(%struct.zip_source* %26, i8* %27, i32 %28)
  store i32 %29, i32* %13, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %25
  %32 = load i32, i32* @ZIP_SOURCE_ERR_LOWER, align 4
  store i32 %32, i32* %6, align 4
  br label %87

33:                                               ; preds = %25
  %34 = load i8*, i8** %8, align 8
  %35 = bitcast i8* %34 to %struct.trad_pkware*
  %36 = load i8*, i8** %9, align 8
  %37 = bitcast i8* %36 to i32*
  %38 = load i8*, i8** %9, align 8
  %39 = bitcast i8* %38 to i32*
  %40 = load i32, i32* %13, align 4
  %41 = call i32 @decrypt(%struct.trad_pkware* %35, i32* %37, i32* %39, i32 %40, i32 0)
  %42 = load i32, i32* %13, align 4
  store i32 %42, i32* %6, align 4
  br label %87

43:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %87

44:                                               ; preds = %5
  %45 = load i8*, i8** %9, align 8
  %46 = bitcast i8* %45 to %struct.zip_stat*
  store %struct.zip_stat* %46, %struct.zip_stat** %14, align 8
  %47 = load i32, i32* @ZIP_EM_NONE, align 4
  %48 = load %struct.zip_stat*, %struct.zip_stat** %14, align 8
  %49 = getelementptr inbounds %struct.zip_stat, %struct.zip_stat* %48, i32 0, i32 2
  store i32 %47, i32* %49, align 4
  %50 = load i32, i32* @ZIP_STAT_ENCRYPTION_METHOD, align 4
  %51 = load %struct.zip_stat*, %struct.zip_stat** %14, align 8
  %52 = getelementptr inbounds %struct.zip_stat, %struct.zip_stat* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = or i32 %53, %50
  store i32 %54, i32* %52, align 4
  %55 = load %struct.zip_stat*, %struct.zip_stat** %14, align 8
  %56 = getelementptr inbounds %struct.zip_stat, %struct.zip_stat* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @ZIP_STAT_COMP_SIZE, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %44
  %62 = load i32, i32* @HEADERLEN, align 4
  %63 = load %struct.zip_stat*, %struct.zip_stat** %14, align 8
  %64 = getelementptr inbounds %struct.zip_stat, %struct.zip_stat* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = sub nsw i32 %65, %62
  store i32 %66, i32* %64, align 4
  br label %67

67:                                               ; preds = %61, %44
  store i32 0, i32* %6, align 4
  br label %87

68:                                               ; preds = %5
  %69 = load i8*, i8** %9, align 8
  %70 = load %struct.trad_pkware*, %struct.trad_pkware** %12, align 8
  %71 = getelementptr inbounds %struct.trad_pkware, %struct.trad_pkware* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = call i32 @memcpy(i8* %69, i32* %72, i32 8)
  store i32 8, i32* %6, align 4
  br label %87

74:                                               ; preds = %5
  %75 = load %struct.trad_pkware*, %struct.trad_pkware** %12, align 8
  %76 = call i32 @pkware_free(%struct.trad_pkware* %75)
  store i32 0, i32* %6, align 4
  br label %87

77:                                               ; preds = %5
  %78 = load i32, i32* @ZIP_ER_INVAL, align 4
  %79 = load %struct.trad_pkware*, %struct.trad_pkware** %12, align 8
  %80 = getelementptr inbounds %struct.trad_pkware, %struct.trad_pkware* %79, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 0
  store i32 %78, i32* %82, align 4
  %83 = load %struct.trad_pkware*, %struct.trad_pkware** %12, align 8
  %84 = getelementptr inbounds %struct.trad_pkware, %struct.trad_pkware* %83, i32 0, i32 0
  %85 = load i32*, i32** %84, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 1
  store i32 0, i32* %86, align 4
  store i32 -1, i32* %6, align 4
  br label %87

87:                                               ; preds = %77, %74, %68, %67, %43, %33, %31, %24, %23
  %88 = load i32, i32* %6, align 4
  ret i32 %88
}

declare dso_local i32 @decrypt_header(%struct.zip_source*, %struct.trad_pkware*) #1

declare dso_local i32 @zip_source_read(%struct.zip_source*, i8*, i32) #1

declare dso_local i32 @decrypt(%struct.trad_pkware*, i32*, i32*, i32, i32) #1

declare dso_local i32 @memcpy(i8*, i32*, i32) #1

declare dso_local i32 @pkware_free(%struct.trad_pkware*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
