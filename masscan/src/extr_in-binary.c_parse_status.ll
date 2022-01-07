; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_in-binary.c_parse_status.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_in-binary.c_parse_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Output = type { i8 }
%struct.MasscanRecord = type { i8, i8, i8, i8, i8, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.Output*, i32, i8*, i64)* @parse_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_status(%struct.Output* %0, i32 %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.Output*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.MasscanRecord, align 4
  store %struct.Output* %0, %struct.Output** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %10 = load i64, i64* %8, align 8
  %11 = icmp ult i64 %10, 12
  br i1 %11, label %12, label %13

12:                                               ; preds = %4
  br label %139

13:                                               ; preds = %4
  %14 = load i8*, i8** %7, align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 0
  %16 = load i8, i8* %15, align 1
  %17 = zext i8 %16 to i32
  %18 = shl i32 %17, 24
  %19 = load i8*, i8** %7, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 1
  %21 = load i8, i8* %20, align 1
  %22 = zext i8 %21 to i32
  %23 = shl i32 %22, 16
  %24 = or i32 %18, %23
  %25 = load i8*, i8** %7, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 2
  %27 = load i8, i8* %26, align 1
  %28 = zext i8 %27 to i32
  %29 = shl i32 %28, 8
  %30 = or i32 %24, %29
  %31 = load i8*, i8** %7, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 3
  %33 = load i8, i8* %32, align 1
  %34 = zext i8 %33 to i32
  %35 = or i32 %30, %34
  %36 = trunc i32 %35 to i8
  %37 = getelementptr inbounds %struct.MasscanRecord, %struct.MasscanRecord* %9, i32 0, i32 0
  store i8 %36, i8* %37, align 4
  %38 = load i8*, i8** %7, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 4
  %40 = load i8, i8* %39, align 1
  %41 = zext i8 %40 to i32
  %42 = shl i32 %41, 24
  %43 = load i8*, i8** %7, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 5
  %45 = load i8, i8* %44, align 1
  %46 = zext i8 %45 to i32
  %47 = shl i32 %46, 16
  %48 = or i32 %42, %47
  %49 = load i8*, i8** %7, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 6
  %51 = load i8, i8* %50, align 1
  %52 = zext i8 %51 to i32
  %53 = shl i32 %52, 8
  %54 = or i32 %48, %53
  %55 = load i8*, i8** %7, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 7
  %57 = load i8, i8* %56, align 1
  %58 = zext i8 %57 to i32
  %59 = or i32 %54, %58
  %60 = trunc i32 %59 to i8
  %61 = getelementptr inbounds %struct.MasscanRecord, %struct.MasscanRecord* %9, i32 0, i32 1
  store i8 %60, i8* %61, align 1
  %62 = load i8*, i8** %7, align 8
  %63 = getelementptr inbounds i8, i8* %62, i64 8
  %64 = load i8, i8* %63, align 1
  %65 = zext i8 %64 to i32
  %66 = shl i32 %65, 8
  %67 = load i8*, i8** %7, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 9
  %69 = load i8, i8* %68, align 1
  %70 = zext i8 %69 to i32
  %71 = or i32 %66, %70
  %72 = trunc i32 %71 to i8
  %73 = getelementptr inbounds %struct.MasscanRecord, %struct.MasscanRecord* %9, i32 0, i32 2
  store i8 %72, i8* %73, align 2
  %74 = load i8*, i8** %7, align 8
  %75 = getelementptr inbounds i8, i8* %74, i64 10
  %76 = load i8, i8* %75, align 1
  %77 = getelementptr inbounds %struct.MasscanRecord, %struct.MasscanRecord* %9, i32 0, i32 3
  store i8 %76, i8* %77, align 1
  %78 = load i8*, i8** %7, align 8
  %79 = getelementptr inbounds i8, i8* %78, i64 11
  %80 = load i8, i8* %79, align 1
  %81 = getelementptr inbounds %struct.MasscanRecord, %struct.MasscanRecord* %9, i32 0, i32 4
  store i8 %80, i8* %81, align 4
  %82 = getelementptr inbounds %struct.MasscanRecord, %struct.MasscanRecord* %9, i32 0, i32 1
  %83 = load i8, i8* %82, align 1
  %84 = zext i8 %83 to i32
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %95

86:                                               ; preds = %13
  %87 = load i64, i64* %8, align 8
  %88 = icmp uge i64 %87, 18
  br i1 %88, label %89, label %95

89:                                               ; preds = %86
  %90 = getelementptr inbounds %struct.MasscanRecord, %struct.MasscanRecord* %9, i32 0, i32 6
  %91 = load i32, i32* %90, align 4
  %92 = load i8*, i8** %7, align 8
  %93 = getelementptr inbounds i8, i8* %92, i64 12
  %94 = call i32 @memcpy(i32 %91, i8* %93, i32 6)
  br label %99

95:                                               ; preds = %86, %13
  %96 = getelementptr inbounds %struct.MasscanRecord, %struct.MasscanRecord* %9, i32 0, i32 6
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @memset(i32 %97, i32 0, i32 6)
  br label %99

99:                                               ; preds = %95, %89
  %100 = load %struct.Output*, %struct.Output** %5, align 8
  %101 = getelementptr inbounds %struct.Output, %struct.Output* %100, i32 0, i32 0
  %102 = load i8, i8* %101, align 1
  %103 = zext i8 %102 to i32
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %110

105:                                              ; preds = %99
  %106 = getelementptr inbounds %struct.MasscanRecord, %struct.MasscanRecord* %9, i32 0, i32 0
  %107 = load i8, i8* %106, align 4
  %108 = load %struct.Output*, %struct.Output** %5, align 8
  %109 = getelementptr inbounds %struct.Output, %struct.Output* %108, i32 0, i32 0
  store i8 %107, i8* %109, align 1
  br label %110

110:                                              ; preds = %105, %99
  %111 = getelementptr inbounds %struct.MasscanRecord, %struct.MasscanRecord* %9, i32 0, i32 2
  %112 = load i8, i8* %111, align 2
  %113 = zext i8 %112 to i32
  switch i32 %113, label %118 [
    i32 53, label %114
    i32 123, label %114
    i32 137, label %114
    i32 161, label %114
    i32 36422, label %116
    i32 36412, label %116
    i32 2905, label %116
  ]

114:                                              ; preds = %110, %110, %110, %110
  %115 = getelementptr inbounds %struct.MasscanRecord, %struct.MasscanRecord* %9, i32 0, i32 5
  store i32 17, i32* %115, align 4
  br label %120

116:                                              ; preds = %110, %110, %110
  %117 = getelementptr inbounds %struct.MasscanRecord, %struct.MasscanRecord* %9, i32 0, i32 5
  store i32 132, i32* %117, align 4
  br label %120

118:                                              ; preds = %110
  %119 = getelementptr inbounds %struct.MasscanRecord, %struct.MasscanRecord* %9, i32 0, i32 5
  store i32 6, i32* %119, align 4
  br label %120

120:                                              ; preds = %118, %116, %114
  %121 = load %struct.Output*, %struct.Output** %5, align 8
  %122 = getelementptr inbounds %struct.MasscanRecord, %struct.MasscanRecord* %9, i32 0, i32 0
  %123 = load i8, i8* %122, align 4
  %124 = load i32, i32* %6, align 4
  %125 = getelementptr inbounds %struct.MasscanRecord, %struct.MasscanRecord* %9, i32 0, i32 1
  %126 = load i8, i8* %125, align 1
  %127 = getelementptr inbounds %struct.MasscanRecord, %struct.MasscanRecord* %9, i32 0, i32 5
  %128 = load i32, i32* %127, align 4
  %129 = getelementptr inbounds %struct.MasscanRecord, %struct.MasscanRecord* %9, i32 0, i32 2
  %130 = load i8, i8* %129, align 2
  %131 = zext i8 %130 to i32
  %132 = getelementptr inbounds %struct.MasscanRecord, %struct.MasscanRecord* %9, i32 0, i32 3
  %133 = load i8, i8* %132, align 1
  %134 = getelementptr inbounds %struct.MasscanRecord, %struct.MasscanRecord* %9, i32 0, i32 4
  %135 = load i8, i8* %134, align 4
  %136 = getelementptr inbounds %struct.MasscanRecord, %struct.MasscanRecord* %9, i32 0, i32 6
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @output_report_status(%struct.Output* %121, i8 zeroext %123, i32 %124, i8 zeroext %126, i32 %128, i32 %131, i8 zeroext %133, i8 zeroext %135, i32 %137)
  br label %139

139:                                              ; preds = %120, %12
  ret void
}

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @output_report_status(%struct.Output*, i8 zeroext, i32, i8 zeroext, i32, i32, i8 zeroext, i8 zeroext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
