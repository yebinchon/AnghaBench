; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_proto-tcp-rdp.c_cc_parse.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_proto-tcp-rdp.c_cc_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.BannerOutput = type { i32 }
%struct.RDPSTUFF = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i8, i8, i8, i32 }

@PROTO_RDP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c" NLA-supported\00", align 1
@AUTO_LEN = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [12 x i8] c" NLA-unused\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c" NLA-unsupported\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c" failure\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c" unknown\00", align 1
@PROTO_HEUR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.BannerOutput*, %struct.RDPSTUFF*, i8*, i64)* @cc_parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @cc_parse(%struct.BannerOutput* %0, %struct.RDPSTUFF* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.BannerOutput*, align 8
  %6 = alloca %struct.RDPSTUFF*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8, align 1
  store %struct.BannerOutput* %0, %struct.BannerOutput** %5, align 8
  store %struct.RDPSTUFF* %1, %struct.RDPSTUFF** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %12 = load %struct.RDPSTUFF*, %struct.RDPSTUFF** %6, align 8
  %13 = getelementptr inbounds %struct.RDPSTUFF, %struct.RDPSTUFF* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %10, align 4
  store i64 0, i64* %9, align 8
  br label %16

16:                                               ; preds = %164, %4
  %17 = load i64, i64* %9, align 8
  %18 = load i64, i64* %8, align 8
  %19 = icmp ult i64 %17, %18
  br i1 %19, label %20, label %167

20:                                               ; preds = %16
  %21 = load i8*, i8** %7, align 8
  %22 = load i64, i64* %9, align 8
  %23 = getelementptr inbounds i8, i8* %21, i64 %22
  %24 = load i8, i8* %23, align 1
  store i8 %24, i8* %11, align 1
  %25 = load i32, i32* %10, align 4
  switch i32 %25, label %163 [
    i32 0, label %26
    i32 1, label %33
    i32 2, label %40
    i32 3, label %63
    i32 4, label %75
    i32 5, label %75
    i32 6, label %75
    i32 7, label %75
    i32 8, label %154
    i32 9, label %156
  ]

26:                                               ; preds = %20
  %27 = load i8, i8* %11, align 1
  %28 = load %struct.RDPSTUFF*, %struct.RDPSTUFF** %6, align 8
  %29 = getelementptr inbounds %struct.RDPSTUFF, %struct.RDPSTUFF* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  store i8 %27, i8* %30, align 4
  %31 = load i32, i32* %10, align 4
  %32 = add i32 %31, 1
  store i32 %32, i32* %10, align 4
  br label %163

33:                                               ; preds = %20
  %34 = load i8, i8* %11, align 1
  %35 = load %struct.RDPSTUFF*, %struct.RDPSTUFF** %6, align 8
  %36 = getelementptr inbounds %struct.RDPSTUFF, %struct.RDPSTUFF* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 2
  store i8 %34, i8* %37, align 1
  %38 = load i32, i32* %10, align 4
  %39 = add i32 %38, 1
  store i32 %39, i32* %10, align 4
  br label %163

40:                                               ; preds = %20
  %41 = load i8, i8* %11, align 1
  %42 = load %struct.RDPSTUFF*, %struct.RDPSTUFF** %6, align 8
  %43 = getelementptr inbounds %struct.RDPSTUFF, %struct.RDPSTUFF* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 3
  store i8 %41, i8* %44, align 2
  %45 = load %struct.RDPSTUFF*, %struct.RDPSTUFF** %6, align 8
  %46 = getelementptr inbounds %struct.RDPSTUFF, %struct.RDPSTUFF* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 3
  %48 = load i8, i8* %47, align 2
  %49 = zext i8 %48 to i32
  %50 = icmp slt i32 %49, 4
  br i1 %50, label %51, label %52

51:                                               ; preds = %40
  store i32 9, i32* %10, align 4
  br label %62

52:                                               ; preds = %40
  %53 = load %struct.RDPSTUFF*, %struct.RDPSTUFF** %6, align 8
  %54 = getelementptr inbounds %struct.RDPSTUFF, %struct.RDPSTUFF* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 3
  %56 = load i8, i8* %55, align 2
  %57 = zext i8 %56 to i32
  %58 = sub nsw i32 %57, 4
  %59 = trunc i32 %58 to i8
  store i8 %59, i8* %55, align 2
  %60 = load i32, i32* %10, align 4
  %61 = add i32 %60, 1
  store i32 %61, i32* %10, align 4
  br label %62

62:                                               ; preds = %52, %51
  br label %163

63:                                               ; preds = %20
  %64 = load %struct.RDPSTUFF*, %struct.RDPSTUFF** %6, align 8
  %65 = getelementptr inbounds %struct.RDPSTUFF, %struct.RDPSTUFF* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 1
  %67 = load i8, i8* %66, align 4
  %68 = zext i8 %67 to i32
  switch i32 %68, label %73 [
    i32 2, label %69
    i32 3, label %69
  ]

69:                                               ; preds = %63, %63
  store i32 4, i32* %10, align 4
  %70 = load %struct.RDPSTUFF*, %struct.RDPSTUFF** %6, align 8
  %71 = getelementptr inbounds %struct.RDPSTUFF, %struct.RDPSTUFF* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 4
  store i32 0, i32* %72, align 4
  br label %74

73:                                               ; preds = %63
  store i32 8, i32* %10, align 4
  br label %74

74:                                               ; preds = %73, %69
  br label %163

75:                                               ; preds = %20, %20, %20, %20
  %76 = load %struct.RDPSTUFF*, %struct.RDPSTUFF** %6, align 8
  %77 = getelementptr inbounds %struct.RDPSTUFF, %struct.RDPSTUFF* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 3
  %79 = load i8, i8* %78, align 2
  %80 = zext i8 %79 to i32
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %75
  store i32 8, i32* %10, align 4
  br label %153

83:                                               ; preds = %75
  %84 = load %struct.RDPSTUFF*, %struct.RDPSTUFF** %6, align 8
  %85 = getelementptr inbounds %struct.RDPSTUFF, %struct.RDPSTUFF* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 3
  %87 = load i8, i8* %86, align 2
  %88 = add i8 %87, -1
  store i8 %88, i8* %86, align 2
  %89 = load %struct.RDPSTUFF*, %struct.RDPSTUFF** %6, align 8
  %90 = getelementptr inbounds %struct.RDPSTUFF, %struct.RDPSTUFF* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 4
  %92 = load i32, i32* %91, align 4
  %93 = ashr i32 %92, 8
  %94 = load i8, i8* %11, align 1
  %95 = zext i8 %94 to i32
  %96 = shl i32 %95, 24
  %97 = or i32 %93, %96
  %98 = load %struct.RDPSTUFF*, %struct.RDPSTUFF** %6, align 8
  %99 = getelementptr inbounds %struct.RDPSTUFF, %struct.RDPSTUFF* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 4
  store i32 %97, i32* %100, align 4
  %101 = load i32, i32* %10, align 4
  %102 = add i32 %101, 1
  store i32 %102, i32* %10, align 4
  %103 = load i32, i32* %10, align 4
  %104 = icmp eq i32 %103, 8
  br i1 %104, label %105, label %152

105:                                              ; preds = %83
  %106 = load %struct.RDPSTUFF*, %struct.RDPSTUFF** %6, align 8
  %107 = getelementptr inbounds %struct.RDPSTUFF, %struct.RDPSTUFF* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 1
  %109 = load i8, i8* %108, align 4
  %110 = zext i8 %109 to i32
  switch i32 %110, label %146 [
    i32 2, label %111
    i32 3, label %129
  ]

111:                                              ; preds = %105
  %112 = load %struct.RDPSTUFF*, %struct.RDPSTUFF** %6, align 8
  %113 = getelementptr inbounds %struct.RDPSTUFF, %struct.RDPSTUFF* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 4
  %115 = load i32, i32* %114, align 4
  %116 = and i32 %115, 2
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %123

118:                                              ; preds = %111
  %119 = load %struct.BannerOutput*, %struct.BannerOutput** %5, align 8
  %120 = load i32, i32* @PROTO_RDP, align 4
  %121 = load i64, i64* @AUTO_LEN, align 8
  %122 = call i32 (%struct.BannerOutput*, i32, ...) @banout_append(%struct.BannerOutput* %119, i32 %120, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i64 %121)
  br label %128

123:                                              ; preds = %111
  %124 = load %struct.BannerOutput*, %struct.BannerOutput** %5, align 8
  %125 = load i32, i32* @PROTO_RDP, align 4
  %126 = load i64, i64* @AUTO_LEN, align 8
  %127 = call i32 (%struct.BannerOutput*, i32, ...) @banout_append(%struct.BannerOutput* %124, i32 %125, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i64 %126)
  br label %128

128:                                              ; preds = %123, %118
  br label %151

129:                                              ; preds = %105
  %130 = load %struct.RDPSTUFF*, %struct.RDPSTUFF** %6, align 8
  %131 = getelementptr inbounds %struct.RDPSTUFF, %struct.RDPSTUFF* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %131, i32 0, i32 4
  %133 = load i32, i32* %132, align 4
  %134 = icmp eq i32 %133, 5
  br i1 %134, label %135, label %140

135:                                              ; preds = %129
  %136 = load %struct.BannerOutput*, %struct.BannerOutput** %5, align 8
  %137 = load i32, i32* @PROTO_RDP, align 4
  %138 = load i64, i64* @AUTO_LEN, align 8
  %139 = call i32 (%struct.BannerOutput*, i32, ...) @banout_append(%struct.BannerOutput* %136, i32 %137, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i64 %138)
  br label %145

140:                                              ; preds = %129
  %141 = load %struct.BannerOutput*, %struct.BannerOutput** %5, align 8
  %142 = load i32, i32* @PROTO_RDP, align 4
  %143 = load i64, i64* @AUTO_LEN, align 8
  %144 = call i32 (%struct.BannerOutput*, i32, ...) @banout_append(%struct.BannerOutput* %141, i32 %142, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i64 %143)
  br label %145

145:                                              ; preds = %140, %135
  br label %151

146:                                              ; preds = %105
  %147 = load %struct.BannerOutput*, %struct.BannerOutput** %5, align 8
  %148 = load i32, i32* @PROTO_RDP, align 4
  %149 = load i64, i64* @AUTO_LEN, align 8
  %150 = call i32 (%struct.BannerOutput*, i32, ...) @banout_append(%struct.BannerOutput* %147, i32 %148, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i64 %149)
  br label %151

151:                                              ; preds = %146, %145, %128
  br label %152

152:                                              ; preds = %151, %83
  br label %153

153:                                              ; preds = %152, %82
  br label %163

154:                                              ; preds = %20
  %155 = load i64, i64* %8, align 8
  store i64 %155, i64* %9, align 8
  br label %163

156:                                              ; preds = %20
  %157 = load %struct.BannerOutput*, %struct.BannerOutput** %5, align 8
  %158 = load i32, i32* @PROTO_HEUR, align 4
  %159 = load i8*, i8** %7, align 8
  %160 = load i64, i64* %8, align 8
  %161 = call i32 (%struct.BannerOutput*, i32, ...) @banout_append(%struct.BannerOutput* %157, i32 %158, i8* %159, i64 %160)
  %162 = load i64, i64* %8, align 8
  store i64 %162, i64* %9, align 8
  br label %163

163:                                              ; preds = %20, %156, %154, %153, %74, %62, %33, %26
  br label %164

164:                                              ; preds = %163
  %165 = load i64, i64* %9, align 8
  %166 = add i64 %165, 1
  store i64 %166, i64* %9, align 8
  br label %16

167:                                              ; preds = %16
  %168 = load i32, i32* %10, align 4
  %169 = load %struct.RDPSTUFF*, %struct.RDPSTUFF** %6, align 8
  %170 = getelementptr inbounds %struct.RDPSTUFF, %struct.RDPSTUFF* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %170, i32 0, i32 0
  store i32 %168, i32* %171, align 4
  %172 = load i64, i64* %9, align 8
  ret i64 %172
}

declare dso_local i32 @banout_append(%struct.BannerOutput*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
