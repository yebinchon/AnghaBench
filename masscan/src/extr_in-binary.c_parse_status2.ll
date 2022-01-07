; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_in-binary.c_parse_status2.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_in-binary.c_parse_status2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Output = type { i8 }
%struct.RangeList = type { i64 }
%struct.MasscanRecord = type { i8, i8, i8, i8, i8, i8, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.Output*, i32, i8*, i64, %struct.RangeList*, %struct.RangeList*)* @parse_status2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_status2(%struct.Output* %0, i32 %1, i8* %2, i64 %3, %struct.RangeList* %4, %struct.RangeList* %5) #0 {
  %7 = alloca %struct.Output*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.RangeList*, align 8
  %12 = alloca %struct.RangeList*, align 8
  %13 = alloca %struct.MasscanRecord, align 4
  store %struct.Output* %0, %struct.Output** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store %struct.RangeList* %4, %struct.RangeList** %11, align 8
  store %struct.RangeList* %5, %struct.RangeList** %12, align 8
  %14 = load i64, i64* %10, align 8
  %15 = icmp ult i64 %14, 13
  br i1 %15, label %16, label %17

16:                                               ; preds = %6
  br label %168

17:                                               ; preds = %6
  %18 = load i8*, i8** %9, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 0
  %20 = load i8, i8* %19, align 1
  %21 = zext i8 %20 to i32
  %22 = shl i32 %21, 24
  %23 = load i8*, i8** %9, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 1
  %25 = load i8, i8* %24, align 1
  %26 = zext i8 %25 to i32
  %27 = shl i32 %26, 16
  %28 = or i32 %22, %27
  %29 = load i8*, i8** %9, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 2
  %31 = load i8, i8* %30, align 1
  %32 = zext i8 %31 to i32
  %33 = shl i32 %32, 8
  %34 = or i32 %28, %33
  %35 = load i8*, i8** %9, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 3
  %37 = load i8, i8* %36, align 1
  %38 = zext i8 %37 to i32
  %39 = or i32 %34, %38
  %40 = trunc i32 %39 to i8
  %41 = getelementptr inbounds %struct.MasscanRecord, %struct.MasscanRecord* %13, i32 0, i32 0
  store i8 %40, i8* %41, align 4
  %42 = load i8*, i8** %9, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 4
  %44 = load i8, i8* %43, align 1
  %45 = zext i8 %44 to i32
  %46 = shl i32 %45, 24
  %47 = load i8*, i8** %9, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 5
  %49 = load i8, i8* %48, align 1
  %50 = zext i8 %49 to i32
  %51 = shl i32 %50, 16
  %52 = or i32 %46, %51
  %53 = load i8*, i8** %9, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 6
  %55 = load i8, i8* %54, align 1
  %56 = zext i8 %55 to i32
  %57 = shl i32 %56, 8
  %58 = or i32 %52, %57
  %59 = load i8*, i8** %9, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 7
  %61 = load i8, i8* %60, align 1
  %62 = zext i8 %61 to i32
  %63 = or i32 %58, %62
  %64 = trunc i32 %63 to i8
  %65 = getelementptr inbounds %struct.MasscanRecord, %struct.MasscanRecord* %13, i32 0, i32 1
  store i8 %64, i8* %65, align 1
  %66 = load i8*, i8** %9, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 8
  %68 = load i8, i8* %67, align 1
  %69 = getelementptr inbounds %struct.MasscanRecord, %struct.MasscanRecord* %13, i32 0, i32 2
  store i8 %68, i8* %69, align 2
  %70 = load i8*, i8** %9, align 8
  %71 = getelementptr inbounds i8, i8* %70, i64 9
  %72 = load i8, i8* %71, align 1
  %73 = zext i8 %72 to i32
  %74 = shl i32 %73, 8
  %75 = load i8*, i8** %9, align 8
  %76 = getelementptr inbounds i8, i8* %75, i64 10
  %77 = load i8, i8* %76, align 1
  %78 = zext i8 %77 to i32
  %79 = or i32 %74, %78
  %80 = trunc i32 %79 to i8
  %81 = getelementptr inbounds %struct.MasscanRecord, %struct.MasscanRecord* %13, i32 0, i32 3
  store i8 %80, i8* %81, align 1
  %82 = load i8*, i8** %9, align 8
  %83 = getelementptr inbounds i8, i8* %82, i64 11
  %84 = load i8, i8* %83, align 1
  %85 = getelementptr inbounds %struct.MasscanRecord, %struct.MasscanRecord* %13, i32 0, i32 4
  store i8 %84, i8* %85, align 4
  %86 = load i8*, i8** %9, align 8
  %87 = getelementptr inbounds i8, i8* %86, i64 12
  %88 = load i8, i8* %87, align 1
  %89 = getelementptr inbounds %struct.MasscanRecord, %struct.MasscanRecord* %13, i32 0, i32 5
  store i8 %88, i8* %89, align 1
  %90 = getelementptr inbounds %struct.MasscanRecord, %struct.MasscanRecord* %13, i32 0, i32 1
  %91 = load i8, i8* %90, align 1
  %92 = zext i8 %91 to i32
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %103

94:                                               ; preds = %17
  %95 = load i64, i64* %10, align 8
  %96 = icmp uge i64 %95, 19
  br i1 %96, label %97, label %103

97:                                               ; preds = %94
  %98 = getelementptr inbounds %struct.MasscanRecord, %struct.MasscanRecord* %13, i32 0, i32 6
  %99 = load i32, i32* %98, align 4
  %100 = load i8*, i8** %9, align 8
  %101 = getelementptr inbounds i8, i8* %100, i64 13
  %102 = call i32 @memcpy(i32 %99, i8* %101, i32 6)
  br label %107

103:                                              ; preds = %94, %17
  %104 = getelementptr inbounds %struct.MasscanRecord, %struct.MasscanRecord* %13, i32 0, i32 6
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @memset(i32 %105, i32 0, i32 6)
  br label %107

107:                                              ; preds = %103, %97
  %108 = load %struct.Output*, %struct.Output** %7, align 8
  %109 = getelementptr inbounds %struct.Output, %struct.Output* %108, i32 0, i32 0
  %110 = load i8, i8* %109, align 1
  %111 = zext i8 %110 to i32
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %118

113:                                              ; preds = %107
  %114 = getelementptr inbounds %struct.MasscanRecord, %struct.MasscanRecord* %13, i32 0, i32 0
  %115 = load i8, i8* %114, align 4
  %116 = load %struct.Output*, %struct.Output** %7, align 8
  %117 = getelementptr inbounds %struct.Output, %struct.Output* %116, i32 0, i32 0
  store i8 %115, i8* %117, align 1
  br label %118

118:                                              ; preds = %113, %107
  %119 = load %struct.RangeList*, %struct.RangeList** %11, align 8
  %120 = icmp ne %struct.RangeList* %119, null
  br i1 %120, label %121, label %134

121:                                              ; preds = %118
  %122 = load %struct.RangeList*, %struct.RangeList** %11, align 8
  %123 = getelementptr inbounds %struct.RangeList, %struct.RangeList* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %134

126:                                              ; preds = %121
  %127 = load %struct.RangeList*, %struct.RangeList** %11, align 8
  %128 = getelementptr inbounds %struct.MasscanRecord, %struct.MasscanRecord* %13, i32 0, i32 1
  %129 = load i8, i8* %128, align 1
  %130 = call i32 @rangelist_is_contains(%struct.RangeList* %127, i8 zeroext %129)
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %133, label %132

132:                                              ; preds = %126
  br label %168

133:                                              ; preds = %126
  br label %134

134:                                              ; preds = %133, %121, %118
  %135 = load %struct.RangeList*, %struct.RangeList** %12, align 8
  %136 = icmp ne %struct.RangeList* %135, null
  br i1 %136, label %137, label %150

137:                                              ; preds = %134
  %138 = load %struct.RangeList*, %struct.RangeList** %12, align 8
  %139 = getelementptr inbounds %struct.RangeList, %struct.RangeList* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %150

142:                                              ; preds = %137
  %143 = load %struct.RangeList*, %struct.RangeList** %12, align 8
  %144 = getelementptr inbounds %struct.MasscanRecord, %struct.MasscanRecord* %13, i32 0, i32 3
  %145 = load i8, i8* %144, align 1
  %146 = call i32 @rangelist_is_contains(%struct.RangeList* %143, i8 zeroext %145)
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %149, label %148

148:                                              ; preds = %142
  br label %168

149:                                              ; preds = %142
  br label %150

150:                                              ; preds = %149, %137, %134
  %151 = load %struct.Output*, %struct.Output** %7, align 8
  %152 = getelementptr inbounds %struct.MasscanRecord, %struct.MasscanRecord* %13, i32 0, i32 0
  %153 = load i8, i8* %152, align 4
  %154 = load i32, i32* %8, align 4
  %155 = getelementptr inbounds %struct.MasscanRecord, %struct.MasscanRecord* %13, i32 0, i32 1
  %156 = load i8, i8* %155, align 1
  %157 = getelementptr inbounds %struct.MasscanRecord, %struct.MasscanRecord* %13, i32 0, i32 2
  %158 = load i8, i8* %157, align 2
  %159 = getelementptr inbounds %struct.MasscanRecord, %struct.MasscanRecord* %13, i32 0, i32 3
  %160 = load i8, i8* %159, align 1
  %161 = getelementptr inbounds %struct.MasscanRecord, %struct.MasscanRecord* %13, i32 0, i32 4
  %162 = load i8, i8* %161, align 4
  %163 = getelementptr inbounds %struct.MasscanRecord, %struct.MasscanRecord* %13, i32 0, i32 5
  %164 = load i8, i8* %163, align 1
  %165 = getelementptr inbounds %struct.MasscanRecord, %struct.MasscanRecord* %13, i32 0, i32 6
  %166 = load i32, i32* %165, align 4
  %167 = call i32 @output_report_status(%struct.Output* %151, i8 zeroext %153, i32 %154, i8 zeroext %156, i8 zeroext %158, i8 zeroext %160, i8 zeroext %162, i8 zeroext %164, i32 %166)
  br label %168

168:                                              ; preds = %150, %148, %132, %16
  ret void
}

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @rangelist_is_contains(%struct.RangeList*, i8 zeroext) #1

declare dso_local i32 @output_report_status(%struct.Output*, i8 zeroext, i32, i8 zeroext, i8 zeroext, i8 zeroext, i8 zeroext, i8 zeroext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
