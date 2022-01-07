; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_main-listscan.c_main_listscan.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_main-listscan.c_main_listscan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Masscan = type { i32, i32, i32, i64, i64, i32, i32, %struct.TYPE_4__, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.BlackRock = type { i32 }

@.str = private unnamed_addr constant [36 x i8] c"FAIL: target IP address list empty\0A\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c" [hint] try something like \22--range 10.0.0.0/8\22\0A\00", align 1
@.str.2 = private unnamed_addr constant [66 x i8] c" [hint] try something like \22--range 192.168.0.100-192.168.0.200\22\0A\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"%u,%u\0A\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"%u.%u.%u.%u\0A\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"%u.%u.%u.%u:%u\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @main_listscan(%struct.Masscan* %0) #0 {
  %2 = alloca %struct.Masscan*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.BlackRock, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.Masscan* %0, %struct.Masscan** %2, align 8
  %15 = load %struct.Masscan*, %struct.Masscan** %2, align 8
  %16 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %15, i32 0, i32 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %10, align 4
  %19 = load %struct.Masscan*, %struct.Masscan** %2, align 8
  %20 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %11, align 4
  %22 = load %struct.Masscan*, %struct.Masscan** %2, align 8
  %23 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %22, i32 0, i32 5
  %24 = call i32 @rangelist_count(i32* %23)
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %4, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %1
  %28 = load %struct.Masscan*, %struct.Masscan** %2, align 8
  %29 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %28, i32 0, i32 5
  %30 = call i32 @rangelist_add_range(i32* %29, i32 80, i32 80)
  br label %31

31:                                               ; preds = %27, %1
  %32 = load %struct.Masscan*, %struct.Masscan** %2, align 8
  %33 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %32, i32 0, i32 5
  %34 = call i32 @rangelist_count(i32* %33)
  store i32 %34, i32* %4, align 4
  %35 = load %struct.Masscan*, %struct.Masscan** %2, align 8
  %36 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %35, i32 0, i32 6
  %37 = call i32 @rangelist_count(i32* %36)
  store i32 %37, i32* %3, align 4
  %38 = load i32, i32* %3, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %31
  %41 = call i32 @LOG(i32 0, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %42 = call i32 @LOG(i32 0, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  %43 = call i32 @LOG(i32 0, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.2, i64 0, i64 0))
  br label %174

44:                                               ; preds = %31
  %45 = load i32, i32* %3, align 4
  %46 = load i32, i32* %4, align 4
  %47 = mul nsw i32 %45, %46
  store i32 %47, i32* %6, align 4
  br label %48

48:                                               ; preds = %171, %44
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* %11, align 4
  %51 = load %struct.Masscan*, %struct.Masscan** %2, align 8
  %52 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %51, i32 0, i32 9
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @blackrock_init(%struct.BlackRock* %9, i32 %49, i32 %50, i32 %53)
  %55 = load %struct.Masscan*, %struct.Masscan** %2, align 8
  %56 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %55, i32 0, i32 7
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.Masscan*, %struct.Masscan** %2, align 8
  %60 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %59, i32 0, i32 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = sub nsw i32 %62, 1
  %64 = add nsw i32 %58, %63
  store i32 %64, i32* %7, align 4
  %65 = load i32, i32* %6, align 4
  store i32 %65, i32* %8, align 4
  %66 = load %struct.Masscan*, %struct.Masscan** %2, align 8
  %67 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %66, i32 0, i32 7
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %87

71:                                               ; preds = %48
  %72 = load i32, i32* %8, align 4
  %73 = load i32, i32* %7, align 4
  %74 = load %struct.Masscan*, %struct.Masscan** %2, align 8
  %75 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %74, i32 0, i32 7
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = add nsw i32 %73, %77
  %79 = icmp sgt i32 %72, %78
  br i1 %79, label %80, label %87

80:                                               ; preds = %71
  %81 = load i32, i32* %7, align 4
  %82 = load %struct.Masscan*, %struct.Masscan** %2, align 8
  %83 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %82, i32 0, i32 7
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = add nsw i32 %81, %85
  store i32 %86, i32* %8, align 4
  br label %87

87:                                               ; preds = %80, %71, %48
  %88 = load %struct.Masscan*, %struct.Masscan** %2, align 8
  %89 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.Masscan*, %struct.Masscan** %2, align 8
  %92 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = mul nsw i32 %90, %93
  %95 = load i32, i32* %8, align 4
  %96 = add nsw i32 %95, %94
  store i32 %96, i32* %8, align 4
  %97 = load i32, i32* %7, align 4
  store i32 %97, i32* %5, align 4
  br label %98

98:                                               ; preds = %162, %87
  %99 = load i32, i32* %5, align 4
  %100 = load i32, i32* %8, align 4
  %101 = icmp slt i32 %99, %100
  br i1 %101, label %102, label %166

102:                                              ; preds = %98
  %103 = load i32, i32* %5, align 4
  %104 = call i32 @blackrock_shuffle(%struct.BlackRock* %9, i32 %103)
  store i32 %104, i32* %12, align 4
  %105 = load %struct.Masscan*, %struct.Masscan** %2, align 8
  %106 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %105, i32 0, i32 6
  %107 = load i32, i32* %12, align 4
  %108 = load i32, i32* %3, align 4
  %109 = srem i32 %107, %108
  %110 = call i32 @rangelist_pick(i32* %106, i32 %109)
  store i32 %110, i32* %13, align 4
  %111 = load %struct.Masscan*, %struct.Masscan** %2, align 8
  %112 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %111, i32 0, i32 5
  %113 = load i32, i32* %12, align 4
  %114 = load i32, i32* %3, align 4
  %115 = sdiv i32 %113, %114
  %116 = call i32 @rangelist_pick(i32* %112, i32 %115)
  store i32 %116, i32* %14, align 4
  %117 = load i32, i32* %4, align 4
  %118 = icmp eq i32 %117, 1
  br i1 %118, label %119, label %147

119:                                              ; preds = %102
  %120 = load %struct.Masscan*, %struct.Masscan** %2, align 8
  %121 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %120, i32 0, i32 4
  %122 = load i64, i64* %121, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %132

124:                                              ; preds = %119
  %125 = load i32, i32* %13, align 4
  %126 = lshr i32 %125, 8
  %127 = and i32 %126, 255
  %128 = load i32, i32* %13, align 4
  %129 = lshr i32 %128, 0
  %130 = and i32 %129, 255
  %131 = call i32 (i8*, i32, i32, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 %127, i32 %130)
  br label %146

132:                                              ; preds = %119
  %133 = load i32, i32* %13, align 4
  %134 = lshr i32 %133, 24
  %135 = and i32 %134, 255
  %136 = load i32, i32* %13, align 4
  %137 = lshr i32 %136, 16
  %138 = and i32 %137, 255
  %139 = load i32, i32* %13, align 4
  %140 = lshr i32 %139, 8
  %141 = and i32 %140, 255
  %142 = load i32, i32* %13, align 4
  %143 = lshr i32 %142, 0
  %144 = and i32 %143, 255
  %145 = call i32 (i8*, i32, i32, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i32 %135, i32 %138, i32 %141, i32 %144)
  br label %146

146:                                              ; preds = %132, %124
  br label %162

147:                                              ; preds = %102
  %148 = load i32, i32* %13, align 4
  %149 = lshr i32 %148, 24
  %150 = and i32 %149, 255
  %151 = load i32, i32* %13, align 4
  %152 = lshr i32 %151, 16
  %153 = and i32 %152, 255
  %154 = load i32, i32* %13, align 4
  %155 = lshr i32 %154, 8
  %156 = and i32 %155, 255
  %157 = load i32, i32* %13, align 4
  %158 = lshr i32 %157, 0
  %159 = and i32 %158, 255
  %160 = load i32, i32* %14, align 4
  %161 = call i32 (i8*, i32, i32, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 %150, i32 %153, i32 %156, i32 %159, i32 %160)
  br label %162

162:                                              ; preds = %147, %146
  %163 = load i32, i32* %10, align 4
  %164 = load i32, i32* %5, align 4
  %165 = add i32 %164, %163
  store i32 %165, i32* %5, align 4
  br label %98

166:                                              ; preds = %98
  %167 = load %struct.Masscan*, %struct.Masscan** %2, align 8
  %168 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %167, i32 0, i32 3
  %169 = load i64, i64* %168, align 8
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %174

171:                                              ; preds = %166
  %172 = load i32, i32* %11, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %11, align 4
  br label %48

174:                                              ; preds = %40, %166
  ret void
}

declare dso_local i32 @rangelist_count(i32*) #1

declare dso_local i32 @rangelist_add_range(i32*, i32, i32) #1

declare dso_local i32 @LOG(i32, i8*) #1

declare dso_local i32 @blackrock_init(%struct.BlackRock*, i32, i32, i32) #1

declare dso_local i32 @blackrock_shuffle(%struct.BlackRock*, i32) #1

declare dso_local i32 @rangelist_pick(i32*, i32) #1

declare dso_local i32 @printf(i8*, i32, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
