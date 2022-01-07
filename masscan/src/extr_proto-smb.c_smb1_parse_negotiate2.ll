; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_proto-smb.c_smb1_parse_negotiate2.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_proto-smb.c_smb1_parse_negotiate2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SMBSTUFF = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i64, i64 }
%struct.BannerOutput = type opaque

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.SMBSTUFF*, i8*, i64, i64, %struct.BannerOutput*)* @smb1_parse_negotiate2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @smb1_parse_negotiate2(%struct.SMBSTUFF* %0, i8* %1, i64 %2, i64 %3, %struct.BannerOutput* %4) #0 {
  %6 = alloca %struct.SMBSTUFF*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.BannerOutput*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.SMBSTUFF* %0, %struct.SMBSTUFF** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store %struct.BannerOutput* %4, %struct.BannerOutput** %10, align 8
  %13 = load i64, i64* %8, align 8
  store i64 %13, i64* %11, align 8
  %14 = load %struct.SMBSTUFF*, %struct.SMBSTUFF** %6, align 8
  %15 = getelementptr inbounds %struct.SMBSTUFF, %struct.SMBSTUFF* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %12, align 4
  %19 = load %struct.BannerOutput*, %struct.BannerOutput** %10, align 8
  %20 = bitcast %struct.BannerOutput* %19 to i8*
  %21 = call i32 @UNUSEDPARM(i8* %20)
  %22 = load i8*, i8** %7, align 8
  %23 = call i32 @UNUSEDPARM(i8* %22)
  %24 = load i64, i64* %9, align 8
  %25 = load i64, i64* %8, align 8
  %26 = load %struct.SMBSTUFF*, %struct.SMBSTUFF** %6, align 8
  %27 = getelementptr inbounds %struct.SMBSTUFF, %struct.SMBSTUFF* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.SMBSTUFF*, %struct.SMBSTUFF** %6, align 8
  %32 = getelementptr inbounds %struct.SMBSTUFF, %struct.SMBSTUFF* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = sub i64 %30, %35
  %37 = add i64 %25, %36
  %38 = icmp ugt i64 %24, %37
  br i1 %38, label %39, label %53

39:                                               ; preds = %5
  %40 = load i64, i64* %8, align 8
  %41 = load %struct.SMBSTUFF*, %struct.SMBSTUFF** %6, align 8
  %42 = getelementptr inbounds %struct.SMBSTUFF, %struct.SMBSTUFF* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.SMBSTUFF*, %struct.SMBSTUFF** %6, align 8
  %47 = getelementptr inbounds %struct.SMBSTUFF, %struct.SMBSTUFF* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = sub i64 %45, %50
  %52 = add i64 %40, %51
  store i64 %52, i64* %9, align 8
  br label %53

53:                                               ; preds = %39, %5
  br label %54

54:                                               ; preds = %63, %53
  %55 = load i64, i64* %8, align 8
  %56 = load i64, i64* %9, align 8
  %57 = icmp ult i64 %55, %56
  br i1 %57, label %58, label %66

58:                                               ; preds = %54
  %59 = load i32, i32* %12, align 4
  switch i32 %59, label %61 [
    i32 0, label %60
  ]

60:                                               ; preds = %58
  store i32 1, i32* %12, align 4
  br label %62

61:                                               ; preds = %58
  br label %62

62:                                               ; preds = %61, %60
  br label %63

63:                                               ; preds = %62
  %64 = load i64, i64* %8, align 8
  %65 = add i64 %64, 1
  store i64 %65, i64* %8, align 8
  br label %54

66:                                               ; preds = %54
  %67 = load i32, i32* %12, align 4
  %68 = trunc i32 %67 to i16
  %69 = zext i16 %68 to i32
  %70 = load %struct.SMBSTUFF*, %struct.SMBSTUFF** %6, align 8
  %71 = getelementptr inbounds %struct.SMBSTUFF, %struct.SMBSTUFF* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  store i32 %69, i32* %73, align 8
  %74 = load i64, i64* %8, align 8
  %75 = load i64, i64* %11, align 8
  %76 = sub i64 %74, %75
  %77 = trunc i64 %76 to i16
  %78 = zext i16 %77 to i64
  %79 = load %struct.SMBSTUFF*, %struct.SMBSTUFF** %6, align 8
  %80 = getelementptr inbounds %struct.SMBSTUFF, %struct.SMBSTUFF* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = add i64 %83, %78
  store i64 %84, i64* %82, align 8
  %85 = load i64, i64* %8, align 8
  %86 = load i64, i64* %11, align 8
  %87 = sub i64 %85, %86
  ret i64 %87
}

declare dso_local i32 @UNUSEDPARM(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
