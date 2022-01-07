; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_in-binary.c_parse_banner9.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_in-binary.c_parse_banner9.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Output = type { i8 }
%struct.RangeList = type { i32 }
%struct.MasscanRecord = type { i8, i8, i8, i8, i8, i8 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.Output*, i8*, i64, %struct.RangeList*, %struct.RangeList*, %struct.RangeList*)* @parse_banner9 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_banner9(%struct.Output* %0, i8* %1, i64 %2, %struct.RangeList* %3, %struct.RangeList* %4, %struct.RangeList* %5) #0 {
  %7 = alloca %struct.Output*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.RangeList*, align 8
  %11 = alloca %struct.RangeList*, align 8
  %12 = alloca %struct.RangeList*, align 8
  %13 = alloca %struct.MasscanRecord, align 1
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  store %struct.Output* %0, %struct.Output** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store %struct.RangeList* %3, %struct.RangeList** %10, align 8
  store %struct.RangeList* %4, %struct.RangeList** %11, align 8
  store %struct.RangeList* %5, %struct.RangeList** %12, align 8
  %16 = load i8*, i8** %8, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 14
  store i8* %17, i8** %14, align 8
  %18 = load i64, i64* %9, align 8
  %19 = sub i64 %18, 14
  store i64 %19, i64* %15, align 8
  %20 = load i64, i64* %9, align 8
  %21 = icmp ult i64 %20, 14
  br i1 %21, label %22, label %23

22:                                               ; preds = %6
  br label %145

23:                                               ; preds = %6
  %24 = load i8*, i8** %8, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 0
  %26 = load i8, i8* %25, align 1
  %27 = zext i8 %26 to i32
  %28 = shl i32 %27, 24
  %29 = load i8*, i8** %8, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 1
  %31 = load i8, i8* %30, align 1
  %32 = zext i8 %31 to i32
  %33 = shl i32 %32, 16
  %34 = or i32 %28, %33
  %35 = load i8*, i8** %8, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 2
  %37 = load i8, i8* %36, align 1
  %38 = zext i8 %37 to i32
  %39 = shl i32 %38, 8
  %40 = or i32 %34, %39
  %41 = load i8*, i8** %8, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 3
  %43 = load i8, i8* %42, align 1
  %44 = zext i8 %43 to i32
  %45 = or i32 %40, %44
  %46 = trunc i32 %45 to i8
  %47 = getelementptr inbounds %struct.MasscanRecord, %struct.MasscanRecord* %13, i32 0, i32 0
  store i8 %46, i8* %47, align 1
  %48 = load i8*, i8** %8, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 4
  %50 = load i8, i8* %49, align 1
  %51 = zext i8 %50 to i32
  %52 = shl i32 %51, 24
  %53 = load i8*, i8** %8, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 5
  %55 = load i8, i8* %54, align 1
  %56 = zext i8 %55 to i32
  %57 = shl i32 %56, 16
  %58 = or i32 %52, %57
  %59 = load i8*, i8** %8, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 6
  %61 = load i8, i8* %60, align 1
  %62 = zext i8 %61 to i32
  %63 = shl i32 %62, 8
  %64 = or i32 %58, %63
  %65 = load i8*, i8** %8, align 8
  %66 = getelementptr inbounds i8, i8* %65, i64 7
  %67 = load i8, i8* %66, align 1
  %68 = zext i8 %67 to i32
  %69 = or i32 %64, %68
  %70 = trunc i32 %69 to i8
  %71 = getelementptr inbounds %struct.MasscanRecord, %struct.MasscanRecord* %13, i32 0, i32 1
  store i8 %70, i8* %71, align 1
  %72 = load i8*, i8** %8, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 8
  %74 = load i8, i8* %73, align 1
  %75 = getelementptr inbounds %struct.MasscanRecord, %struct.MasscanRecord* %13, i32 0, i32 2
  store i8 %74, i8* %75, align 1
  %76 = load i8*, i8** %8, align 8
  %77 = getelementptr inbounds i8, i8* %76, i64 9
  %78 = load i8, i8* %77, align 1
  %79 = zext i8 %78 to i32
  %80 = shl i32 %79, 8
  %81 = load i8*, i8** %8, align 8
  %82 = getelementptr inbounds i8, i8* %81, i64 10
  %83 = load i8, i8* %82, align 1
  %84 = zext i8 %83 to i32
  %85 = or i32 %80, %84
  %86 = trunc i32 %85 to i8
  %87 = getelementptr inbounds %struct.MasscanRecord, %struct.MasscanRecord* %13, i32 0, i32 3
  store i8 %86, i8* %87, align 1
  %88 = load i8*, i8** %8, align 8
  %89 = getelementptr inbounds i8, i8* %88, i64 11
  %90 = load i8, i8* %89, align 1
  %91 = zext i8 %90 to i32
  %92 = shl i32 %91, 8
  %93 = load i8*, i8** %8, align 8
  %94 = getelementptr inbounds i8, i8* %93, i64 12
  %95 = load i8, i8* %94, align 1
  %96 = zext i8 %95 to i32
  %97 = or i32 %92, %96
  %98 = trunc i32 %97 to i8
  %99 = getelementptr inbounds %struct.MasscanRecord, %struct.MasscanRecord* %13, i32 0, i32 4
  store i8 %98, i8* %99, align 1
  %100 = load i8*, i8** %8, align 8
  %101 = getelementptr inbounds i8, i8* %100, i64 13
  %102 = load i8, i8* %101, align 1
  %103 = getelementptr inbounds %struct.MasscanRecord, %struct.MasscanRecord* %13, i32 0, i32 5
  store i8 %102, i8* %103, align 1
  %104 = load %struct.Output*, %struct.Output** %7, align 8
  %105 = getelementptr inbounds %struct.Output, %struct.Output* %104, i32 0, i32 0
  %106 = load i8, i8* %105, align 1
  %107 = zext i8 %106 to i32
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %114

109:                                              ; preds = %23
  %110 = getelementptr inbounds %struct.MasscanRecord, %struct.MasscanRecord* %13, i32 0, i32 0
  %111 = load i8, i8* %110, align 1
  %112 = load %struct.Output*, %struct.Output** %7, align 8
  %113 = getelementptr inbounds %struct.Output, %struct.Output* %112, i32 0, i32 0
  store i8 %111, i8* %113, align 1
  br label %114

114:                                              ; preds = %109, %23
  %115 = getelementptr inbounds %struct.MasscanRecord, %struct.MasscanRecord* %13, i32 0, i32 1
  %116 = load i8, i8* %115, align 1
  %117 = getelementptr inbounds %struct.MasscanRecord, %struct.MasscanRecord* %13, i32 0, i32 3
  %118 = load i8, i8* %117, align 1
  %119 = getelementptr inbounds %struct.MasscanRecord, %struct.MasscanRecord* %13, i32 0, i32 4
  %120 = load i8, i8* %119, align 1
  %121 = load %struct.RangeList*, %struct.RangeList** %10, align 8
  %122 = load %struct.RangeList*, %struct.RangeList** %11, align 8
  %123 = load %struct.RangeList*, %struct.RangeList** %12, align 8
  %124 = call i32 @readscan_filter_pass(i8 zeroext %116, i8 zeroext %118, i8 zeroext %120, %struct.RangeList* %121, %struct.RangeList* %122, %struct.RangeList* %123)
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %127, label %126

126:                                              ; preds = %114
  br label %145

127:                                              ; preds = %114
  %128 = load %struct.Output*, %struct.Output** %7, align 8
  %129 = getelementptr inbounds %struct.MasscanRecord, %struct.MasscanRecord* %13, i32 0, i32 0
  %130 = load i8, i8* %129, align 1
  %131 = getelementptr inbounds %struct.MasscanRecord, %struct.MasscanRecord* %13, i32 0, i32 1
  %132 = load i8, i8* %131, align 1
  %133 = getelementptr inbounds %struct.MasscanRecord, %struct.MasscanRecord* %13, i32 0, i32 2
  %134 = load i8, i8* %133, align 1
  %135 = getelementptr inbounds %struct.MasscanRecord, %struct.MasscanRecord* %13, i32 0, i32 3
  %136 = load i8, i8* %135, align 1
  %137 = getelementptr inbounds %struct.MasscanRecord, %struct.MasscanRecord* %13, i32 0, i32 4
  %138 = load i8, i8* %137, align 1
  %139 = getelementptr inbounds %struct.MasscanRecord, %struct.MasscanRecord* %13, i32 0, i32 5
  %140 = load i8, i8* %139, align 1
  %141 = load i8*, i8** %14, align 8
  %142 = load i64, i64* %15, align 8
  %143 = trunc i64 %142 to i32
  %144 = call i32 @output_report_banner(%struct.Output* %128, i8 zeroext %130, i8 zeroext %132, i8 zeroext %134, i8 zeroext %136, i8 zeroext %138, i8 zeroext %140, i8* %141, i32 %143)
  br label %145

145:                                              ; preds = %127, %126, %22
  ret void
}

declare dso_local i32 @readscan_filter_pass(i8 zeroext, i8 zeroext, i8 zeroext, %struct.RangeList*, %struct.RangeList*, %struct.RangeList*) #1

declare dso_local i32 @output_report_banner(%struct.Output*, i8 zeroext, i8 zeroext, i8 zeroext, i8 zeroext, i8 zeroext, i8 zeroext, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
