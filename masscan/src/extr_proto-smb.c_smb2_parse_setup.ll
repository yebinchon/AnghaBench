; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_proto-smb.c_smb2_parse_setup.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_proto-smb.c_smb2_parse_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SMBSTUFF = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i64, i64, i8, i8 }
%struct.BannerOutput = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.SMBSTUFF*, i8*, i64, i64, %struct.BannerOutput*)* @smb2_parse_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @smb2_parse_setup(%struct.SMBSTUFF* %0, i8* %1, i64 %2, i64 %3, %struct.BannerOutput* %4) #0 {
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
  %20 = call i32 @UNUSEDPARM(%struct.BannerOutput* %19)
  %21 = load i64, i64* %9, align 8
  %22 = load i64, i64* %8, align 8
  %23 = load %struct.SMBSTUFF*, %struct.SMBSTUFF** %6, align 8
  %24 = getelementptr inbounds %struct.SMBSTUFF, %struct.SMBSTUFF* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.SMBSTUFF*, %struct.SMBSTUFF** %6, align 8
  %29 = getelementptr inbounds %struct.SMBSTUFF, %struct.SMBSTUFF* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = sub i64 %27, %32
  %34 = add i64 %22, %33
  %35 = icmp ugt i64 %21, %34
  br i1 %35, label %36, label %50

36:                                               ; preds = %5
  %37 = load i64, i64* %8, align 8
  %38 = load %struct.SMBSTUFF*, %struct.SMBSTUFF** %6, align 8
  %39 = getelementptr inbounds %struct.SMBSTUFF, %struct.SMBSTUFF* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.SMBSTUFF*, %struct.SMBSTUFF** %6, align 8
  %44 = getelementptr inbounds %struct.SMBSTUFF, %struct.SMBSTUFF* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = sub i64 %42, %47
  %49 = add i64 %37, %48
  store i64 %49, i64* %9, align 8
  br label %50

50:                                               ; preds = %36, %5
  br label %51

51:                                               ; preds = %118, %50
  %52 = load i64, i64* %8, align 8
  %53 = load i64, i64* %9, align 8
  %54 = icmp ult i64 %52, %53
  br i1 %54, label %55, label %121

55:                                               ; preds = %51
  %56 = load i32, i32* %12, align 4
  switch i32 %56, label %116 [
    i32 0, label %57
    i32 1, label %57
    i32 2, label %60
    i32 3, label %71
    i32 4, label %88
    i32 5, label %99
  ]

57:                                               ; preds = %55, %55
  %58 = load i32, i32* %12, align 4
  %59 = add i32 %58, 1
  store i32 %59, i32* %12, align 4
  br label %117

60:                                               ; preds = %55
  %61 = load i8*, i8** %7, align 8
  %62 = load i64, i64* %8, align 8
  %63 = getelementptr inbounds i8, i8* %61, i64 %62
  %64 = load i8, i8* %63, align 1
  %65 = load %struct.SMBSTUFF*, %struct.SMBSTUFF** %6, align 8
  %66 = getelementptr inbounds %struct.SMBSTUFF, %struct.SMBSTUFF* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 3
  store i8 %64, i8* %68, align 8
  %69 = load i32, i32* %12, align 4
  %70 = add i32 %69, 1
  store i32 %70, i32* %12, align 4
  br label %117

71:                                               ; preds = %55
  %72 = load i8*, i8** %7, align 8
  %73 = load i64, i64* %8, align 8
  %74 = getelementptr inbounds i8, i8* %72, i64 %73
  %75 = load i8, i8* %74, align 1
  %76 = zext i8 %75 to i32
  %77 = shl i32 %76, 8
  %78 = load %struct.SMBSTUFF*, %struct.SMBSTUFF** %6, align 8
  %79 = getelementptr inbounds %struct.SMBSTUFF, %struct.SMBSTUFF* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 3
  %82 = load i8, i8* %81, align 8
  %83 = zext i8 %82 to i32
  %84 = or i32 %83, %77
  %85 = trunc i32 %84 to i8
  store i8 %85, i8* %81, align 8
  %86 = load i32, i32* %12, align 4
  %87 = add i32 %86, 1
  store i32 %87, i32* %12, align 4
  br label %117

88:                                               ; preds = %55
  %89 = load i8*, i8** %7, align 8
  %90 = load i64, i64* %8, align 8
  %91 = getelementptr inbounds i8, i8* %89, i64 %90
  %92 = load i8, i8* %91, align 1
  %93 = load %struct.SMBSTUFF*, %struct.SMBSTUFF** %6, align 8
  %94 = getelementptr inbounds %struct.SMBSTUFF, %struct.SMBSTUFF* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 4
  store i8 %92, i8* %96, align 1
  %97 = load i32, i32* %12, align 4
  %98 = add i32 %97, 1
  store i32 %98, i32* %12, align 4
  br label %117

99:                                               ; preds = %55
  %100 = load i8*, i8** %7, align 8
  %101 = load i64, i64* %8, align 8
  %102 = getelementptr inbounds i8, i8* %100, i64 %101
  %103 = load i8, i8* %102, align 1
  %104 = zext i8 %103 to i32
  %105 = shl i32 %104, 8
  %106 = load %struct.SMBSTUFF*, %struct.SMBSTUFF** %6, align 8
  %107 = getelementptr inbounds %struct.SMBSTUFF, %struct.SMBSTUFF* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 4
  %110 = load i8, i8* %109, align 1
  %111 = zext i8 %110 to i32
  %112 = or i32 %111, %105
  %113 = trunc i32 %112 to i8
  store i8 %113, i8* %109, align 1
  %114 = load i32, i32* %12, align 4
  %115 = add i32 %114, 1
  store i32 %115, i32* %12, align 4
  br label %117

116:                                              ; preds = %55
  br label %117

117:                                              ; preds = %116, %99, %88, %71, %60, %57
  br label %118

118:                                              ; preds = %117
  %119 = load i64, i64* %8, align 8
  %120 = add i64 %119, 1
  store i64 %120, i64* %8, align 8
  br label %51

121:                                              ; preds = %51
  %122 = load i32, i32* %12, align 4
  %123 = trunc i32 %122 to i16
  %124 = zext i16 %123 to i32
  %125 = load %struct.SMBSTUFF*, %struct.SMBSTUFF** %6, align 8
  %126 = getelementptr inbounds %struct.SMBSTUFF, %struct.SMBSTUFF* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %127, i32 0, i32 0
  store i32 %124, i32* %128, align 8
  %129 = load i64, i64* %8, align 8
  %130 = load i64, i64* %11, align 8
  %131 = sub i64 %129, %130
  %132 = trunc i64 %131 to i16
  %133 = zext i16 %132 to i64
  %134 = load %struct.SMBSTUFF*, %struct.SMBSTUFF** %6, align 8
  %135 = getelementptr inbounds %struct.SMBSTUFF, %struct.SMBSTUFF* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %136, i32 0, i32 2
  %138 = load i64, i64* %137, align 8
  %139 = add i64 %138, %133
  store i64 %139, i64* %137, align 8
  %140 = load i64, i64* %8, align 8
  %141 = load i64, i64* %11, align 8
  %142 = sub i64 %140, %141
  ret i64 %142
}

declare dso_local i32 @UNUSEDPARM(%struct.BannerOutput*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
