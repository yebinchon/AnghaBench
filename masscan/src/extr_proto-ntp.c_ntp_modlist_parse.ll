; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_proto-ntp.c_ntp_modlist_parse.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_proto-ntp.c_ntp_modlist_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.BannerOutput = type { i32 }

@error_codes = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"Bogus Error Code\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@PROTO_NTP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"Response was NTP Error Code \00", align 1
@AUTO_LEN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c" - \22\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"response-too-big\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c" response-size=%u-bytes more=%s\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, %struct.BannerOutput*, i32*)* @ntp_modlist_parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ntp_modlist_parse(i8* %0, i32 %1, %struct.BannerOutput* %2, i32* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.BannerOutput*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [12 x i8], align 1
  %14 = alloca i8*, align 8
  %15 = alloca [128 x i8], align 16
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.BannerOutput* %2, %struct.BannerOutput** %7, align 8
  store i32* %3, i32** %8, align 8
  store i32 4, i32* %9, align 4
  %16 = load i32*, i32** %8, align 8
  %17 = call i32 @UNUSEDPARM(i32* %16)
  %18 = load i32, i32* %9, align 4
  %19 = add i32 %18, 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp uge i32 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %4
  br label %143

23:                                               ; preds = %4
  %24 = load i8*, i8** %5, align 8
  %25 = load i32, i32* %9, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds i8, i8* %24, i64 %26
  %28 = load i8, i8* %27, align 1
  %29 = zext i8 %28 to i32
  %30 = ashr i32 %29, 4
  %31 = and i32 %30, 15
  store i32 %31, i32* %10, align 4
  %32 = load i8*, i8** %5, align 8
  %33 = load i32, i32* %9, align 4
  %34 = add i32 %33, 0
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds i8, i8* %32, i64 %35
  %37 = load i8, i8* %36, align 1
  %38 = zext i8 %37 to i32
  %39 = and i32 %38, 15
  %40 = shl i32 %39, 8
  %41 = load i8*, i8** %5, align 8
  %42 = load i32, i32* %9, align 4
  %43 = add i32 %42, 1
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds i8, i8* %41, i64 %44
  %46 = load i8, i8* %45, align 1
  %47 = zext i8 %46 to i32
  %48 = or i32 %40, %47
  store i32 %48, i32* %11, align 4
  %49 = load i8*, i8** %5, align 8
  %50 = load i32, i32* %9, align 4
  %51 = add i32 %50, 2
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds i8, i8* %49, i64 %52
  %54 = load i8, i8* %53, align 1
  %55 = zext i8 %54 to i32
  %56 = and i32 %55, 15
  %57 = shl i32 %56, 8
  %58 = load i8*, i8** %5, align 8
  %59 = load i32, i32* %9, align 4
  %60 = add i32 %59, 3
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds i8, i8* %58, i64 %61
  %63 = load i8, i8* %62, align 1
  %64 = zext i8 %63 to i32
  %65 = or i32 %57, %64
  store i32 %65, i32* %12, align 4
  %66 = load i32, i32* %10, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %101

68:                                               ; preds = %23
  %69 = load i32, i32* @error_codes, align 4
  %70 = load i32, i32* %10, align 4
  %71 = call i8* @val2string_lookup(i32 %69, i32 %70)
  store i8* %71, i8** %14, align 8
  %72 = load i8*, i8** %14, align 8
  %73 = icmp eq i8* %72, null
  br i1 %73, label %74, label %75

74:                                               ; preds = %68
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8** %14, align 8
  br label %75

75:                                               ; preds = %74, %68
  %76 = getelementptr inbounds [12 x i8], [12 x i8]* %13, i64 0, i64 0
  %77 = load i32, i32* %10, align 4
  %78 = call i32 (i8*, i32, i8*, i32, ...) @sprintf_s(i8* %76, i32 12, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %77)
  %79 = load %struct.BannerOutput*, %struct.BannerOutput** %7, align 8
  %80 = load i32, i32* @PROTO_NTP, align 4
  %81 = load i32, i32* @AUTO_LEN, align 4
  %82 = call i32 @banout_append(%struct.BannerOutput* %79, i32 %80, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %81)
  %83 = load %struct.BannerOutput*, %struct.BannerOutput** %7, align 8
  %84 = load i32, i32* @PROTO_NTP, align 4
  %85 = getelementptr inbounds [12 x i8], [12 x i8]* %13, i64 0, i64 0
  %86 = load i32, i32* @AUTO_LEN, align 4
  %87 = call i32 @banout_append(%struct.BannerOutput* %83, i32 %84, i8* %85, i32 %86)
  %88 = load %struct.BannerOutput*, %struct.BannerOutput** %7, align 8
  %89 = load i32, i32* @PROTO_NTP, align 4
  %90 = load i32, i32* @AUTO_LEN, align 4
  %91 = call i32 @banout_append(%struct.BannerOutput* %88, i32 %89, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %90)
  %92 = load %struct.BannerOutput*, %struct.BannerOutput** %7, align 8
  %93 = load i32, i32* @PROTO_NTP, align 4
  %94 = load i8*, i8** %14, align 8
  %95 = load i32, i32* @AUTO_LEN, align 4
  %96 = call i32 @banout_append(%struct.BannerOutput* %92, i32 %93, i8* %94, i32 %95)
  %97 = load %struct.BannerOutput*, %struct.BannerOutput** %7, align 8
  %98 = load i32, i32* @PROTO_NTP, align 4
  %99 = load i32, i32* @AUTO_LEN, align 4
  %100 = call i32 @banout_append(%struct.BannerOutput* %97, i32 %98, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i32 %99)
  br label %143

101:                                              ; preds = %23
  %102 = load i32, i32* %11, align 4
  %103 = load i32, i32* %12, align 4
  %104 = mul i32 %102, %103
  %105 = add i32 4, %104
  %106 = load i32, i32* %6, align 4
  %107 = icmp ugt i32 %105, %106
  br i1 %107, label %108, label %113

108:                                              ; preds = %101
  %109 = load %struct.BannerOutput*, %struct.BannerOutput** %7, align 8
  %110 = load i32, i32* @PROTO_NTP, align 4
  %111 = load i32, i32* @AUTO_LEN, align 4
  %112 = call i32 @banout_append(%struct.BannerOutput* %109, i32 %110, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i32 %111)
  br label %143

113:                                              ; preds = %101
  %114 = load i32, i32* %11, align 4
  %115 = load i32, i32* %12, align 4
  %116 = mul i32 %114, %115
  %117 = icmp ugt i32 %116, 500
  br i1 %117, label %118, label %123

118:                                              ; preds = %113
  %119 = load %struct.BannerOutput*, %struct.BannerOutput** %7, align 8
  %120 = load i32, i32* @PROTO_NTP, align 4
  %121 = load i32, i32* @AUTO_LEN, align 4
  %122 = call i32 @banout_append(%struct.BannerOutput* %119, i32 %120, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i32 %121)
  br label %143

123:                                              ; preds = %113
  %124 = getelementptr inbounds [128 x i8], [128 x i8]* %15, i64 0, i64 0
  %125 = load i32, i32* %11, align 4
  %126 = load i32, i32* %12, align 4
  %127 = mul i32 %125, %126
  %128 = load i8*, i8** %5, align 8
  %129 = getelementptr inbounds i8, i8* %128, i64 0
  %130 = load i8, i8* %129, align 1
  %131 = zext i8 %130 to i32
  %132 = ashr i32 %131, 6
  %133 = and i32 %132, 1
  %134 = icmp ne i32 %133, 0
  %135 = zext i1 %134 to i64
  %136 = select i1 %134, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0)
  %137 = call i32 (i8*, i32, i8*, i32, ...) @sprintf_s(i8* %124, i32 128, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0), i32 %127, i8* %136)
  %138 = load %struct.BannerOutput*, %struct.BannerOutput** %7, align 8
  %139 = load i32, i32* @PROTO_NTP, align 4
  %140 = getelementptr inbounds [128 x i8], [128 x i8]* %15, i64 0, i64 0
  %141 = load i32, i32* @AUTO_LEN, align 4
  %142 = call i32 @banout_append(%struct.BannerOutput* %138, i32 %139, i8* %140, i32 %141)
  br label %143

143:                                              ; preds = %123, %118, %108, %75, %22
  ret void
}

declare dso_local i32 @UNUSEDPARM(i32*) #1

declare dso_local i8* @val2string_lookup(i32, i32) #1

declare dso_local i32 @sprintf_s(i8*, i32, i8*, i32, ...) #1

declare dso_local i32 @banout_append(%struct.BannerOutput*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
