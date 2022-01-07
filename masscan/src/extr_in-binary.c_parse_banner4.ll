; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_in-binary.c_parse_banner4.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_in-binary.c_parse_banner4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Output = type { i8 }
%struct.MasscanRecord = type { i8, i8, i8, i8, i8 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.Output*, i8*, i64)* @parse_banner4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_banner4(%struct.Output* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.Output*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.MasscanRecord, align 1
  store %struct.Output* %0, %struct.Output** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load i64, i64* %6, align 8
  %9 = icmp ult i64 %8, 13
  br i1 %9, label %10, label %11

10:                                               ; preds = %3
  br label %116

11:                                               ; preds = %3
  %12 = load i8*, i8** %5, align 8
  %13 = getelementptr inbounds i8, i8* %12, i64 0
  %14 = load i8, i8* %13, align 1
  %15 = zext i8 %14 to i32
  %16 = shl i32 %15, 24
  %17 = load i8*, i8** %5, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 1
  %19 = load i8, i8* %18, align 1
  %20 = zext i8 %19 to i32
  %21 = shl i32 %20, 16
  %22 = or i32 %16, %21
  %23 = load i8*, i8** %5, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 2
  %25 = load i8, i8* %24, align 1
  %26 = zext i8 %25 to i32
  %27 = shl i32 %26, 8
  %28 = or i32 %22, %27
  %29 = load i8*, i8** %5, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 3
  %31 = load i8, i8* %30, align 1
  %32 = zext i8 %31 to i32
  %33 = or i32 %28, %32
  %34 = trunc i32 %33 to i8
  %35 = getelementptr inbounds %struct.MasscanRecord, %struct.MasscanRecord* %7, i32 0, i32 0
  store i8 %34, i8* %35, align 1
  %36 = load i8*, i8** %5, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 4
  %38 = load i8, i8* %37, align 1
  %39 = zext i8 %38 to i32
  %40 = shl i32 %39, 24
  %41 = load i8*, i8** %5, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 5
  %43 = load i8, i8* %42, align 1
  %44 = zext i8 %43 to i32
  %45 = shl i32 %44, 16
  %46 = or i32 %40, %45
  %47 = load i8*, i8** %5, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 6
  %49 = load i8, i8* %48, align 1
  %50 = zext i8 %49 to i32
  %51 = shl i32 %50, 8
  %52 = or i32 %46, %51
  %53 = load i8*, i8** %5, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 7
  %55 = load i8, i8* %54, align 1
  %56 = zext i8 %55 to i32
  %57 = or i32 %52, %56
  %58 = trunc i32 %57 to i8
  %59 = getelementptr inbounds %struct.MasscanRecord, %struct.MasscanRecord* %7, i32 0, i32 1
  store i8 %58, i8* %59, align 1
  %60 = load i8*, i8** %5, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 8
  %62 = load i8, i8* %61, align 1
  %63 = getelementptr inbounds %struct.MasscanRecord, %struct.MasscanRecord* %7, i32 0, i32 2
  store i8 %62, i8* %63, align 1
  %64 = load i8*, i8** %5, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 9
  %66 = load i8, i8* %65, align 1
  %67 = zext i8 %66 to i32
  %68 = shl i32 %67, 8
  %69 = load i8*, i8** %5, align 8
  %70 = getelementptr inbounds i8, i8* %69, i64 10
  %71 = load i8, i8* %70, align 1
  %72 = zext i8 %71 to i32
  %73 = or i32 %68, %72
  %74 = trunc i32 %73 to i8
  %75 = getelementptr inbounds %struct.MasscanRecord, %struct.MasscanRecord* %7, i32 0, i32 3
  store i8 %74, i8* %75, align 1
  %76 = load i8*, i8** %5, align 8
  %77 = getelementptr inbounds i8, i8* %76, i64 11
  %78 = load i8, i8* %77, align 1
  %79 = zext i8 %78 to i32
  %80 = shl i32 %79, 8
  %81 = load i8*, i8** %5, align 8
  %82 = getelementptr inbounds i8, i8* %81, i64 12
  %83 = load i8, i8* %82, align 1
  %84 = zext i8 %83 to i32
  %85 = or i32 %80, %84
  %86 = trunc i32 %85 to i8
  %87 = getelementptr inbounds %struct.MasscanRecord, %struct.MasscanRecord* %7, i32 0, i32 4
  store i8 %86, i8* %87, align 1
  %88 = load %struct.Output*, %struct.Output** %4, align 8
  %89 = getelementptr inbounds %struct.Output, %struct.Output* %88, i32 0, i32 0
  %90 = load i8, i8* %89, align 1
  %91 = zext i8 %90 to i32
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %98

93:                                               ; preds = %11
  %94 = getelementptr inbounds %struct.MasscanRecord, %struct.MasscanRecord* %7, i32 0, i32 0
  %95 = load i8, i8* %94, align 1
  %96 = load %struct.Output*, %struct.Output** %4, align 8
  %97 = getelementptr inbounds %struct.Output, %struct.Output* %96, i32 0, i32 0
  store i8 %95, i8* %97, align 1
  br label %98

98:                                               ; preds = %93, %11
  %99 = load %struct.Output*, %struct.Output** %4, align 8
  %100 = getelementptr inbounds %struct.MasscanRecord, %struct.MasscanRecord* %7, i32 0, i32 0
  %101 = load i8, i8* %100, align 1
  %102 = getelementptr inbounds %struct.MasscanRecord, %struct.MasscanRecord* %7, i32 0, i32 1
  %103 = load i8, i8* %102, align 1
  %104 = getelementptr inbounds %struct.MasscanRecord, %struct.MasscanRecord* %7, i32 0, i32 2
  %105 = load i8, i8* %104, align 1
  %106 = getelementptr inbounds %struct.MasscanRecord, %struct.MasscanRecord* %7, i32 0, i32 3
  %107 = load i8, i8* %106, align 1
  %108 = getelementptr inbounds %struct.MasscanRecord, %struct.MasscanRecord* %7, i32 0, i32 4
  %109 = load i8, i8* %108, align 1
  %110 = load i8*, i8** %5, align 8
  %111 = getelementptr inbounds i8, i8* %110, i64 13
  %112 = load i64, i64* %6, align 8
  %113 = trunc i64 %112 to i32
  %114 = sub i32 %113, 13
  %115 = call i32 @output_report_banner(%struct.Output* %99, i8 zeroext %101, i8 zeroext %103, i8 zeroext %105, i8 zeroext %107, i8 zeroext %109, i32 0, i8* %111, i32 %114)
  br label %116

116:                                              ; preds = %98, %10
  ret void
}

declare dso_local i32 @output_report_banner(%struct.Output*, i8 zeroext, i8 zeroext, i8 zeroext, i8 zeroext, i8 zeroext, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
