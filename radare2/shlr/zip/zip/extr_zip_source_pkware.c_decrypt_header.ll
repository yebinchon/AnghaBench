; ModuleID = '/home/carl/AnghaBench/radare2/shlr/zip/zip/extr_zip_source_pkware.c_decrypt_header.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/zip/zip/extr_zip_source_pkware.c_decrypt_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zip_source = type { i32 }
%struct.trad_pkware = type { i64* }
%struct.zip_stat = type { i16, i32 }

@HEADERLEN = common dso_local global i32 0, align 4
@ZIP_ER_EOF = common dso_local global i64 0, align 8
@ZIP_ER_WRONGPASSWD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.zip_source*, %struct.trad_pkware*)* @decrypt_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decrypt_header(%struct.zip_source* %0, %struct.trad_pkware* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.zip_source*, align 8
  %5 = alloca %struct.trad_pkware*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.zip_stat, align 4
  %9 = alloca i32, align 4
  %10 = alloca i16, align 2
  %11 = alloca i16, align 2
  %12 = alloca i32, align 4
  store %struct.zip_source* %0, %struct.zip_source** %4, align 8
  store %struct.trad_pkware* %1, %struct.trad_pkware** %5, align 8
  %13 = load i32, i32* @HEADERLEN, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %6, align 8
  %16 = alloca i16, i64 %14, align 16
  store i64 %14, i64* %7, align 8
  %17 = load %struct.zip_source*, %struct.zip_source** %4, align 8
  %18 = load i32, i32* @HEADERLEN, align 4
  %19 = call i32 @zip_source_read(%struct.zip_source* %17, i16* %16, i32 %18)
  store i32 %19, i32* %9, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %31

21:                                               ; preds = %2
  %22 = load %struct.zip_source*, %struct.zip_source** %4, align 8
  %23 = load %struct.trad_pkware*, %struct.trad_pkware** %5, align 8
  %24 = getelementptr inbounds %struct.trad_pkware, %struct.trad_pkware* %23, i32 0, i32 0
  %25 = load i64*, i64** %24, align 8
  %26 = load %struct.trad_pkware*, %struct.trad_pkware** %5, align 8
  %27 = getelementptr inbounds %struct.trad_pkware, %struct.trad_pkware* %26, i32 0, i32 0
  %28 = load i64*, i64** %27, align 8
  %29 = getelementptr inbounds i64, i64* %28, i64 1
  %30 = call i32 @zip_source_error(%struct.zip_source* %22, i64* %25, i64* %29)
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %90

31:                                               ; preds = %2
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* @HEADERLEN, align 4
  %34 = icmp ne i32 %32, %33
  br i1 %34, label %35, label %45

35:                                               ; preds = %31
  %36 = load i64, i64* @ZIP_ER_EOF, align 8
  %37 = load %struct.trad_pkware*, %struct.trad_pkware** %5, align 8
  %38 = getelementptr inbounds %struct.trad_pkware, %struct.trad_pkware* %37, i32 0, i32 0
  %39 = load i64*, i64** %38, align 8
  %40 = getelementptr inbounds i64, i64* %39, i64 0
  store i64 %36, i64* %40, align 8
  %41 = load %struct.trad_pkware*, %struct.trad_pkware** %5, align 8
  %42 = getelementptr inbounds %struct.trad_pkware, %struct.trad_pkware* %41, i32 0, i32 0
  %43 = load i64*, i64** %42, align 8
  %44 = getelementptr inbounds i64, i64* %43, i64 1
  store i64 0, i64* %44, align 8
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %90

45:                                               ; preds = %31
  %46 = load %struct.trad_pkware*, %struct.trad_pkware** %5, align 8
  %47 = load i32, i32* @HEADERLEN, align 4
  %48 = call i32 @decrypt(%struct.trad_pkware* %46, i16* %16, i16* %16, i32 %47, i32 0)
  %49 = load %struct.zip_source*, %struct.zip_source** %4, align 8
  %50 = call i64 @zip_source_stat(%struct.zip_source* %49, %struct.zip_stat* %8)
  %51 = icmp slt i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %45
  store i32 0, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %90

53:                                               ; preds = %45
  %54 = getelementptr inbounds %struct.zip_stat, %struct.zip_stat* %8, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @_zip_u2d_time(i32 %55, i16* %10, i16* %11)
  %57 = load i32, i32* @HEADERLEN, align 4
  %58 = sub nsw i32 %57, 1
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i16, i16* %16, i64 %59
  %61 = load i16, i16* %60, align 2
  %62 = zext i16 %61 to i32
  %63 = getelementptr inbounds %struct.zip_stat, %struct.zip_stat* %8, i32 0, i32 0
  %64 = load i16, i16* %63, align 4
  %65 = zext i16 %64 to i32
  %66 = ashr i32 %65, 24
  %67 = icmp ne i32 %62, %66
  br i1 %67, label %68, label %89

68:                                               ; preds = %53
  %69 = load i32, i32* @HEADERLEN, align 4
  %70 = sub nsw i32 %69, 1
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i16, i16* %16, i64 %71
  %73 = load i16, i16* %72, align 2
  %74 = zext i16 %73 to i32
  %75 = load i16, i16* %10, align 2
  %76 = zext i16 %75 to i32
  %77 = ashr i32 %76, 8
  %78 = icmp ne i32 %74, %77
  br i1 %78, label %79, label %89

79:                                               ; preds = %68
  %80 = load i64, i64* @ZIP_ER_WRONGPASSWD, align 8
  %81 = load %struct.trad_pkware*, %struct.trad_pkware** %5, align 8
  %82 = getelementptr inbounds %struct.trad_pkware, %struct.trad_pkware* %81, i32 0, i32 0
  %83 = load i64*, i64** %82, align 8
  %84 = getelementptr inbounds i64, i64* %83, i64 0
  store i64 %80, i64* %84, align 8
  %85 = load %struct.trad_pkware*, %struct.trad_pkware** %5, align 8
  %86 = getelementptr inbounds %struct.trad_pkware, %struct.trad_pkware* %85, i32 0, i32 0
  %87 = load i64*, i64** %86, align 8
  %88 = getelementptr inbounds i64, i64* %87, i64 1
  store i64 0, i64* %88, align 8
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %90

89:                                               ; preds = %68, %53
  store i32 0, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %90

90:                                               ; preds = %89, %79, %52, %35, %21
  %91 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %91)
  %92 = load i32, i32* %3, align 4
  ret i32 %92
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @zip_source_read(%struct.zip_source*, i16*, i32) #2

declare dso_local i32 @zip_source_error(%struct.zip_source*, i64*, i64*) #2

declare dso_local i32 @decrypt(%struct.trad_pkware*, i16*, i16*, i32, i32) #2

declare dso_local i64 @zip_source_stat(%struct.zip_source*, %struct.zip_stat*) #2

declare dso_local i32 @_zip_u2d_time(i32, i16*, i16*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
