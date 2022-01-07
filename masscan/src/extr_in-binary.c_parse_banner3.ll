; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_in-binary.c_parse_banner3.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_in-binary.c_parse_banner3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Output = type { i8 }
%struct.MasscanRecord = type { i8, i8, i8, i8 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.Output*, i8*, i64)* @parse_banner3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_banner3(%struct.Output* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.Output*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.MasscanRecord, align 1
  store %struct.Output* %0, %struct.Output** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = getelementptr inbounds i8, i8* %8, i64 0
  %10 = load i8, i8* %9, align 1
  %11 = zext i8 %10 to i32
  %12 = shl i32 %11, 24
  %13 = load i8*, i8** %5, align 8
  %14 = getelementptr inbounds i8, i8* %13, i64 1
  %15 = load i8, i8* %14, align 1
  %16 = zext i8 %15 to i32
  %17 = shl i32 %16, 16
  %18 = or i32 %12, %17
  %19 = load i8*, i8** %5, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 2
  %21 = load i8, i8* %20, align 1
  %22 = zext i8 %21 to i32
  %23 = shl i32 %22, 8
  %24 = or i32 %18, %23
  %25 = load i8*, i8** %5, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 3
  %27 = load i8, i8* %26, align 1
  %28 = zext i8 %27 to i32
  %29 = or i32 %24, %28
  %30 = trunc i32 %29 to i8
  %31 = getelementptr inbounds %struct.MasscanRecord, %struct.MasscanRecord* %7, i32 0, i32 0
  store i8 %30, i8* %31, align 1
  %32 = load i8*, i8** %5, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 4
  %34 = load i8, i8* %33, align 1
  %35 = zext i8 %34 to i32
  %36 = shl i32 %35, 24
  %37 = load i8*, i8** %5, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 5
  %39 = load i8, i8* %38, align 1
  %40 = zext i8 %39 to i32
  %41 = shl i32 %40, 16
  %42 = or i32 %36, %41
  %43 = load i8*, i8** %5, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 6
  %45 = load i8, i8* %44, align 1
  %46 = zext i8 %45 to i32
  %47 = shl i32 %46, 8
  %48 = or i32 %42, %47
  %49 = load i8*, i8** %5, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 7
  %51 = load i8, i8* %50, align 1
  %52 = zext i8 %51 to i32
  %53 = or i32 %48, %52
  %54 = trunc i32 %53 to i8
  %55 = getelementptr inbounds %struct.MasscanRecord, %struct.MasscanRecord* %7, i32 0, i32 1
  store i8 %54, i8* %55, align 1
  %56 = load i8*, i8** %5, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 8
  %58 = load i8, i8* %57, align 1
  %59 = zext i8 %58 to i32
  %60 = shl i32 %59, 8
  %61 = load i8*, i8** %5, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 9
  %63 = load i8, i8* %62, align 1
  %64 = zext i8 %63 to i32
  %65 = or i32 %60, %64
  %66 = trunc i32 %65 to i8
  %67 = getelementptr inbounds %struct.MasscanRecord, %struct.MasscanRecord* %7, i32 0, i32 2
  store i8 %66, i8* %67, align 1
  %68 = load i8*, i8** %5, align 8
  %69 = getelementptr inbounds i8, i8* %68, i64 10
  %70 = load i8, i8* %69, align 1
  %71 = zext i8 %70 to i32
  %72 = shl i32 %71, 8
  %73 = load i8*, i8** %5, align 8
  %74 = getelementptr inbounds i8, i8* %73, i64 11
  %75 = load i8, i8* %74, align 1
  %76 = zext i8 %75 to i32
  %77 = or i32 %72, %76
  %78 = trunc i32 %77 to i8
  %79 = getelementptr inbounds %struct.MasscanRecord, %struct.MasscanRecord* %7, i32 0, i32 3
  store i8 %78, i8* %79, align 1
  %80 = load %struct.Output*, %struct.Output** %4, align 8
  %81 = getelementptr inbounds %struct.Output, %struct.Output* %80, i32 0, i32 0
  %82 = load i8, i8* %81, align 1
  %83 = zext i8 %82 to i32
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %3
  %86 = getelementptr inbounds %struct.MasscanRecord, %struct.MasscanRecord* %7, i32 0, i32 0
  %87 = load i8, i8* %86, align 1
  %88 = load %struct.Output*, %struct.Output** %4, align 8
  %89 = getelementptr inbounds %struct.Output, %struct.Output* %88, i32 0, i32 0
  store i8 %87, i8* %89, align 1
  br label %90

90:                                               ; preds = %85, %3
  %91 = load %struct.Output*, %struct.Output** %4, align 8
  %92 = getelementptr inbounds %struct.MasscanRecord, %struct.MasscanRecord* %7, i32 0, i32 0
  %93 = load i8, i8* %92, align 1
  %94 = getelementptr inbounds %struct.MasscanRecord, %struct.MasscanRecord* %7, i32 0, i32 1
  %95 = load i8, i8* %94, align 1
  %96 = getelementptr inbounds %struct.MasscanRecord, %struct.MasscanRecord* %7, i32 0, i32 2
  %97 = load i8, i8* %96, align 1
  %98 = getelementptr inbounds %struct.MasscanRecord, %struct.MasscanRecord* %7, i32 0, i32 3
  %99 = load i8, i8* %98, align 1
  %100 = load i8*, i8** %5, align 8
  %101 = getelementptr inbounds i8, i8* %100, i64 12
  %102 = load i64, i64* %6, align 8
  %103 = trunc i64 %102 to i32
  %104 = sub i32 %103, 12
  %105 = call i32 @output_report_banner(%struct.Output* %91, i8 zeroext %93, i8 zeroext %95, i32 6, i8 zeroext %97, i8 zeroext %99, i32 0, i8* %101, i32 %104)
  ret void
}

declare dso_local i32 @output_report_banner(%struct.Output*, i8 zeroext, i8 zeroext, i32, i8 zeroext, i8 zeroext, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
