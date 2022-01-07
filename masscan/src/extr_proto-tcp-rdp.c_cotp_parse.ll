; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_proto-tcp-rdp.c_cotp_parse.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_proto-tcp-rdp.c_cotp_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.BannerOutput = type { i32 }
%struct.RDPSTUFF = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i8, i8, i32, i8, i32 }
%struct.TYPE_3__ = type { i32 }

@PROTO_RDP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c" COTPPDU=unknown\00", align 1
@AUTO_LEN = common dso_local global i64 0, align 8
@PROTO_HEUR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.BannerOutput*, %struct.RDPSTUFF*, i8*, i64)* @cotp_parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @cotp_parse(%struct.BannerOutput* %0, %struct.RDPSTUFF* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.BannerOutput*, align 8
  %6 = alloca %struct.RDPSTUFF*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8, align 1
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.BannerOutput* %0, %struct.BannerOutput** %5, align 8
  store %struct.RDPSTUFF* %1, %struct.RDPSTUFF** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %14 = load %struct.RDPSTUFF*, %struct.RDPSTUFF** %6, align 8
  %15 = getelementptr inbounds %struct.RDPSTUFF, %struct.RDPSTUFF* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %10, align 4
  store i64 0, i64* %9, align 8
  br label %18

18:                                               ; preds = %172, %4
  %19 = load i64, i64* %9, align 8
  %20 = load i64, i64* %8, align 8
  %21 = icmp ult i64 %19, %20
  br i1 %21, label %22, label %175

22:                                               ; preds = %18
  %23 = load i8*, i8** %7, align 8
  %24 = load i64, i64* %9, align 8
  %25 = getelementptr inbounds i8, i8* %23, i64 %24
  %26 = load i8, i8* %25, align 1
  store i8 %26, i8* %11, align 1
  %27 = load i32, i32* %10, align 4
  switch i32 %27, label %171 [
    i32 0, label %28
    i32 1, label %51
    i32 2, label %64
    i32 3, label %64
    i32 4, label %78
    i32 5, label %78
    i32 6, label %92
    i32 7, label %102
    i32 8, label %164
  ]

28:                                               ; preds = %22
  %29 = load i8, i8* %11, align 1
  %30 = load %struct.RDPSTUFF*, %struct.RDPSTUFF** %6, align 8
  %31 = getelementptr inbounds %struct.RDPSTUFF, %struct.RDPSTUFF* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  store i8 %29, i8* %32, align 4
  %33 = load %struct.RDPSTUFF*, %struct.RDPSTUFF** %6, align 8
  %34 = getelementptr inbounds %struct.RDPSTUFF, %struct.RDPSTUFF* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  %36 = load i8, i8* %35, align 4
  %37 = zext i8 %36 to i32
  %38 = icmp slt i32 %37, 6
  br i1 %38, label %39, label %40

39:                                               ; preds = %28
  store i32 8, i32* %10, align 4
  br label %50

40:                                               ; preds = %28
  %41 = load %struct.RDPSTUFF*, %struct.RDPSTUFF** %6, align 8
  %42 = getelementptr inbounds %struct.RDPSTUFF, %struct.RDPSTUFF* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  %44 = load i8, i8* %43, align 4
  %45 = zext i8 %44 to i32
  %46 = sub nsw i32 %45, 6
  %47 = trunc i32 %46 to i8
  store i8 %47, i8* %43, align 4
  %48 = load i32, i32* %10, align 4
  %49 = add i32 %48, 1
  store i32 %49, i32* %10, align 4
  br label %50

50:                                               ; preds = %40, %39
  br label %171

51:                                               ; preds = %22
  %52 = load i8, i8* %11, align 1
  %53 = load %struct.RDPSTUFF*, %struct.RDPSTUFF** %6, align 8
  %54 = getelementptr inbounds %struct.RDPSTUFF, %struct.RDPSTUFF* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 2
  store i8 %52, i8* %55, align 1
  %56 = load %struct.RDPSTUFF*, %struct.RDPSTUFF** %6, align 8
  %57 = getelementptr inbounds %struct.RDPSTUFF, %struct.RDPSTUFF* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 5
  store i32 0, i32* %58, align 4
  %59 = load %struct.RDPSTUFF*, %struct.RDPSTUFF** %6, align 8
  %60 = getelementptr inbounds %struct.RDPSTUFF, %struct.RDPSTUFF* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 3
  store i32 0, i32* %61, align 4
  %62 = load i32, i32* %10, align 4
  %63 = add i32 %62, 1
  store i32 %63, i32* %10, align 4
  br label %171

64:                                               ; preds = %22, %22
  %65 = load %struct.RDPSTUFF*, %struct.RDPSTUFF** %6, align 8
  %66 = getelementptr inbounds %struct.RDPSTUFF, %struct.RDPSTUFF* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = shl i32 %68, 8
  %70 = load i8, i8* %11, align 1
  %71 = zext i8 %70 to i32
  %72 = or i32 %69, %71
  %73 = load %struct.RDPSTUFF*, %struct.RDPSTUFF** %6, align 8
  %74 = getelementptr inbounds %struct.RDPSTUFF, %struct.RDPSTUFF* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 3
  store i32 %72, i32* %75, align 4
  %76 = load i32, i32* %10, align 4
  %77 = add i32 %76, 1
  store i32 %77, i32* %10, align 4
  br label %171

78:                                               ; preds = %22, %22
  %79 = load %struct.RDPSTUFF*, %struct.RDPSTUFF** %6, align 8
  %80 = getelementptr inbounds %struct.RDPSTUFF, %struct.RDPSTUFF* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 4
  %83 = shl i32 %82, 8
  %84 = load i8, i8* %11, align 1
  %85 = zext i8 %84 to i32
  %86 = or i32 %83, %85
  %87 = load %struct.RDPSTUFF*, %struct.RDPSTUFF** %6, align 8
  %88 = getelementptr inbounds %struct.RDPSTUFF, %struct.RDPSTUFF* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 3
  store i32 %86, i32* %89, align 4
  %90 = load i32, i32* %10, align 4
  %91 = add i32 %90, 1
  store i32 %91, i32* %10, align 4
  br label %171

92:                                               ; preds = %22
  %93 = load i8, i8* %11, align 1
  %94 = load %struct.RDPSTUFF*, %struct.RDPSTUFF** %6, align 8
  %95 = getelementptr inbounds %struct.RDPSTUFF, %struct.RDPSTUFF* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 4
  store i8 %93, i8* %96, align 4
  %97 = load %struct.RDPSTUFF*, %struct.RDPSTUFF** %6, align 8
  %98 = getelementptr inbounds %struct.RDPSTUFF, %struct.RDPSTUFF* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 0
  store i32 0, i32* %99, align 4
  %100 = load i32, i32* %10, align 4
  %101 = add i32 %100, 1
  store i32 %101, i32* %10, align 4
  br label %171

102:                                              ; preds = %22
  %103 = load %struct.RDPSTUFF*, %struct.RDPSTUFF** %6, align 8
  %104 = getelementptr inbounds %struct.RDPSTUFF, %struct.RDPSTUFF* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 2
  %106 = load i8, i8* %105, align 1
  %107 = zext i8 %106 to i32
  switch i32 %107, label %157 [
    i32 208, label %108
  ]

108:                                              ; preds = %102
  %109 = load %struct.RDPSTUFF*, %struct.RDPSTUFF** %6, align 8
  %110 = getelementptr inbounds %struct.RDPSTUFF, %struct.RDPSTUFF* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 1
  %112 = load i8, i8* %111, align 4
  %113 = zext i8 %112 to i64
  store i64 %113, i64* %12, align 8
  %114 = load i64, i64* %12, align 8
  %115 = load i64, i64* %8, align 8
  %116 = load i64, i64* %9, align 8
  %117 = sub i64 %115, %116
  %118 = icmp uge i64 %114, %117
  br i1 %118, label %119, label %123

119:                                              ; preds = %108
  %120 = load i64, i64* %8, align 8
  %121 = load i64, i64* %9, align 8
  %122 = sub i64 %120, %121
  store i64 %122, i64* %12, align 8
  br label %123

123:                                              ; preds = %119, %108
  %124 = load %struct.BannerOutput*, %struct.BannerOutput** %5, align 8
  %125 = load %struct.RDPSTUFF*, %struct.RDPSTUFF** %6, align 8
  %126 = load i8*, i8** %7, align 8
  %127 = load i64, i64* %9, align 8
  %128 = getelementptr inbounds i8, i8* %126, i64 %127
  %129 = load i64, i64* %12, align 8
  %130 = call i64 @cc_parse(%struct.BannerOutput* %124, %struct.RDPSTUFF* %125, i8* %128, i64 %129)
  store i64 %130, i64* %13, align 8
  %131 = load i64, i64* %13, align 8
  %132 = icmp ne i64 %131, 0
  %133 = zext i1 %132 to i32
  %134 = call i32 @assert(i32 %133)
  %135 = load i64, i64* %13, align 8
  %136 = sub i64 %135, 1
  %137 = load i64, i64* %9, align 8
  %138 = add i64 %137, %136
  store i64 %138, i64* %9, align 8
  %139 = load i64, i64* %13, align 8
  %140 = trunc i64 %139 to i8
  %141 = zext i8 %140 to i32
  %142 = load %struct.RDPSTUFF*, %struct.RDPSTUFF** %6, align 8
  %143 = getelementptr inbounds %struct.RDPSTUFF, %struct.RDPSTUFF* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i32 0, i32 1
  %145 = load i8, i8* %144, align 4
  %146 = zext i8 %145 to i32
  %147 = sub nsw i32 %146, %141
  %148 = trunc i32 %147 to i8
  store i8 %148, i8* %144, align 4
  %149 = load %struct.RDPSTUFF*, %struct.RDPSTUFF** %6, align 8
  %150 = getelementptr inbounds %struct.RDPSTUFF, %struct.RDPSTUFF* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i32 0, i32 1
  %152 = load i8, i8* %151, align 4
  %153 = icmp ne i8 %152, 0
  br i1 %153, label %154, label %155

154:                                              ; preds = %123
  store i32 7, i32* %10, align 4
  br label %156

155:                                              ; preds = %123
  store i32 8, i32* %10, align 4
  br label %156

156:                                              ; preds = %155, %154
  br label %163

157:                                              ; preds = %102
  %158 = load %struct.BannerOutput*, %struct.BannerOutput** %5, align 8
  %159 = load i32, i32* @PROTO_RDP, align 4
  %160 = load i64, i64* @AUTO_LEN, align 8
  %161 = call i32 (%struct.BannerOutput*, i32, ...) @banout_append(%struct.BannerOutput* %158, i32 %159, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i64 %160)
  %162 = load i64, i64* %8, align 8
  store i64 %162, i64* %9, align 8
  br label %163

163:                                              ; preds = %157, %156
  br label %171

164:                                              ; preds = %22
  %165 = load %struct.BannerOutput*, %struct.BannerOutput** %5, align 8
  %166 = load i32, i32* @PROTO_HEUR, align 4
  %167 = load i8*, i8** %7, align 8
  %168 = load i64, i64* %8, align 8
  %169 = call i32 (%struct.BannerOutput*, i32, ...) @banout_append(%struct.BannerOutput* %165, i32 %166, i8* %167, i64 %168)
  %170 = load i64, i64* %8, align 8
  store i64 %170, i64* %9, align 8
  br label %171

171:                                              ; preds = %22, %164, %163, %92, %78, %64, %51, %50
  br label %172

172:                                              ; preds = %171
  %173 = load i64, i64* %9, align 8
  %174 = add i64 %173, 1
  store i64 %174, i64* %9, align 8
  br label %18

175:                                              ; preds = %18
  %176 = load i32, i32* %10, align 4
  %177 = load %struct.RDPSTUFF*, %struct.RDPSTUFF** %6, align 8
  %178 = getelementptr inbounds %struct.RDPSTUFF, %struct.RDPSTUFF* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %178, i32 0, i32 0
  store i32 %176, i32* %179, align 4
  %180 = load i64, i64* %9, align 8
  ret i64 %180
}

declare dso_local i64 @cc_parse(%struct.BannerOutput*, %struct.RDPSTUFF*, i8*, i64) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @banout_append(%struct.BannerOutput*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
